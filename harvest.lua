
msgto		    = "p"
World_Harvest   = {"world1","world2"}
Id_Door_Harvest = "blablabla"
World_Drop 	    = "worlddrop"
Id_Door_Drop    = "blablabla"
Pos_Drop_Block  = 2796
Pos_Drop_Seed   = 2300
Seed_Id         = 13
Delay_Harvest   = 100   -- Rec 100
Delay_Level     = 2     -- Rec 2 for no vpn user, and 4 for vpn user

   
   
function Reconnect(worlds,ids)
    if getBot().status == "offline" then
        while getBot().status == "offline" do
            sleep(5000)
        end
        CheckWorld(worlds,ids)
    end
end

function CheckWorld(world,id)
    if string.upper(getBot().world) ~= string.upper(world) then
        while string.upper(getBot().world) ~= string.upper(world) do
            JoinWorld(world,id)
        end
    end
end

function JoinWorld(world,id)
    sendPacket(3,"action|join_request\nname|"..world)
    sleep(1000*Delay_Level)
    sendPacket(3,"action|join_request\nname|"..world.."|"..id)
    sleep(1000*Delay_Level)
    Reconnect(world,id)
    CheckWorld(world,id)
end

function Harvest()
    for _, tile in pairs(getTiles()) do
        if tile.fg == Seed_Id then
            if getTile(tile.x,tile.y).ready == true then
                if findItem(Block_Id) == 200 then
                    PosX = math.floor(getBot().x/32)
                    PosY = math.floor(getBot().y/32)
                    sleep(300)
                    DropBlocks()
                    findPath(PosX,PosY)
                end
                if findItem(Seed_Id) == 200 then
                    PosX = math.floor(getBot().x/32)
                    PosY = math.floor(getBot().y/32)
                    sleep(300)
                    DropSeeds()
                    findPath(PosX,PosY)
                end
                findPath(tile.x,tile.y)
                repeat
                    punch(0,0)
                    sleep(Delay_Harvest*2)
                until getTile(tile.x,tile.y).fg ~= Seed_Id
                if tile.x == 98 then
                    sleep(300)
                end
            end
        end
    end
end

function DropBlocks()
    collectSet(false,2)
    JoinWorld(World_Drop,Id_Door_Drop)
    CheckWorld(World_Drop,Id_Door_Drop)
    DropBlock()
    sleep(500)
    JoinWorld(PosWorld,Id_Door_Harvest)
    CheckWorld(PosWorld,Id_Door_Harvest)
    collectSet(true,2)
end

function DropSeeds()
    collectSet(false,2)
    JoinWorld(World_Drop,Id_Door_Drop)
    CheckWorld(World_Drop,Id_Door_Drop)
    DropSeed()
    sleep(500)
    JoinWorld(PosWorld,Id_Door_Harvest)
    CheckWorld(PosWorld,Id_Door_Harvest)
    collectSet(true,2)
end

function DropBlock()
    for _, block in pairs(getTiles()) do
        if  block.fg == Pos_Drop_Block or block.bg == Pos_Drop_Block  then
            findPath(block.x-1,block.y)
            sleep(500)
            drop(Block_Id)
            sleep(2000)
            if findItem(Block_Id) >= 1 then
                while findItem(Block_Id) >= 1  do
                    move(-1,0)
                    sleep(500)
                    drop(Block_Id)
                    sleep(1000)
                end
            end
        end
    end
end

function DropSeed()
    for _, seed in pairs(getTiles()) do
        if  seed.fg == Pos_Drop_Seed or seed.bg == Pos_Drop_Seed  then
            findPath(seed.x-1,seed.y)
            sleep(500)
            drop(Seed_Id)
            sleep(2000)
            if findItem(Seed_Id) >= 1 then
                while findItem(Seed_Id) >= 1  do
                    move(-1,0)
                    sleep(500)
                    drop(Seed_Id)
                    sleep(1000)
                end
            end
        end
    end
end

-----------------------------------------------------------

Block_Id = Seed_Id - 1

-----------------------------------------------------------
-----------jgn hapus dek-------------------
say("script orang")
sleep(3000)
-----------------------------------------------------------

collectSet(true,2)
for i, WorldList in ipairs(World_Harvest) do
    kondisi = true
    JoinWorld(WorldList,Id_Door_Harvest)
    say("/msg"..msgto.." World "..WorldList.." Siap Di Harvest!")
    sleep(2000)
    PosWorld = getBot().world
    while kondisi do
        Harvest()
        sleep(200)
        kondisi = false
    end
    say("/msg"..msgto.." World "..WorldList.." Sudah Selesai Di Harvest!")
    sleep(1000)
    say("/msg"..msgto.." Pindah Ke World Selanjutnya!")
    sleep(5000)
end
say("/msg"..msgto.." Semua World Telah Di Harvest!")
sleep(10000)
removeBot(getBot().name)