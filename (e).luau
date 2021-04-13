if game.PlaceId == 4620170611 then
  local energy = false
  local apple = false
  local colors = {
    SchemeColor = Color3.fromRGB(61, 61, 61),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255, 145, 0),
    ElementColor = Color3.fromRGB(28, 28, 28)
  }
  
  local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
  local Window = Library.CreateLib("Break In", colors)
  
  -- PLAYER
  local Player = Window:NewTab("Player")
  local PlayerSection = Player:NewSection("Player")
  
  PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
  end)
  
  PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
     game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
  end)
  
  PlayerSection:NewSlider("Gravity", "Changes the Gravity", 250, 50, function(v)
     game.Workspace.Gravity = v
  end)
  
  PlayerSection:NewButton("Noclip", "Press E To Noclip", function()
     noclip = false
     game:GetService('RunService').Stepped:connect(function()
       if noclip then
         game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
       end
     end)
  plr = game.Players.LocalPlayer
  mouse = plr:GetMouse()
  mouse.KeyDown:connect(function(key)
  
   if key == "e" then
     noclip = not noclip
      game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
     end
   end)
  end)
  
  -- MAIN
  local Main = Window:NewTab("Main")
  local MainSection = Main:NewSection("Main")

  MainSection:NewToggle("Give Apple", "Gives You Alot Off Appls", function(state)
    if state then
          apple = true
    else
        apple = false
    end
    while apple == true do
      wait(0.1)
       local A_1 = "Apple"
       local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
       Event:FireServer(A_1)
  end
end)

  MainSection:NewToggle("Use Apples", "Use Apples", function(state)
    if state then
        energy = true
    else
        energy = false
    end
    while energy == true do
      wait(0.1)
        local A_1 = 15
        local A_2 = "Apple"
        local Event = game:GetService("ReplicatedStorage").RemoteEvents.Energy
        Event:FireServer(A_1, A_2)
    end
end)
else
  local colors = {
    SchemeColor = Color3.fromRGB(61, 61, 61),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255, 145, 0),
    ElementColor = Color3.fromRGB(28, 28, 28)
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
 local Window = Library.CreateLib("(e)", colors)

 -- PLAYER
 local Player = Window:NewTab("Player")
 local PlayerSection = Player:NewSection("Player")

 PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
 end)

 PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
     game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
 end)

 PlayerSection:NewSlider("Gravity", "Changes the Gravity", 250, 50, function(v)
     game.Workspace.Gravity = v
 end)
 
 PlayerSection:NewButton("Noclip", "Press E To Noclip", function()
     noclip = false
     game:GetService('RunService').Stepped:connect(function()
       if noclip then
         game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
       end
     end)
 plr = game.Players.LocalPlayer
 mouse = plr:GetMouse()
 mouse.KeyDown:connect(function(key)

   if key == "e" then
     noclip = not noclip
      game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
     end
   end)
 end)

 -- MAIN
 local Main = Window:NewTab("Main")
 local MainSection1 = Main:NewSection("PrisonLife")

 MainSection1:NewButton("Give All Guns", "Gives You All The Guns In Prison Life", function()
     local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver["AK-47"].ITEMPICKUP
     local A_2 = game:GetService("Workspace")["Prison_ITEMS"].giver["Remington 870"].ITEMPICKUP
     local A_3 = game:GetService("Workspace")["Prison_ITEMS"].giver["M9"].ITEMPICKUP
     local Event = game:GetService("Workspace").Remote.ItemHandler
     Event:InvokeServer(A_1)
     Event:InvokeServer(A_2)
     Event:InvokeServer(A_3)
 end)


 -- Command
 local Command = Window:NewTab("Command")
 local CommandSection = Command:NewSection("Command")
 CommandSection:NewButton("Get GameID", "Gets The Game ID", function()
  print(game.PlaceId)
 end)
 CommandSection:NewTextBox("Telpoport", "Tp To A Player", function(txt)
     local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
     local pl2 = txt
     local humanoid = game.Players.LocalPlayer.Character.Humanoid
     humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
     wait(0.1)
     pl.CFrame = game.Players[pl2].Character.HumanoidRootPart.CFrame
 end)
-- Visual
local Visual = Window:NewTab("visual")
local VisualSection = Visual:NewSection("Visual")
VisualSection:NewToggle("Charms", "Enables Charms", function(state)
  charms = false
  if state then
      charms = true
  else
      charms = false
  end
  function CreateSG(name,parent,face)
    local SurfaceGui = Instance.new("SurfaceGui",parent)
    SurfaceGui.Parent = parent
    SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    SurfaceGui.Face = Enum.NormalId[face]
	SurfaceGui.LightInfluence = 0
	SurfaceGui.ResetOnSpawn = false
    SurfaceGui.Name = name
    SurfaceGui.AlwaysOnTop = true
    local Frame = Instance.new("Frame",SurfaceGui)
	Frame.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
	Frame.Size = UDim2.new(1,0,1,0)
end

while charms == true do
  wait(1)
for i,v in pairs (game:GetService("Players"):GetPlayers()) do
    if v ~= game:GetService("Players").LocalPlayer and v.Character ~= nil and v.Character:FindFirstChild("Head") and v.Character.Head:FindFirstChild("cham") == nil then
        for i,v in pairs (v.Character:GetChildren()) do
        if v:IsA("MeshPart") or v.Name == "Head" then
        CreateSG("cham",v,"Back")
        CreateSG("cham",v,"Front")
        CreateSG("cham",v,"Left")
        CreateSG("cham",v,"Right")
        CreateSG("cham",v,"Right")
        CreateSG("cham",v,"Top")
        CreateSG("cham",v,"Bottom")
        end
        end
    end
end
end
end)
end
