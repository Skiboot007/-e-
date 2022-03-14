local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
if game.PlaceId == 4620170611 then
    local venyx = library.new("E(hub) Break In", 5013109572)
    local p1 = venyx:addPage("Main", 5012544693)
    venyx:Notify("Just A Warning", "The Sever Might Lag")
    local s2 = p1:addSection("Player")
    local s1 = p1:addSection("Food")
    s2:addSlider("Walkspeed", 16, 1, 400, function(value)
        W = value
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end)
    s2:addToggle("loop WalkSpeed", false, function(value)
        if value == true then
            WL = true
    else
            WL = false
    end
    while WL == true do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = W
        wait(0.3)
    end
    end)
    s1:addToggle("Give Apple", false, function(value)
        if value == true then
            G1 = true
        else
            G1 = false
        end
        while G1 == true do
            local args = {
                [1] = "Apple"
            }
            game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))
            wait(0.3)
        end
    end)
    s1:addToggle("Eat Apple", false, function(value)
        if value == true then
            E2 = true
        else
            E2 = false
        end
        while E2 == true do
            local args = {
                [1] = 15,
                [2] = "Apple"
            }
            game:GetService("ReplicatedStorage").RemoteEvents.Energy:FireServer(unpack(args))
            wait(0.3)
        end
    end)
    s1:addToggle("Give BloxyCola", false, function(value)
        if value == true then
            G2 = true
        else
            G2 = false
        end
        while G2 == true do
            local args = {
                [1] = "BloxyCola"
            }
            game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))
                wait(0.3)
            end
    end)
    s1:addToggle("Drink BloxyCola", false, function(value)
        if value == true then
            E3 = true
        else
            E3 = false
        end
        while E3 == true do
            local args = {
                [1] = 15,
                [2] = "BloxyCola"
            }
            game:GetService("ReplicatedStorage").RemoteEvents.Energy:FireServer(unpack(args))
            wait(0.3)
        end
    end)
    s1:addToggle("Give Cookie", false, function(value)
        if value == true then
            G3 = true
        else
            G3 = false
        end
        while G3 == true do
            local args = {
                [1] = "Cookie"
            }
            game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))
            wait(0.3)
        end
    end)
    s1:addToggle("Eat Cookie", false, function(value)
        if value == true then
            E4 = true
        else
            E4 = false
        end
        while E4 == true do
            local args = {
                [1] = 15,
                [2] = "Cookie"
            }
            game:GetService("ReplicatedStorage").RemoteEvents.Energy:FireServer(unpack(args))
            wait(0.3)
        end
    end)
    s1:addToggle("Give Pizza", false, function(value)
        if value == true then
            G4 = true
        else
            G4 = false
        end
        while G4 == true do
            local args = {
                [1] = "Pizza1"
            }
            game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))
            wait(0.3)
        end
    end)
elseif game.PlaceId == 155615604 then
    local venyx = library.new("E(hub) Prison Life", 5013109572)
    local p1 = venyx:addPage("Main", 5012544693)
    local s1 = p1:addSection("Player")
    s1:addSlider("Walkspeed", 16, 1, 400, function(value)
        W = value
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end)
    s1:addToggle("loop WalkSpeed", false, function(value)
        if value == true then
            WL = true
        else
            WL = false
        end
        while WL == true do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = W
            wait(0.3)
        end
    end)
    s1:addSlider("Gravity", 100, 0, 100, function(value)
        game.Workspace.Gravity = value
    end)
    s1:addDropdown("Gun Giver", {"ak47","Remington870","M9"}, function(value)
        if value == "ak47" then
            local args = {
                [1] = workspace.Prison_ITEMS.giver:FindFirstChild("AK-47").ITEMPICKUP
            }
            workspace.Remote.ItemHandler:InvokeServer(unpack(args)) 
        elseif value == "Remington870" then
            local args = {
                [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP
            }
            workspace.Remote.ItemHandler:InvokeServer(unpack(args))

        else
            local args = {
                [1] = workspace.Prison_ITEMS.giver:FindFirstChild("M9").ITEMPICKUP
            }
            workspace.Remote.ItemHandler:InvokeServer(unpack(args)) 
        end
    end)
else
    local venyx = library.new("E(hub) Universal", 5013109572)
    local p1 = venyx:addPage("Main", 5012544693)
    local s1 = p1:addSection("Player")
    s1:addSlider("Walkspeed", 16, 1, 400, function(value)
        W = value
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end)
    s1:addToggle("loop WalkSpeed", false, function(value)
        if value == true then
            WL = true
        else
            WL = false
        end
        while WL == true do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = W
            wait(0.3)
        end
    end)
    s1:addSlider("Gravity", 100, 0, 100, function(value)
        game.Workspace.Gravity = value
    end)
end
