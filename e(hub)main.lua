local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
if game.PlaceId == 4620170611 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Skiboot007/-e-/main/e(hub)Breakin.lua"))()
elseif game.PlaceId == 155615604 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Skiboot007/-e-/main/e(hub)PrisonLife"))()
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
