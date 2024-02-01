-- VARIABLE --
seedid = 17     --Seed ID
blockid = 16     --Block ID
platpabrik = 102      --ID Platform for 100% Auto farm
hitcount = 2     --Hit break block 
harvesting = false
planting = false
pabrik = true
pos_x = 0 -- don't touch!
pos_y = 0 -- don't touch!
vendingid = 2978
-- END --


function FindItem(id)
    for _, itm in pairs(GetInventory()) do
        if itm.id == id then
            return itm.amount
        end    
    end
    return 0
end
function plants(x , y, seedo)
pkt = {}
pkt.px = x;
pkt.py = y;
pkt.type = 3;
pkt.value = seedo;
pkt.posX = GetLocal().posX
pkt.posY = GetLocal().posY
SendPacketRaw(1, pkt);
end

function putb(x , y, bid)
pkt = {}
pkt.px = x;
pkt.py = y;
pkt.type = 3;
pkt.value = bid;
pkt.posX = math.floor(GetLocal().posX)
pkt.posY = math.floor(GetLocal().posY)
SendPacketRaw(1, pkt);
end

function punch(x , y)
pkt = {}
pkt.px = x;
pkt.py = y;
pkt.type = 3;
pkt.value = 18;
pkt.posX = math.floor(GetLocal().posX)
pkt.posY = math.floor(GetLocal().posY)
SendPacketRaw(1, pkt);
end

function wrench(x , y)
pkt = {}
pkt.px = x;
pkt.py = y;
pkt.type = 3;
pkt.value = 32;
pkt.posX = GetLocal().posX
pkt.posY = GetLocal().posY
SendPacketRaw(1, pkt);
end



function pnb()
FindPath(pos_x, pos_y, 50)
sleep(100)
end

function pnb1()
    for _, tile in pairs(GetTile()) do
	    if(tile.x == pos_x and tile.y == pos_y) then
		    if(CheckTile(tile.x-1, tile.y).fg == 0 ) then
			    sleep(200)
                putb(tile.x-1, tile.y, blockid)
			else
			    for i = 1, hitcount do
				punch(tile.x-1, tile.y)
                sleep(10)
				end
			end
		end
	end
end




function harvest()
    for _, tile in pairs(GetTile())do
	    if(tile.fg == seedid and tile.ready == 1.0) then
			if(CheckTile(tile.x,tile.y+1).fg == platpabrik) then
				if(math.floor(tile.y) == math.floor(pos_y)) then
					FindPath(tile.x, tile.y, 50)
					sleep(100)
					punch(tile.x, tile.y)
					sleep(200)
					return true
				end
			end
		end
	end
	return false
end

function plant()
    for _, tile in pairs(GetTile()) do
	    if(tile.fg == platpabrik) then
			if(CheckTile(tile.x,tile.y-1).fg == 0) then
				if(tile.y - 1 == pos_y) then
					FindPath(tile.x, tile.y-1, 50)
					sleep(100)
                    plants(tile.x, tile.y-1, seedid)
                    sleep(200)
					return true
				end
			end
		end
	end
	return false
end

function findvending()
   for _, tile in pairs(GetTile())do
      if(tile.fg == vendingid) then
          wrench(tile.x, tile.y)
          sleep(2000)
          SendPacket(2, "action|dialog_return\ndialog_name|vending\ntilex|"..tostring(tile.x).."|\ntiley|"..tostring(tile.y).."|\nbuttonClicked|addstock")
          sleep(100)
        end
   end
end

function farmshit()
pos_x = math.floor(GetLocal().posX / 32) -- Save Pos X
pos_y = math.floor(GetLocal().posY / 32) -- Save Pos Y
while pabrik do
        pnb()
        sleep(50)
        if (math.floor(FindItem(blockid)) >= 10) then
            if (math.floor(FindItem(seedid)) < 100) then 
             pnb1()             
            else
                planting = true
                while planting do
                    planting = plant()
                    if (math.floor(FindItem(seedid)) <= 10) then
                        planting = false
                    end
                end
              pnb()
              sleep(1000)
              findvending()
               sleep(1000)
            end
        else
            harvesting = true
            while harvesting do
                harvesting = harvest()
                if (math.floor(FindItem(blockid)) >= 180) then
                    harvesting = false
                end
            end
            if (math.floor(FindItem(blockid)) < 10 ) then
                planting = true
                while planting do
                    planting = plant()
                    if (math.floor(FindItem(seedid)) <= 10) then
                        planting = false
                    end
                end
                
                sleep(100)
            end
        end
     -- collectgarbage('collect') -- Clear unused data
end
end

farmshit()
