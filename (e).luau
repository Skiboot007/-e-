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
      while true do
        wait(1)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
      end
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
    CommandSection:NewTextBox("Telpoport", "Tp To A Player", function(txt)
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local pl2 = txt
        local humanoid = game.Players.LocalPlayer.Character.Humanoid
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        wait(0.1)
        pl.CFrame = game.Players[pl2].Character.HumanoidRootPart.CFrame
    end)
