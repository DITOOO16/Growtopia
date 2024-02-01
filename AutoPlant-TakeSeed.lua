
-- decrypt 303

idposko = "Tavern Sign"
-- CHANGE IT TO WHATEVER U LIKE , Note: Only 1 IN WORLD
delay   = 300 -- Delay Suggested 200-300
seedid = 5667 -- ID SEED



posko = FindItemID(idposko)

function plants(x,y)
pkt = {}
pkt.px = x;
pkt.py = y;
pkt.x = x*32
pkt.y = y*32
pkt.type = 3;
pkt.value = seedid;
SendPacketRaw (false, pkt);
end

function inv(itemid)
    for _, item in pairs(GetInventory()) do
        if item.id == itemid then
            return item.amount
        end
    end
    return 0
end

function tp(ID)
for _, tile in pairs (GetTiles()) do
if tile.fg == ID and GetTiles(tile.x, tile.y)
     then
        FindPath(tile.x, tile.y)
        Sleep(700)
end
end
end

function plant()
        for _, tile in pairs (GetTiles()) do
if (tile.fg == 0 and GetTile(tile.x, tile.y + 1).fg ~= 0 and GetTile(tile.x, tile.y + 1).fg % 2 == 0 and GetTile(tile.x, tile.y + 1).fg ~= 6 and inv(seedid) > 0)then
 Sleep(delay)
FindPath(tile.x, tile.y)
Sleep(delay)
plants(math.floor(GetLocal().posX/32), math.floor(GetLocal().posY/32))
end
end
end


function main()
plant()
if inv(seedid) == 0 then
tp(posko)
end
end

function AvoidError()
        if pcall(function()
                                main()
                        end) == false then
                Sleep(100)
                AvoidError()
        end
        Sleep(100)
        AvoidError()
end

dialog = [[add_label_with_icon|big|Auto Plant + Take Seed  |left|]] .. seedid .. [[|
add_textbox|`0By Rayy#1099|left|
add_spacer|small|
add_textbox|`8Rules :|left|
add_textbox|`!- Do Not Sell This Free Script!!|left|
add_textbox|`!- Do Not Decrypt My Script!!|left||
add_textbox|`!- If You Bought This Script U Are Stupid ASF|left||
add_spacer|small|
add_textbox|`pSee The Tutorial At My Youtube|left|
add_textbox|`5Join My Discord Server , Link Bellow!!|left|
add_spacer|small|
add_url_button||`$YouTube``|NOFLAGS|https://youtube.com/channel/UCB2Z_uQJjQbZB0-uoMlMXpw|Open Link?|0|0|
add_url_button||`$Discord``|NOFLAGS|https://discord.gg/hEvy89tYxq|Open Link?|0|0|
add_quick_exit|]]

var = {}
var.v0 = "OnDialogRequest"
var.v1 = dialog

SendPacket(2,"action|input\n|text|Decrypt By 303")
SendVariant(var)
AvoidError()