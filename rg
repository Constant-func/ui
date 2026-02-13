local RageLib = {}
RageLib.__index = RageLib

-- COLORS
local COLORS = {
    Primary = Color3.fromRGB(20, 20, 20),
    Secondary = Color3.fromRGB(28, 28, 28),
    Accent = Color3.fromRGB(220, 30, 30),
    AccentLight = Color3.fromRGB(255, 100, 100),
    Text = Color3.fromRGB(255, 255, 255),
    TextDim = Color3.fromRGB(130, 130, 130),
}

function RageLib.CreateWindow(title, logoId)
    local self = setmetatable({}, RageLib)
    
    local Player = game.Players.LocalPlayer
    local Parent = Player:WaitForChild("PlayerGui")
    
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "RageGUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = Parent
    
    local shadow = Instance.new("ImageLabel")
    shadow.Name = "shadow"
    shadow.Parent = ScreenGui
    shadow.BackgroundTransparency = 1
    shadow.Position = UDim2.new(0.32, 0, 0.17, 0)
    shadow.Size = UDim2.new(0, 609, 0, 530)
    shadow.Image = "http://www.roblox.com/asset/?id=6105530152"
    shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    shadow.ImageTransparency = 0.2
    shadow.ZIndex = 0
    
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = shadow
    MainFrame.BackgroundColor3 = COLORS.Primary
    MainFrame.Position = UDim2.new(0.048, 0, 0.075, 0)
    MainFrame.Size = UDim2.new(0, 553, 0, 452)
    MainFrame.BorderSizePixel = 0
    MainFrame.ZIndex = 1
    
    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 5)
    MainCorner.Parent = MainFrame
    
    local sideHeading = Instance.new("Frame")
    sideHeading.Name = "sideHeading"
    sideHeading.Parent = MainFrame
    sideHeading.BackgroundColor3 = COLORS.Secondary
    sideHeading.Size = UDim2.new(0, 155, 0, 452)
    sideHeading.BorderSizePixel = 0
    sideHeading.ZIndex = 2
    
    local SideCorner = Instance.new("UICorner")
    SideCorner.CornerRadius = UDim.new(0, 5)
    SideCorner.Parent = sideHeading
    
    local sideCover = Instance.new("Frame")
    sideCover.Name = "sideCover"
    sideCover.Parent = sideHeading
    sideCover.BackgroundColor3 = COLORS.Secondary
    sideCover.BorderSizePixel = 0
    sideCover.Position = UDim2.new(0.91, 0, 0, 0)
    sideCover.Size = UDim2.new(0, 14, 0, 452)
    
    local hubLogo = Instance.new("Frame")
    hubLogo.Name = "hubLogo"
    hubLogo.Parent = sideHeading
    hubLogo.BackgroundColor3 = Color3.fromRGB(200, 255, 230)
    hubLogo.Position = UDim2.new(0.057, 0, 0.024, 0)
    hubLogo.Size = UDim2.new(0, 30, 0, 30)
    hubLogo.BorderSizePixel = 0
    hubLogo.ZIndex = 2
    
    local LogoCorner = Instance.new("UICorner")
    LogoCorner.CornerRadius = UDim.new(0, 999)
    LogoCorner.Parent = hubLogo
    
    local hubName = Instance.new("TextLabel")
    hubName.Name = "hubName"
    hubName.Parent = sideHeading
    hubName.BackgroundTransparency = 1
    hubName.Position = UDim2.new(0.29, 0, 0.03, 0)
    hubName.Size = UDim2.new(0, 110, 0, 16)
    hubName.Font = Enum.Font.GothamSemibold
    hubName.Text = title
    hubName.TextColor3 = Color3.fromRGB(200, 255, 230)
    hubName.TextSize = 14
    hubName.TextXAlignment = Enum.TextXAlignment.Left
    hubName.ZIndex = 2
    
    local usename = Instance.new("TextLabel")
    usename.Name = "usename"
    usename.Parent = sideHeading
    usename.BackgroundTransparency = 1
    usename.Position = UDim2.new(0.29, 0, 0.07, 0)
    usename.Size = UDim2.new(0, 110, 0, 16)
    usename.Font = Enum.Font.GothamSemibold
    usename.Text = Player.Name
    usename.TextColor3 = Color3.fromRGB(103, 172, 161)
    usename.TextSize = 12
    usename.TextXAlignment = Enum.TextXAlignment.Left
    usename.ZIndex = 2
    
    local tabFrame = Instance.new("ScrollingFrame")
    tabFrame.Name = "tabFrame"
    tabFrame.Parent = sideHeading
    tabFrame.BackgroundTransparency = 1
    tabFrame.BorderSizePixel = 0
    tabFrame.Position = UDim2.new(0.076, 0, 0.126, 0)
    tabFrame.Size = UDim2.new(0, 135, 0, 347)
    tabFrame.ScrollBarThickness = 0
    tabFrame.ZIndex = 2
    
    local TabList = Instance.new("UIListLayout")
    TabList.Parent = tabFrame
    TabList.SortOrder = Enum.SortOrder.LayoutOrder
    TabList.Padding = UDim.new(0, 5)
    
    local wave = Instance.new("ImageLabel")
    wave.Name = "wave"
    wave.Parent = MainFrame
    wave.BackgroundTransparency = 1
    wave.Position = UDim2.new(0.021, 0, 0, 0)
    wave.Size = UDim2.new(0.978, 0, 0.557, 0)
    wave.Image = "http://www.roblox.com/asset/?id=6087537285"
    wave.ImageColor3 = Color3.fromRGB(0, 180, 160)
    wave.ImageTransparency = 0.2
    wave.ScaleType = Enum.ScaleType.Slice
    wave.ZIndex = 1
    
    local WaveCorner = Instance.new("UICorner")
    WaveCorner.CornerRadius = UDim.new(0, 3)
    WaveCorner.Parent = wave
    
    local framesAll = Instance.new("Frame")
    framesAll.Name = "framesAll"
    framesAll.Parent = MainFrame
    framesAll.BackgroundTransparency = 1
    framesAll.BorderSizePixel = 0
    framesAll.Position = UDim2.new(0.297, 0, 0.024, 0)
    framesAll.Size = UDim2.new(0, 381, 0, 431)
    framesAll.ZIndex = 2
    
    local pageFolder = Instance.new("Folder")
    pageFolder.Name = "pageFolder"
    pageFolder.Parent = framesAll
    
    local key1 = Instance.new("TextButton")
    key1.Name = "key1"
    key1.Parent = sideHeading
    key1.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    key1.Position = UDim2.new(0.051, 0, 0.935, 0)
    key1.Size = UDim2.new(0, 76, 0, 22)
    key1.Font = Enum.Font.GothamSemibold
    key1.Text = "LeftAlt"
    key1.TextColor3 = Color3.fromRGB(200, 255, 230)
    key1.TextSize = 14
    key1.ZIndex = 2
    key1.BorderSizePixel = 0
    
    local KeyCorner = Instance.new("UICorner")
    KeyCorner.CornerRadius = UDim.new(0, 5)
    KeyCorner.Parent = key1
    
    local oldKey = Enum.KeyCode.LeftAlt.Name
    
    key1.MouseButton1Click:Connect(function()
        key1.Text = ". . ."
        local input = game:GetService('UserInputService').InputBegan:wait()
        if input.KeyCode.Name ~= "Unknown" then
            key1.Text = input.KeyCode.Name
            oldKey = input.KeyCode.Name
        end
    end)
    
    game:GetService("UserInputService").InputBegan:Connect(function(input, gameproc)
        if not gameproc then
            if input.KeyCode.Name == oldKey then
                ScreenGui.Enabled = not ScreenGui.Enabled
            end
        end
    end)
    
    local closeBtn = Instance.new("TextLabel")
    closeBtn.Name = "close"
    closeBtn.Parent = sideHeading
    closeBtn.BackgroundTransparency = 1
    closeBtn.Position = UDim2.new(0.585, 0, 0.935, 0)
    closeBtn.Size = UDim2.new(0, 50, 0, 22)
    closeBtn.Font = Enum.Font.GothamSemibold
    closeBtn.Text = "Close"
    closeBtn.TextColor3 = COLORS.Text
    closeBtn.TextSize = 13
    closeBtn.ZIndex = 2
    
    local UserInputService = game:GetService("UserInputService")
    local Draggable = false
    local DragMousePosition
    local FramePosition
    
    sideHeading.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            Draggable = true
            DragMousePosition = Vector2.new(input.Position.X, input.Position.Y)
            FramePosition = Vector2.new(shadow.Position.X.Scale, shadow.Position.Y.Scale)
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if Draggable then
            local Camera = workspace.CurrentCamera
            local NewPosition = FramePosition + ((Vector2.new(input.Position.X, input.Position.Y) - DragMousePosition) / Camera.ViewportSize)
            shadow.Position = UDim2.new(NewPosition.X, 0, NewPosition.Y, 0)
        end
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            Draggable = false
        end
    end)
    
    self.ScreenGui = ScreenGui
    self.tabFrame = tabFrame
    self.pageFolder = pageFolder
    self.tabs = {}
    
    return self
