shared.LoaderTitle = "Discord.gg/Applehub";
shared.LoaderKeyFrames = {
    [1] = {
        1,
        10
    },
    [2] = {
        2,
        30
    },
    [3] = {
        3,
        60
    },
    [4] = {
        2,
        100
    }
};
local v2 = {
    LoaderData = {
        Name = shared.LoaderTitle or "A Loader",
        Colors = shared.LoaderColors or {
            Main = Color3.fromRGB(255, 0, 0),
            Topic = Color3.fromRGB(255, 0, 0),
            Title = Color3.fromRGB(255, 255, 255),
            LoaderBackground = Color3.fromRGB(40, 40, 40),
            LoaderSplash = Color3.fromRGB(255, 0, 0)
        }
    },
    Keyframes = shared.LoaderKeyFrames or {
        [1] = {
            1,
            10
        },
        [2] = {
            2,
            30
        },
        [3] = {
            3,
            60
        },
        [4] = {
            2,
            100
        }
    }
};
local v3 = {
    [1] = "",
    [2] = "",
    [3] = "",
    [4] = ""
};
function TweenObject(v178, v179, v180)
    game.TweenService:Create(v178, TweenInfo.new(v179, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), v180):Play();
end
function CreateObject(v181, v182)
    local v183 = Instance.new(v181);
    local v184;
    for v416, v417 in pairs(v182) do
        if (v416 ~= "Parent") then
            v183[v416] = v417;
        else
            v184 = v417;
        end
    end
    v183.Parent = v184;
    return v183;
end
local function v4(v186, v187)
    local v188 = Instance.new("UICorner");
    v188.CornerRadius = UDim.new(0, v186);
    v188.Parent = v187;
end
local v5 = CreateObject("ScreenGui", {
    Name = "Core",
    Parent = game.CoreGui
});
local v6 = CreateObject("Frame", {
    Name = "Main",
    Parent = v5,
    BackgroundColor3 = v2.LoaderData.Colors.Main,
    BorderSizePixel = 0,
    ClipsDescendants = true,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0)
});
v4(12, v6);
local v7 = CreateObject("ImageLabel", {
    Name = "UserImage",
    Parent = v6,
    BackgroundTransparency = 1,
    Image = "rbxassetid://113371224934315", --- roblox imagem aqui
    Position = UDim2.new(0, 15, 0, 10),
    Size = UDim2.new(0, 50, 0, 50)
});
v4(25, v7);
local v8 = CreateObject("TextLabel", {
    Name = "UserName",
    Parent = v6,
    BackgroundTransparency = 1,
    Text = "Apple hub carregando...",
    Position = UDim2.new(0, 75, 0, 10),
    Size = UDim2.new(0, 200, 0, 50),
    Font = Enum.Font.GothamBold,
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v9 = CreateObject("TextLabel", {
    Name = "Top",
    TextTransparency = 1,
    Parent = v6,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 70),
    Size = UDim2.new(0, 301, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "Loader",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 10,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v10 = CreateObject("TextLabel", {
    Name = "Title",
    Parent = v6,
    TextTransparency = 1,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 90),
    Size = UDim2.new(0, 301, 0, 46),
    Font = Enum.Font.Gotham,
    RichText = true,
    Text = "<b>" .. v2.LoaderData.Name .. "</b>",
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v11 = CreateObject("Frame", {
    Name = "BG",
    Parent = v6,
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderBackground,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 70),
    Size = UDim2.new(0.8500000238418579, 0, 0, 24)
});
v4(8, v11);
local v12 = CreateObject("Frame", {
    Name = "Progress",
    Parent = v11,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderSplash,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 0, 24)
});
v4(8, v12);
local v13 = CreateObject("TextLabel", {
    Name = "StepLabel",
    Parent = v6,
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, 0, 1, - 25),
    Size = UDim2.new(1, - 20, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Center,
    AnchorPoint = Vector2.new(0.5, 0.5)
});
function UpdateStepText(v191)
    v13.Text = v3[v191] or "" ;
end
function UpdatePercentage(v193, v194)
    TweenObject(v12, 0.5, {
        Size = UDim2.new(v193 / 100, 0, 0, 24)
    });
    UpdateStepText(v194);
end
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 346, 0, 121)
});
wait();
TweenObject(v9, 0.5, {
    TextTransparency = 0
});
TweenObject(v10, 0.5, {
    TextTransparency = 0
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 0
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 0
});
for v195, v196 in pairs(v2.Keyframes) do
    wait(v196[1]);
    UpdatePercentage(v196[2], v195);
