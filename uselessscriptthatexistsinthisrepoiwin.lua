    local Shadow = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Main = Instance.new("Frame")
    local Message = Instance.new("TextLabel")
    local CloseButton = Instance.new("TextButton")

    function randomString()
        local length = math.random(10, 20)
        local array = {}
        for i = 1, length do
            array[i] = string.char(math.random(32, 126))
        end
        return table.concat(array)
    end

    local PARENT = nil
    if get_hidden_gui or gethui then
        local hiddenUI = get_hidden_gui or gethui
        local Main = Instance.new("ScreenGui")
        Main.Name = randomString()
        Main.Parent = hiddenUI()
        PARENT = Main
    elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
        local Main = Instance.new("ScreenGui")
        Main.Name = randomString()
        syn.protect_gui(Main)
        Main.Parent = COREGUI
        PARENT = Main
    elseif COREGUI:FindFirstChild('RobloxGui') then
        PARENT = COREGUI.RobloxGui
    else
        local Main = Instance.new("ScreenGui")
        Main.Name = randomString()
        Main.Parent = COREGUI
        PARENT = Main
    end

    Shadow.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Shadow.ZIndex = 10
    Shadow.Size = UDim2.new(0, 455, 0, 20)
    Shadow.Position = UDim2.new(0.327, 0, -1, 0)
    Shadow.BorderSizePixel = 0
    Shadow.Parent = PARENT

    Main.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
    Main.ZIndex = 10
    Main.Size = UDim2.new(0, 455, 0, 215)
    Main.Position = UDim2.new(0, 0, 1, 0)
    Main.BorderSizePixel = 0
    Main.Parent = Shadow

    Title.Size = UDim2.new(0, 375, 0, 20)
    Title.Position = UDim2.new(0.1, 0, 0, 0)
    Title.BackgroundTransparency = 1
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Text = "Message from Infinite Yield Reborn"
    Title.ZIndex = 10
    Title.Font = Enum.Font.SourceSans 
    Title.TextScaled = false
    Title.TextSize = 18
    Title.Parent = Shadow

    CloseButton.Size = UDim2.new(0, 20, 0, 20)
    CloseButton.Position = UDim2.new(0.95, 0, 0, 0)
    CloseButton.BackgroundTransparency = 1
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.Text = "x"
    CloseButton.ZIndex = 10
    CloseButton.Font = Enum.Font.Code
    CloseButton.TextSize = 20 
    CloseButton.TextXAlignment = Enum.TextXAlignment.Center
    CloseButton.TextYAlignment = Enum.TextYAlignment.Center
    CloseButton.Parent = Shadow
    CloseButton.MouseButton1Click:Connect(function()
    Shadow:TweenPosition(UDim2.new(0.327, 0, -1, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
    task.wait(0.5)
    Shadow:Destroy()
    end)

    Message.Size = UDim2.new(0, 455, 0, 215)
    Message.Position = UDim2.new(0, 0, 0, 0)
    Message.BackgroundTransparency = 1
    Message.TextColor3 = Color3.fromRGB(255, 255, 255)
    Message.Text = "IY or IYR is already loaded.Probably U Have To Rejoin To Exec IYR."
    Message.ZIndex = 10
    Message.TextWrapped = true
    Message.Font = Enum.Font.SourceSans
    Message.TextSize = 16
    Message.TextScaled = false
    Message.Parent = Main

    Shadow:TweenPosition(UDim2.new(0.327, 0, 0.327, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
    task.wait(10)
    if Shadow.Parent then
        Shadow:TweenPosition(UDim2.new(0.327, 0, -1, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
        task.wait(0.5)
        Shadow:Destroy()
    end