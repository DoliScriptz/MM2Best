-- Load the Orion Library
local success, OrionLib = pcall(function()
    return loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
end)

if not success then
    warn("Failed to load Orion Library.")
    return
end

-- Function to create the white fade-in animation
local function createIntroAnimation()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundColor3 = Color3.new(1, 1, 1)
    frame.Parent = screenGui

    local textLabel = Instance.new("TextLabel")
    textLabel.Text = "MM2 Best Trade Scam and Duper"
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.new(0, 0, 0)
    textLabel.TextScaled = true
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.Parent = frame

    -- Fade-in animation
    for i = 1, 0, -0.01 do
        frame.BackgroundTransparency = i
        textLabel.TextTransparency = i
        wait(0.02)
    end

    -- Wait for a moment before fading out
    wait(2)

    -- Fade-out animation
    for i = 0, 1, 0.01 do
        frame.BackgroundTransparency = i
        textLabel.TextTransparency = i
        wait(0.02)
    end

    -- Remove the GUI after animation
    screenGui:Destroy()
end

-- Ensure the Orion Library loaded successfully before proceeding
if OrionLib then
    -- Create the intro animation
    createIntroAnimation()

    -- Create a Window
    local Window = OrionLib:MakeWindow({
        Name = "Your Custom Hub",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "OrionConfig"
    })

    -- Create a Tab for Duping
    local MainTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998", -- replace with an appropriate icon ID
        PremiumOnly = false
    })
    -- Create a Section for Duping
    local MainSection = MainTab:AddSection({
        Name = "Duping"
    })

    -- Add Button to the Duping Section
    MainSection:AddButton({
        Name = "Start Duping",
        Callback = function()
            print("Start Duping button pressed")
            -- Add your duping function or code here
        end
    })

    -- Create a new Tab for Trade Scam
    local TradeScamTab = Window:MakeTab({
        Name = "Trade Scam",
        Icon = "rbxassetid://4483345998", -- replace with an appropriate icon ID
        PremiumOnly = false
    })

    -- Create a Section in the Trade Scam Tab
    local TradeScamSection = TradeScamTab:AddSection({
        Name = "Scam Actions"
    })

    -- Add Buttons to the Trade Scam Section
    TradeScamSection:AddButton({
        Name = "Start Trade Scam",
        Callback = function()
            print("Start Trade Scam button pressed")
            -- Add your trade scam function or code here
        end
    })

    TradeScamSection:AddButton({
        Name = "Lag Person",
        Callback = function()
            print("Lag Person button pressed")
            -- Add your lag function or code here
        end
    })

    -- Initialize the GUI
    OrionLib:Init()
else
    warn("Orion Library was not loaded, script will not proceed.")
end