end
UpdatePercentage(100, 4);
TweenObject(v9, 0.5, {
    TextTransparency = 1
});
TweenObject(v10, 0.5, {
    TextTransparency = 1
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 1
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 1
});
wait(0.5);
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 0, 0, 0)
});
wait(0.25);
v5:Destroy();
pcall(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "apple Hub",
        Text = "executed successfully!",
        Duration = 5
    })
end)
-- spawn(function()
--     while wait() do
--         function print()
--         end
--         function warn()
--         end
--         function error()
--         end
--         debug.traceback = function()
--             return "Traceback blocked";
--         end;
--         debug.info = function()
--             return "Info blocked";
--         end;
--         local v420 = getrawmetatable(game);
--         if (v420 and not v420.__metatable) then
--             setreadonly(v420, false);
--             local v658 = v420.__index;
--             local v659 = v420.__newindex;
--             v420.__index = function(v759, v760)
--                 if ((v760 == "debug") or (v760 == "getrawmetatable")) then
--                     error("Anti Skid: Tampering detected!");
--                 end
--                 return v658(v759, v760);
--             end;
--             v420.__newindex = function(v761, v762, v763)
--                 if ((v762 == "debug") or (v762 == "getrawmetatable")) then
--                     error("Anti Skid: Tampering detected!");
--                 end
--                 return v659(v761, v762, v763);
--             end;
--             setreadonly(v420, true);
--         end
--         local function v421()
--             local v568 = {
--                 "_G",
--                 "debug",
--                 "getgenv",
--                 "getrawmetatable",
--                 "setfenv",
--                 "loadstring",
--                 "hookfunction"
--             };
--             for v662, v663 in ipairs(v568) do
--                 local v664, v665 = pcall(function()
--                     return _G[v663];
--                 end);
--                 if (v664 and v665) then
--                     error("Anti Skid: Environment tampering detected!");
--                 end
--             end
--         end
--         local function v422()
--             local v569 = {
--                 getrawmetatable,
--                 setreadonly,
--                 getgenv,
--                 debug.getinfo,
--                 debug.getregistry
--             };
--             for v666, v667 in ipairs(v569) do
--                 if v667 then
--                     error("Anti Skid: Hook tampering detected!");
--                 end
--             end
--         end
--         local v423 = game:FindService("HttpService");
--         if v423 then
--             v423.RequestAsync = function()
--                 error("HTTP Requests Blocked");
--             end;
--             v423.GetAsync = function()
--                 error("HTTP Get Blocked");
--             end;
--             v423.PostAsync = function()
--                 error("HTTP Post Blocked");
--             end;
--         end
--         function collectgarbage()
--             error("GC Blocked");
--         end
--         os.time = function()
--             error("OS Time Blocked");
--         end;
--         pcall(v421);
--         pcall(v422);
--     end
-- end);
local v14 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))();
local v15 = v14:CreateWindow({
    Title = "Apple hub (🐝)",
    SubTitle = "",
    TabWidth = 160,
    Theme = "Dark",
    Acrylic = false,
    Size = UDim2.fromOffset(500, 320),
    MinimizeKey = Enum.KeyCode.End
});
local v16 = {
    Home = v15:AddTab({
        Title = "Home"
    }),
    Main = v15:AddTab({
        Title = "Farm"
    }),
    Shop = v15:AddTab({
        Title = "Shop"
    })
};
v16.Home:AddButton({
    Title = "Discord",
    Description = "click to get discord",
    Callback = function()
        setclipboard("https://discord.gg/teste");
    end
});
-- DROPDOWN SELECIONAR SEMENTES 
local selectedSeed = "Carrot"
local autoBuy = false


