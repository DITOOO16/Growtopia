-- Script made by HexaG0n | Autofish v1.28 | 30 OCT 2021

-- FUNCTONS

-- TH WRAPPERS

function sendMessage(m)
	sendPacket('action|input\n|text|'..m,2)
end

function placeTile(x,y,id)
	local pkt = {}
	pkt.type = 3
	pkt.int_data = id
	pkt.int_x = x
	pkt.int_y = y
	pkt.pos_x = getLocal().pos.x
	pkt.pos_y = getLocal().pos.y
	sendPacketRaw(pkt)
end


-- FISHING FUNCTIONS

function stopFish()
	local pkt = {}
	pkt.type = 0
	pkt.pos_x = getLocal().pos.x
	pkt.pos_y = getLocal().pos.y
	pkt.int_x = getLocal().tile.x
	pkt.int_y = getLocal().tile.y
	pkt.flags = 2592

	sendPacketRaw(pkt)
end

function fish(x, y, baitID)
	local pkt = {}
	pkt.type = 3
	pkt.int_data = baitID
	pkt.pos_x = getLocal().pos.x
	pkt.pos_y = getLocal().pos.y
	pkt.int_x = x
	pkt.int_y = y
	pkt.flags = 16
	sendPacketRaw(pkt)
end


-- OTHER

function hasItem(id)
	for _,v in ipairs(getInventory()) do
		if v.id==id then return true end
	end
	return false
end

function getArgs(str)
    local args={}
    for i in str:gmatch('[^%s]+') do
        args[#args+1]=i
    end
    return args
end

function stopf(m)
	stopFish()
	fishing=false
	sendMessage('`4STOPPED AUTOFISH! - '..m)
end


-- MAIN

baitID = 2914

-- Optional
-- owner = 'PLAYERNAME'
delay = 500


function autoFish()
	sendMessage('`9Do "!startfish" to start autofishing! - Type: BOT')
	stopFish()
	
	fishing=false
	
	-- COMMANDS HOOK
	
	addHook('OnVarlist', 'startstop', function(v)
	    if v[0]=="OnConsoleMessage" then
			pname__=v[1]:match('<`.[^`]+'):sub(4)
	        pmsg__=v[1]:match('`$[^`]+'):sub(3)


			if pmsg__ and pmsg__:sub(1,1)=='!' then
				if owner then
					if pname__~=owner then
						return
					end
				end
				pmsg__=getArgs(pmsg__:sub(2))

				
				if pmsg__[1]=='startfish' and not fishing then
					if not hasItem(baitID) then
						return sendMessage('`4STOPPED AUTOFISH! - No bait in inventory!')
					end
					
					fishing=true
					fish(water_x,water_y,baitID)
					sendMessage('`2STARTED AUTOFISH!')

					
				elseif pmsg__[1]=='stopfish' and fishing then
					stopf('Stopped')

					
				elseif pmsg__[1]=='setfish' then
					local t=getLocal().tile
					if pmsg__[2]=='left' then
						water_x,water_y=t.x-1,t.y+1
						return sendMessage('`6Set Position to '..water_x..', '..water_y..' - Side: Left')
					end
					
					water_x,water_y=t.x+1,t.y+1
					sendMessage('`6Set Position to '..water_x..', '..water_y..' - Side: Right')
					

				elseif pmsg__[1]=='delayfish' then
					if not tonumber(pmsg__[2]) then
						return sendMessage('`4ERROR: Please set a delay [ in ms ]!')
					end
					
					delay=tonumber(pmsg__[2])
					sendMessage('`2Successfuly set delay to '..delay..'ms or '..(delay/1000)..' seconds!')
					
					
				elseif pmsg__[1]=='setbait' then
					if not tonumber(pmsg__[2]) then
						return sendMessage('`4ERROR: Please set a bait ID!')
					end
					
					baitID=tonumber(pmsg__[2])
					sendMessage('`2Successfuly set baitID to `9'..baitID..' `2- "`6'..getItemInfo(baitID).name..'`2"')
					

				elseif pmsg__[1]=='breakfish' then
					stopFish()
					fishing=false
					sendMessage('`2Successfuly broke autofish!, reexecute to use again.')
					removeHooks()
				end
			end
	    end
	end)

	-- AUTOFISHING HOOK
	addHook('OnRawPacket', 'waitfish', function(orp)
		if fishing and orp.type==17 and math.floor(orp.pos_x/32)==water_x and math.floor(orp.pos_y/32)==water_y then
			stopFish()
			sleep(delay)
			if not hasItem(baitID) then
				fishing=false
				return sendMessage('`4STOPPED AUTOFISH! - No more bait in inventory!')
			end
			fish(water_x,water_y,baitID)
		end
	end)
	
	-- AUTO FIX, BP SPACE, DRDE, ETC. HOOK
	addHook('OnVarlist','cdrde',function(v)
		if v[0]=='OnTalkBubble' and fishing then
			local posb={
				-- DRDE
				
				['You need to drill the ice before you can fish!']=function()
					if not hasItem(5522) and fishing then
						fishing=false
						return sendMessage('`4STOPPED AUTOFISH! - No more hand drill in inventory!')
					end
					
					placeTile(water_x,water_y,5522)
					fish(water_x,water_y,baitID)
				end,
				
				['You need to detonate the uranium before you can fish!']=function()
					if not hasItem(5524) and fishing then
						fishing=false
						return sendMessage('`4STOPPED AUTOFISH! - No more hand drill in inventory!')
					end
					placeTile(water_x,water_y,5524)
					fish(water_x,water_y,baitID)
				end,
				
				-- OTHER [ ANTI BLOCK & BP SPC ]
				
				["There's stuff in the way there!"]=function()
					stopf('Block is in the way!')
				end,
				
				['You need backpack space to fish!']=function()
					stopf('No more backpack space!')
				end,
				
				['You can only fish in water, oddly!']=function()
					stopf('Water was removed! / No Water!')
				end
			}
			posb[v[2]]()
			return true
		end
	end)
	
	-- AUTO "Sit still if you want to fish!" HOOK
	addHook('OnVarlist','autostartfish',function(v)
		if v[0]=='OnConsoleMessage' and v[1]=='Sit still if you wanna fish!' and fishing then
			stopf('Sit still! [ Moved/Killed/etc. ]')
		end
	end)
end
autoFish()