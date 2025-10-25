local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

local key="189707"
local entered=""

setclipboard("discord.gg/fAFyDCu43d")

game.StarterGui:SetCore("SendNotification", {
	Title = "Key",
	Text = "Goto .gg/fAFyDCu43d and in #Key to get the key",
	Duration = 6
})

local keygui=Instance.new("ScreenGui")
keygui.Name = "KeyGui"
keygui.Parent = PlayerGui

local uidrag = Instance.new("UIDragDetector")
uidrag.Parent = keygui
uidrag.DragStyle = Enum.UIDragDetectorDragStyle.TranslatePlane
uidrag.ResponseStyle = Enum.UIDragDetectorResponseStyle.Offset


local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(0, 387, 0, 165)
KeyFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
KeyFrame.BackgroundColor3 = Color3.fromRGB(30,31,32)
KeyFrame.Parent = keygui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0,12)
corner.Parent = KeyFrame

local titel = Instance.new("TextLabel")
titel.Text = "Anarchy xN"
titel.Size = UDim2.new(1, 0, 0, 40)
titel.BackgroundTransparency = 1
titel.TextColor3 = Color3.fromRGB(199, 199, 199)
titel.Font = Enum.Font.FredokaOne 
titel.TextSize = 18
titel.RichText = true
titel.Parent = KeyFrame

local KeyInput = Instance.new("TextBox")
KeyInput.PlaceholderText = "Enter key..."
KeyInput.Size = UDim2.new(0.9, 0, 0, 35)
KeyInput.Position = UDim2.new(0.05, 0, 0.3, 0)
KeyInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.Font = Enum.Font.Code
KeyInput.TextSize = 14
KeyInput.Parent = KeyFrame
KeyInput.ClearTextOnFocus = false

local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Text = "Submit"
SubmitBtn.Size = UDim2.new(0.9, 0, 0, 35)
SubmitBtn.Position = UDim2.new(0.05, 0, 0.65, 0)
SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
SubmitBtn.TextColor3 = Color3.new(1, 1, 1)
SubmitBtn.Font = Enum.Font.SourceSansBold
SubmitBtn.TextSize = 14
SubmitBtn.Parent = KeyFrame

local SubmitCorner = Instance.new("UICorner")
SubmitCorner.CornerRadius = UDim.new(0, 8)
SubmitCorner.Parent = SubmitBtn

SubmitBtn.MouseButton1Click:Connect(function()
	entered = KeyInput.Text
	if entered == key then
		keygui:Destroy()
		wait(1)
		loadMainExecutor()
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "Error!",
			Text = "Invalid key!",
			Duration = 6
		})
		KeyInput.Text = ""
	end
end)

KeyInput.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		SubmitBtn.MouseButton1Click:Fire()
	end
end)