local v48 = v16.Main:AddDropdown("DropdownSelectSeed", {
    Title = "Select Seed",
    Description = "",
    Values = {
        "Carrot",
        "Tomato",
        "Poatato",
        "Strawberry",
        "Blueberry",
        "Orange",
        "Corn",
        "Daffodil",
        "Watermelon",
        "Pumpkin",
        "Apple",
        "Bamboo",
        "Coconut",
        "Cactus",
        "Dragon",
        "Mango",
        "Grape",
        "Mushroom",
        "Pepper",
        "Cacao",
        "Beanstalk"
    },
    Multi = false,
    Default = 1,
    Callback = function(value)
        selectedSeed = value
    end
})


local v51 = v16.Main:AddToggle("ToggleAutoBuySeed", {
    Title = "Auto Buy Seed",
    Description = "",
    Default = false,
    Callback = function(state)
        autoBuy = state
        task.spawn(function()
            while autoBuy do
                if selectedSeed and selectedSeed ~= "" then
                    local args = { [1] = selectedSeed }
                    game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))
                end
                task.wait(1)
            end
        end)
    end
})
-- Variável da fruta ignorada
local ignoredFruit = nil

-- Dropdown de fruta para ignorar
v16.Main:AddDropdown("DropdownIgnoreFruit", {
    Title = "Ignore Fruit Collect",
    Description = "Fruta que será ignorada pelo Auto Collect",
    Values = {
"Carrot",
        "Tomato",
        "Poatato",
        "Strawberry",
        "Blueberry",
        "Orange",
        "Corn",
        "Daffodil",
        "Watermelon",
        "Pumpkin",
        "Apple",
        "Bamboo",
        "Coconut",
        "Cactus",
        "Dragon",
        "Mango",
        "Grape",
        "Mushroom",
        "Pepper",
        "Cacao",
        "Beanstalk"
    },
    Multi = false,
    Default = nil,
    Callback = function(value)
        ignoredFruit = value
        print("Ignorando coleta de:", ignoredFruit)
    end
})
local autoCollect = false
local autoCollectThread = nil

local v51 = v16.Main:AddToggle("ToggleAutoCollectFruits", {
    Title = "Auto Collect",
    Description = "",
    Default = false,
    Callback = function(state)
        autoCollect = state

        if autoCollect then
            autoCollectThread = task.spawn(function()
                local Players = game:GetService("Players")
                local player = Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()
                local hrp = character:WaitForChild("HumanoidRootPart")

                -- Identifica sua fazenda
                local minhaFazenda = nil
                for _, fazenda in pairs(workspace.Farm:GetChildren()) do
                    local important = fazenda:FindFirstChild("Important")
                    local data = important and important:FindFirstChild("Data")
                    local owner = data and data:FindFirstChild("Owner")

                    if owner and owner.Value == player.Name then
                        minhaFazenda = fazenda
                        break
                    end
                end

                if not minhaFazenda then
                    warn("Sua fazenda não foi encontrada.")
                    return
                end

                local plants = minhaFazenda:FindFirstChild("Important"):FindFirstChild("Plants_Physical")
                if not plants then
                    warn("Plants_Physical não encontrada.")
                    return
                end

                -- Loop de coleta
                while autoCollect do
                    for _, cropFolder in pairs(plants:GetChildren()) do
                        for _, descendant in pairs(cropFolder:GetDescendants()) do
                            if not autoCollect then return end -- <- para imediatamente se desligar
if descendant:IsA("ProximityPrompt") and descendant.Enabled then
    local parentModel = descendant:FindFirstAncestorOfClass("Model")
    local fruitName = parentModel and parentModel.Name or ""

    if ignoredFruit and fruitName == ignoredFruit then
        continue -- pula essa fruta
    end
   
                                local promptPart = descendant.Parent
                                if promptPart and promptPart:IsA("BasePart") then
                                    hrp.CFrame = promptPart.CFrame + Vector3.new(0, 2, 0)
                                    task.wait(0.05)
                                    fireproximityprompt(descendant)
                                    task.wait(0.05)
                                end
                            end
                        end
                    end
                    task.wait(0.15)
                end
            end)
        else
            -- Se desligar, garante que o loop pare (caso necessário)
            autoCollect = false
        end
    end
})
local autoSell = false
local autoSellThread = nil

