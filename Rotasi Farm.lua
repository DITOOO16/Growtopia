start = 1

Bot = {}

Bot["M5Z8K2B8F9"] = {
    slot = 1, -- Bot slot info in webhook
    password = "", -- Bot Password
    proxyIp = "", -- Proxy ip | ip:port:user:pass
    webhookLink = "https://discord.com/api/webhooks/lNHFlqH7Kfm4doZnKDu5d6oksuGbDWa_IEVYXfvMYF7sdnTIvqWppvTCIZDiE", -- Bot webhook link
    messageId = "1108891320757534871", -- Webhook message id1108891320757534871
    worldList = {""}, -- World list
    doorFarm = "DINO", -- Rotation world door id
    webhookLinkPack = "https://discord.com/api/webhooks/ea8yxPJmg1-urHlTa1n8jjTAivPKChj7CxHhtcl6-HPbiMnHSTpLmp1l77YJ", -- Pack info webhook link
    messageIdPack = "1108782808299733054", -- Pack info message id
    webhookLinkSeed = "https://discord.com/api/webhooks/a8yxPJmg1-urHlTa1n8jjTAivPKChj7CxHhtcl6-HPbiMnHSTpLmp1l77YJ", -- Seed info webhook link
    messageIdSeed = "1108782798862569514", -- Seed info message id
    storagePack = "QPZK", -- Storage world
    doorPack = "P", -- Storage world door
    storageSeed = "QPZK", -- Storage world
    doorSeed = "P" -- Storage world door
}
Bot["Z9I9H6P2S8"] = {
    slot = 2, -- Bot slot info in webhook
    password = "", -- Bot Password
    proxyIp = "", -- Proxy ip | ip:port:user:pass
    webhookLink = "https://discord.com/api/webhooks/7Kfm4doZnKDu5d6oksuGbDWa_IEVYXfvMYF7sdnTIvqWppvTCIZDiE", -- Bot webhook link
    messageId = "1108891322665934898", -- Webhook message id
    worldList = {""}, -- World list
    doorFarm = "DINO", -- Rotation world door id
    webhookLinkPack = "https://discord.com/api/webhooks/8yxPJmg1-urHlTa1n8jjTAivPKChj7CxHhtcl6-HPbiMnHSTpLmp1l77YJ", -- Pack info webhook link
    messageIdPack = "1108782808299733054", -- Pack info message id
    webhookLinkSeed = "https://discord.com/api/webhooks/a8yxPJmg1-urHlTa1n8jjTAivPKChj7CxHhtcl6-HPbiMnHSTpLmp1l77YJ", -- Seed info webhook link
    messageIdSeed = "1108782798862569514", -- Seed info message id
    storagePack = "QPZK", -- Storage world
    doorPack = "P", -- Storage world door
    storageSeed = "QPZ", -- Storage world
    doorSeed = "P" -- Storage world door
}

WorldPickAxe,DoorPickAxe = "QPZK", "OKE"

webhookOffline = "https:" -- Bot On/Off with tag webhook link
patokanSeed, patokanPack = 2796, 4584 -- Patokan Seed and Pack
statusLink = "https:"
statusLinkBot = true

blacklistTile = false
blacklist = {
    {x = -1, y = -1},
    {x = 0, y = -1},
    {x = 1, y = -1}
}

detectFarmable = true -- Set true if auto detect farmable
itmId = 3004 -- Item id
itmSeed = itmId + 1 -- Item seed / Dont edit

delayHarvest = 120 -- Harvesting delay
delayPlant = 110 -- Planting delay
delayPunch = 100 -- Punching delay
delayPlace = 80 -- Placing delay

tileNumber = 5 -- Customable from 1 to 5
customTile = false -- Set true if custom breaking pos
customX = 1 -- Custom breaking pos x
customY = 3 -- Custom breaking pos y

proxy = false -- Set true if using proxy
separatePlant = false -- Set true if separate harvest and plant
dontPlant = false -- Set true if store all seed and dont plant any
buyAfterPNB = true -- Set true if buying and storing pack after each pnb
root = false -- Set true if farming root
looping = true -- Set false if not looping
takePick = true -- Auto take pickaxe from storage

pack = "World Lock" -- Pack name to display on webhook
packList = {242} -- List of pack id
packName = "world_lock" -- Pack name in store
minimumGem = 10000 -- Minimum gems to buy pack
packPrice = 2000 -- Pack price
packLimit = 200 -- Limit of buying pack before bp full

