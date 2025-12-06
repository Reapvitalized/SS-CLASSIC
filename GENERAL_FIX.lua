repeat wait() until game.Loaded and game.Players.LocalPlayer and game.Players.LocalPlayer.PlayerGui
if game.PlaceId ~= 17288425532 then return end
local pass
local function getPass()
if pass then
return pass
end

for _, obj in next, getgc(true) do
if typeof(obj) ~= "table" or rawget(obj, "RootPartFollow") == nil then
continue
end

local item = rawget(obj, "Pass")
if typeof(item) ~= "Instance" then
continue
end

pass = item
break
end

return pass
end

if not getPass() then
warn("fail")
return
end getPass()
local oldIndex
oldIndex = hookmetamethod(game, "__index", function(self, key)
    if not checkcaller() and self == workspace and key == "Live" then
        return workspace
    end
    return oldIndex(self, key)
end)

local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    local args = {...}
    
    if not checkcaller() and self == workspace and method == "FindFirstChild" or method == "findFirstChild" then
        if args[1] == "Live" then
            return workspace
        end
    end
    
    return oldNamecall(self, ...)
end)
local t={'Chara','SFChara','Undyne','XSans','Betty'}
game.Players.LocalPlayer.CharacterAdded:Connect(function(c)
repeat wait() until game.Players.LocalPlayer:WaitForChild('Backpack'):FindFirstChild('Main')
local l=game.Players.LocalPlayer
local ch=l.Character
local hr=ch.HumanoidRootPart
local h=ch.Humanoid
local ca=workspace.CurrentCamera
local m=l:GetMouse()
local function rs() local e,en={},8777 for i=1,math.random(140,180) do table.insert(e,utf8.char(math.random(en,en+1))) end return table.concat(e) end
getgenv().MOVESETS=getgenv().MOVESETS or {}
local function DS() for i,v in pairs(getgenv().MOVESETS) do if typeof(v)=="RBXScriptConnection" then v:Disconnect() end end end
local function SS() if getgenv().MOVESETS then DS() else getgenv().MOVESETS={} end end
SS() getgenv().MOVESETS=nil getgenv().MOVESETS={}
local function s(cn) local st=rs() if getgenv().MOVESETS then getgenv().MOVESETS[st or tostring(#getgenv().MOVESETS+1)]=cn return cn end end
local cr=false for i,v in pairs(t) do 
if ch.Type.Value==v then cr=true break end end
if not cr then return end s(h:GetPropertyChangedSignal('Health'):Connect(function()
if h.Health==0 then task.spawn(function() repeat wait()
task.spawn(function() local a={[1]=pass,[2]="Blocking",[3]=true} game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(a)
end)
local v1={[1]=pass,[2]="Damage",[3]=0,[4]=l.Character} game:GetService("ReplicatedStorage").Remotes.Events:FireServer(v1)
until h.Health~=0 end)
local v=Instance.new('StringValue',ch)
v.Name='Hit'
repeat wait() until h.Health>=2
v:Destroy()
task.spawn(function() local a={[1]=pass,[2]="Blocking",[3]=false} game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(a)
end)                    
end end)) end)