local v52 = v16.Main:AddToggle("ToggleAutoSell", {
    Title = "Auto Sell",
    Description = "",
    Default = false,
    Callback = function(state)
        autoSell = state

        if autoSell then
            autoSellThread = task.spawn(function()
                local player = game.Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()
                local hrp = character:WaitForChild("HumanoidRootPart")

                while autoSell do
                    local npc = workspace.NPCS:FindFirstChild("Steven")
                    if npc and npc:FindFirstChild("HumanoidRootPart") then
                        -- Teleporta para o NPC
                        hrp.CFrame = npc.HumanoidRootPart.CFrame + Vector3.new(0, 2, 0)
                        task.wait(0.15)

                        -- Envia o evento de venda
                        game:GetService("ReplicatedStorage").GameEvents.Sell_Inventory:FireServer()
                    end

                    task.wait(3)
                end
            end)
        else
            autoSell = false -- garante que o loop pare
        end
    end
})
local selectedSeed = "Carrot"
local autoPlant = false

-- Dropdown para selecionar a semente
v16.Main:AddDropdown("DropdownSelectSeed", {
    Title = "Select Seed Plant",
    Description = "Choose the seed to plant",
    Values = {
        "Carrot",
        "Tomato",
        "Poatato",
        "Strawberry",
        "Blueberry",
        "Orange",
        "Corn",
        "Daffodil",
        "Watermelon",
        "Pumpkin",
        "Apple",
        "Bamboo",
        "Coconut",
        "Cactus",
        "Dragon",
        "Mango",
        "Grape",
        "Mushroom",
        "Pepper",
        "Cacao",
        "Beanstalk"
    },
    Multi = false,
    Default = 1,
    Callback = function(value)
        selectedSeed = value
    end
})

-- Toggle de Auto Plant
v16.Main:AddToggle("ToggleAutoPlant", {
    Title = "Auto Plant",
    Description = "",
    Default = false,
    Callback = function(state)
        autoPlant = state
    end
})

-- Função principal
local player = game.Players.LocalPlayer

task.spawn(function()
    while true do
        if autoPlant and selectedSeed and selectedSeed ~= "" then
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:FindFirstChildOfClass("Humanoid")

            local equipped = false
            for _, tool in pairs(character:GetChildren()) do
                if tool:IsA("Tool") and string.find(tool.Name, selectedSeed) then
                    equipped = true
                    break
                end
            end

            -- Se não estiver equipado, tenta equipar
            if not equipped then
                local function tryEquip(container)
                    for _, tool in pairs(container:GetChildren()) do
                        if tool:IsA("Tool") and string.find(tool.Name, selectedSeed) then
                            humanoid:EquipTool(tool)
                            return true
                        end
                    end
                    return false
                end

                if not tryEquip(player.Backpack) then
                    local toolsFolder = workspace:FindFirstChild("Tools")
                    if toolsFolder and toolsFolder:FindFirstChild(player.Name) then
                        tryEquip(toolsFolder[player.Name])
                    end
                end
            end

            -- Planta se a seed estiver equipada
            for _, tool in pairs(character:GetChildren()) do
                if tool:IsA("Tool") and string.find(tool.Name, selectedSeed) then
                    local minhaFazenda = nil
                    for _, fazenda in pairs(workspace.Farm:GetChildren()) do
                        local data = fazenda:FindFirstChild("Important") and fazenda.Important:FindFirstChild("Data")
                        local owner = data and data:FindFirstChild("Owner")
                        if owner and owner.Value == player.Name then
                            minhaFazenda = fazenda
                            break
                        end
                    end

                    if minhaFazenda then
                        local locais = minhaFazenda.Important:FindFirstChild("Plant_Locations")
                        if locais then
                            -- Embaralha os spots
                            local spots = locais:GetChildren()
                            for i = #spots, 2, -1 do
                                local j = math.random(i)
                                spots[i], spots[j] = spots[j], spots[i]
                            end

                            -- Planta nos pontos disponíveis
                            for _, spot in ipairs(spots) do
                                if spot:IsA("BasePart") and #spot:GetChildren() == 0 then
                                    local args = {
                                        [1] = spot.Position,
                                        [2] = selectedSeed
                                    }
                                    game:GetService("ReplicatedStorage").GameEvents.Plant_RE:FireServer(unpack(args))
                                    task.wait(0.2)
                                end
                            end
                        end
                    end
                    break
                end
            end
        end
        task.wait(1)
    end
end)
local gearList = {
    "Watering Can",
    "Trowel",
    "Recall Wrench",
    "Basic Sprinkler",
    "Advanced Sprinkler",
    "Godly Sprinkler",
    "Lightning Rod",
    "Master Sprinkler",
    "Favorite Tool",
    "Harvest Tool"
}