joinWorldAfterStore = false -- Set true if join random world after each rotation
worldToJoin = {"aaa","DITO"} -- List of world to join after finishing 1 world
joinDelay = 5000 -- World join delay

restartTimer = true -- Set true if restart time of farm after looping
customShow = false -- Set true if showing only custom amount of world
showList = 3 -- Number of custom worlds to be shown

goods = {98, 18, 32, 6336, 9640} -- Item whitelist (don't edit)

items = {
    {name = "World Lock", id = 242, emote = "<:world_lock:1011929928519925820>"},
    {name = "Pepper Tree", id = 4584, emote = "<:pepper_tree:1011930020836544522>"},
    {name = "Pepper Tree Seed", id = 4585, emote = "<:pepper_tree_seed:1011930051744374805>"},
    {name = "Fish Tank", id = 3004, emote = "<:fish_tank:1012562949249974363>"},
    {name = "Fish Tank Seed", id = 3005, emote = "<:fish_tank_seed:1012563310308233327>"},
} -- List of item info

------------------ Dont Touch ------------------
setBool("Select All",false)
setBool("Auto Reconnect",false)
list = {}
tree = {}
waktu = {}
worlds = {}
fossil = {}
tileBreak = {}
loop = 0
profit = 0
listNow = 1
strWaktu = ""
t = os.time()
proxyIp = Bot[getBot().name:upper()].proxyIp
password = Bot[getBot().name:upper()].password
stop = #Bot[getBot().name:upper()].worldList
doorFarm = Bot[getBot().name:upper()].doorFarm
worldList = Bot[getBot().name:upper()].worldList
totalList = #Bot[getBot().name:upper()].worldList
webhookLink = Bot[getBot().name:upper()].webhookLink
messageId = Bot[getBot().name:upper()].messageId
webhookLinkPack = Bot[getBot().name:upper()].webhookLinkPack
messageIdPack = Bot[getBot().name:upper()].messageIdPack
webhookLinkSeed = Bot[getBot().name:upper()].webhookLinkSeed
messageIdSeed = Bot[getBot().name:upper()].messageIdSeed
storagePack = Bot[getBot().name:upper()].storagePack
doorPack = Bot[getBot().name:upper()].doorPack
storageSeed = Bot[getBot().name:upper()].storageSeed
doorSeed = Bot[getBot().name:upper()].doorSeed

for i = start,#worldList do
    table.insert(worlds,worldList[i])
end

if looping then
    for i = 0,start - 1 do
        table.insert(worlds,worldList[i])
    end
end

for _,pack in pairs(packList) do
    table.insert(goods,pack)
end

for i = math.floor(tileNumber/2),1,-1 do
    i = i * -1
    table.insert(tileBreak,i)
end
for i = 0, math.ceil(tileNumber/2) - 1 do
    table.insert(tileBreak,i)
end

if (showList - 1) >= #worldList then
    customShow = false
end

if not detectFarmable then
    table.insert(goods,itmId)
    table.insert(goods,itmSeed)
end

if dontPlant then
    separatePlant = false
end

function includesNumber(table, number)
    for _,num in pairs(table) do
        if num == number then
            return true
        end
    end
    return false
end

function detect()
    local store = {}
    local count = 0
    for _,tile in pairs(getTiles()) do
        if tile.flags == 0 and tile.fg ~= 0 then
            if store[tile.fg] then
                store[tile.fg].count = store[tile.fg].count + 1
            else
                store[tile.fg] = {fg = tile.fg, count = 1}
            end
        end
    end
    for _,tile in pairs(store) do
        if tile.count > count then
            count = tile.count
            itmSeed = tile.fg
            itmId = itmSeed - 1
        end
    end
    if not includesNumber(goods,itmId) then
        table.insert(goods,itmId)
    end
    if not includesNumber(goods,itmSeed) then
        table.insert(goods,itmSeed)
    end
end

function bl(world)
    blist = {}
    fossil[world] = 0
    for _,tile in pairs(getTiles()) do
        if tile.fg == 6 then
            doorX = tile.x
            doorY = tile.y
        elseif tile.fg == 3918 then
            fossil[world] = fossil[world] + 1
        end
    end
    if blacklistTile then
        for _,tile in pairs(blacklist) do
            table.insert(blist,{x = doorX + tile.x, y = doorY + tile.y})
        end
    end
end

function tilePunch(x,y)
    for _,num in pairs(tileBreak) do
        if getTile(x - 1,y + num).fg ~= 0 or getTile(x - 1,y + num).bg ~= 0 then
            return true
        end
    end
    return false
end

function tilePlace(x,y)
    for _,num in pairs(tileBreak) do
        if getTile(x - 1,y + num).fg == 0 and getTile(x - 1,y + num).bg == 0 then
            return true
        end
    end
    return false
end

function check(x,y)
    for _,tile in pairs(blist) do
        if x == tile.x and y == tile.y then
            return false
        end
    end
    return true
end

function warp(world,id)
    cok = 0
    while getBot().world ~= world:upper() and not nuked do
        while getBot().status ~= "online" do
            connect()
            sleep(5000)
        end
        sendPacket("action|join_request\nname|"..world:upper().."\ninvitedWorld|0",3)
        sleep(5000)
        if cok == 10 then
            nuked = true
        else
            cok = cok + 1
        end
    end
    if id ~= "" and not nuked then
        while getTile(math.floor(getBot().x / 32),math.floor(getBot().y / 32)).fg == 6 and not nuked do
            while getBot().status ~= "online" do
                connect()
                sleep(5000)
            end
            sendPacket("action|join_request\nname|"..world:upper().."|"..id:upper().."\ninvitedWorld|0",3)
            sleep(2500)
        end
    end
end

function waktuWorld()
    strWaktu = ""
    if customShow then
        for i = showList,1,-1 do
            newList = listNow - i
            if newList <= 0 then
                newList = newList + totalList
            end
            strWaktu = strWaktu.."\n"..worldList[newList]:upper().." ( "..(waktu[worldList[newList]] or "?").." | "..(tree[worldList[newList]] or "?").." )"
        end
    else
        for _,world in pairs(worldList) do
            strWaktu = strWaktu.."\n"..world:upper().." ( "..(waktu[world] or "?").." | "..(tree[world] or "?").." )"
        end
    end
end

function botInfo(info)
    te = os.time() - t
    fossill = fossil[getBot().world] or 0
    local text = [[
        $webHookUrl = "]]..webhookLink..[[/messages/]]..messageId..[["
        $thumbnailObject = @{
            url = "https://komikkamvret.com/wp-content/uploads/2021/04/Pus-Nyangami-Roger-1024x978.png"
        }
        $footerObject = @{
            text = "]]..(os.date("!%a %b %d, %Y at %I:%M %p", os.time() + 7 * 60 * 60))..[["
        }
        $fieldArray = @(
            @{
                name = "<:pickaxe:1011931845065183313> Bot Info"
                value = "]]..info..[["
                inline = "false"
            }
            @{
                name = "<:birth_certificate:1011929949076193291> Bot Name"
                value = "]]..getBot().name..[["
                inline = "true"
            }
            @{
                name = "<:heart_monitor:1012587208902987776> Bot Status"
                value = "]]..getBot().status..[["
                inline = "true"
            }
            @{
                name = "<:robots:1037182734067576842> Bot Captcha"
                value = "]]..getBot().captcha..[["
                inline = "true"
            }
            @{
                name = "<:gems:1011931178510602240> Bot Gems"
                value = "]]..findItem(112)..[["
                inline = "true"
            }
            @{
                name = "<:globe:1011929997679796254> World Name"
                value = "]]..getBot().world..[["
                inline = "true"
            }
            @{
                name = "<:growtopia_scroll:1011972982261944444> World Order (]]..loop..[[)"
                value = "]]..start..[[ / ]]..stop..[["
                inline = "true"
            }
            @{
                name = "<:fossil_rock:1011972962573881464> World Fossil"
                value = "]]..fossill..[["
                inline = "true"
            }
            @{
                name = "<:shop_sign:1012590603172847648> Pack Name"
                value = "]]..pack..[["
                inline = "true"
            }
            @{
                name = "<:guest_book:1012588503466528869> Bot Profit"
                value = "]]..profit..[[ ]]..pack..[["
                inline = "true"
            }
            @{
                name = "<:change_of_address:1012566655995490354> World List"
                value = "]]..strWaktu..[["
                inline = "false"
            }
            @{
                name = "<:growtopia_clock:1011929976628596746> Bot Uptime"
                value = "]]..math.floor(te/86400)..[[ Days ]]..math.floor(te%86400/3600)..[[ Hours ]]..math.floor(te%86400%3600/60)..[[ Minutes"
                inline = "false"
            }
        )
        $embedObject = @{
            title = "<:exclamation_sign:1011934940096630794> **BOT INFORMATION** | SLOT - ]]..Bot[getBot().name:upper()].slot..[["
            color = "]]..math.random(1111111,9999999)..[["
            thumbnail = $thumbnailObject
            footer = $footerObject
            fields = $fieldArray
        }
        $embedArray = @($embedObject)
        $payload = @{
            embeds = $embedArray
        }
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Patch -ContentType 'application/json'
    ]]
    local file = io.popen("powershell -command -", "w")
    file:write(text)
    file:close()
end

function packInfo(link,id,desc)
    local text = [[
        $webHookUrl = "]]..link..[[/messages/]]..id..[["
        $thumbnailObject = @{
            url = "https://komikkamvret.com/wp-content/uploads/2021/04/Pus-Nyangami-Roger-1024x978.png"
        }
        $footerObject = @{
            text = "]]..(os.date("!%a %b %d, %Y at %I:%M %p", os.time() + 7 * 60 * 60))..[["
        }
        $fieldArray = @(
            @{
                name = "Dropped Items"
                value = "]]..desc..[["
                inline = "false"
            }
        )
        $embedObject = @{
            title = "<:exclamation_sign:1011934940096630794> **PACK/SEED INFORMATION**"
            color = "]]..math.random(111111,999999)..[["
            thumbnail = $thumbnailObject
            footer = $footerObject
            fields = $fieldArray
        }
        $embedArray = @($embedObject)
        $payload = @{
            embeds = $embedArray
        }
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Patch -ContentType 'application/json'
    ]]
    local file = io.popen("powershell -command -", "w")
    file:write(text)
    file:close()
end

function reconInfo(status)
    if status then
        text = [[
            $webHookUrl = "]]..webhookOffline..[["
            $payload = @{
                content = "]]..getBot().name..[[ (slot-]]..Bot[getBot().name:upper()].slot..[[) status is ]]..getBot().status..[[ @everyone"
            }
            [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
            Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
        ]]
    else
        text = [[
            $webHookUrl = "]]..webhookOffline..[["
            $payload = @{
                content = "]]..getBot().name..[[ (slot-]]..Bot[getBot().name:upper()].slot..[[) captcha is ]]..getBot().captcha..[[ @everyone"
            }
            [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
            Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
        ]]
    end
    local file = io.popen("powershell -command -", "w")
    file:write(text)
    file:close()
end

function reconnect(world,id,x,y)
    while getBot().captcha:find("Wrong") or getBot().captcha:find("Couldn't") do
        namez = getBot().name
        removeBot(getBot().name)
        sleep(10000)
        if proxy then
            addBot(namez, password, proxyIp)
            sleep(10000)
        else
            addBot(namez, password)
            sleep(10000)
        end
        while getBot().status ~= "online" do
            connect()
            sleep(10000)
            if getBot().status == "suspended" or getBot().status == "banned" then
                botInfo(getBot().status)
                sleep(100)
                reconInfo(true)
                sleep(100)
                removeBot(getBot().name)
            end
        end
        sendPacket("action|quit_to_exit",3)
        sleep(1000)
        while getBot().world ~= world:upper() do
            sendPacket("action|join_request\nname|"..world:upper().."\ninvitedWorld|0",3)
            sleep(5000)
        end
        if id ~= "" then
            while getTile(math.floor(getBot().x / 32),math.floor(getBot().y / 32)).fg == 6 do
                sendPacket("action|join_request\nname|"..world:upper().."|"..id:upper().."\ninvitedWorld|0",3)
                sleep(1000)
            end
        end
        if x and y then
            while math.floor(getBot().x / 32) ~= x or math.floor(getBot().y / 32) ~= y do
                findPath(x,y)
                sleep(100)
            end
        end
        reconInfo(false)
        sleep(100)
    end
    if getBot().status ~= "online" then
        botInfo("Reconnecting")
        sleep(100)
        reconInfo(true)
        sleep(100)
        while getBot().status ~= "online" do
            connect()
            sleep(10000)
            if getBot().status == "suspended" or getBot().status == "banned" then
                botInfo(getBot().status)
                sleep(100)
                reconInfo(true)
                sleep(100)
                removeBot(getBot().name)
            end
        end
        while getBot().world ~= world:upper() do
            sendPacket("action|join_request\nname|"..world:upper().."\ninvitedWorld|0",3)
            sleep(5000)
        end
        if id ~= "" then
            while getTile(math.floor(getBot().x / 32),math.floor(getBot().y / 32)).fg == 6 do
                sendPacket("action|join_request\nname|"..world:upper().."|"..id:upper().."\ninvitedWorld|0",3)
                sleep(1000)
            end
        end
        if x and y then
            while math.floor(getBot().x / 32) ~= x or math.floor(getBot().y / 32) ~= y do
                findPath(x,y)
                sleep(100)
            end
        end
        botInfo("Succesfully Reconnected")
        sleep(100)
        reconInfo(true)
        sleep(100)
        botInfo("Farming")
        sleep(100)
    end
end

function round(n)
    return n % 1 > 0.5 and math.ceil(n) or math.floor(n)
end

function tileDrop1(x,y,num)
    local count = 0
    local stack = 0
    for _,obj in pairs(getObjects()) do
        if round(obj.x / 32) == x and math.floor(obj.y / 32) == y then
            count = count + obj.count
            stack = stack + 1
            sleep(500)
        end
    end
    if stack < 20 and count <= (4000 - num) then
        return true
    end
    return false
end

function tileDrop2(x,y,num)
    local count = 0
    local stack = 0
    for _,obj in pairs(getObjects()) do
        if round(obj.x / 32) == x and math.floor(obj.y / 32) == y then
            count = count + obj.count
            stack = stack + 1
            sleep(500)
        end
    end
    if count <= (4000 - num) then
        return true
    end
    return false
end

function storePack()
    for _,pack in pairs(packList) do
        for _,tile in pairs(getTiles()) do
            if tile.fg == patokanPack or tile.bg == patokanPack then
                if tileDrop1(tile.x,tile.y,findItem(pack)) then
                    while math.floor(getBot().x / 32) ~= (tile.x - 1) or math.floor(getBot().y / 32) ~= tile.y do
                        findPath(tile.x - 1,tile.y)
                        sleep(1000)
                        reconnect(storagePack,doorPack,tile.x - 1,tile.y)
                    end
                    while findItem(pack) > 0 and tileDrop1(tile.x,tile.y,findItem(pack)) do
                        sendPacket("action|drop\n|itemID|"..pack,2)
                        sleep(1000)
                        sendPacket("action|dialog_return\ndialog_name|drop_item\nitemID|"..pack.."|\ncount|"..findItem(pack),2)
                        sleep(1000)
                        reconnect(storagePack,doorPack,tile.x - 1,tile.y)
                    end
                end
            end
            if findItem(pack) == 0 then
                break
            end
        end
    end
end

function itemInfo(ids)
    local result = {name = "null", id = ids, emote = "null"}
    for _,item in pairs(items) do
        if item.id == ids then
            result.name = item.name
            result.emote = item.emote
            return result
        end
    end
    return result
end

function infoPack()
    local store = {}
    for _,obj in pairs(getObjects()) do
        if store[obj.id] then
            store[obj.id].count = store[obj.id].count + obj.count
        else
            store[obj.id] = {id = obj.id, count = obj.count}
        end
    end
    local str = ""
    for _,object in pairs(store) do
        str = str.."\n"..itemInfo(object.id).emote.." "..itemInfo(object.id).name.." : x"..object.count
    end
    return str
end

function join()
    botInfo("Clearing World Logs")
    sleep(100)
    for _,wurld in pairs(worldToJoin) do
        warp(wurld,"")
        sleep(2000)
        disconnect()
        sleep(10000)
        reconnect(wurld,"")
    end
end

function storeSeed(world)
    botInfo("Storing Seed")
    sleep(100)
    warp(storageSeed,doorSeed)
    sleep(100)
    for _,tile in pairs(getTiles()) do
        if tile.fg == patokanSeed or tile.bg == patokanSeed then
            if tileDrop2(tile.x,tile.y,100) then
                while math.floor(getBot().x / 32) ~= (tile.x - 1) or math.floor(getBot().y / 32) ~= tile.y do
                    findPath(tile.x - 1,tile.y)
                    sleep(1000)
                    reconnect(storageSeed,doorSeed,tile.x - 1,tile.y)
                end
                while findItem(itmSeed) > 100 and tileDrop2(tile.x,tile.y,100) do
                    sendPacket("action|drop\n|itemID|"..itmSeed,2)
                    sleep(1000)
                    sendPacket("action|dialog_return\ndialog_name|drop_item\nitemID|"..itmSeed.."|\ncount|100",2)
                    sleep(1000)
                    reconnect(storageSeed,doorSeed,tile.x - 1,tile.y)
                end
            end
            if findItem(itmSeed) <= 100 then
                break
            end
        end
    end
    packInfo(webhookLinkSeed,messageIdSeed,infoPack())
    sleep(100)
    if joinWorldAfterStore then
        join()
        sleep(100)
    end
    warp(world,doorFarm)
    sleep(100)
    botInfo("Farming")
    sleep(100)
end

function buy()
    botInfo("Buying and Storing Pack")
    sleep(100)
    collectSet(false,3)
    sleep(100)
    warp(storagePack,doorPack)
    sleep(100)
    while findItem(112) >= packPrice do
        while getBot().slots < 36 do
            sendPacket("action|buy\nitem|upgrade_backpack",2)
            sleep(500)
        end
        for i = 1, packLimit do
            if findItem(112) > packPrice then
                sendPacket("action|buy\nitem|"..packName,2)
                sleep(500)
                profit = profit + 1
            else
                break
            end
        end
        storePack()
        sleep(100)
        reconnect(storagePack,doorPack)
    end
    packInfo(webhookLinkPack,messageIdPack,infoPack())
    sleep(100)
    if joinWorldAfterStore then
        join()
        sleep(100)
    end
end

function clear()
    for _,item in pairs(getInventory()) do
        if not includesNumber(goods, item.id) then
            sendPacket("action|trash\n|itemID|"..item.id,2)
            sendPacket("action|dialog_return\ndialog_name|trash_item\nitemID|"..item.id.."|\ncount|"..item.count,2) 
            sleep(200)
        end
    end
end

function take(world)
    botInfo("Taking Seed")
    sleep(100)
    while findItem(itmSeed) == 0 do
        warp(storageSeed,doorSeed)
        sleep(100)
        for _,obj in pairs(getObjects()) do
            if obj.id == itmSeed then
                findPath(round(obj.x / 32),math.floor(obj.y / 32))
                sleep(1000)
                collect(2)
                sleep(1000)
            end
            if findItem(itmSeed) > 0 then
                break
            end
        end
        packInfo(webhookLinkSeed,messageIdSeed,infoPack())
        sleep(100)
        if joinWorldAfterStore then
            join()
            sleep(100)
        end
        warp(world,doorFarm)
        sleep(100)
    end
end

function plant(world)
    for _,tile in pairs(getTiles()) do
        if findItem(itmSeed) == 0 and not dontPlant then
            take(world)
            sleep(100)
            botInfo("Farming")
            sleep(100)
        end
        if tile.flags ~= 0 and tile.y ~= 0 and getTile(tile.x,tile.y - 1).fg == 0 then
            if not blacklistTile or check(tile.x,tile.y) then
                findPath(tile.x,tile.y - 1)
                sleep(delayPlant)
                while getTile(tile.x,tile.y - 1).fg == 0 and getTile(tile.x,tile.y).flags ~= 0 do
                    place(itmSeed,0,0)
                    sleep(delayPlant)
                    reconnect(world,doorFarm,tile.x,tile.y - 1)
                end
            end
        end
    end
    if findItem(itmSeed) >= 100 then
        storeSeed(world)
        sleep(100)
    end
end

function pnb(world)
    if findItem(itmId) >= tileNumber then
        if not customTile then
            ex = 1
            ye = math.floor(getBot().y / 32)
            if ye > 40 then
                ye = ye - 10
            elseif ye < 11 then
                ye = ye + 10
            end
            if getTile(ex,ye).fg ~= 0 and getTile(ex,ye).fg ~= itmSeed then
                ye = ye - 1
            end
        else
            ex = customX
            ye = customY
        end
        while math.floor(getBot().x / 32) ~= ex or math.floor(getBot().y / 32) ~= ye do
            findPath(ex,ye)
            sleep(100)
        end
        if tileNumber > 1 then
            while findItem(itmId) >= tileNumber and findItem(itmSeed) < 190 do
                while tilePlace(ex,ye) do
                    for _,i in pairs(tileBreak) do
                        if getTile(ex - 1,ye + i).fg == 0 and getTile(ex - 1,ye + i).bg == 0 then
                            place(itmId,-1,i)
                            sleep(delayPlace)
                            reconnect(world,doorFarm,ex,ye)
                        end
                    end
                end
                while tilePunch(ex,ye) do
                    for _,i in pairs(tileBreak) do
                        if getTile(ex - 1,ye + i).fg ~= 0 or getTile(ex - 1,ye + i).bg ~= 0 then
                            punch(-1,i)
                            sleep(delayPunch)
                            reconnect(world,doorFarm,ex,ye)
                        end
                    end
                end
                collect(3)
                sleep(20)
            end
        else
            while findItem(itmId) > 0 and findItem(itmSeed) < 190 do
                while getTile(ex - 1,ye).fg == 0 and getTile(ex - 1,ye).bg == 0 do
                    place(itmId,-1,0)
                    sleep(delayPlace)
                    reconnect(world,doorFarm,ex,ye)
                end
                while getTile(ex - 1,ye).fg ~= 0 or getTile(ex - 1,ye).bg ~= 0 do
                    punch(-1,0)
                    sleep(delayPunch)
                    reconnect(world,doorFarm,ex,ye)
                end
            end
        end
      if statusLinkBot then
         if request("GET",statusLink) == "Offline" and getBot().status == "online" then
            disconnect()
            sleep(1000)
            botInfo("Bot Disconnect!")
            sleep(100)
            reconInfo(true)
            sleep(100)
            while request("GET",statusLink) == "Offline" do
                  sleep(10000)
            end
               reconnect(world,doorFarm,ex,ye)
            elseif request("GET",statusLink) == "Online" and getBot().status == "offline" then
               reconnect(world,doorFarm,ex,ye)
            end
        end
        clear()
        sleep(100)
        if buyAfterPNB and findItem(112) >= minimumGem then
            buy()
            sleep(100)
            warp(world,doorFarm)
            sleep(100)
            collectSet(true,3)
            sleep(100)
            botInfo("Farming")
            sleep(100)
        end
    end
end

function harvest(world)
    botInfo("Farming")
    sleep(100)
    tree[world] = 0
    if dontPlant then
        for _,tile in pairs(getTiles()) do
            if findItem(itmSeed) == 0 and not dontPlant then
                take(world)
                sleep(100)
                botInfo("Farming")
                sleep(100)
            end
            if getTile(tile.x,tile.y - 1).ready then
                if not blacklistTile or check(tile.x,tile.y) then
                    tree[world] = tree[world] + 1
                    findPath(tile.x,tile.y - 1)
                    sleep(delayHarvest)
                    while getTile(tile.x,tile.y - 1).fg == itmSeed do
                        punch(0,0)
                        sleep(delayHarvest)
                        reconnect(world,doorFarm,tile.x,tile.y - 1)
                    end
                    if root then
                        while getTile(tile.x, tile.y).fg == (itmId + 4) and getTile(tile.x, tile.y).flags ~= 0 do
                            punch(0, 1)
                            sleep(delayHarvest)
                            reconnect(world,doorFarm,tile.x,tile.y - 1)
                        end
                        clear()
                        sleep(100)
                    end
                    collect(2)
                    sleep(30)
                end
            end
            if findItem(itmId) >= 190 then
                pnb(world)
                sleep(100)
                if findItem(itmSeed) >= 190 then
                    storeSeed(world)
                    sleep(100)
                end
            end
        end
    elseif not separatePlant then
        for _,tile in pairs(getTiles()) do
            if findItem(itmSeed) == 0 and not dontPlant then
                take(world)
                sleep(100)
                botInfo("Farming")
                sleep(100)
            end
            if getTile(tile.x,tile.y - 1).ready or (tile.flags ~= 0 and tile.y ~= 0 and getTile(tile.x,tile.y - 1).fg == 0) then
                if not blacklistTile or check(tile.x,tile.y) then
                    tree[world] = tree[world] + 1
                    findPath(tile.x,tile.y - 1)
                    sleep(delayHarvest)
                    while getTile(tile.x,tile.y - 1).fg == itmSeed do
                        punch(0,0)
                        sleep(delayHarvest)
                        reconnect(world,doorFarm,tile.x,tile.y - 1)
                    end
                    if root then
                        while getTile(tile.x, tile.y).fg == (itmId + 4) and getTile(tile.x, tile.y).flags ~= 0 do
                            punch(0, 1)
                            sleep(delayHarvest)
                            reconnect(world,doorFarm,tile.x,tile.y - 1)
                        end
                        clear()
                        sleep(100)
                    end
                    collect(2)
                    sleep(30)
                    while getTile(tile.x,tile.y - 1).fg == 0 and getTile(tile.x,tile.y).flags ~= 0 do
                        place(itmSeed,0,0)
                        sleep(delayPlant)
                        reconnect(world,doorFarm,tile.x,tile.y - 1)
                    end
                end
            end
            if findItem(itmId) >= 190 then
                pnb(world)
                sleep(100)
                if findItem(itmSeed) >= 190 then
                    storeSeed(world)
                    sleep(100)
                end
            end
        end
    else
        for _,tile in pairs(getTiles()) do
            if findItem(itmSeed) == 0 and not dontPlant then
                take(world)
                sleep(100)
                botInfo("Farming")
                sleep(100)
            end
            if getTile(tile.x,tile.y - 1).ready then
                if not blacklistTile or check(tile.x,tile.y) then
                    tree[world] = tree[world] + 1
                    findPath(tile.x,tile.y - 1)
                    sleep(delayHarvest)
                    while getTile(tile.x,tile.y - 1).fg == itmSeed do
                        punch(0,0)
                        sleep(delayHarvest)
                        reconnect(world,doorFarm,tile.x,tile.y - 1)
                    end
                    if root then
                        while getTile(tile.x, tile.y).fg == (itmId + 4) and getTile(tile.x, tile.y).flags ~= 0 do
                            punch(0, 1)
                            sleep(delayHarvest)
                            reconnect(world,doorFarm,tile.x,tile.y - 1)
                        end
                        clear()
                        sleep(100)
                    end
                    collect(2)
                    sleep(30)
                end
            end
            if findItem(itmId) >= 190 then
                pnb(world)
                sleep(100)
                plant(world)
                sleep(100)
            end
        end
    end
    pnb(world)
    sleep(100)
    if separatePlant then
        plant(world)
        sleep(100)
    end
    if findItem(112) >= minimumGem then
        buy()
        sleep(100)
    end
end

while getBot().status ~= "online" do
    connect()
    sleep(5000)
end

if takePick and findItem(98) == 0 then
    warp(WorldPickAxe,DoorPickAxe)
    sleep(100)
    while findItem(98) == 0 do
        for _,obj in pairs(getObjects()) do
            if obj.id == 98 then
                findPath(round(obj.x / 32),math.floor(obj.y / 32))
                sleep(1000)
                collect(2)
                sleep(1000)
            end
            if findItem(98) > 0 then
                break
            end
        end
    end
    move(-1,0)
    sleep(100)
    sendPacket("action|drop\n|itemID|98",2)
    sleep(1000)
    sendPacket("action|dialog_return\ndialog_name|drop_item\nitemID|98|\ncount|"..(findItem(98) - 1),2)
    sleep(1000)
    wear(98)
    sleep(500)
end

while true do
    for index,world in pairs(worlds) do
        waktuWorld()
        sleep(100)
        warp(world,doorFarm)
        sleep(100)
        if not nuked then
            if detectFarmable then
                detect()
                sleep(100)
            end
            if findItem(itmSeed) == 0 and not dontPlant then
                take(world)
                sleep(100)
            end
            bl(world)
            sleep(100)
            botInfo("Starting "..world)
            sleep(100)
            tt = os.time()
            harvest(world)
            sleep(100)
            tt = os.time() - tt
            botInfo("Finished "..world)
            sleep(100)
            waktu[world] = math.floor(tt/3600).." Hours "..math.floor(tt%3600/60).." Minutes"
            sleep(100)
            if joinWorldAfterStore then
                join()
                sleep(100)
            end
        else
            waktu[world] = "NUKED"
            tree[world] = "NUKED"
            nuked = false
            sleep(5000)
        end
        if start < stop then
            start = start + 1
        else
            if restartTimer then
                waktu = {}
                tree = {}
            end
            start = 1
            loop = loop + 1
        end
    end
    if not looping then
        waktuWorld()
        sleep(100)
        botInfo("Finished All World, Removing Bot!")
        sleep(100)
        removeBot(getBot().name)
        break
    end
end