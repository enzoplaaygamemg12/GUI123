-- Complete Redux Hub Script for Blox Fruits

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

-- Create the GUI
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")

-- Configure Main Frame
MainFrame.Size = UDim2.new(0, 400, 0, 300)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.Parent = ScreenGui

-- Create Dropdown
local dropdown = Instance.new("TextButton")
dropdown.Size = UDim2.new(0, 200, 0, 50)
dropdown.Position = UDim2.new(0, 100, 0, 20)
dropdown.Text = "Select Page"
dropdown.Parent = MainFrame

local function createDropdownMenu() 
    local menu = Instance.new("Frame")
    menu.Size = UDim2.new(1, 0, 0, 100)
    menu.Position = UDim2.new(0, 0, 1, 0)
    menu.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
    menu.Parent = MainFrame
    return menu
end

-- Toggle Menu Visibility
local menuVisible = false
dropdown.MouseButton1Click:Connect(function()
    menuVisible = not menuVisible
    local dropdownMenu = createDropdownMenu()
    dropdownMenu.Visible = menuVisible
end)

-- Real-time Status Updates
local function updateStatus()
    local statusLabel = Instance.new("TextLabel")
    statusLabel.Size = UDim2.new(0, 200, 0, 50)
    statusLabel.Position = UDim2.new(0, 100, 0, 80)
    statusLabel.Text = "Status: Loading..."
    statusLabel.Parent = MainFrame
    
    while true do
        wait(1)
        statusLabel.Text = "Status: Active"
    end
end

updateStatus()

ScreenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