function loadMainExecutor()
	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Name = "exacutir"
	ScreenGui.Parent = PlayerGui
	ScreenGui.ResetOnSpawn = false

	local MainFrame = Instance.new("Frame")
	MainFrame.Name = "MainFrame"
	MainFrame.Parent = ScreenGui
	MainFrame.BackgroundColor3 = Color3.fromRGB(30,31,32)
	MainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
	MainFrame.Size = UDim2.new(0, 387, 0, 165)
	MainFrame.Active = true
	MainFrame.Draggable = true

	local FrameCorner = Instance.new("UICorner")
	FrameCorner.CornerRadius = UDim.new(0, 10)
	FrameCorner.Parent = MainFrame

	local TitleLabel = Instance.new("TextLabel")
	TitleLabel.Name = "TitleLabel"
	TitleLabel.Parent = MainFrame
	TitleLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TitleLabel.Size = UDim2.new(1, 0, 0, 30)
	TitleLabel.Font = Enum.Font.SourceSansBold
	TitleLabel.Text = "Anarchy xN SS"
	TitleLabel.TextColor3 = Color3.fromRGB(199, 199, 199)
	TitleLabel.TextSize = 16

	local TitleCorner = Instance.new("UICorner")
	TitleCorner.CornerRadius = UDim.new(0, 6)
	TitleCorner.Parent = TitleLabel

	local ScriptBox = Instance.new("TextBox")
	ScriptBox.Name = "ScriptBox"
	ScriptBox.Parent = MainFrame
	ScriptBox.BackgroundColor3 = Color3.fromRGB(199, 199, 199)
	ScriptBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScriptBox.BorderSizePixel = 1
	ScriptBox.Position = UDim2.new(0, 8, 0, 38)
	ScriptBox.Size = UDim2.new(1, -16, 1, -80)
	ScriptBox.Font = Enum.Font.Code
	ScriptBox.Text = "require(12345678)"
	ScriptBox.TextColor3 = Color3.fromRGB(0, 0, 0)
	ScriptBox.TextSize = 12
	ScriptBox.TextXAlignment = Enum.TextXAlignment.Left
	ScriptBox.TextYAlignment = Enum.TextYAlignment.Top
	ScriptBox.MultiLine = true
	ScriptBox.ClearTextOnFocus = false

	local ScriptBoxCorner = Instance.new("UICorner")
	ScriptBoxCorner.CornerRadius = UDim.new(0, 6)
	ScriptBoxCorner.Parent = ScriptBox

	-- Helper to create buttons
	local function createButton(name, text, xPos)
		local btn = Instance.new("TextButton")
		btn.Name = name
		btn.Parent = MainFrame
		btn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		btn.Position = UDim2.new(xPos, 0, 1, -38)
		btn.Size = UDim2.new(0.23, -4, 0, 25)
		btn.Font = Enum.Font.SourceSansBold
		btn.Text = text
		btn.TextColor3 = Color3.fromRGB(255, 255, 255)
		btn.TextSize = 12
		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(0, 6)
		corner.Parent = btn
		return btn
	end

	local ExecuteBtn   = createButton("ExecuteButton",   "Execute",   0)
	local ClearBtn     = createButton("ClearButton",     "Clear",     0.25)
	local BackdoorBtn  = createButton("BackdoorButton",  "Backdoor",  0.5)
	local R6Btn        = createButton("R6Button",        "R6",        0.75)
	
	-- funcations
	local function executeScript()
		local code = ScriptBox.Text
		if code and code ~= "" then
			local ok, err = pcall(function()
				loadstring(code)()
			end)
			if not ok then
				game.StarterGui:SetCore("SendNotification", {
					Title = "Error!",
					Text = "Script error: " .. tostring(err),
					Duration = 5
				})
			else
				game.StarterGui:SetCore("SendNotification", {
					Title = "Sucess!",
					Text = "Script executed!",
					Duration = 3
				})
			end
		end
	end

	local function clearScript()
		ScriptBox.Text = "AnarchyXN"
	end

	local function checkBackdoor()
		local code = ScriptBox.Text
		if code:lower():find("require") then
			local ok, result = pcall(loadstring, code)
			if ok then
				game.StarterGui:SetCore("SendNotification", {
					Title = "Backdoor found!",
					Text = "Backdoor executed!",
					Duration = 3
				})
			else
				game.StarterGui:SetCore("SendNotification", {
					Title = "Error!",
					Text = "Backdoor failed!"..tostring(error),
					Duration = 5
				})
			end
		else
			game.StarterGui:SetCore("SendNotification", {
				Title = "Info",
				Text = "No code found.",
				Duration = 3
			})
		end
	end

	local function executeR6Script()
		local ok, err = pcall(function()
			loadstring(game:HttpGet(
				"https://rawscripts.net/raw/Universal-Script-GAZER-FE-ANIMATION-EDITOR-54459"
				))()
		end)
		if not ok then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Error!",
				Text = "R6 script error: " .. tostring(err),
				Duration = 5
			})
		else
			game.StarterGui:SetCore("SendNotification", {
				Title = "sucess!",
				Text = "R6 script executed! ",
				Duration = 3
			})
		end
	end

	-- ==============================
	-- CONNECTIONS
	-- ==============================
	ExecuteBtn.MouseButton1Click:Connect(executeScript)
	ClearBtn.MouseButton1Click:Connect(clearScript)
	BackdoorBtn.MouseButton1Click:Connect(checkBackdoor)
	R6Btn.MouseButton1Click:Connect(executeR6Script)

	ScriptBox.FocusLost:Connect(function(enter)
		if enter then executeScript() end
	end)

	print("ExecptionPointReach: AnarchyxnSS")
end
