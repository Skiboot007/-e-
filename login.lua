

local login = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local side4 = Instance.new("Frame")
local sidestraghit2 = Instance.new("Frame")
local sidestraight1 = Instance.new("Frame")
local side3 = Instance.new("Frame")
local side2 = Instance.new("Frame")
local side1 = Instance.new("Frame")
local _1 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local _4 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Attach = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local password = Instance.new("TextBox")
local UICorner_4 = Instance.new("UICorner")
local _2 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local _3 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")

--Properties:

login.Name = "login"
login.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
login.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = login
main.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
main.Position = UDim2.new(0.355567187, 0, 0.344676942, 0)
main.Size = UDim2.new(0, 150, 0, 260)

side4.Name = "side 4"
side4.Parent = main
side4.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
side4.Position = UDim2.new(1.05333328, 0, 0, 0)
side4.Size = UDim2.new(0, 6, 0, 76)

sidestraghit2.Name = "side straghit 2"
sidestraghit2.Parent = main
sidestraghit2.BackgroundColor3 = Color3.fromRGB(255, 154, 65)
sidestraghit2.Position = UDim2.new(1.01333332, 0, 0, 0)
sidestraghit2.Size = UDim2.new(0, 6, 0, 260)

sidestraight1.Name = "side straight 1"
sidestraight1.Parent = main
sidestraight1.BackgroundColor3 = Color3.fromRGB(255, 154, 65)
sidestraight1.Size = UDim2.new(0, 6, 0, 260)

side3.Name = "side 3"
side3.Parent = main
side3.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
side3.Position = UDim2.new(-0.0400000364, 0, 0, 0)
side3.Size = UDim2.new(0, 6, 0, 76)

side2.Name = "side 2"
side2.Parent = main
side2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
side2.Position = UDim2.new(-0.0400000364, 0, 0.707692325, 0)
side2.Size = UDim2.new(0, 6, 0, 76)

side1.Name = "side 1"
side1.Parent = main
side1.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
side1.Position = UDim2.new(1.05333328, 0, 0.707692325, 0)
side1.Size = UDim2.new(0, 6, 0, 76)

_1.Name = "1"
_1.Parent = main
_1.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
_1.Position = UDim2.new(-0.106666669, 0, -0.0346153863, 0)
_1.Size = UDim2.new(0, 40, 0, 42)

UICorner.CornerRadius = UDim.new(0.100000001, 0)
UICorner.Parent = _1

_4.Name = "4"
_4.Parent = main
_4.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
_4.Position = UDim2.new(-0.106666796, 0, 0.86153847, 0)
_4.Size = UDim2.new(0, 40, 0, 42)

UICorner_2.CornerRadius = UDim.new(0.100000001, 0)
UICorner_2.Parent = _4

Attach.Name = "Attach"
Attach.Parent = main
Attach.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Attach.Position = UDim2.new(0.159999996, 0, 0.707692325, 0)
Attach.Size = UDim2.new(0, 111, 0, 26)
Attach.Font = Enum.Font.SourceSans
Attach.Text = "Attach"
Attach.TextColor3 = Color3.fromRGB(255, 154, 65)
Attach.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0.100000001, 0)
UICorner_3.Parent = Attach

password.Name = "password"
password.Parent = main
password.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
password.Position = UDim2.new(0.159999996, 0, 0.357692331, 0)
password.Size = UDim2.new(0, 111, 0, 23)
password.Font = Enum.Font.SourceSans
password.Text = "password"
password.TextColor3 = Color3.fromRGB(255, 154, 65)
password.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0.100000001, 0)
UICorner_4.Parent = password

_2.Name = "2"
_2.Parent = main
_2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
_2.Position = UDim2.new(0.899999976, 0, -0.0346153863, 0)
_2.Size = UDim2.new(0, 40, 0, 42)

UICorner_5.CornerRadius = UDim.new(0.100000001, 0)
UICorner_5.Parent = _2

_3.Name = "3"
_3.Parent = main
_3.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
_3.Position = UDim2.new(0.899999976, 0, 0.86153847, 0)
_3.Size = UDim2.new(0, 40, 0, 42)

UICorner_6.CornerRadius = UDim.new(0.100000001, 0)
UICorner_6.Parent = _3

frame = main
frame.Draggable = true
frame.Active = true
frame.Selectable = true

Attach.MouseButton1Down:connect(function()
 if password.Text == test do
  login.Enabled = false
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Skiboot007/-e-/main/(e).luau"))()
 end
end)