end

function RageLib:Tab(tabText, tabId)
    local tabBtnFrame = Instance.new("Frame")
    tabBtnFrame.Name = "tabBtnFrame"
    tabBtnFrame.Parent = self.tabFrame
    tabBtnFrame.BackgroundTransparency = 1
    tabBtnFrame.Size = UDim2.new(0, 135, 0, 30)
    tabBtnFrame.ZIndex = 2
    
    local tabBtn = Instance.new("TextButton")
    tabBtn.Name = "tabBtn"
    tabBtn.Parent = tabBtnFrame
    tabBtn.BackgroundTransparency = 1
    tabBtn.Position = UDim2.new(0.245, 0, 0, 0)
    tabBtn.Size = UDim2.new(0, 101, 0, 30)
    tabBtn.Font = Enum.Font.Gotham
    tabBtn.Text = tabText
    tabBtn.TextColor3 = Color3.fromRGB(80, 80, 80)
    tabBtn.TextSize = 14
    tabBtn.TextXAlignment = Enum.TextXAlignment.Left
    tabBtn.ZIndex = 2
    
    local tabLogo = Instance.new("ImageLabel")
    tabLogo.Name = "tabLogo"
    tabLogo.Parent = tabBtnFrame
    tabLogo.BackgroundTransparency = 1
    tabLogo.Position = UDim2.new(-0.007, 0, 0.067, 0)
    tabLogo.Size = UDim2.new(0, 25, 0, 25)
    tabLogo.Image = "rbxassetid://" .. tostring(tabId)
    tabLogo.ImageColor3 = Color3.fromRGB(80, 80, 80)
    tabLogo.ZIndex = 2
    
    local newPage = Instance.new("ScrollingFrame")
    newPage.Name = "newPage" .. tabText
    newPage.Parent = self.pageFolder
    newPage.Active = true
    newPage.BackgroundTransparency = 1
    newPage.BorderSizePixel = 0
    newPage.Size = UDim2.new(1, 0, 1, 0)
    newPage.ScrollBarThickness = 0
    newPage.Visible = false
    newPage.ZIndex = 2
    
    local sectionList = Instance.new("UIListLayout")
    sectionList.Name = "sectionList"
    sectionList.Parent = newPage
    sectionList.SortOrder = Enum.SortOrder.LayoutOrder
    sectionList.Padding = UDim.new(0, 3)
    
    local function UpdateSize()
        local cS = sectionList.AbsoluteContentSize
        game.TweenService:Create(newPage, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
            CanvasSize = UDim2.new(0, cS.X, 0, cS.Y)
        }):Play()
    end
    
    UpdateSize()
    newPage.ChildAdded:Connect(UpdateSize)
    newPage.ChildRemoved:Connect(UpdateSize)
    
    tabBtn.MouseButton1Click:Connect(function()
        UpdateSize()
        for _, v in pairs(self.pageFolder:GetChildren()) do
            if v:IsA("ScrollingFrame") then
                v.Visible = false
            end
        end
        newPage.Visible = true
        
        for _, btn in pairs(self.tabFrame:GetChildren()) do
            if btn:IsA("Frame") then
                for _, child in pairs(btn:GetChildren()) do
                    if child:IsA("TextButton") then
                        game.TweenService:Create(child, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                            TextColor3 = Color3.fromRGB(80, 80, 80)
                        }):Play()
                    elseif child:IsA("ImageLabel") then
                        game.TweenService:Create(child, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                            ImageColor3 = Color3.fromRGB(80, 80, 80)
                        }):Play()
                    end
                end
            end
        end
        
        game.TweenService:Create(tabLogo, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
            ImageColor3 = Color3.fromRGB(200, 255, 230)
        }):Play()
        game.TweenService:Create(tabBtn, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
            TextColor3 = Color3.fromRGB(200, 255, 230)
        }):Play()
    end)
    
    local TabObj = {}
    TabObj.newPage = newPage
    TabObj.sectionList = sectionList
    TabObj.UpdateSize = UpdateSize
    
    function TabObj:Section(sectionText)
        local sectionFrame = Instance.new("Frame")
        sectionFrame.Name = "sectionFrame"
        sectionFrame.Parent = newPage
        sectionFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
        sectionFrame.Size = UDim2.new(1, 0, 0, 36)
        sectionFrame.BorderSizePixel = 0
        sectionFrame.ClipsDescendants = true
        sectionFrame.ZIndex = 2
        
        local SectionCorner = Instance.new("UICorner")
        SectionCorner.CornerRadius = UDim.new(0, 5)
        SectionCorner.Parent = sectionFrame
        
        local mainSectionHead = Instance.new("Frame")
        mainSectionHead.Name = "mainSectionHead"
        mainSectionHead.Parent = sectionFrame
        mainSectionHead.BackgroundTransparency = 1
        mainSectionHead.Size = UDim2.new(1, 0, 0, 36)
        
        local sectionName = Instance.new("TextLabel")
        sectionName.Name = "sectionName"
        sectionName.Parent = mainSectionHead
        sectionName.BackgroundTransparency = 1
        sectionName.Position = UDim2.new(0.024, 0, 0, 0)
        sectionName.Size = UDim2.new(0.7, 0, 1, 0)
        sectionName.Font = Enum.Font.GothamSemibold
        sectionName.Text = sectionText
        sectionName.TextColor3 = Color3.fromRGB(200, 255, 230)
        sectionName.TextSize = 14
        sectionName.TextXAlignment = Enum.TextXAlignment.Left
        sectionName.ZIndex = 2
        
        local sectionExpand = Instance.new("ImageButton")
        sectionExpand.Name = "sectionExpand"
        sectionExpand.Parent = mainSectionHead
        sectionExpand.BackgroundTransparency = 1
        sectionExpand.Position = UDim2.new(0.919, 0, 0.139, 0)
        sectionExpand.Size = UDim2.new(0, 25, 0, 25)
        sectionExpand.Image = "rbxassetid://3926305904"
        sectionExpand.ImageColor3 = Color3.fromRGB(200, 255, 230)
        sectionExpand.ImageRectOffset = Vector2.new(564, 284)
        sectionExpand.ImageRectSize = Vector2.new(36, 36)
        sectionExpand.ZIndex = 2
        
        local sectionInnerList = Instance.new("UIListLayout")
        sectionInnerList.Parent = sectionFrame
        sectionInnerList.HorizontalAlignment = Enum.HorizontalAlignment.Center
        sectionInnerList.SortOrder = Enum.SortOrder.LayoutOrder
        sectionInnerList.Padding = UDim.new(0, 3)
        
        local isDropped = false
        
        sectionExpand.MouseButton1Click:Connect(function()
            if isDropped then
                isDropped = false
                sectionFrame:TweenSize(UDim2.new(1, 0, 0, 36), "In", "Quint", 0.1)
                game.TweenService:Create(sectionExpand, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                    Rotation = 0
                }):Play()
                wait(0.1)
                UpdateSize()
            else
                isDropped = true
                sectionFrame:TweenSize(UDim2.new(1, 0, 0, sectionInnerList.AbsoluteContentSize.Y + 5), "In", "Quint", 0.1)
                game.TweenService:Create(sectionExpand, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                    Rotation = 180
                }):Play()
                wait(0.1)
                UpdateSize()
            end
        end)
        
        local SectionObj = {}
        SectionObj.sectionFrame = sectionFrame
        
        function SectionObj:Toggle(toggInfo, callback)
            local ToggleFrame = Instance.new("Frame")
            ToggleFrame.Parent = sectionFrame
            ToggleFrame.BackgroundTransparency = 1
            ToggleFrame.Size = UDim2.new(1, 0, 0, 30)
            
            local toggleFrame = Instance.new("Frame")
            toggleFrame.Parent = ToggleFrame
            toggleFrame.BackgroundTransparency = 1
            toggleFrame.Size = UDim2.new(1, 0, 1, 0)
            
            local checkBox = Instance.new("Frame")
            checkBox.Parent = toggleFrame
            checkBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            checkBox.Position = UDim2.new(0.02, 0, 0.25, 0)
            checkBox.Size = UDim2.new(0, 20, 0, 20)
            checkBox.BorderSizePixel = 0
            
            local checkBoxCorner = Instance.new("UICorner")
            checkBoxCorner.CornerRadius = UDim.new(0, 3)
            checkBoxCorner.Parent = checkBox
            
            local checkmark = Instance.new("TextLabel")
            checkmark.Parent = checkBox
            checkmark.BackgroundTransparency = 1
            checkmark.Size = UDim2.new(1, 0, 1, 0)
            checkmark.Font = Enum.Font.GothamBold
            checkmark.Text = "✓"
            checkmark.TextColor3 = Color3.fromRGB(0, 200, 150)
            checkmark.TextSize = 14
            checkmark.Visible = false
            
            local label = Instance.new("TextLabel")
            label.Parent = toggleFrame
            label.BackgroundTransparency = 1
            label.Position = UDim2.new(0.08, 0, 0, 0)
            label.Size = UDim2.new(0.9, 0, 1, 0)
            label.Font = Enum.Font.GothamSemibold
            label.Text = toggInfo
            label.TextColor3 = Color3.fromRGB(200, 200, 200)
            label.TextSize = 14
            label.TextXAlignment = Enum.TextXAlignment.Left
            
            local on = false
            
            toggleFrame.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    on = not on
                    checkmark.Visible = on
                    if on then
                        checkBox.BackgroundColor3 = Color3.fromRGB(30, 100, 80)
                    else
                        checkBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                    end
                    if callback then callback(on) end
                end
            end)
        end
        
        function SectionObj:Button(btnText, callback)
            local ButtonFrame = Instance.new("Frame")
            ButtonFrame.Parent = sectionFrame
            ButtonFrame.BackgroundTransparency = 1
            ButtonFrame.Size = UDim2.new(1, 0, 0, 30)
            
            local Button = Instance.new("TextButton")
            Button.Parent = ButtonFrame
            Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Button.Size = UDim2.new(0.98, 0, 1, 0)
            Button.Position = UDim2.new(0.01, 0, 0, 0)
            Button.Font = Enum.Font.GothamSemibold
            Button.Text = btnText
            Button.TextColor3 = Color3.fromRGB(200, 200, 200)
            Button.TextSize = 13
            Button.BorderSizePixel = 0
            Button.AutoButtonColor = false
            
            local ButtonCorner = Instance.new("UICorner")
            ButtonCorner.CornerRadius = UDim.new(0, 3)
            ButtonCorner.Parent = Button
            
            Button.MouseButton1Click:Connect(function()
                if callback then callback() end
            end)
            
            Button.MouseEnter:Connect(function()
                Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            end)
            
            Button.MouseLeave:Connect(function()
                Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            end)
        end
        
        function SectionObj:Slider(slidInfo, minvalue, maxvalue, callback)
            local SliderFrame = Instance.new("Frame")
            SliderFrame.Parent = sectionFrame
            SliderFrame.BackgroundTransparency = 1
            SliderFrame.Size = UDim2.new(1, 0, 0, 50)
            
            local sliderLabel = Instance.new("TextLabel")
            sliderLabel.Parent = SliderFrame
            sliderLabel.BackgroundTransparency = 1
            sliderLabel.Position = UDim2.new(0.02, 0, 0, 0)
            sliderLabel.Size = UDim2.new(0.5, 0, 0.4, 0)
            sliderLabel.Font = Enum.Font.GothamSemibold
            sliderLabel.Text = slidInfo
            sliderLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
            sliderLabel.TextSize = 12
            sliderLabel.TextXAlignment = Enum.TextXAlignment.Left
            
            local valueLabel = Instance.new("TextLabel")
            valueLabel.Parent = SliderFrame
            valueLabel.BackgroundTransparency = 1
            valueLabel.Position = UDim2.new(0.75, 0, 0, 0)
            valueLabel.Size = UDim2.new(0.23, 0, 0.4, 0)
            valueLabel.Font = Enum.Font.GothamSemibold
            valueLabel.Text = "0%"
            valueLabel.TextColor3 = Color3.fromRGB(0, 200, 150)
            valueLabel.TextSize = 12
            valueLabel.TextXAlignment = Enum.TextXAlignment.Right
            
            local sliderBg = Instance.new("Frame")
            sliderBg.Parent = SliderFrame
            sliderBg.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            sliderBg.Position = UDim2.new(0.02, 0, 0.45, 0)
            sliderBg.Size = UDim2.new(0.96, 0, 0.1, 0)
            sliderBg.BorderSizePixel = 0
            
            local sliderBgCorner = Instance.new("UICorner")
            sliderBgCorner.CornerRadius = UDim.new(0, 3)
            sliderBgCorner.Parent = sliderBg
            
            local sliderFill = Instance.new("Frame")
            sliderFill.Parent = sliderBg
            sliderFill.BackgroundColor3 = Color3.fromRGB(0, 200, 150)
            sliderFill.Size = UDim2.new(0, 0, 1, 0)
            sliderFill.BorderSizePixel = 0
            
            local sliderFillCorner = Instance.new("UICorner")
            sliderFillCorner.CornerRadius = UDim.new(0, 3)
            sliderFillCorner.Parent = sliderFill
            
            local CurrentValue = 0
            local Dragging = false
            
            sliderBg.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    Dragging = true
                end
            end)
            
            game:GetService("UserInputService").InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    Dragging = false
                end
            end)
            
            game:GetService("UserInputService").InputChanged:Connect(function(input)
                if Dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    local sliderSize = sliderBg.AbsoluteSize.X
                    local sliderPos = sliderBg.AbsolutePosition.X
                    local mousePos = input.Position.X
                    
                    local percentage = math.clamp((mousePos - sliderPos) / sliderSize, 0, 1)
                    CurrentValue = math.round(minvalue + (maxvalue - minvalue) * percentage)
                    
                    sliderFill.Size = UDim2.new(percentage, 0, 1, 0)
                    valueLabel.Text = math.round((percentage * 100)) .. "%"
                    
                    if callback then callback(CurrentValue) end
                end
            end)
        end
        
        function SectionObj:Label(labelInfo)
            local LabelFrame = Instance.new("Frame")
            LabelFrame.Parent = sectionFrame
            LabelFrame.BackgroundTransparency = 1
            LabelFrame.Size = UDim2.new(1, 0, 0, 30)
            
            local Label = Instance.new("TextLabel")
            Label.Parent = LabelFrame
            Label.BackgroundTransparency = 1
            Label.Size = UDim2.new(1, 0, 1, 0)
            Label.Font = Enum.Font.GothamSemibold
            Label.Text = labelInfo
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 14
        end

        function SectionObj:Credit(creditWho)
            local CreditFrame = Instance.new("Frame")
            CreditFrame.Parent = sectionFrame
            CreditFrame.BackgroundTransparency = 1
            CreditFrame.Size = UDim2.new(1, 0, 0, 30)
            
            local Credit = Instance.new("TextLabel")
            Credit.Parent = CreditFrame
            Credit.BackgroundTransparency = 1
            Credit.Size = UDim2.new(1, 0, 1, 0)
            Credit.Font = Enum.Font.Gotham
            Credit.Text = "  " .. creditWho
            Credit.TextColor3 = Color3.fromRGB(255, 255, 255)
            Credit.TextSize = 14
            Credit.TextXAlignment = Enum.TextXAlignment.Left
        end
        
        return SectionObj
    end
    
    return TabObj
end

return RageLib