local selectedGear = gearList[1]
local autoBuyEnabled = false

-- Dropdown
v16.Shop:AddDropdown("AutoBuyGearDropdown", {
    Title = "Auto Buy Gear",
    Description = "Select Gear to buy",
    Values = gearList,
    Multi = false,
    Default = 1,
    Callback = function(gear)
        selectedGear = gear
        if autoBuyEnabled and selectedGear then
            game:GetService("ReplicatedStorage").GameEvents.BuyGearStock:FireServer(selectedGear)
            print("Comprando gear:", selectedGear)
        end
    end
})

-- Toggle
v16.Shop:AddToggle("AutoBuyGearToggle", {
    Title = "Auto Buy Gear",
    Default = false,
    Callback = function(state)
        autoBuyEnabled = state
        if autoBuyEnabled and selectedGear then
            game:GetService("ReplicatedStorage").GameEvents.BuyGearStock:FireServer(selectedGear)
            print("Auto Buy ativado para:", selectedGear)
        end
    end
    
})

local v56 = v16.Shop:AddSection("Others"); -- sessão 2 shop
function FPSBooster()
    local decalsyeeted = true
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain    
    sethiddenproperty(l, "Technology", 2)
    sethiddenproperty(t, "Decoration", false)
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"    
    local function optimizePart(v)
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end    
    for i, v in pairs(w:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") or v:IsA("MeshPart") then
            optimizePart(v)
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
end
v16.Shop:AddButton({
    Title = "Boost FPS",
    Description = "",
    Callback = function()
        FPSBooster()
    end
});
-- (NoFog)
function noFog()
    game.Lighting.FogEnabled = false
end
v16.Shop:AddButton({
    Title = "No Fog",
    Description = "is in error",
    Callback = function()
        noFog()
    end
})
local antiAfkEnabled = true
local vu = game:GetService("VirtualUser")

-- Função anti-AFK ativada/desativada
local function setupAntiAfk()
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        if antiAfkEnabled then
            vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            task.wait(1)
            vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        end
    end)
end

-- Já ativa ao carregar
setupAntiAfk()

-- Toggle visível na interface
v16.Main:AddToggle("AntiAfkToggle", {
    Title = "Anti-AFK",
    Description = "",
    Default = true,
    Callback = function(state)
        antiAfkEnabled = state
    end
})


-- 🔘 Sistema de botão pequeno para abrir/fechar a interface
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

-- Criar botão pequeno
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleUIButton"
toggleButton.Size = UDim2.new(0, 40, 0, 40)
toggleButton.Position = UDim2.new(0, 10, 0, 10)
toggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
toggleButton.Text = "☰"
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.TextScaled = true
toggleButton.ZIndex = 9999
toggleButton.Parent = PlayerGui

-- Detectar uma ScreenGui já existente no PlayerGui para alternar visibilidade
local targetUI = nil
for _, gui in ipairs(PlayerGui:GetChildren()) do
    if gui:IsA("ScreenGui") and gui.Name ~= "ToggleUIButton" then
        targetUI = gui
        break
    end
end

if targetUI then
    toggleButton.MouseButton1Click:Connect(function()
        targetUI.Enabled = not targetUI.Enabled
    end)
end
