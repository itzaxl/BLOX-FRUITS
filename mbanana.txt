-- ts file was generated at discord.gg/25ms

_G.FastAttack = true

if _G.FastAttack then
    local u1 = (getgenv or (getrenv or getfenv))()

    local function u6(p2, p3)
        local v4, v5 = pcall(function()
            return p2:WaitForChild(p3)
        end)

        if not (v4 and v5) then
            warn('noooooo: ' .. p3)
        end

        return v5
    end

    game:GetService('VirtualInputManager')
    game:GetService('CollectionService')

    local _ReplicatedStorage = game:GetService('ReplicatedStorage')

    game:GetService('TeleportService')

    local _RunService = game:GetService('RunService')
    local _LocalPlayer = game:GetService('Players').LocalPlayer

    if not _LocalPlayer then
        warn('Kh\u{f4}ng t\u{ec}m th\u{1ea5}y ng\u{1b0}\u{1edd}i ch\u{1a1}i c\u{1ee5}c b\u{1ed9}.')

        return
    end

    local v10 = u6(_ReplicatedStorage, 'Remotes')

    if not v10 then
        return
    end

    u6(v10, 'Validator')
    u6(v10, 'CommF_')
    u6(v10, 'CommE')
    u6(workspace, 'ChestModels')

    local v11 = u6(workspace, '_WorldOrigin')
    local u12 = u6(workspace, 'Characters')
    local u13 = u6(workspace, 'Enemies')

    u6(workspace, 'Map')
    u6(v11, 'EnemySpawns')
    u6(v11, 'Locations')

    local _ = _RunService.RenderStepped
    local _ = _RunService.Heartbeat
    local _ = _RunService.Stepped
    local u14 = u6(u6(_ReplicatedStorage, 'Modules'), 'Net')
    local _ = sethiddenproperty

    if not setupvalue and debug then
        local _ = debug.setupvalue
    end
    if not getupvalue and debug then
        local _ = debug.getupvalue
    end

    local u15 = {
        AutoClick = true,
        ClickDelay = 0,
    }

    ({}).FastAttack = (function()
        if u1.rz_FastAttack then
            return u1.rz_FastAttack
        end

        local u16 = {
            Distance = 100,
            attackMobs = true,
            attackPlayers = true,
            Equipped = nil,
        }
        local u17 = u6(u14, 'RE/RegisterAttack')
        local u18 = u6(u14, 'RE/RegisterHit')

        local function u21(p19)
            local v20 = p19 and p19:FindFirstChild('Humanoid')

            if v20 then
                v20 = p19.Humanoid.Health > 0
            end

            return v20
        end
        local function u30(p22, p23)
            local v24, v25, v26 = p23:GetChildren()
            local v27 = nil

            while true do
                local v28

                v26, v28 = v24(v25, v26)

                if v26 == nil then
                    break
                end

                local _Head = v28:FindFirstChild('Head')

                if _Head and u21(v28) and (_LocalPlayer:DistanceFromCharacter(_Head.Position) < u16.Distance and v28 ~= _LocalPlayer.Character) then
                    table.insert(p22, {v28, _Head})

                    v27 = _Head
                end
            end

            return v27
        end

        function u16.Attack(_, p31, p32)
            if p31 and #p32 ~= 0 then
                u17:FireServer(u15.ClickDelay or 0)
                u18:FireServer(p31, p32)
            end
        end
        function u16.AttackNearest(p33)
            local v34 = {}
            local v35 = u30(v34, u13)
            local v36 = u30(v34, u12)
            local _Character = _LocalPlayer.Character

            if _Character then
                local _Tool = _Character:FindFirstChildOfClass('Tool')

                if _Tool and _Tool:FindFirstChild('LeftClickRemote') then
                    local v39, v40, v41 = ipairs(v34)

                    while true do
                        local v42

                        v41, v42 = v39(v40, v41)

                        if v41 == nil then
                            break
                        end

                        local _Unit = (v42[1].HumanoidRootPart.Position - _Character:GetPivot().Position).Unit

                        pcall(function()
                            _Tool.LeftClickRemote:FireServer(_Unit, 1)
                        end)
                    end
                elseif #v34 <= 0 then
                    task.wait(0)
                else
                    p33:Attack(v35 or v36, v34)
                end
            end
        end
        function u16.BladeHits(p44)
            local v45 = u21(_LocalPlayer.Character)

            if v45 then
                v45 = _LocalPlayer.Character:FindFirstChildOfClass('Tool')
            end
            if v45 and v45.ToolTip ~= 'Gun' then
                p44:AttackNearest()
            else
                task.wait(0)
            end
        end

        task.spawn(function()
            while task.wait(u15.ClickDelay) do
                if u15.AutoClick then
                    u16:BladeHits()
                end
            end
        end)

        u1.rz_FastAttack = u16

        return u16
    end)()
end

local v46 = next
local v47 = {
    game.ReplicatedStorage.Util,
    game.ReplicatedStorage.Common,
    game.ReplicatedStorage.Remotes,
    game.ReplicatedStorage.Assets,
    game.ReplicatedStorage.FX,
}
local v48 = nil
local u49 = nil
local u50 = nil

while true do
    local v51

    v48, v51 = v46(v47, v48)

    if v48 == nil then
        break
    end

    local v52 = next
    local v53, v54 = v51:GetChildren()

    while true do
        local v55, v56 = v52(v53, v54)

        if v55 == nil then
            break
        end

        v54 = v55

        if v56:IsA('RemoteEvent') and v56:GetAttribute('Id') then
            u50 = v56:GetAttribute('Id')
            u49 = v56
        end
    end

    v51.ChildAdded:Connect(function(p57)
        if p57:IsA('RemoteEvent') and p57:GetAttribute('Id') then
            u50 = p57:GetAttribute('Id')
            u49 = p57
        end
    end)
end

task.spawn(function()
    while task.wait(0.05) do
        local _Character2 = game.Players.LocalPlayer.Character
        local v59

        if _Character2 then
            v59 = _Character2:FindFirstChild('HumanoidRootPart')
        else
            v59 = _Character2
        end

        local v60, v61, v62 = ipairs({
            workspace.Enemies,
            workspace.Characters,
        })
        local u63 = {}

        while true do
            local v64

            v62, v64 = v60(v61, v62)

            if v62 == nil then
                break
            end

            local v65, v66, v67 = ipairs(v64 and v64:GetChildren() or {})

            while true do
                local v68

                v67, v68 = v65(v66, v67)

                if v67 == nil then
                    break
                end

                local _HumanoidRootPart = v68:FindFirstChild('HumanoidRootPart')
                local _Humanoid = v68:FindFirstChild('Humanoid')

                if v68 ~= _Character2 and (_HumanoidRootPart and (_Humanoid and (_Humanoid.Health > 0 and (_HumanoidRootPart.Position - v59.Position).Magnitude <= 60))) then
                    local v71, v72, v73 = ipairs(v68:GetChildren())

                    while true do
                        local v74

                        v73, v74 = v71(v72, v73)

                        if v73 == nil then
                            break
                        end
                        if v74:IsA('BasePart') and (_HumanoidRootPart.Position - v59.Position).Magnitude <= 60 then
                            u63[#u63 + 1] = {v68, v74}
                        end
                    end
                end
            end
        end

        local _Tool2 = _Character2:FindFirstChildOfClass('Tool')

        if #u63 > 0 and (_Tool2 and (_Tool2:GetAttribute('WeaponType') == 'Melee' or _Tool2:GetAttribute('WeaponType') == 'Sword')) then
            pcall(function()
                require(game.ReplicatedStorage.Modules.Net):RemoteEvent('RegisterHit', true)
                game.ReplicatedStorage.Modules.Net['RE/RegisterAttack']:FireServer()

                local _Head2 = u63[1][1]:FindFirstChild('Head')

                if _Head2 then
                    game.ReplicatedStorage.Modules.Net['RE/RegisterHit']:FireServer(_Head2, u63, {}, tostring(game.Players.LocalPlayer.UserId):sub(2, 4) .. tostring(coroutine.running()):sub(11, 15))
                    cloneref(u49):FireServer(string.gsub('RE/RegisterHit', '.', function(p77)
                        return string.char(bit32.bxor(string.byte(p77), math.floor(workspace:GetServerTimeNow() / 10 % 10) + 1))
                    end), bit32.bxor(u50 + 909090, game.ReplicatedStorage.Modules.Net.seed:InvokeServer() * 2), _Head2, u63)
                end
            end)
        end
    end
end)

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local _Players = game:GetService('Players')
local _ReplicatedStorage2 = game:GetService('ReplicatedStorage')

game:GetService('VirtualUser')
game:GetService('RunService')
game:GetService('HttpService')

local _LocalPlayer2 = _Players.LocalPlayer

_ReplicatedStorage2:WaitForChild('Remotes', 5):WaitForChild('CommF_', 5)
_LocalPlayer2:WaitForChild('PlayerGui', 5):WaitForChild('Main', 5)

local _ = 10 > tick() - 0
local _ReplicatedStorage3 = game:GetService('ReplicatedStorage')
local _Effect = _ReplicatedStorage3:FindFirstChild('Effect')

if _Effect then
    _Effect = _ReplicatedStorage3.Effect:FindFirstChild('Container')
end
if _Effect then
    local _Death = _Effect:FindFirstChild('Death')

    if _Death then
        local v84, v85 = pcall(require, _Death)

        if v84 and type(v85) == 'function' then
            hookfunction(v85, function() end)
        end
    end

    local _Respawn = _Effect:FindFirstChild('Respawn')

    if _Respawn then
        local v87, v88 = pcall(require, _Respawn)

        if v87 and type(v88) == 'function' then
            hookfunction(v88, function() end)
        end
    end
end

local _GuideModule = _ReplicatedStorage3:FindFirstChild('GuideModule')

if _GuideModule then
    local v90, v91 = pcall(require, _GuideModule)

    if v90 and (v91 and type(v91.ChangeDisplayedNPC) == 'function') then
        hookfunction(v91.ChangeDisplayedNPC, function() end)
    end
end

local _Util = game:GetService('ReplicatedStorage'):WaitForChild('Util', 5)
local v93 = _Util and _Util:FindFirstChild('CameraShaker')

if v93 then
    require(v93):Stop()
end

until game.Players.LocalPlayer.Character

local _PlaceId = game.PlaceId

-- يخلي السكربت يشتغل بكل المابات
World1 = false
World2 = false
World3 = false

-- اذا تريد فقط يحدد العالم اذا كان Blox Fruits
if _PlaceId == 2753915549 then
    World1 = true
elseif _PlaceId == 4442272183 then
    World2 = true
elseif _PlaceId == 7449423635 then
    World3 = true
end

repeat
    task.wait()

function CheckQuest()
    MyLevel = game:GetService('Players').LocalPlayer.Data.Level.Value

    if World1 then
        if MyLevel < 1 or MyLevel > 9 then
            if MyLevel < 10 or MyLevel > 14 then
                if MyLevel < 15 or MyLevel > 29 then
                    if MyLevel < 30 or MyLevel > 39 then
                        if MyLevel < 40 or MyLevel > 59 then
                            if MyLevel < 60 or MyLevel > 74 then
                                if MyLevel < 75 or MyLevel > 89 then
                                    if MyLevel < 90 or MyLevel > 99 then
                                        if MyLevel < 100 or MyLevel > 119 then
                                            if MyLevel < 120 or MyLevel > 149 then
                                                if MyLevel < 150 or MyLevel > 174 then
                                                    if MyLevel < 175 or MyLevel > 189 then
                                                        if MyLevel < 190 or MyLevel > 209 then
                                                            if MyLevel < 210 or MyLevel > 249 then
                                                                if MyLevel < 250 or MyLevel > 274 then
                                                                    if MyLevel < 275 or MyLevel > 299 then
                                                                        if MyLevel < 300 or MyLevel > 324 then
                                                                            if MyLevel < 325 or MyLevel > 374 then
                                                                                if MyLevel < 375 or MyLevel > 399 then
                                                                                    if MyLevel < 400 or MyLevel > 449 then
                                                                                        if MyLevel < 450 or MyLevel > 474 then
                                                                                            if MyLevel < 475 or MyLevel > 524 then
                                                                                                if MyLevel < 525 or MyLevel > 549 then
                                                                                                    if MyLevel < 550 or MyLevel > 624 then
                                                                                                        if MyLevel < 625 or MyLevel > 649 then
                                                                                                            if MyLevel >= 650 then
                                                                                                                Mon = 'Galley Captain'
                                                                                                                LevelQuest = 2
                                                                                                                NameQuest = 'FountainQuest'
                                                                                                                NameMon = 'Galley Captain'
                                                                                                                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, -0, 0.996196866, -0, 1, -0, -0.996196866, -0, 0.087131381)
                                                                                                                CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
                                                                                                            end
                                                                                                        else
                                                                                                            Mon = 'Galley Pirate'
                                                                                                            LevelQuest = 1
                                                                                                            NameQuest = 'FountainQuest'
                                                                                                            NameMon = 'Galley Pirate'
                                                                                                            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, -0, 0.996196866, -0, 1, -0, -0.996196866, -0, 0.087131381)
                                                                                                            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
                                                                                                        end
                                                                                                    else
                                                                                                        Mon = 'Royal Soldier'
                                                                                                        LevelQuest = 2
                                                                                                        NameQuest = 'SkyExp2Quest'
                                                                                                        NameMon = 'Royal Soldier'
                                                                                                        CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                                                        CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
                                                                                                    end
                                                                                                else
                                                                                                    Mon = 'Royal Squad'
                                                                                                    LevelQuest = 1
                                                                                                    NameQuest = 'SkyExp2Quest'
                                                                                                    NameMon = 'Royal Squad'
                                                                                                    CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                                                    CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
                                                                                                end
                                                                                            else
                                                                                                Mon = 'Shanda'
                                                                                                LevelQuest = 2
                                                                                                NameQuest = 'SkyExp1Quest'
                                                                                                NameMon = 'Shanda'
                                                                                                CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, -0, 0.906319618, -0, 1, -0, -0.906319618, -0, -0.422592998)
                                                                                                CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)

                                                                                                if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                                                                                                end
                                                                                            end
                                                                                        else
                                                                                            Mon = "God's Guard"
                                                                                            LevelQuest = 1
                                                                                            NameQuest = 'SkyExp1Quest'
                                                                                            NameMon = "God's Guard"
                                                                                            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, -0, 1, -0, 0.0871884301, -0, 0.996191859)
                                                                                            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)

                                                                                            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4607.82275, 872.54248, -1667.55688))
                                                                                            end
                                                                                        end
                                                                                    else
                                                                                        Mon = 'Fishman Commando'
                                                                                        LevelQuest = 2
                                                                                        NameQuest = 'FishmanQuest'
                                                                                        NameMon = 'Fishman Commando'
                                                                                        CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                                                                                        CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)

                                                                                        if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                                                        end
                                                                                    end
                                                                                else
                                                                                    Mon = 'Fishman Warrior'
                                                                                    LevelQuest = 1
                                                                                    NameQuest = 'FishmanQuest'
                                                                                    NameMon = 'Fishman Warrior'
                                                                                    CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                                                                                    CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)

                                                                                    if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                                                    end
                                                                                end
                                                                            else
                                                                                Mon = 'Military Spy'
                                                                                LevelQuest = 2
                                                                                NameQuest = 'MagmaQuest'
                                                                                NameMon = 'Military Spy'
                                                                                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, -0, 0.866048813, -0, 1, -0, -0.866048813, -0, -0.499959469)
                                                                                CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
                                                                            end
                                                                        else
                                                                            Mon = 'Military Soldier'
                                                                            LevelQuest = 1
                                                                            NameQuest = 'MagmaQuest'
                                                                            NameMon = 'Military Soldier'
                                                                            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, -0, 0.866048813, -0, 1, -0, -0.866048813, -0, -0.499959469)
                                                                            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
                                                                        end
                                                                    else
                                                                        Mon = 'Gladiator'
                                                                        LevelQuest = 2
                                                                        NameQuest = 'ColosseumQuest'
                                                                        NameMon = 'Gladiator'
                                                                        CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, -0, -0.857167721, -0, 1, -0, 0.857167721, -0, -0.515037298)
                                                                        CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
                                                                    end
                                                                else
                                                                    Mon = 'Toga Warrior'
                                                                    LevelQuest = 1
                                                                    NameQuest = 'ColosseumQuest'
                                                                    NameMon = 'Toga Warrior'
                                                                    CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, -0, -0.857167721, -0, 1, -0, 0.857167721, -0, -0.515037298)
                                                                    CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
                                                                end
                                                            else
                                                                Mon = 'Dangerous Prisoner'
                                                                LevelQuest = 2
                                                                NameQuest = 'PrisonerQuest'
                                                                NameMon = 'Dangerous Prisoner'
                                                                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-9, -0.995993316, 1.60817859e-9, 1, -5.16744869e-9, 0.995993316, -2.06384709e-9, -0.0894274712)
                                                                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
                                                            end
                                                        else
                                                            Mon = 'Prisoner'
                                                            LevelQuest = 1
                                                            NameQuest = 'PrisonerQuest'
                                                            NameMon = 'Prisoner'
                                                            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-9, -0.995993316, 1.60817859e-9, 1, -5.16744869e-9, 0.995993316, -2.06384709e-9, -0.0894274712)
                                                            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
                                                        end
                                                    else
                                                        Mon = 'Dark Master'
                                                        LevelQuest = 2
                                                        NameQuest = 'SkyQuest'
                                                        NameMon = 'Dark Master'
                                                        CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, -0, 0.500031412, -0, 1, -0, -0.500031412, -0, 0.866007268)
                                                        CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
                                                    end
                                                else
                                                    Mon = 'Sky Bandit'
                                                    LevelQuest = 1
                                                    NameQuest = 'SkyQuest'
                                                    NameMon = 'Sky Bandit'
                                                    CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, -0, 0.500031412, -0, 1, -0, -0.500031412, -0, 0.866007268)
                                                    CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
                                                end
                                            else
                                                Mon = 'Chief Petty Officer'
                                                LevelQuest = 1
                                                NameQuest = 'MarineQuest2'
                                                NameMon = 'Chief Petty Officer'
                                                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
                                            end
                                        else
                                            Mon = 'Snowman'
                                            LevelQuest = 2
                                            NameQuest = 'SnowQuest'
                                            NameMon = 'Snowman'
                                            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, -0, 0.939684391, -0, 1, -0, -0.939684391, -0, -0.342042685)
                                            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
                                        end
                                    else
                                        Mon = 'Snow Bandit'
                                        LevelQuest = 1
                                        NameQuest = 'SnowQuest'
                                        NameMon = 'Snow Bandit'
                                        CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, -0, 0.939684391, -0, 1, -0, -0.939684391, -0, -0.342042685)
                                        CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
                                    end
                                else
                                    Mon = 'Desert Officer'
                                    LevelQuest = 2
                                    NameQuest = 'DesertQuest'
                                    NameMon = 'Desert Officer'
                                    CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, -0, 1, -0, 0.573571265, -0, 0.819155693)
                                    CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
                                end
                            else
                                Mon = 'Desert Bandit'
                                LevelQuest = 1
                                NameQuest = 'DesertQuest'
                                NameMon = 'Desert Bandit'
                                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, -0, 1, -0, 0.573571265, -0, 0.819155693)
                                CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
                            end
                        else
                            Mon = 'Brute'
                            LevelQuest = 2
                            NameQuest = 'BuggyQuest1'
                            NameMon = 'Brute'
                            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, -0, 1, -0, 0.258804798, -0, 0.965929627)
                            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
                        end
                    else
                        Mon = 'Pirate'
                        LevelQuest = 1
                        NameQuest = 'BuggyQuest1'
                        NameMon = 'Pirate'
                        CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, -0, 1, -0, 0.258804798, -0, 0.965929627)
                        CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
                    end
                else
                    Mon = 'Gorilla'
                    LevelQuest = 2
                    NameQuest = 'JungleQuest'
                    NameMon = 'Gorilla'
                    CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, -0, -0, 1, -0, 1, -0, -1, -0, -0)
                    CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
                end
            else
                Mon = 'Monkey'
                LevelQuest = 1
                NameQuest = 'JungleQuest'
                NameMon = 'Monkey'
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, -0, -0, 1, -0, 1, -0, -1, -0, -0)
                CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
            end
        else
            Mon = 'Bandit'
            LevelQuest = 1
            NameQuest = 'BanditQuest1'
            NameMon = 'Bandit'
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, -0, 1, -0, 0.341998369, -0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        end
    elseif World2 then
        if MyLevel < 700 or MyLevel > 724 then
            if MyLevel < 725 or MyLevel > 774 then
                if MyLevel < 775 or MyLevel > 799 then
                    if MyLevel < 800 or MyLevel > 874 then
                        if MyLevel < 875 or MyLevel > 899 then
                            if MyLevel < 900 or MyLevel > 949 then
                                if MyLevel < 950 or MyLevel > 974 then
                                    if MyLevel < 975 or MyLevel > 999 then
                                        if MyLevel < 1000 or MyLevel > 1049 then
                                            if MyLevel < 1050 or MyLevel > 1099 then
                                                if MyLevel < 1100 or MyLevel > 1124 then
                                                    if MyLevel < 1125 or MyLevel > 1174 then
                                                        if MyLevel < 1175 or MyLevel > 1199 then
                                                            if MyLevel < 1200 or MyLevel > 1249 then
                                                                if MyLevel < 1250 or MyLevel > 1274 then
                                                                    if MyLevel < 1275 or MyLevel > 1299 then
                                                                        if MyLevel < 1300 or MyLevel > 1324 then
                                                                            if MyLevel < 1325 or MyLevel > 1349 then
                                                                                if MyLevel < 1350 or MyLevel > 1374 then
                                                                                    if MyLevel < 1375 or MyLevel > 1424 then
                                                                                        if MyLevel < 1425 or MyLevel > 1449 then
                                                                                            if MyLevel >= 1450 then
                                                                                                Mon = 'Water Fighter'
                                                                                                LevelQuest = 2
                                                                                                NameQuest = 'ForgottenQuest'
                                                                                                NameMon = 'Water Fighter'
                                                                                                CFrameQuest = CFrame.new(-3054, 240, -10146)
                                                                                                CFrameMon = CFrame.new(-3291, 252, -10501)
                                                                                            end
                                                                                        else
                                                                                            Mon = 'Sea Soldier'
                                                                                            LevelQuest = 1
                                                                                            NameQuest = 'ForgottenQuest'
                                                                                            NameMon = 'Sea Soldier'
                                                                                            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, -0, 1, -0, 0.13915664, -0, 0.990270376)
                                                                                            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
                                                                                        end
                                                                                    else
                                                                                        Mon = 'Snow Lurker'
                                                                                        LevelQuest = 2
                                                                                        NameQuest = 'FrostQuest'
                                                                                        NameMon = 'Snow Lurker'
                                                                                        CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, -0, -0.358349502, -0, 1, -0, 0.358349502, -0, -0.933587909)
                                                                                        CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
                                                                                    end
                                                                                else
                                                                                    Mon = 'Arctic Warrior'
                                                                                    LevelQuest = 1
                                                                                    NameQuest = 'FrostQuest'
                                                                                    NameMon = 'Arctic Warrior'
                                                                                    CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, -0, -0.358349502, -0, 1, -0, 0.358349502, -0, -0.933587909)
                                                                                    CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)

                                                                                    if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
                                                                                    end
                                                                                end
                                                                            else
                                                                                Mon = 'Ship Officer'
                                                                                LevelQuest = 2
                                                                                NameQuest = 'ShipQuest2'
                                                                                NameMon = 'Ship Officer'
                                                                                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                                                                                CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)

                                                                                if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                                                                end
                                                                            end
                                                                        else
                                                                            Mon = 'Ship Steward'
                                                                            LevelQuest = 1
                                                                            NameQuest = 'ShipQuest2'
                                                                            NameMon = 'Ship Steward'
                                                                            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                                                                            CFrameMon = CFrame.new(919.4385375976563, 129.55599975585938, 33436.03515625)

                                                                            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                                                            end
                                                                        end
                                                                    else
                                                                        Mon = 'Ship Engineer'
                                                                        LevelQuest = 2
                                                                        NameQuest = 'ShipQuest1'
                                                                        NameMon = 'Ship Engineer'
                                                                        CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
                                                                        CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)

                                                                        if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                                                        end
                                                                    end
                                                                else
                                                                    Mon = 'Ship Deckhand'
                                                                    LevelQuest = 1
                                                                    NameQuest = 'ShipQuest1'
                                                                    NameMon = 'Ship Deckhand'
                                                                    CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
                                                                    CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)

                                                                    if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                                                    end
                                                                end
                                                            else
                                                                Mon = 'Lava Pirate'
                                                                LevelQuest = 2
                                                                NameQuest = 'FireSideQuest'
                                                                NameMon = 'Lava Pirate'
                                                                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, -0, 0.469463557, -0, 1, -0, -0.469463557, -0, -0.882952213)
                                                                CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
                                                            end
                                                        else
                                                            Mon = 'Magma Ninja'
                                                            LevelQuest = 1
                                                            NameQuest = 'FireSideQuest'
                                                            NameMon = 'Magma Ninja'
                                                            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, -0, 0.469463557, -0, 1, -0, -0.469463557, -0, -0.882952213)
                                                            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
                                                        end
                                                    else
                                                        Mon = 'Horned Warrior'
                                                        LevelQuest = 2
                                                        NameQuest = 'IceSideQuest'
                                                        NameMon = 'Horned Warrior'
                                                        CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, -0, 1, -0, 0.891015649, -0, 0.453972578)
                                                        CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
                                                    end
                                                else
                                                    Mon = 'Lab Subordinate'
                                                    LevelQuest = 1
                                                    NameQuest = 'IceSideQuest'
                                                    NameMon = 'Lab Subordinate'
                                                    CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, -0, 1, -0, 0.891015649, -0, 0.453972578)
                                                    CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
                                                end
                                            else
                                                Mon = 'Winter Warrior'
                                                LevelQuest = 2
                                                NameQuest = 'SnowMountainQuest'
                                                NameMon = 'Winter Warrior'
                                                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, -0, 0.92718488, -0, 1, -0, -0.92718488, -0, -0.374604106)
                                                CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
                                            end
                                        else
                                            Mon = 'Snow Trooper'
                                            LevelQuest = 1
                                            NameQuest = 'SnowMountainQuest'
                                            NameMon = 'Snow Trooper'
                                            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, -0, 0.92718488, -0, 1, -0, -0.92718488, -0, -0.374604106)
                                            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
                                        end
                                    else
                                        Mon = 'Vampire'
                                        LevelQuest = 2
                                        NameQuest = 'ZombieQuest'
                                        NameMon = 'Vampire'
                                        CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, -0, -0.95628953, -0, 1, -0, 0.95628953, -0, -0.29242146)
                                        CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
                                    end
                                else
                                    Mon = 'Zombie'
                                    LevelQuest = 1
                                    NameQuest = 'ZombieQuest'
                                    NameMon = 'Zombie'
                                    CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, -0, -0.95628953, -0, 1, -0, 0.95628953, -0, -0.29242146)
                                    CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
                                end
                            else
                                Mon = 'Marine Captain'
                                LevelQuest = 2
                                NameQuest = 'MarineQuest3'
                                NameMon = 'Marine Captain'
                                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, -0, 0.500031412, -0, 1, -0, -0.500031412, -0, 0.866007268)
                                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
                            end
                        else
                            Mon = 'Marine Lieutenant'
                            LevelQuest = 1
                            NameQuest = 'MarineQuest3'
                            NameMon = 'Marine Lieutenant'
                            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, -0, 0.500031412, -0, 1, -0, -0.500031412, -0, 0.866007268)
                            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
                        end
                    else
                        Mon = 'Factory Staff'
                        NameQuest = 'Area2Quest'
                        LevelQuest = 2
                        NameMon = 'Factory Staff'
                        CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.0773208699999999e-10, -0.0319722369)
                        CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
                    end
                else
                    Mon = 'Swan Pirate'
                    LevelQuest = 1
                    NameQuest = 'Area2Quest'
                    NameMon = 'Swan Pirate'
                    CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, -0, 0.99026376, -0, 1, -0, -0.99026376, -0, 0.139203906)
                    CFrameMon = CFrame.new(1068.664306640625, 137.61428833007813, 1322.1060791015625)
                end
            else
                Mon = 'Mercenary'
                LevelQuest = 2
                NameQuest = 'Area1Quest'
                NameMon = 'Mercenary'
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, -0, -0.974368095, -0, 1, -0, 0.974368095, -0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            end
        else
            Mon = 'Raider'
            LevelQuest = 1
            NameQuest = 'Area1Quest'
            NameMon = 'Raider'
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, -0, -0.974368095, -0, 1, -0, 0.974368095, -0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914063, 52.779319763183594, 2345.7705078125)
        end
    elseif World3 then
        if MyLevel < 1500 or MyLevel > 1524 then
            if MyLevel < 1525 or MyLevel > 1574 then
                if MyLevel < 1575 or MyLevel > 1599 then
                    if MyLevel < 1600 or MyLevel > 1624 then
                        if MyLevel < 1625 or MyLevel > 1649 then
                            if MyLevel < 1650 or MyLevel > 1699 then
                                if MyLevel < 1700 or MyLevel > 1724 then
                                    if MyLevel < 1725 or MyLevel > 1774 then
                                        if MyLevel < 1775 or MyLevel > 1799 then
                                            if MyLevel < 1800 or MyLevel > 1824 then
                                                if MyLevel < 1825 or MyLevel > 1849 then
                                                    if MyLevel < 1850 or MyLevel > 1899 then
                                                        if MyLevel < 1900 or MyLevel > 1924 then
                                                            if MyLevel < 1925 or MyLevel > 1974 then
                                                                if MyLevel < 1975 or MyLevel > 1999 then
                                                                    if MyLevel < 2000 or MyLevel > 2024 then
                                                                        if MyLevel < 2025 or MyLevel > 2049 then
                                                                            if MyLevel < 2050 or MyLevel > 2074 then
                                                                                if MyLevel < 2075 or MyLevel > 2099 then
                                                                                    if MyLevel < 2100 or MyLevel > 2124 then
                                                                                        if MyLevel < 2125 or MyLevel > 2149 then
                                                                                            if MyLevel < 2150 or MyLevel > 2199 then
                                                                                                if MyLevel < 2200 or MyLevel > 2224 then
                                                                                                    if MyLevel < 2225 or MyLevel > 2249 then
                                                                                                        if MyLevel < 2250 or MyLevel > 2274 then
                                                                                                            if MyLevel < 2275 or MyLevel > 2299 then
                                                                                                                if MyLevel < 2300 or MyLevel > 2324 then
                                                                                                                    if MyLevel < 2325 or MyLevel > 2349 then
                                                                                                                        if MyLevel < 2350 or MyLevel > 2374 then
                                                                                                                            if MyLevel < 2375 or MyLevel > 2399 then
                                                                                                                                if MyLevel < 2400 or MyLevel > 2424 then
                                                                                                                                    if MyLevel < 2425 or MyLevel > 2449 then
                                                                                                                                        if MyLevel < 2450 or MyLevel > 2474 then
                                                                                                                                            if MyLevel < 2475 or MyLevel > 2524 then
                                                                                                                                                if MyLevel < 2525 or MyLevel > 2550 then
                                                                                                                                                    if MyLevel < 2550 or MyLevel > 2574 then
                                                                                                                                                        if MyLevel >= 2575 then
                                                                                                                                                            Mon = 'Skull Slayer'
                                                                                                                                                            LevelQuest = 2
                                                                                                                                                            NameQuest = 'TikiQuest3'
                                                                                                                                                            NameMon = 'Skull Slayer'
                                                                                                                                                            CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, -0, 1, -0, 0.308980465, -0, 0.951068401)
                                                                                                                                                            CFrameMon = CFrame.new(-16855.043, 122.457253, 1478.15308, -0.999392271, -0, -0.0348687991, -0, 1, -0, 0.0348687991, -0, -0.999392271)
                                                                                                                                                        end
                                                                                                                                                    else
                                                                                                                                                        Mon = 'Serpent Hunter'
                                                                                                                                                        LevelQuest = 1
                                                                                                                                                        NameQuest = 'TikiQuest3'
                                                                                                                                                        NameMon = 'Serpent Hunter'
                                                                                                                                                        CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, -0, 1, -0, 0.308980465, -0, 0.951068401)
                                                                                                                                                        CFrameMon = CFrame.new(-16521.0625, 106.09285, 1488.78467, 0.469467044, -0, 0.882950008, -0, 1, -0, -0.882950008, -0, 0.469467044)
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                    Mon = 'Isle Champion'
                                                                                                                                                    LevelQuest = 2
                                                                                                                                                    NameQuest = 'TikiQuest2'
                                                                                                                                                    NameMon = 'Isle Champion'
                                                                                                                                                    CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
                                                                                                                                                    CFrameMon = CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375)
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                Mon = 'Island Boy'
                                                                                                                                                LevelQuest = 2
                                                                                                                                                NameQuest = 'TikiQuest1'
                                                                                                                                                NameMon = 'Island Boy'
                                                                                                                                                CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632813)
                                                                                                                                                CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351563)
                                                                                                                                            end
                                                                                                                                        else
                                                                                                                                            Mon = 'Isle Outlaw'
                                                                                                                                            LevelQuest = 1
                                                                                                                                            NameQuest = 'TikiQuest1'
                                                                                                                                            NameMon = 'Isle Outlaw'
                                                                                                                                            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632813)
                                                                                                                                            CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        Mon = 'Snow Demon'
                                                                                                                                        LevelQuest = 2
                                                                                                                                        NameQuest = 'CandyQuest1'
                                                                                                                                        NameMon = 'Snow Demon'
                                                                                                                                        CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                                                                                                                                        CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                    Mon = 'Candy Pirate'
                                                                                                                                    LevelQuest = 1
                                                                                                                                    NameQuest = 'CandyQuest1'
                                                                                                                                    NameMon = 'Candy Pirate'
                                                                                                                                    CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                                                                                                                                    CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
                                                                                                                                end
                                                                                                                            else
                                                                                                                                Mon = 'Candy Rebel'
                                                                                                                                LevelQuest = 2
                                                                                                                                NameQuest = 'ChocQuest2'
                                                                                                                                NameMon = 'Candy Rebel'
                                                                                                                                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                                                                                                                                CFrameMon = CFrame.new(134.86563110351563, 77.2476806640625, -12876.5478515625)
                                                                                                                            end
                                                                                                                        else
                                                                                                                            Mon = 'Sweet Thief'
                                                                                                                            LevelQuest = 1
                                                                                                                            NameQuest = 'ChocQuest2'
                                                                                                                            NameMon = 'Sweet Thief'
                                                                                                                            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                                                                                                                            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
                                                                                                                        end
                                                                                                                    else
                                                                                                                        Mon = 'Chocolate Bar Battler'
                                                                                                                        LevelQuest = 2
                                                                                                                        NameQuest = 'ChocQuest1'
                                                                                                                        NameMon = 'Chocolate Bar Battler'
                                                                                                                        CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                                                                                                                        CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
                                                                                                                    end
                                                                                                                else
                                                                                                                    Mon = 'Cocoa Warrior'
                                                                                                                    LevelQuest = 1
                                                                                                                    NameQuest = 'ChocQuest1'
                                                                                                                    NameMon = 'Cocoa Warrior'
                                                                                                                    CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                                                                                                                    CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
                                                                                                                end
                                                                                                            else
                                                                                                                Mon = 'Head Baker'
                                                                                                                LevelQuest = 2
                                                                                                                NameQuest = 'CakeQuest2'
                                                                                                                NameMon = 'Head Baker'
                                                                                                                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.2214214299999995e-8, 0.250778586, 4.74911062e-8, 1, 1.49904711e-8, -0.250778586, 2.64211941e-8, -0.96804446)
                                                                                                                CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
                                                                                                            end
                                                                                                        else
                                                                                                            Mon = 'Baking Staff'
                                                                                                            LevelQuest = 1
                                                                                                            NameQuest = 'CakeQuest2'
                                                                                                            NameMon = 'Baking Staff'
                                                                                                            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.2214214299999995e-8, 0.250778586, 4.74911062e-8, 1, 1.49904711e-8, -0.250778586, 2.64211941e-8, -0.96804446)
                                                                                                            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
                                                                                                        end
                                                                                                    else
                                                                                                        Mon = 'Cake Guard'
                                                                                                        LevelQuest = 2
                                                                                                        NameQuest = 'CakeQuest1'
                                                                                                        NameMon = 'Cake Guard'
                                                                                                        CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-8, 0.288177818, 6.9301186999999995e-8, 1, 7.5193121099999995e-8, -0.288177818, -5.2032135e-8, 0.957576931)
                                                                                                        CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
                                                                                                    end
                                                                                                else
                                                                                                    Mon = 'Cookie Crafter'
                                                                                                    LevelQuest = 1
                                                                                                    NameQuest = 'CakeQuest1'
                                                                                                    NameMon = 'Cookie Crafter'
                                                                                                    CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-8, 0.288177818, 6.9301186999999995e-8, 1, 7.5193121099999995e-8, -0.288177818, -5.2032135e-8, 0.957576931)
                                                                                                    CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
                                                                                                end
                                                                                            else
                                                                                                Mon = 'Ice Cream Commander'
                                                                                                LevelQuest = 2
                                                                                                NameQuest = 'IceCreamIslandQuest'
                                                                                                NameMon = 'Ice Cream Commander'
                                                                                                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                                                CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
                                                                                            end
                                                                                        else
                                                                                            Mon = 'Ice Cream Chef'
                                                                                            LevelQuest = 1
                                                                                            NameQuest = 'IceCreamIslandQuest'
                                                                                            NameMon = 'Ice Cream Chef'
                                                                                            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                                            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
                                                                                        end
                                                                                    else
                                                                                        Mon = 'Peanut President'
                                                                                        LevelQuest = 2
                                                                                        NameQuest = 'NutsIslandQuest'
                                                                                        NameMon = 'Peanut President'
                                                                                        CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                                        CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
                                                                                    end
                                                                                else
                                                                                    Mon = 'Peanut Scout'
                                                                                    LevelQuest = 1
                                                                                    NameQuest = 'NutsIslandQuest'
                                                                                    NameMon = 'Peanut Scout'
                                                                                    CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                                    CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
                                                                                end
                                                                            else
                                                                                Mon = 'Posessed Mummy'
                                                                                LevelQuest = 2
                                                                                NameQuest = 'HauntedQuest2'
                                                                                NameMon = 'Posessed Mummy'
                                                                                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                                CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
                                                                            end
                                                                        else
                                                                            Mon = 'Demonic Soul'
                                                                            LevelQuest = 1
                                                                            NameQuest = 'HauntedQuest2'
                                                                            NameMon = 'Demonic Soul'
                                                                            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
                                                                        end
                                                                    else
                                                                        Mon = 'Living Zombie'
                                                                        LevelQuest = 2
                                                                        NameQuest = 'HauntedQuest1'
                                                                        NameMon = 'Living Zombie'
                                                                        CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, -0, -0, 1, -0, 1, -0, -1, -0, -0)
                                                                        CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
                                                                    end
                                                                else
                                                                    Mon = 'Reborn Skeleton'
                                                                    LevelQuest = 1
                                                                    NameQuest = 'HauntedQuest1'
                                                                    NameMon = 'Reborn Skeleton'
                                                                    CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, -0, -0, 1, -0, 1, -0, -1, -0, -0)
                                                                    CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
                                                                end
                                                            else
                                                                Mon = 'Musketeer Pirate'
                                                                LevelQuest = 2
                                                                NameQuest = 'DeepForestIsland2'
                                                                NameMon = 'Musketeer Pirate'
                                                                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, -0, 0.996196866, -0, 1, -0, -0.996196866, -0, -0.0871315002)
                                                                CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
                                                            end
                                                        else
                                                            Mon = 'Jungle Pirate'
                                                            LevelQuest = 1
                                                            NameQuest = 'DeepForestIsland2'
                                                            NameMon = 'Jungle Pirate'
                                                            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, -0, 0.996196866, -0, 1, -0, -0.996196866, -0, -0.0871315002)
                                                            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
                                                        end
                                                    else
                                                        Mon = 'Mythological Pirate'
                                                        LevelQuest = 2
                                                        NameQuest = 'DeepForestIsland'
                                                        NameMon = 'Mythological Pirate'
                                                        CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, -0, 1, -0, 0.707079291, -0, 0.707134247)
                                                        CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
                                                    end
                                                else
                                                    Mon = 'Forest Pirate'
                                                    LevelQuest = 1
                                                    NameQuest = 'DeepForestIsland'
                                                    NameMon = 'Forest Pirate'
                                                    CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, -0, 1, -0, 0.707079291, -0, 0.707134247)
                                                    CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
                                                end
                                            else
                                                Mon = 'Fishman Captain'
                                                LevelQuest = 2
                                                NameQuest = 'DeepForestIsland3'
                                                NameMon = 'Fishman Captain'
                                                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, -0, 0.469463557, -0, 1, -0, -0.469463557, -0, -0.882952213)
                                                CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625)
                                            end
                                        else
                                            Mon = 'Fishman Raider'
                                            LevelQuest = 1
                                            NameQuest = 'DeepForestIsland3'
                                            NameMon = 'Fishman Raider'
                                            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, -0, 0.469463557, -0, 1, -0, -0.469463557, -0, -0.882952213)
                                            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
                                        end
                                    else
                                        Mon = 'Marine Rear Admiral'
                                        NameMon = 'Marine Rear Admiral'
                                        NameQuest = 'MarineTreeIsland'
                                        LevelQuest = 2
                                        CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                                        CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
                                    end
                                else
                                    Mon = 'Marine Commodore'
                                    LevelQuest = 1
                                    NameQuest = 'MarineTreeIsland'
                                    NameMon = 'Marine Commodore'
                                    CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, -0, 0.258804798, -0, 1, -0, -0.258804798, -0, -0.965929747)
                                    CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
                                end
                            else
                                Mon = 'Venomous Assailant'
                                NameQuest = 'VenomCrewQuest'
                                LevelQuest = 2
                                NameMon = 'Venomous Assailant'
                                CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
                                CFrameMon = CFrame.new(4638.78564453125, 1078.94091796875, 881.8002319335938)
                            end
                        else
                            Mon = 'Hydra Enforcer'
                            NameQuest = 'VenomCrewQuest'
                            LevelQuest = 1
                            NameMon = 'Hydra Enforcer'
                            CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
                            CFrameMon = CFrame.new(4584.69287109375, 1002.6435546875, 705.7958984375)
                        end
                    else
                        Mon = 'Dragon Crew Archer'
                        NameQuest = 'DragonCrewQuest'
                        LevelQuest = 2
                        NameMon = 'Dragon Crew Archer'
                        CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
                        CFrameMon = CFrame.new(6817.91259765625, 484.804443359375, 513.4141235351563)
                    end
                else
                    Mon = 'Dragon Crew Warrior'
                    LevelQuest = 1
                    NameQuest = 'DragonCrewQuest'
                    NameMon = 'Dragon Crew Warrior'
                    CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
                    CFrameMon = CFrame.new(6920.71435546875, 56.15597152709961, -942.5044555664063)
                end
            else
                Mon = 'Pistol Billionaire'
                LevelQuest = 2
                NameQuest = 'PiratePortQuest'
                NameMon = 'Pistol Billionaire'
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, -0, 1, -0, 0.258804798, -0, 0.965929627)
                CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
            end
        else
            Mon = 'Pirate Millionaire'
            LevelQuest = 1
            NameQuest = 'PiratePortQuest'
            NameMon = 'Pirate Millionaire'
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, -0, 1, -0, 0.258804798, -0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        end
    end
end
function MaterialMon()
    local _LocalPlayer3 = game.Players.LocalPlayer
    local _Character3 = _LocalPlayer3.Character

    if _Character3 then
        _Character3 = _LocalPlayer3.Character:FindFirstChild('HumanoidRootPart')
    end
    if _Character3 then
        local function v99(p97, p98)
            if p98 <= (_Character3.Position - p97).Magnitude then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', p97)
            end
        end

        if World1 then
            if SelectMaterial ~= 'Angel Wings' then
                if SelectMaterial ~= 'Leather + Scrap Metal' then
                    if SelectMaterial ~= 'Magma Ore' then
                        if SelectMaterial == 'Fish Tail' then
                            MMon = {
                                'Fishman Warrior',
                                'Fishman Commando',
                                'Fishman Lord',
                            }
                            MPos = CFrame.new(61123, 19, 1569)
                            SP = 'Default'

                            v99(Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875), 17000)
                        end
                    else
                        MMon = {
                            'Military Soldier',
                            'Military Spy',
                            'Magma Admiral',
                        }
                        MPos = CFrame.new(-5815, 84, 8820)
                        SP = 'Default'
                    end
                else
                    MMon = {
                        'Brute',
                        'Pirate',
                    }
                    MPos = CFrame.new(-1145, 15, 4350)
                    SP = 'Default'
                end
            else
                MMon = {
                    'Shanda',
                    'Royal Squad',
                    'Royal Soldier',
                    'Wysper',
                    'Thunder God',
                }
                MPos = CFrame.new(-4698, 845, -1912)
                SP = 'Default'

                v99(Vector3.new(-4607.82275, 872.54248, -1667.55688), 10000)
            end
        elseif World2 then
            if SelectMaterial ~= 'Leather + Scrap Metal' then
                if SelectMaterial ~= 'Magma Ore' then
                    if SelectMaterial ~= 'Ectoplasm' then
                        if SelectMaterial ~= 'Mystic Droplet' then
                            if SelectMaterial ~= 'Radioactive Material' then
                                if SelectMaterial == 'Vampire Fang' then
                                    MMon = {
                                        'Vampire',
                                    }
                                    MPos = CFrame.new(-6033, 7, -1317)
                                    SP = 'Default'
                                end
                            else
                                MMon = {
                                    'Factory Staff',
                                }
                                MPos = CFrame.new(295, 73, -56)
                                SP = 'Default'
                            end
                        else
                            MMon = {
                                'Water Fighter',
                            }
                            MPos = CFrame.new(-3385, 239, -10542)
                            SP = 'Default'
                        end
                    else
                        MMon = {
                            'Ship Deckhand',
                            'Ship Engineer',
                            'Ship Steward',
                            'Ship Officer',
                        }
                        MPos = CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)
                        SP = 'Default'

                        v99(Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875), 18000)
                    end
                else
                    MMon = {
                        'Magma Ninja',
                        'Lava Pirate',
                    }
                    MPos = CFrame.new(-5428, 78, -5959)
                    SP = 'Default'
                end
            else
                MMon = {
                    'Marine Captain',
                }
                MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
                SP = 'Default'
            end
        elseif World3 then
            if SelectMaterial ~= 'Leather + Scrap Metal' then
                if SelectMaterial ~= 'Fish Tail' then
                    if SelectMaterial ~= 'Conjured Cocoa' then
                        if SelectMaterial ~= 'Dragon Scale' then
                            if SelectMaterial ~= 'Gunpowder' then
                                if SelectMaterial == 'Mini Tusk' then
                                    MMon = {
                                        'Mythological Pirate',
                                    }
                                    MPos = CFrame.new(-13545, 470, -6917)
                                    SP = 'Default'
                                end
                            else
                                MMon = {
                                    'Pistol Billionaire',
                                }
                                MPos = CFrame.new(-469, 74, 5904)
                                SP = 'Default'
                            end
                        else
                            MMon = {
                                'Dragon Crew Warrior',
                            }
                            MPos = CFrame.new(6594, 383, 139)
                            SP = 'Default'
                        end
                    else
                        MMon = {
                            'Chocolate Bar Battler',
                            'Cocoa Warrior',
                        }
                        MPos = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
                        SP = 'Default'
                    end
                else
                    MMon = {
                        'Fishman Raider',
                        'Fishman Captain',
                    }
                    MPos = CFrame.new(-10993, 332, -8940)
                    SP = 'Default'
                end
            else
                MMon = {
                    'Jungle Pirate',
                    'Forest Pirate',
                }
                MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
                SP = 'Default'
            end
        end
    end
end

local u100 = 0
local u101 = 1

function AutoHaki()
    if not game:GetService('Players').LocalPlayer.Character:FindFirstChild('HasBuso') then
        local v102 = tick()

        if u101 <= v102 - u100 then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Buso')

            u100 = v102
        end
    end
end

local u103 = 0
local u104 = 0.5

function UnEquipWeapon(p105)
    local v106 = tick()

    if u104 <= v106 - u103 then
        if game.Players.LocalPlayer.Character:FindFirstChild(p105) then
            getgenv().NotAutoEquip = true
            game.Players.LocalPlayer.Character[p105].Parent = game.Players.LocalPlayer.Backpack
            getgenv().NotAutoEquip = false
        end

        u103 = v106
    end
end

local u107 = 0
local u108 = 0.5

function EquipWeapon(p109)
    local v110 = tick()

    if u108 <= v110 - u107 then
        local v111 = not getgenv().NotAutoEquip and game.Players.LocalPlayer.Backpack:FindFirstChild(p109)

        if v111 then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v111)
        end

        u107 = v110
    end
end
function BTP(p112)
    local _LocalPlayer4 = game.Players.LocalPlayer
    local _HumanoidRootPart2 = _LocalPlayer4.Character.HumanoidRootPart
    local _Humanoid2 = _LocalPlayer4.Character.Humanoid
    local _Main = _LocalPlayer4.PlayerGui.Main
    local _ = p112.Position
    local _Position = _HumanoidRootPart2.Position

    while true do
        _Humanoid2.Health = 0
        _HumanoidRootPart2.CFrame = p112
        _Main.Quest.Visible = false

        if (_HumanoidRootPart2.Position - _Position).Magnitude > 1 then
            _Position = _HumanoidRootPart2.Position
            _HumanoidRootPart2.CFrame = p112
        end

        task.wait(0.5)

        if (p112.Position - _HumanoidRootPart2.Position).Magnitude <= 2000 then
            return
        end
    end
end
function BTPZ(p118)
    local _LocalPlayer5 = game.Players.LocalPlayer

    if _LocalPlayer5.Character and _LocalPlayer5.Character:FindFirstChild('HumanoidRootPart') then
        _LocalPlayer5.Character.HumanoidRootPart.CFrame = p118
    end
end

local u120 = 0
local u121 = 0.5

function fastpos(p122)
    local v123 = tick()

    if u121 <= v123 - u120 then
        local _Magnitude = (p122.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

        game:GetService('TweenService'):Create(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(_Magnitude / 1000, Enum.EasingStyle.Linear), {CFrame = p122}):Play()

        u120 = v123
    end
end

local u125 = 0
local u126 = 0.5

function TPB(p127, p128)
    local v129 = tick()

    if u126 <= v129 - u125 then
        local _TweenService = game:GetService('TweenService')
        local _Magnitude2 = (p128.CFrame.Position - p127.Position).Magnitude
        local _SpeedBoat = getgenv().SpeedBoat
        local v133 = TweenInfo.new(_Magnitude2 / _SpeedBoat, Enum.EasingStyle.Linear)

        if _Magnitude2 <= 25 then
            return {
                Stop = function() end,
            }
        end

        local u134 = _TweenService:Create(p128, v133, {CFrame = p127})
        local v135 = u134

        u134.Play(v135)

        u125 = v129

        return {
            Stop = function()
                u134:Cancel()
            end,
        }
    end
end

local u136 = 0
local u137 = 0.2

function EquipAllWeapon()
    pcall(function()
        local v138 = tick()

        if u137 <= v138 - u136 then
            local v139, v140, v141 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

            while true do
                local v142

                v141, v142 = v139(v140, v141)

                if v141 == nil then
                    break
                end
                if v142:IsA('Tool') and (v142.Name ~= 'Summon Sea Beast' and (v142.Name ~= 'Water Body' and v142.Name ~= 'Awakening')) then
                    local v143 = game.Players.LocalPlayer.Backpack:FindFirstChild(v142.Name)

                    if v143 then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v143)
                    end
                end
            end

            u136 = v138
        end
    end)
end
function CheckNearestTeleporter(p144)
    local _ = game.Players.LocalPlayer.Data.Level.Value
    local _Position2 = p144.Position
    local _huge = math.huge
    local _huge2 = math.huge
    local _PlaceId2 = game.PlaceId
    local v149 = nil
    local v150 = nil
    local v151 = nil

    if _PlaceId2 == 2753915549 then
        v149 = true
    elseif _PlaceId2 == 4442272183 then
        v150 = true
    elseif _PlaceId2 == 7449423635 then
        v151 = true
    end

    local v152 = {}
    local v153

    if v151 then
        v153 = {
            Mansion = Vector3.new(-12471, 374, -7551),
            Hydra = Vector3.new(5659, 1013, -341),
            ['Caslte On The Sea'] = Vector3.new(-5092, 315, -3130),
            ['Floating Turtle'] = Vector3.new(-12001, 332, -8861),
            ['Beautiful Pirate'] = Vector3.new(5319, 23, -93),
            ['Temple Of Time'] = Vector3.new(28286, 14897, 103),
        }
    elseif v150 then
        v153 = {
            ['Flamingo Mansion'] = Vector3.new(-317, 331, 597),
            ['Flamingo Room'] = Vector3.new(2283, 15, 867),
            ['Cursed Ship'] = Vector3.new(923, 125, 32853),
            ['Zombie Island'] = Vector3.new(-6509, 83, -133),
        }
    else
        v153 = v149 and {
            ['Sky Island 1'] = Vector3.new(-4652, 873, -1754),
            ['Sky Island 2'] = Vector3.new(-7895, 5547, -380),
            ['Under Water Island'] = Vector3.new(61164, 5, 1820),
            ['Under Water Island Entrace'] = Vector3.new(3865, 5, -1926),
        } or v152
    end

    local v154, v155, v156 = pairs(v153)
    local v157 = {}

    while true do
        local v158

        v156, v158 = v154(v155, v156)

        if v156 == nil then
            break
        end

        v157[v156] = (v158 - _Position2).Magnitude
    end

    local v159, v160, v161 = pairs(v157)

    while true do
        local v162

        v161, v162 = v159(v160, v161)

        if v161 == nil then
            break
        end
        if v162 < _huge then
            _huge2 = v162
            _huge = _huge2

            local v163 = _huge2

            _huge2 = _huge
            v163 = _huge
        end
    end

    local v164, v165, v166 = pairs(v157)
    local v167 = nil

    while true do
        local v168

        v166, v168 = v164(v165, v166)

        if v166 == nil then
            break
        end
        if v168 <= _huge then
            v167 = v153[v166]
        end
    end

    if _huge2 <= (_Position2 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
        return v167
    end
end
function requestEntrance(p169)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack({
        'requestEntrance',
        p169,
    }))

    local _CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(_CFrame.X, _CFrame.Y + 50, _CFrame.Z)

    task.wait(0.5)
end
function topos(p171)
    pcall(function()
        if game:GetService('Players').LocalPlayer and (game:GetService('Players').LocalPlayer.Character and (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Humanoid') and (game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and (game:GetService('Players').LocalPlayer.Character.Humanoid.Health > 0 and game:GetService('Players').LocalPlayer.Character.HumanoidRootPart)))) then
            if not TweenSpeed then
                TweenSpeed = 350
            end

            DefualtY = p171.Y
            TargetY = p171.Y
            targetCFrameWithDefualtY = CFrame.new(p171.X, DefualtY, p171.Z)
            targetPos = p171.Position
            oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            Distance = (targetPos - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude

            if Distance <= 300 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p171
            end

            local v172 = CheckNearestTeleporter(p171)

            if v172 then
                pcall(function()
                    tween:Cancel()
                end)
                requestEntrance(v172)
            end

            b1 = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, DefualtY, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
            IngoreY = true

            if IngoreY and (b1.Position - targetCFrameWithDefualtY.Position).Magnitude > 5 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, DefualtY, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)

                local _TweenService2 = game:GetService('TweenService')
                local v174 = TweenInfo.new((targetPos - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude / TweenSpeed, Enum.EasingStyle.Linear)

                tween = _TweenService2:Create(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v174, {CFrame = targetCFrameWithDefualtY})

                tween:Play();

                ({}).Stop = function(_)
                    tween:Cancel()
                end

                tween.Completed:Wait()

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, TargetY, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
            else
                local _TweenService3 = game:GetService('TweenService')
                local v176 = TweenInfo.new((targetPos - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude / TweenSpeed, Enum.EasingStyle.Linear)
                local v177 = {CFrame = p171}

                tween = _TweenService3:Create(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v176, v177)

                tween:Play();

                ({}).Stop = function(_)
                    tween:Cancel()
                end

                tween.Completed:Wait()

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, TargetY, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
            end
            if tween then
                return tweenfunc
            else
                return tween
            end
        else
            return
        end
    end)
end
function StopTween(p178)
    pcall(function()
        if not p178 then
            getgenv().StopTween = true

            if tween then
                tween:Cancel()

                tween = nil
            end

            local _LocalPlayer6 = game:GetService('Players').LocalPlayer

            if _LocalPlayer6 then
                _LocalPlayer6 = _LocalPlayer6.Character
            end
            if _LocalPlayer6 then
                _LocalPlayer6 = _LocalPlayer6:FindFirstChild('HumanoidRootPart')
            end
            if _LocalPlayer6 then
                _LocalPlayer6.Anchored = true

                task.wait(0.1)

                _LocalPlayer6.CFrame = _LocalPlayer6.CFrame
                _LocalPlayer6.Anchored = false
            end
            if _LocalPlayer6 then
                _LocalPlayer6 = _LocalPlayer6:FindFirstChild('BodyClip')
            end
            if _LocalPlayer6 then
                _LocalPlayer6:Destroy()
            end

            getgenv().StopTween = false
            getgenv().Clip = false
        end
    end)
end

spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().TeleportIsland or (getgenv().AutoFarm or (getgenv().AutoMaterial or (getgenv().MasteryFarm or (getgenv().AutoGetMelee or (getgenv().TeleportToFruit or (getgenv().AutoNewWorld or (getgenv().AutoThirdSea or (getgenv().AutoFactory or (getgenv().AutoPirateRaid or (getgenv().AutoEliteHunter or (getgenv().AutoTouchPadHaki or (getgenv().AutoRipIndra or (getgenv().AutoSoulReaper or (getgenv().AutoDoughKing or (getgenv().AutoDarkbeard or (getgenv().DojoClaimQuest or (getgenv().DragonTalonUpgrade or (getgenv().BlazeEmberFarm or (getgenv().AutoObservationHakiV2 or (getgenv().AutoObservation or (getgenv().AutoFarmBoss or (getgenv().AutoFarmAllBoss or (getgenv().Auto_Dungeon or (getgenv().SailBoat or (getgenv().RelzFishBoat or (getgenv().RelzPirateBrigade or (getgenv().RelzPirateGrandBrigade or (getgenv().AutoTerrorshark or (getgenv().AutoSeaBest or (getgenv().AutoFrozenDimension or (getgenv().KillLevi or (getgenv().UpgradeRaceV2 or (getgenv().AutoCyborg or (getgenv().AutoGhoul or (getgenv().QuestTrain_2 or (getgenv().TeleportMigare or (getgenv().Tweentohighestpoint or (getgenv().TeleportToGear or (getgenv().AutoTrialRace or (getgenv().AutoKillPlayerAfterTrial or (getgenv().AutoRainbowHaki or (getgenv().AutoSkullGuitar or (getgenv().AutoGetCDK or (getgenv().AutoTushita or (getgenv().AutoSaber or getgenv().TeleportPlayer))))))))))))))))))))))))))))))))))))))))))))) then
                if not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
                    local _BodyVelocity = Instance.new('BodyVelocity')

                    _BodyVelocity.Name = 'BodyClip'
                    _BodyVelocity.Parent = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
                    _BodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                    _BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                end
            else
                local _BodyClip = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip')

                if _BodyClip then
                    _BodyClip:Destroy()
                end
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        game:GetService('RunService').Stepped:Connect(function()
            if getgenv().TeleportIsland or (getgenv().AutoFarm or (getgenv().AutoMaterial or (getgenv().MasteryFarm or (getgenv().AutoGetMelee or (getgenv().TeleportToFruit or (getgenv().AutoNewWorld or (getgenv().AutoThirdSea or (getgenv().AutoFactory or (getgenv().AutoPirateRaid or (getgenv().AutoEliteHunter or (getgenv().AutoTouchPadHaki or (getgenv().AutoRipIndra or (getgenv().AutoSoulReaper or (getgenv().AutoDoughKing or (getgenv().AutoDarkbeard or (getgenv().DojoClaimQuest or (getgenv().DragonTalonUpgrade or (getgenv().BlazeEmberFarm or (getgenv().AutoObservationHakiV2 or (getgenv().AutoObservation or (getgenv().AutoFarmBoss or (getgenv().AutoFarmAllBoss or (getgenv().Auto_Dungeon or (getgenv().SailBoat or (getgenv().RelzFishBoat or (getgenv().RelzPirateBrigade or (getgenv().RelzPirateGrandBrigade or (getgenv().AutoTerrorshark or (getgenv().AutoSeaBest or (getgenv().AutoFrozenDimension or (getgenv().KillLevi or (getgenv().UpgradeRaceV2 or (getgenv().AutoCyborg or (getgenv().AutoGhoul or (getgenv().QuestTrain_2 or (getgenv().TeleportMigare or (getgenv().Tweentohighestpoint or (getgenv().TeleportToGear or (getgenv().AutoTrialRace or (getgenv().AutoKillPlayerAfterTrial or (getgenv().AutoRainbowHaki or (getgenv().AutoSkullGuitar or (getgenv().AutoGetCDK or (getgenv().AutoTushita or (getgenv().AutoSaber or getgenv().TeleportPlayer))))))))))))))))))))))))))))))))))))))))))))) then
                local v182, v183, v184 = pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants())

                while true do
                    local v185

                    v184, v185 = v182(v183, v184)

                    if v184 == nil then
                        break
                    end
                    if v185:IsA('BasePart') then
                        v185.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    local v186 = 0
    local v187 = 1

    while wait() do
        if (getgenv().AutoFarm or getgenv().Kill_Trial_V4) and v187 < tick() - v186 then
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('Ken', true)
            end)

            v186 = tick()
        end
    end
end)
spawn(function()
    local v188 = tick()

    while task.wait(0.1) do
        if getgenv().AutoSeaBest and CheckSeaBeast() then
            local v189 = tick()

            if v189 - v188 >= 0.5 then
                Pos = CFrame.new(math.random(-600, 600), math.random(0, 300), math.random(-600, 600))
                v188 = v189
            end
        end
    end
end)

local _LocalPlayer7 = game.Players.LocalPlayer

local function u193(p191)
    if not p191 then
        return false
    end

    local _Humanoid3 = p191:FindFirstChild('Humanoid')

    if _Humanoid3 then
        _Humanoid3 = _Humanoid3.Health > 0
    end

    return _Humanoid3
end
local function u210(p194, p195)
    local v196 = game:GetService('Workspace').Enemies:GetChildren()
    local v197 = game:GetService('Players'):GetPlayers()
    local _Position3 = p194:GetPivot().Position
    local v199, v200, v201 = ipairs(v196)
    local v202 = {}

    while true do
        local v203

        v201, v203 = v199(v200, v201)

        if v201 == nil then
            break
        end

        local _HumanoidRootPart3 = v203:FindFirstChild('HumanoidRootPart')

        if _HumanoidRootPart3 and (u193(v203) and (_HumanoidRootPart3.Position - _Position3).Magnitude <= p195) then
            table.insert(v202, v203)
        end
    end

    local v205, v206, v207 = ipairs(v197)

    while true do
        local v208

        v207, v208 = v205(v206, v207)

        if v207 == nil then
            break
        end
        if v208 ~= _LocalPlayer7 and v208.Character then
            local _HumanoidRootPart4 = v208.Character:FindFirstChild('HumanoidRootPart')

            if _HumanoidRootPart4 and (u193(v208.Character) and (_HumanoidRootPart4.Position - _Position3).Magnitude <= p195) then
                table.insert(v202, v208.Character)
            end
        end
    end

    return v202
end

function AttackNoCoolDown()
    local _Character4 = _LocalPlayer7.Character

    if not _Character4 then
        return
    end

    local v212, v213, v214 = ipairs(_Character4:GetChildren())
    local v215 = nil

    while true do
        local v216

        v214, v216 = v212(v213, v214)

        if v214 == nil then
            v216 = v215

            break
        end
        if v216:IsA('Tool') then
            break
        end
    end

    if v216 then
        local v217 = u210(_Character4, 60)

        if v216:FindFirstChild('LeftClickRemote') then
            local v218, v219, v220 = ipairs(v217)
            local v221 = 1

            while true do
                local v222, v223 = v218(v219, v220)

                if v222 == nil then
                    break
                end

                v220 = v222

                local _HumanoidRootPart5 = v223:FindFirstChild('HumanoidRootPart')

                if _HumanoidRootPart5 then
                    local _Unit2 = (_HumanoidRootPart5.Position - _Character4:GetPivot().Position).Unit

                    v216.LeftClickRemote:FireServer(_Unit2, v221)

                    v221 = v221 + 1
                end
            end
        else
            local v226, v227, v228 = ipairs(v217)
            local u229 = {}
            local u230 = nil

            while true do
                local v231, v232 = v226(v227, v228)

                if v231 == nil then
                    break
                end

                v228 = v231

                if not v232:GetAttribute('IsBoat') then
                    local _Head3 = v232:FindFirstChild('Head')

                    if _Head3 then
                        table.insert(u229, {v232, _Head3})

                        u230 = _Head3
                    end
                end
            end

            if u230 then
                local _ReplicatedStorage4 = game:GetService('ReplicatedStorage')
                local _RERegisterAttack = _ReplicatedStorage4:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/RegisterAttack')
                local _RERegisterHit = _ReplicatedStorage4:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/RegisterHit')

                pcall(function()
                    _RERegisterAttack:FireServer(0.1)
                    _RERegisterHit:FireServer(u230, u229)
                end)
            end
        end
    end
end

print('--[[Loaded UI]]--')

Window = loadstring(game:HttpGet('https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua'))():CreateWindow({
    Title = 'Banana Cat Hub-Blox Fruit [ Premium ]',
    SubTitle = ' By Obii',
    TabWidth = 155,
    Size = UDim2.fromOffset(555, 320),
    Acrylic = false,
    Theme = 'Dark',
    MinimizeKey = Enum.KeyCode.LeftControl,
})
Shop = Window:AddTab({
    Title = 'Tab Shop',
    Icon = '',
})
sex = {
    'WildDares',
    'BossBuild',
    'GetPranked',
    'Sub2OfficialNoobie',
    'Sub2Daigrock',
    'Sub2NoobMaster123',
    'Bluxxy',
    'JCWK',
    'Enyu_is_Pro',
    'Sub2Fer999',
    'kittgaming',
    'TheGreatAce',
    'StrawHatMaine',
    'TantaiGaming',
    'Axiore',
    'SUB2GAMERROBOT_EXP1',
    'MagicBus',
    'StarcodeHEO',
    'Sub2CaptainMaui',
    'FIGHT4FRUIT',
    'EARN_FRUITS',
}

Shop:AddButton({
    Title = 'Redeem Code',
    Callback = function()
        function RedeemCode(p237)
            game:GetService('ReplicatedStorage').Remotes.Redeem:InvokeServer(p237)
        end

        local v238, v239, v240 = pairs(sex)
        local u241 = 0.5

        while true do
            local u242

            v240, u242 = v238(v239, v240)

            if v240 == nil then
                break
            end

            spawn(function()
                RedeemCode(u242)
                wait(u241)
            end)
        end
    end,
})

local _CommF_ = game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_')

Shop:AddButton({
    Title = 'Teleport Old World',
    Callback = function()
        local _, _ = pcall(function()
            return _CommF_:InvokeServer('TravelMain')
        end)
    end,
})

local _CommF_2 = game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_')

Shop:AddButton({
    Title = 'Teleport New World',
    Callback = function()
        local _, _ = pcall(function()
            return _CommF_2:InvokeServer('TravelDressrosa')
        end)
    end,
})

local _CommF_3 = game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_')

Shop:AddButton({
    Title = 'Teleport Third Sea',
    Callback = function()
        local _, _ = pcall(function()
            return _CommF_3:InvokeServer('TravelZou')
        end)
    end,
})
Shop:AddParagraph({
    Title = 'Fighting Shop',
    Content = string.rep('-', 21),
})

local _CommF_4 = game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_')

Shop:AddButton({
    Title = 'Black Leg',
    Callback = function()
        local _, _ = pcall(function()
            return _CommF_4:InvokeServer('BuyBlackLeg')
        end)
    end,
})

local _CommF_5 = game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_')

Shop:AddButton({
    Title = 'Fishman Karate',
    Callback = function()
        local _, _ = pcall(function()
            return _CommF_5:InvokeServer('BuyFishmanKarate')
        end)
    end,
})

local _CommF_6 = game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_')

Shop:AddButton({
    Title = 'Electro',
    Callback = function()
        local _, _ = pcall(function()
            return _CommF_6:InvokeServer('BuyElectro')
        end)
    end,
})

local _CommF_7 = game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_')

Shop:AddButton({
    Title = 'Dragon Breath',
    Callback = function()
        local v250, _ = pcall(function()
            return _CommF_7:InvokeServer('BlackbeardReward', 'DragonClaw', '1')
        end)

        if v250 then
            local v251, _ = pcall(function()
                return _CommF_7:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
            end)

            if not v251 then
            end
        else
            return
        end
    end,
})
Shop:AddButton({
    Title = 'SuperHuman',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
    end,
})
Shop:AddButton({
    Title = 'Death Step',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
    end,
})
Shop:AddButton({
    Title = 'Sharkman Karate',
    Callback = function()
        local _CommF_8 = game:GetService('ReplicatedStorage').Remotes.CommF_

        _CommF_8:InvokeServer('BuySharkmanKarate', true)
        wait(0.2)
        _CommF_8:InvokeServer('BuySharkmanKarate')
    end,
})
Shop:AddButton({
    Title = 'Electric Claw',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
    end,
})
Shop:AddButton({
    Title = 'Dragon Talon',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')
    end,
})
Shop:AddButton({
    Title = 'God Human',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman')
    end,
})
Shop:AddButton({
    Title = 'Sanguine Art',
    Callback = function()
        local _CommF_9 = game:GetService('ReplicatedStorage').Remotes.CommF_

        _CommF_9:InvokeServer('BuySanguineArt', true)
        wait(0.2)
        _CommF_9:InvokeServer('BuySanguineArt')
    end,
})
Shop:AddParagraph({
    Title = 'Abilities Shop',
    Content = string.rep('-', 21),
})
Shop:AddButton({
    Title = 'Skyjump [ $10,000 Beli ]',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Geppo')
    end,
})
Shop:AddButton({
    Title = 'Buso Haki [ $25,000 Beli ]',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Buso')
    end,
})
Shop:AddButton({
    Title = 'Observation haki [ $750,000 Beli ]',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk', 'Buy')
    end,
})
Shop:AddButton({
    Title = 'Soru [ $100,000 Beli ]',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Soru')
    end,
})
Shop:AddParagraph({
    Title = 'Misc Shop',
    Content = string.rep('-', 21),
})
Shop:AddButton({
    Title = 'Buy Refund Stat (2500F)',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '2')
    end,
})
Shop:AddButton({
    Title = 'Buy Reroll Race (3000F)',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '2')
    end,
})
Shop:AddButton({
    Title = 'Buy Ghoul Race',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'Ectoplasm',
            'BuyCheck',
            4,
        }))
        wait(0.5)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'Ectoplasm',
            'Change',
            4,
        }))
    end,
})
Shop:AddButton({
    Title = 'Buy Cyborg Race (2500F)',
    Callback = function()
        if not isBuying then
            isBuying = true

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'CyborgTrainer',
                'Buy',
            }))
            wait(0.5)

            isBuying = false
        end
    end,
})

Server = Window:AddTab({
    Title = 'Tab Status And Server',
    Icon = '',
})
Time = Server:AddParagraph({
    Title = 'Time Zone',
    Content = '',
})

function UpdateOS()
    local _t = os.date('*t')
    local v255 = _t.hour % 24
    local v256 = v255 < 12 and 'AM' or 'PM'
    local __02i02i02is = string.format('%02i:%02i:%02i %s', (v255 - 1) % 12 + 1, _t.min, _t.sec, v256)
    local __02d02d04d = string.format('%02d/%02d/%04d', _t.day, _t.month, _t.year)
    local _LocalizationService = game:GetService('LocalizationService')
    local _LocalPlayer8 = game:GetService('Players').LocalPlayer
    local _ = _LocalPlayer8.Name
    local v261

    if getgenv().countryRegionCode then
        v261 = getgenv().countryRegionCode
    else
        local v262

        v262, v261 = pcall(function()
            return _LocalizationService:GetCountryRegionForPlayerAsync(_LocalPlayer8)
        end)

        if v262 then
            getgenv().countryRegionCode = v261
        else
            getgenv().countryRegionCode = 'Unknown'
        end
    end

    Time:SetDesc(__02d02d04d .. ' - ' .. __02i02i02is .. ' [ ' .. v261 .. ' ]')
end

spawn(function()
    while true do
        UpdateOS()
        wait(1)
    end
end)

Timmessss = Server:AddParagraph({
    Title = 'Time',
    Content = '',
})

function UpdateTime()
    local v263 = math.floor(workspace.DistributedGameTime + 0.5)
    local v264 = math.floor(v263 / 3600) % 24
    local v265 = math.floor(v263 / 60) % 60
    local v266 = math.floor(v263 / 1) % 60

    Timmessss:SetDesc(v264 .. ' Hour (h) ' .. v265 .. ' Minute (m) ' .. v266 .. ' Second (s) ')
end

spawn(function()
    while true do
        UpdateTime()
        wait(1)
    end
end)

Miragecheck = Server:AddParagraph({
    Title = 'Mirage Island',
    Content = 'Status: ',
})

local u267 = ''

spawn(function()
    pcall(function()
        while true do
            repeat
                wait(1)

                local v268 = game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') ~= nil and '\u{2705}\u{fe0f}' or '\u{274c}\u{fe0f}'
            until v268 ~= u267

            Miragecheck:SetDesc('Status: ' .. v268)

            u267 = v268
        end
    end)
end)

Kitsunecheck = Server:AddParagraph({
    Title = 'Kitsune Island',
    Content = 'Status: ',
})

spawn(function()
    local v269 = ''

    while task.wait(1) do
        local v270 = game:GetService('Workspace').Map:FindFirstChild('KitsuneIsland') and '\u{2705}\u{fe0f}' or '\u{274c}\u{fe0f}'

        if v270 ~= v269 then
            Kitsunecheck:SetDesc('Status: ' .. v270)

            v269 = v270
        end
    end
end)

CPrehistoriccheck = Server:AddParagraph({
    Title = 'Prehistoric Island',
    Desc = 'Status: ',
})

task.spawn(function()
    local v271 = ''

    while task.wait(1) do
        local v272 = game.Workspace._WorldOrigin.Locations:FindFirstChild('Prehistoric Island') and '\u{2705}\u{fe0f}' or '\u{274c}\u{fe0f}'

        if v272 ~= v271 then
            CPrehistoriccheck:SetDesc('Status: ' .. v272)

            v271 = v272
        end
    end
end)

FrozenIsland = Server:AddParagraph({
    Title = 'Frozen Dimension',
    Content = 'Status: ',
})

spawn(function()
    local v273 = ''

    while wait(1) do
        local v274 = game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') and '\u{2705}\u{fe0f}' or '\u{274c}\u{fe0f}'

        if v274 ~= v273 then
            FrozenIsland:SetDesc('Status: ' .. v274)

            v273 = v274
        end
    end
end)

MobCakePrince = Server:AddParagraph({
    Title = 'Dimension Killed',
    Content = '',
})

spawn(function()
    while wait(1) do
        local _CakePrinceSpawner = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')
        local v276 = string.len(_CakePrinceSpawner) < 86 and 'Cake Prince: \u{2705}\u{fe0f}' or 'Kill: ' .. string.sub(_CakePrinceSpawner, 39, 41)

        MobCakePrince:SetDesc(v276)
    end
end)

CheckRip = Server:AddParagraph({
    Title = 'Rip_Indra',
    Content = 'Status: ',
})

spawn(function()
    local v277 = ''

    while wait(1) do
        local v278 = game:GetService('ReplicatedStorage'):FindFirstChild('rip_indra True Form') or (game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') and '\u{2705}\u{fe0f}' or '\u{274c}\u{fe0f}')

        if v278 ~= v277 then
            CheckRip:SetDesc('Status: ' .. v278)

            v277 = v278
        end
    end
end)

CheckDoughKing = Server:AddParagraph({
    Title = 'Dough King',
    Content = 'Status: ',
})

spawn(function()
    local v279 = ''

    while wait(1) do
        local v280 = game:GetService('ReplicatedStorage'):FindFirstChild('Dough King') or (game:GetService('Workspace').Enemies:FindFirstChild('Dough King') and '\u{2705}\u{fe0f}' or '\u{274c}\u{fe0f}')

        if v280 ~= v279 then
            CheckDoughKing:SetDesc('Status: ' .. v280)

            v279 = v280
        end
    end
end)

EliteHunter = Server:AddParagraph({
    Title = 'Elite Hunter',
    Content = 'Status: ',
})

spawn(function()
    local v281 = ''

    while wait(1) do
        local v282 = (game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') or (game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') or (game:GetService('ReplicatedStorage'):FindFirstChild('Urban') or (game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban')))))) and ('\u{2705}\u{fe0f}' or '\u{274c}\u{fe0f}') or '\u{274c}\u{fe0f}'
        local _EliteHunter = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress')

        if v282 ~= v281 then
            EliteHunter:SetDesc('Status: ' .. v282 .. ' | Killed: ' .. _EliteHunter)

            v281 = v282
        end
    end
end)

FM = Server:AddParagraph({
    Title = 'Full Moon',
    Content = '',
})

task.spawn(function()
    while task.wait(1) do
        local _MoonTextureId = game:GetService('Lighting').Sky.MoonTextureId
        local v285 = _MoonTextureId == 'http://www.roblox.com/asset/?id=9709149431' and 'Moon: 5/5' or (_MoonTextureId == 'http://www.roblox.com/asset/?id=9709149052' and 'Moon: 4/5' or (_MoonTextureId == 'http://www.roblox.com/asset/?id=9709143733' and 'Moon: 3/5' or (_MoonTextureId == 'http://www.roblox.com/asset/?id=9709150401' and 'Moon: 2/5' or (_MoonTextureId == 'http://www.roblox.com/asset/?id=9709149680' and 'Moon: 1/5' or 'Moon: 0/5'))))

        FM:SetDesc(v285)
    end
end)

LegendarySword = Server:AddParagraph({
    Title = 'Legendary Sword',
    Content = 'Status: ',
})

spawn(function()
    while wait(1) do
        local v286 = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('LegendarySwordDealer', '1') and 'Shisui' or (game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('LegendarySwordDealer', '2') and 'Wando' or (game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('LegendarySwordDealer', '3') and 'Saddi' or 'Not Found Legend Swords'))

        LegendarySword:SetDesc(v286)
    end
end)

StatusBone = Server:AddParagraph({
    Title = 'Bone',
    Content = '',
})

spawn(function()
    while wait(1) do
        StatusBone:SetDesc('You Have: ' .. tostring(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Check')) .. ' Bones')
    end
end)

Input = Server:AddInput('Input', {
    Title = 'Input Job Id',
    Default = '',
    Placeholder = 'Paste Job Id',
    Numeric = false,
    Finished = false,
    Callback = function(p287)
        getgenv().Job = p287
    end,
})
Toggle = Server:AddToggle('Toggle', {
    Title = 'Spam Join',
    Default = false,
})

Toggle:OnChanged(function(p288)
    getgenv().Join = p288
end)
spawn(function()
    local v289 = 0
    local v290 = 1

    while task.wait() do
        if getgenv().Join and v290 <= tick() - v289 then
            v289 = tick()

            game:GetService('TeleportService'):TeleportToPlaceInstance(game.placeId, getgenv().Job, game.Players.LocalPlayer)
        end
    end
end)

local u291 = 0
local u292 = 5

Server:AddButton({
    Title = 'Join Server',
    Callback = function()
        if u292 <= tick() - u291 then
            u291 = tick()

            game:GetService('TeleportService'):TeleportToPlaceInstance(game.placeId, getgenv().Job, game.Players.LocalPlayer)
        end
    end,
})

local u293 = 0
local u294 = 2

Server:AddButton({
    Title = 'Copy JobId',
    Callback = function()
        if u294 > tick() - u293 then
            print('Please try again in a moment!')
        else
            u293 = tick()

            setclipboard(tostring(game.JobId))
            print('JobId Copied!')
        end
    end,
})

local u295 = 0
local u296 = 3

Server:AddButton({
    Title = 'Rejoin Server',
    Callback = function()
        if u296 <= tick() - u295 then
            u295 = tick()

            game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
        end
    end,
})
Server:AddButton({
    Title = 'Hop Server',
    Callback = function()
        Hop()
    end,
})

function Hop()
    local _PlaceId3 = game.PlaceId
    local u298 = {}
    local u299 = ''
    local _hour = os.date('!*t').hour

    function TPReturner()
        local v301

        if u299 ~= '' then
            v301 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId3 .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. u299))
        else
            v301 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId3 .. '/servers/Public?sortOrder=Asc&limit=100'))
        end
        if v301.nextPageCursor and (v301.nextPageCursor ~= 'null' and v301.nextPageCursor ~= nil) then
            u299 = v301.nextPageCursor
        end

        local v302, v303, v304 = pairs(v301.data)
        local v305 = 0

        while true do
            local v306

            v304, v306 = v302(v303, v304)

            if v304 == nil then
                break
            end

            local v307 = true
            local u308 = tostring(v306.id)

            if tonumber(v306.maxPlayers) > tonumber(v306.playing) then
                local v309, v310, v311 = pairs(u298)

                while true do
                    local v312

                    v311, v312 = v309(v310, v311)

                    if v311 == nil then
                        break
                    end
                    if v305 == 0 then
                        if tonumber(_hour) ~= tonumber(v312) then
                            pcall(function()
                                u298 = {}

                                table.insert(u298, _hour)
                            end)
                        end
                    elseif u308 == tostring(v312) then
                        v307 = false
                    end

                    v305 = v305 + 1
                end

                if v307 == true then
                    table.insert(u298, u308)
                    wait(0.1)
                    pcall(function()
                        game:GetService('TeleportService'):TeleportToPlaceInstance(_PlaceId3, u308, game.Players.LocalPlayer)
                    end)
                    wait(1)

                    break
                end
            end
        end
    end
    function Teleport()
        while true do
            pcall(function()
                TPReturner()

                if u299 ~= '' then
                    TPReturner()
                end
            end)
            wait(2)
        end
    end

    Teleport()
end

LGa = Window:AddTab({
    Title = 'Tab Local Player',
    Icon = '',
})

LGa:AddButton({
    Title = 'Stop Tween',
    Callback = function()
        StopTween()
    end,
})
LGa:AddButton({
    Title = 'Show Item',
    Description = "I'm Still Fixing....",
    Callback = function() end,
})
LGa:AddButton({
    Title = 'Open Devil Fruit Shop [ Mirage ]',
    Description = "I'm Still Fixing....",
    Callback = function() end,
})
LGa:AddButton({
    Title = 'Open Devil Fruit Shop',
    Description = "I'm Still Fixing....",
    Callback = function() end,
})
LGa:AddButton({
    Title = 'Open Title',
    Callback = function()
        local u313 = {
            'getTitles',
        }
        local v314, _ = pcall(function()
            return game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(u313))
        end)

        if v314 then
            game.Players.LocalPlayer.PlayerGui.Main.Titles.Visible = true
        end
    end,
})

local u315 = 0
local u316 = 2

LGa:AddButton({
    Title = 'Open Color',
    Callback = function()
        if u316 <= tick() - u315 then
            u315 = tick()

            local _Colors = game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild('Colors')

            if _Colors then
                _Colors.Visible = true
            end
        end
    end,
})
LGa:AddButton({
    Title = 'Boost FPS',
    Callback = function()
        FPSBooster()
    end,
})

function FPSBooster()
    local u318 = true
    local v319 = game
    local _Workspace = v319.Workspace
    local _Lighting = v319.Lighting
    local _Terrain = _Workspace.Terrain

    sethiddenproperty(_Lighting, 'Technology', 2)
    sethiddenproperty(_Terrain, 'Decoration', false)

    _Terrain.WaterWaveSize = 0
    _Terrain.WaterWaveSpeed = 0
    _Terrain.WaterReflectance = 0
    _Terrain.WaterTransparency = 0
    _Lighting.GlobalShadows = false
    _Lighting.FogEnd = 9000000000
    _Lighting.Brightness = 0
    settings().Rendering.QualityLevel = 'Level01'

    local function v324(p323)
        if p323:IsA('Part') or (p323:IsA('Union') or (p323:IsA('CornerWedgePart') or p323:IsA('TrussPart'))) then
            p323.Material = 'Plastic'
            p323.Reflectance = 0
        elseif p323:IsA('Decal') or p323:IsA('Texture') and u318 then
            p323.Transparency = 1
        elseif p323:IsA('ParticleEmitter') or p323:IsA('Trail') then
            p323.Lifetime = NumberRange.new(0)
        elseif p323:IsA('Explosion') then
            p323.BlastPressure = 1
            p323.BlastRadius = 1
        elseif p323:IsA('Fire') or (p323:IsA('SpotLight') or (p323:IsA('Smoke') or p323:IsA('Sparkles'))) then
            p323.Enabled = false
        elseif p323:IsA('MeshPart') then
            p323.Material = 'Plastic'
            p323.Reflectance = 0
            p323.TextureID = 1.0385902758728955e16
        end
    end

    local v325, v326, v327 = pairs(_Workspace:GetDescendants())

    while true do
        local v328

        v327, v328 = v325(v326, v327)

        if v327 == nil then
            break
        end
        if v328:IsA('Part') or (v328:IsA('Union') or (v328:IsA('CornerWedgePart') or (v328:IsA('TrussPart') or v328:IsA('MeshPart')))) then
            v324(v328)
        end
    end

    local v329, v330, v331 = pairs(_Lighting:GetChildren())

    while true do
        local v332

        v331, v332 = v329(v330, v331)

        if v331 == nil then
            break
        end
        if v332:IsA('BlurEffect') or (v332:IsA('SunRaysEffect') or (v332:IsA('ColorCorrectionEffect') or (v332:IsA('BloomEffect') or v332:IsA('DepthOfFieldEffect')))) then
            v332.Enabled = false
        end
    end
end

Dropdown = LGa:AddDropdown('Dropdown', {
    Title = 'auto Stats',
    Values = {
        'Melee',
        'Defense',
        'Sword',
        'Gun',
        'Fruit',
    },
    Multi = false,
})

Dropdown:SetValue('')
Dropdown:OnChanged(function(p333)
    StatsMode = p333
end)
spawn(function()
    while true do
        repeat
            wait(0.5)

            local _LocalPlayer9 = game.Players.LocalPlayer
            local v335 = _LocalPlayer9 and _LocalPlayer9:FindFirstChild('Data') and (_LocalPlayer9.Data:FindFirstChild('Points') and (_LocalPlayer9.Data.Points.Value >= PointStats and getgenv().AutoStats) and ({
                Melee = 'Melee',
                Defense = 'Defense',
                Sword = 'Sword',
                Gun = 'Gun',
                Fruit = 'Demon Fruit',
            })[StatsMode])
        until v335

        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AddPoint', v335, PointStats)
    end
end)

Slider = LGa:AddSlider('Slider', {
    Title = 'Point Stats',
    Description = '',
    Default = 1,
    Min = 1,
    Max = 1000,
    Rounding = 0,
    Callback = function(p336)
        PointStats = p336
    end,
})
Toggle = LGa:AddToggle('Toggle', {
    Title = 'Auto Stats',
    Default = false,
})

Toggle:OnChanged(function(p337)
    getgenv().AutoStats = p337
end)

local u338 = true
local u339 = 2

LGa:AddButton({
    Title = 'Change Team To Pirates',
    Callback = function()
        if u338 then
            u338 = false

            task.wait(u339)
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Pirates')
            end)

            u338 = true
        end
    end,
})

local u340 = true
local u341 = 2

LGa:AddButton({
    Title = 'Change Team To Marines',
    Callback = function()
        if u340 then
            u340 = false

            task.wait(u341)
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Marines')
            end)

            u340 = true
        end
    end,
})

Toggle = LGa:AddToggle('Toggle', {
    Title = 'Auto Summon Cake Prince',
    Description = 'When you attack 500 monsters, you will automatically summon Cake Prince',
    Default = true,
})

Toggle:OnChanged(function(p342)
    getgenv().AutoSpawnCP = p342
end)

local u343 = 0
local u344 = 1

spawn(function()
    while task.wait() do
        if getgenv().AutoSpawnCP and u344 <= tick() - u343 then
            u343 = tick()

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner', true)
        end
    end
end)

Toggle = LGa:AddToggle('Toggle', {
    Title = 'Black Screen',
    Default = false,
})

Toggle:OnChanged(function(p345)
    getgenv().StartBlackScreen = p345
end)

local u346 = 0
local u347 = 0.5

spawn(function()
    while task.wait() do
        if u347 <= tick() - u346 then
            u346 = tick()

            if getgenv().StartBlackScreen then
                game:GetService('Players').LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(500, 0, 500, 500)
            else
                game:GetService('Players').LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(1, 0, 500, 500)
            end
        end
    end
end)

Toggle = LGa:AddToggle('Toggle', {
    Title = 'White Screen',
    Default = false,
})

Toggle:OnChanged(function(p348)
    getgenv().WhiteScreen = p348

    if getgenv().WhiteScreen ~= true then
        if getgenv().WhiteScreen == false then
            game:GetService('RunService'):Set3dRenderingEnabled(true)
        end
    else
        game:GetService('RunService'):Set3dRenderingEnabled(false)
    end
end)

Toggle = LGa:AddToggle('Toggle', {
    Title = 'Hide Mob',
    Default = false,
})

Toggle:OnChanged(function(p349)
    getgenv().HideMob = p349
end)
spawn(function()
    while task.wait() do
        if getgenv().HideMob then
            pcall(function()
                local v350, v351, v352 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v353

                    v352, v353 = v350(v351, v352)

                    if v352 == nil then
                        break
                    end
                    if v353.ClassName == 'MeshPart' then
                        v353.Transparency = 1
                    end
                end

                local v354, v355, v356 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v357

                    v356, v357 = v354(v355, v356)

                    if v356 == nil then
                        break
                    end
                    if v357.Name == 'Head' then
                        v357.Transparency = 1
                    end
                end

                local v358, v359, v360 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v361

                    v360, v361 = v358(v359, v360)

                    if v360 == nil then
                        break
                    end
                    if v361.ClassName == 'Accessory' then
                        v361.Handle.Transparency = 1
                    end
                end

                local v362, v363, v364 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v365

                    v364, v365 = v362(v363, v364)

                    if v364 == nil then
                        break
                    end
                    if v365.ClassName == 'Decal' then
                        v365.Transparency = 1
                    end
                end
            end)
        end
    end
end)

Toggle = LGa:AddToggle('Toggle', {
    Title = 'Remove Dame Text',
    Default = true,
})

Toggle:OnChanged(function(p366)
    getgenv().RemoveText = p366
    game:GetService('ReplicatedStorage').Assets.GUI.DamageCounter.Enabled = not getgenv().RemoveText
end)

Toggle = LGa:AddToggle('Toggle', {
    Title = 'Remove Notification',
    Default = false,
})

Toggle:OnChanged(function(p367)
    getgenv().RemoveNotification = p367
    game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = not getgenv().RemoveNotification
end)

Toggle = LGa:AddToggle('Toggle', {
    Title = 'Auto Rejoin On Kick',
    Default = false,
})

Toggle:OnChanged(function(p368)
    getgenv().AutoRejoinKick = p368

    if p368 then
        getgenv().rejoin = game:GetService('CoreGui').RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(p369)
            if p369.Name == 'ErrorPrompt' and p369:FindFirstChild('MessageArea') and p369.MessageArea:FindFirstChild('ErrorFrame') then
                game:GetService('TeleportService'):Teleport(game.PlaceId)
            end
        end)
    elseif getgenv().rejoin then
        getgenv().rejoin:Disconnect()

        getgenv().rejoin = nil
    end
end)
LGa:AddButton({
    Title = 'Rain Fruit',
    Callback = function()
        local v370 = game:GetObjects('rbxassetid://14759368201')[1]:GetChildren()
        local v371, v372, v373 = pairs(v370)
        local v374 = 10
        local v375 = 0

        while true do
            local u376

            v373, u376 = v371(v372, v373)

            if v373 == nil or v374 <= v375 then
                break
            end

            v375 = v375 + 1
            u376.Parent = game.Workspace.Map

            u376:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))

            local _AnimationController = u376.Fruit:FindFirstChild('AnimationController')
            local v378 = _AnimationController and _AnimationController:FindFirstChild('Idle')

            if v378 then
                v378:Play()
            end

            u376.Handle.Touched:Connect(function(p379)
                if p379.Parent == game.Players.LocalPlayer.Character then
                    u376.Parent = game.Players.LocalPlayer.Backpack

                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(u376)
                end
            end)
        end
    end,
})

if World1 then
    Dropdown = LGa:AddDropdown('Dropdown', {
        Title = 'Select Island',
        Values = {
            'WindMill',
            'Marine',
            'Middle Town',
            'Jungle',
            'Pirate Village',
            'Desert',
            'Snow Island',
            'MarineFord',
            'Colosseum',
            'Sky Island 1',
            'Sky Island 2',
            'Sky Island 3',
            'Prison',
            'Magma Village',
            'Under Water Island',
            'Fountain City',
            'Shank Room',
            'Mob Island',
        },
        Multi = false,
        Default = false,
    })

    Dropdown:SetValue('0.15')
    Dropdown:OnChanged(function(p380)
        getgenv().SelectIsland = p380
    end)
end
if World2 then
    Dropdown = LGa:AddDropdown('Dropdown', {
        Title = 'Select Island',
        Values = {
            'The Cafe',
            'Frist Spot',
            'Dark Area',
            'Flamingo Mansion',
            'Flamingo Room',
            'Green Zone',
            'Factory',
            'Colossuim',
            'Zombie Island',
            'Two Snow Mountain',
            'Punk Hazard',
            'Cursed Ship',
            'Ice Castle',
            'Forgotten Island',
            'Ussop Island',
            'Mini Sky Island',
        },
        Multi = false,
        Default = false,
    })

    Dropdown:SetValue('0.15')
    Dropdown:OnChanged(function(p381)
        getgenv().SelectIsland = p381
    end)
end
if World3 then
    Dropdown = LGa:AddDropdown('Dropdown', {
        Title = 'Select Island',
        Values = {
            'Mansion',
            'Port Town',
            'Great Tree',
            'Castle On The Sea',
            'MiniSky',
            'Hydra Island',
            'Floating Turtle',
            'Haunted Castle',
            'Ice Cream Island',
            'Peanut Island',
            'Cake Island',
            'Cocoa Island',
            'Candy Island',
            'Tiki Outpost',
        },
        Multi = false,
        Default = false,
    })

    Dropdown:SetValue('0.15')
    Dropdown:OnChanged(function(p382)
        getgenv().SelectIsland = p382
    end)
end

Toggle = LGa:AddToggle('Toggle', {
    Title = 'Teleport Island',
    Default = false,
})

Toggle:OnChanged(function(p383)
    getgenv().TeleportIsland = p383

    if getgenv().TeleportIsland ~= true then
        return
    else
        while true do
            if true then
                task.wait()

                if getgenv().SelectIsland ~= 'WindMill' then
                    if getgenv().SelectIsland ~= 'Marine' then
                        if getgenv().SelectIsland ~= 'Middle Town' then
                            if getgenv().SelectIsland ~= 'Jungle' then
                                if getgenv().SelectIsland ~= 'Pirate Village' then
                                    if getgenv().SelectIsland ~= 'Desert' then
                                        if getgenv().SelectIsland ~= 'Snow Island' then
                                            if getgenv().SelectIsland ~= 'MarineFord' then
                                                if getgenv().SelectIsland ~= 'Colosseum' then
                                                    if getgenv().SelectIsland ~= 'Sky Island 1' then
                                                        if getgenv().SelectIsland ~= 'Sky Island 2' then
                                                            if getgenv().SelectIsland ~= 'Sky Island 3' then
                                                                if getgenv().SelectIsland ~= 'Prison' then
                                                                    if getgenv().SelectIsland ~= 'Magma Village' then
                                                                        if getgenv().SelectIsland ~= 'Under Water Island' then
                                                                            if getgenv().SelectIsland ~= 'Fountain City' then
                                                                                if getgenv().SelectIsland ~= 'Shank Room' then
                                                                                    if getgenv().SelectIsland ~= 'Mob Island' then
                                                                                        if getgenv().SelectIsland ~= 'The Cafe' then
                                                                                            if getgenv().SelectIsland ~= 'Frist Spot' then
                                                                                                if getgenv().SelectIsland ~= 'Dark Area' then
                                                                                                    if getgenv().SelectIsland ~= 'Flamingo Mansion' then
                                                                                                        if getgenv().SelectIsland ~= 'Flamingo Room' then
                                                                                                            if getgenv().SelectIsland ~= 'Green Zone' then
                                                                                                                if getgenv().SelectIsland ~= 'Factory' then
                                                                                                                    if getgenv().SelectIsland ~= 'Colossuim' then
                                                                                                                        if getgenv().SelectIsland ~= 'Zombie Island' then
                                                                                                                            if getgenv().SelectIsland ~= 'Two Snow Mountain' then
                                                                                                                                if getgenv().SelectIsland ~= 'Punk Hazard' then
                                                                                                                                    if getgenv().SelectIsland ~= 'Cursed Ship' then
                                                                                                                                        if getgenv().SelectIsland ~= 'Ice Castle' then
                                                                                                                                            if getgenv().SelectIsland ~= 'Forgotten Island' then
                                                                                                                                                if getgenv().SelectIsland ~= 'Ussop Island' then
                                                                                                                                                    if getgenv().SelectIsland ~= 'Mini Sky Island' then
                                                                                                                                                        if getgenv().SelectIsland ~= 'Great Tree' then
                                                                                                                                                            if getgenv().SelectIsland ~= 'Castle On The Sea' then
                                                                                                                                                                if getgenv().SelectIsland ~= 'MiniSky' then
                                                                                                                                                                    if getgenv().SelectIsland ~= 'Port Town' then
                                                                                                                                                                        if getgenv().SelectIsland ~= 'Hydra Island' then
                                                                                                                                                                            if getgenv().SelectIsland ~= 'Floating Turtle' then
                                                                                                                                                                                if getgenv().SelectIsland ~= 'Mansion' then
                                                                                                                                                                                    if getgenv().SelectIsland ~= 'Haunted Castle' then
                                                                                                                                                                                        if getgenv().SelectIsland ~= 'Ice Cream Island' then
                                                                                                                                                                                            if getgenv().SelectIsland ~= 'Peanut Island' then
                                                                                                                                                                                                if getgenv().SelectIsland ~= 'Cake Island' then
                                                                                                                                                                                                    if getgenv().SelectIsland ~= 'Cocoa Island' then
                                                                                                                                                                                                        if getgenv().SelectIsland ~= 'Candy Island' then
                                                                                                                                                                                                            if getgenv().SelectIsland == 'Tiki Outpost' then
                                                                                                                                                                                                                topos(CFrame.new(-16101.1885, 12.8422165, 380.942291, 0.194113985, 1.39194061e-8, -0.980978966, -9.829046909999999e-9, 1, 1.22443504e-8, 0.980978966, 7.2652883699999995e-9, 0.194113985))
                                                                                                                                                                                                            end
                                                                                                                                                                                                        else
                                                                                                                                                                                                            topos(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                                                                                                                                                                                                        end
                                                                                                                                                                                                    else
                                                                                                                                                                                                        topos(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                                                                                                                                                                                                    end
                                                                                                                                                                                                else
                                                                                                                                                                                                    topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                                                                                                                                                                                                end
                                                                                                                                                                                            else
                                                                                                                                                                                                topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                                                                                                                                                                                            end
                                                                                                                                                                                        else
                                                                                                                                                                                            topos(CFrame.new(-874, 66, -10915))
                                                                                                                                                                                        end
                                                                                                                                                                                    else
                                                                                                                                                                                        topos(CFrame.new(-9516, 142, 5537))
                                                                                                                                                                                    end
                                                                                                                                                                                else
                                                                                                                                                                                    topos(CFrame.new(-12551, 337, -7476))
                                                                                                                                                                                end
                                                                                                                                                                            else
                                                                                                                                                                                topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                                                                                                                                                                            end
                                                                                                                                                                        else
                                                                                                                                                                            topos(CFrame.new(5433, 1062, 290))
                                                                                                                                                                        end
                                                                                                                                                                    else
                                                                                                                                                                        topos(CFrame.new(-95, 11, 5455))
                                                                                                                                                                    end
                                                                                                                                                                else
                                                                                                                                                                    topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                                                                                                                                                                end
                                                                                                                                                            else
                                                                                                                                                                topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
                                                                                                                                                            end
                                                                                                                                                        else
                                                                                                                                                            topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                                                                                                                                                        end
                                                                                                                                                    else
                                                                                                                                                        topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                    topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                                                                                                                                            end
                                                                                                                                        else
                                                                                                                                            topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                    topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                                                                                                                                end
                                                                                                                            else
                                                                                                                                topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                                                                                                                            end
                                                                                                                        else
                                                                                                                            topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                                                                                                                        end
                                                                                                                    else
                                                                                                                        topos(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                                                                                                                    end
                                                                                                                else
                                                                                                                    topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                                                                                                                end
                                                                                                            else
                                                                                                                topos(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                                                                                                            end
                                                                                                        else
                                                                                                            topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                                                                                                        end
                                                                                                    else
                                                                                                        topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                                                                                                    end
                                                                                                else
                                                                                                    topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                                                                                                end
                                                                                            else
                                                                                                topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                                                                                            end
                                                                                        else
                                                                                            topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                                                                                        end
                                                                                    else
                                                                                        topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                                                                                    end
                                                                                else
                                                                                    topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                                                                                end
                                                                            else
                                                                                topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                                                                            end
                                                                        else
                                                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                                        end
                                                                    else
                                                                        topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                                                                    end
                                                                else
                                                                    topos(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                                                                end
                                                            else
                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                                                            end
                                                        else
                                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4607.82275, 872.54248, -1667.55688))
                                                        end
                                                    else
                                                        topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                                                    end
                                                else
                                                    topos(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                                                end
                                            else
                                                topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                                            end
                                        else
                                            topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                                        end
                                    else
                                        topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                                    end
                                else
                                    topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                                end
                            else
                                topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                            end
                        else
                            topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                        end
                    else
                        topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                    end
                else
                    topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                end
            end
            if not getgenv().TeleportIsland then
            end
        end
    end
end)

Settings = Window:AddTab({
    Title = 'Setting Farm',
    Icon = '',
})
Dropdown = Settings:AddDropdown('DropdownFarm', {
    Title = 'Select Weapon',
    Values = {
        'Melee',
        'Sword',
        'Blox Fruit',
    },
    Multi = false,
})

Dropdown:SetValue('Melee')
Dropdown:OnChanged(function(p384)
    getgenv().SelectWeapon = p384
end)
task.spawn(function()
    local u385 = nil

    while task.wait(0.5) do
        pcall(function()
            if getgenv().SelectWeapon == u385 then
                return
            end

            u385 = getgenv().SelectWeapon

            local v386, v387, v388 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
            local v389 = nil

            while true do
                local v390

                v388, v390 = v386(v387, v388)

                if v388 == nil then
                    break
                end
                if v390.ToolTip == getgenv().SelectWeapon then
                    v389 = v390.Name

                    break
                end
            end

            if v389 then
                getgenv().SelectWeapon = v389
            end
        end)
    end
end)

Toggle = Settings:AddToggle('Toggle', {
    Title = 'Auto Turn On Buso',
    Default = true,
})

Toggle:OnChanged(function(p391)
    getgenv().AUTOHAKI = p391
end)
spawn(function()
    local v392 = true
    local v393 = 2

    while task.wait(0.1) do
        if getgenv().AUTOHAKI and (not game.Players.LocalPlayer.Character:FindFirstChild('HasBuso') and v392) then
            local u394 = {
                'Buso',
            }

            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(u394))
            end)
            wait(v393)

            v392 = true
        end
    end
end)

Toggle = Settings:AddToggle('Toggle', {
    Title = 'Auto Turn On Race V4',
    Default = false,
})

Toggle:OnChanged(function(p395)
    getgenv().AutoTurnOnV4 = p395
end)
task.spawn(function()
    local v396 = 0

    while true do
        repeat
            task.wait(0.1)
        until getgenv().AutoTurnOnV4

        local v397 = tick()

        if v397 - v396 >= 0.5 then
            local _Character5 = game.Players.LocalPlayer.Character

            if _Character5 and (_Character5:FindFirstChild('RaceEnergy') and (_Character5.RaceEnergy.Value >= 1 and not _Character5.RaceTransformed.Value)) then
                local _VirtualInputManager = game:GetService('VirtualInputManager')

                _VirtualInputManager:SendKeyEvent(true, 'Y', false, game)
                task.wait(0.1)
                _VirtualInputManager:SendKeyEvent(false, 'Y', false, game)

                v396 = v397
            else
                v396 = v397
            end
        end
    end
end)

Toggle = Settings:AddToggle('Toggle', {
    Title = 'Auto Turn On Race V3',
    Default = false,
})

Toggle:OnChanged(function(p400)
    getgenv().AutoTurnOnV3 = p400
end)
task.spawn(function()
    local u401 = false

    while true do
        task.wait(0.1)
        pcall(function()
            if getgenv().AutoTurnOnV3 ~= u401 then
                if getgenv().AutoTurnOnV3 then
                    game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('ActivateAbility')
                end

                u401 = getgenv().AutoTurnOnV3
            end
        end)
    end
end)

local _Toggle = Settings:AddToggle('Toggle', {
    Title = 'Auto Set Spawn Point',
    Default = false,
})
local u403 = false

_Toggle:OnChanged(function(p404)
    getgenv().Set = p404

    if p404 ~= u403 then
        u403 = p404

        if p404 then
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetSpawnPoint')
            end)
        end
    end
end)
Settings:AddToggle('Toggle', {
    Title = 'Anti AFK',
    Default = true,
}):OnChanged(function(p405)
    getgenv().AntiAFK = p405
end)
task.spawn(function()
    while true do
        if getgenv().AntiAFK then
            local _VirtualUser = game:GetService('VirtualUser')

            game:GetService('Players').LocalPlayer.Idled:Connect(function()
                _VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                wait(1)
                _VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            end)
        end

        game:GetService('RunService').Heartbeat:wait()
    end
end)
Settings:AddToggle('Toggle', {
    Title = 'Reset Teleport',
    Default = false,
}):OnChanged(function(p407)
    BypassTP = p407
end)
Settings:AddToggle('Bypass TP', {
    Title = 'Stop Reset Teleport When Have Legendary',
    Default = false,
}):OnChanged(function(p408)
    getgenv().StopTP = p408
end)
spawn(function()
    while task.wait(1) do
        if getgenv().StopTP and (game.Players.LocalPlayer.Backpack:FindFirstChild('Fist of Darkness') or (game.Players.LocalPlayer.Character:FindFirstChild('Fist of Darkness') or (game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")))) then
            BypassTP = false
        end
    end
end)

getgenv().FastAttack = false

local _Toggle2 = Settings:AddToggle('Toggle', {
    Title = 'Fast Attack',
    Default = true,
})
local u410 = nil

local function u411()
    while getgenv().FastAttack do
        if type(AttackNoCoolDown) == 'function' then
            AttackNoCoolDown()
        end

        task.wait(0.1)
    end
end

_Toggle2:OnChanged(function(p412)
    getgenv().FastAttack = p412

    if p412 and not u410 then
        u410 = task.spawn(u411)
    end
    if not p412 and u410 then
        u410 = nil
    end
end)
Settings:AddToggle('Toggle', {
    Title = 'Bring Mob',
    Default = true,
}):OnChanged(function(p413)
    getgenv().BringMonster = p413
end)
game:GetService('RunService')

local _Players2 = game:GetService('Players')
local _Workspace2 = game:GetService('Workspace')
local _LocalPlayer10 = _Players2.LocalPlayer

spawn(function()
    while task.wait(0.1) do
        pcall(function()
            CheckQuest()

            local v417 = _Workspace2.Enemies:GetChildren()
            local v418, v419, v420 = ipairs(v417)
            local v421 = 0

            while true do
                local v422

                v420, v422 = v418(v419, v420)

                if v420 == nil or v421 >= 2 then
                    break
                end
                if getgenv().BringMonster and (v422:FindFirstChild('Humanoid') and v422:FindFirstChild('HumanoidRootPart')) then
                    local _Humanoid4 = v422:FindFirstChild('Humanoid')
                    local _HumanoidRootPart6 = v422:FindFirstChild('HumanoidRootPart')

                    if _Humanoid4 and (_HumanoidRootPart6 and _LocalPlayer10.Character) and _LocalPlayer10.Character:FindFirstChild('HumanoidRootPart') then
                        local _Magnitude3 = (_HumanoidRootPart6.Position - _LocalPlayer10.Character.HumanoidRootPart.Position).Magnitude

                        if getgenv().StartMagnet and (v422.Name == MonFarm or v422.Name == Mon) and (_Humanoid4.Health > 0 and _Magnitude3 <= 350) then
                            if v422.Name ~= 'Factory Staff' or (not PosMon or (_HumanoidRootPart6.Position - PosMon.Position).Magnitude > 5000) then
                                if (v422.Name == MonFarm or v422.Name == Mon) and (PosMon and ((_HumanoidRootPart6.Position - PosMon.Position).Magnitude <= 4500 and _HumanoidRootPart6.Parent)) then
                                    _HumanoidRootPart6.CanCollide = false
                                    _HumanoidRootPart6.Size = Vector3.new(60, 60, 60)
                                    _HumanoidRootPart6.CFrame = PosMon
                                    v422.Head.CanCollide = false

                                    local _Animator = _Humanoid4:FindFirstChild('Animator')

                                    if _Animator then
                                        pcall(function()
                                            _Animator:Destroy()
                                        end)
                                    end

                                    sethiddenproperty(_LocalPlayer10, 'SimulationRadius', math.huge)

                                    v421 = v421 + 1
                                end
                            elseif _HumanoidRootPart6.Parent then
                                _HumanoidRootPart6.CanCollide = false
                                _HumanoidRootPart6.Size = Vector3.new(60, 60, 60)
                                _HumanoidRootPart6.CFrame = PosMon
                                v422.Head.CanCollide = false

                                local _Animator2 = _Humanoid4:FindFirstChild('Animator')

                                if _Animator2 then
                                    pcall(function()
                                        _Animator2:Destroy()
                                    end)
                                end

                                sethiddenproperty(_LocalPlayer10, 'SimulationRadius', math.huge)

                                v421 = v421 + 1
                            end
                        end
                    end
                end
            end
        end)
    end
end)
Settings:AddToggle('Toggle', {
    Title = 'Spin Position',
    Description = 'Spin Position When Farm',
    Default = true,
}):OnChanged(function(p428)
    getgenv().SpinPos = p428
end)
spawn(function()
    while wait() do
        if getgenv().SpinPos then
            Pos = CFrame.new(0, PosY, -20)

            wait(0.1)

            Pos = CFrame.new(-20, PosY, 0)

            wait(0.1)

            Pos = CFrame.new(0, PosY, 20)

            wait(0.1)

            Pos = CFrame.new(20, PosY, 0)
        else
            Pos = CFrame.new(0, PosY, 0)
        end
    end
end)

Slider = Settings:AddSlider('Slider', {
    Title = 'Farm Distance',
    Default = 15,
    Min = 0,
    Max = 30,
    Rounding = 5,
    Callback = function(p429)
        PosY = p429
    end,
})

Settings:AddToggle('Toggle', {
    Title = 'Auto Reduce Lag Farm Safely',
    Default = true,
}):OnChanged(function(p430)
    getgenv().ReduceLag = p430
end)
spawn(function()
    while wait(0.1) do
        if getgenv().ReduceLag then
            local v431, v432, v433 = pairs(game.Workspace._WorldOrigin:GetChildren())

            while true do
                local u434

                v433, u434 = v431(v432, v433)

                if v433 == nil then
                    break
                end
                if u434 and (u434.Name == 'CurvedRing' or (u434.Name == 'SlashHit' or (u434.Name == 'SwordSlash' or (u434.Name == 'SlashTail' or u434.Name == 'Sounds')))) then
                    pcall(function()
                        u434:Destroy()
                    end)
                end
            end
        end
    end
end)
Settings:AddToggle('Toggle', {
    Title = 'Anti Cheat Farming',
    Description = 'This feature helps you Farm safely without being detected',
    Default = true,
}):OnChanged(function(p435)
    getgenv().ResetFlags = p435
end)
spawn(function()
    while task.wait(5) do
        pcall(function()
            if getgenv().ResetFlags then
                local _LocalPlayer11 = game:GetService('Players').LocalPlayer
                local v437, v438, v439 = pairs(_LocalPlayer11.Character:GetDescendants())

                while true do
                    local v440

                    v439, v440 = v437(v438, v439)

                    if v439 == nil then
                        break
                    end
                    if v440:IsA('LocalScript') and table.find({
                        'General',
                        'Shiftlock',
                        'FallDamage',
                        '4444',
                        'CamBob',
                        'JumpCD',
                        'Looking',
                        'Run',
                    }, v440.Name) then
                        v440:Destroy()
                    end
                end

                local v441, v442, v443 = pairs(_LocalPlayer11.PlayerScripts:GetDescendants())

                while true do
                    local v444

                    v443, v444 = v441(v442, v443)

                    if v443 == nil then
                        break
                    end
                    if v444:IsA('LocalScript') and table.find({
                        'RobloxMotor6DBugFix',
                        'Clans',
                        'Codes',
                        'CustomForceField',
                        'MenuBloodSp',
                        'PlayerList',
                    }, v444.Name) then
                        v444:Destroy()
                    end
                end
            end
        end)
    end
end)

Main = Window:AddTab({
    Title = 'Tab Farming',
    Icon = '',
})

Main:AddButton({
    Title = 'Discord:Trongnguyen Hub',
    Callback = function()
        pcall(function()
            setclipboard('https://discord.gg/FUSehPnRgM')
        end)
    end,
})
Main:AddParagraph({
    Title = 'Main Farm',
    Content = string.rep('-', 21),
})

Dropdown = Main:AddDropdown('DropdownFarm', {
    Title = 'Select Method Farm',
    Values = {
        'Farm Level',
        'Farm Bone',
        'Farm Katakuri',
    },
    Multi = false,
})

Dropdown:SetValue('Farm Level')
Dropdown:OnChanged(function(p445)
    FarmMode = p445
end)
spawn(function()
    local v446 = 0.5
    local v447 = true

    while wait(v446) do
        if getgenv().AutoFarm and (FarmMode == 'Farm Level' and v447) then
            spawn(function()
                local _LocalPlayer12 = game:GetService('Players').LocalPlayer
                local _Text = _LocalPlayer12.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                local _Visible = _LocalPlayer12.PlayerGui.Main.Quest.Visible
                local _Character6 = _LocalPlayer12.Character

                if _Character6 then
                    _Character6 = _LocalPlayer12.Character:FindFirstChild('HumanoidRootPart')
                end
                if not string.find(_Text, NameMon) then
                    getgenv().StartMagnet = false

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                end
                if _Visible then
                    if _Visible then
                        CheckQuest()

                        local v452 = game:GetService('Workspace').Enemies:GetChildren()
                        local v453, v454, v455 = pairs(v452)

                        while true do
                            local v456

                            v455, v456 = v453(v454, v455)

                            if v455 == nil then
                                break
                            end
                            if v456:FindFirstChild('HumanoidRootPart') and (v456:FindFirstChild('Humanoid') and (v456.Humanoid.Health > 0 and v456.Name == Mon)) then
                                if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                    repeat
                                        task.wait(0.1)
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)

                                        PosMon = v456.HumanoidRootPart.CFrame

                                        topos(v456.HumanoidRootPart.CFrame * Pos)

                                        v456.HumanoidRootPart.CanCollide = false
                                        v456.Humanoid.WalkSpeed = 0
                                        v456.Head.CanCollide = false
                                        getgenv().StartMagnet = true

                                        sethiddenproperty(_LocalPlayer12, 'SimulationRadius', math.huge)
                                    until not getgenv().AutoFarm or (v456.Humanoid.Health <= 0 or not v456.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                else
                                    getgenv().StartMagnet = false

                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                                end
                            end
                        end
                    end
                else
                    getgenv().StartMagnet = false

                    CheckQuest()

                    if BypassTP then
                        local _Magnitude4 = (_Character6.Position - CFrameQuest.Position).Magnitude

                        if _Magnitude4 > 1500 then
                            BTP(CFrameQuest * CFrame.new(0, 20, 5))
                        elseif _Magnitude4 < 1500 then
                            topos(CFrameQuest)
                        end
                    else
                        topos(CFrameQuest)
                    end
                    if (_Character6.Position - CFrameQuest.Position).Magnitude <= 20 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, LevelQuest)
                    end
                end
            end)
            task.wait(0.5)

            v447 = true
        end
    end
end)

local u458 = {
    ['Reborn Skeleton'] = CFrame.new(-8769.58984, 142.13063, 6055.27637),
    ['Living Zombie'] = CFrame.new(-10156.4531, 138.652481, 5964.5752),
    ['Demonic Soul'] = CFrame.new(-9525.17188, 172.13063, 6152.30566),
    ['Posessed Mummy'] = CFrame.new(-9570.88281, 5.81831884, 6187.86279),
}

spawn(function()
    while task.wait(0.2) do
        if getgenv().BonesBring then
            pcall(function()
                local v459, v460, v461 = ipairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v462

                    v461, v462 = v459(v460, v461)

                    if v461 == nil then
                        break
                    end
                    if u458[v462.Name] and (v462:FindFirstChild('HumanoidRootPart') and v462:FindFirstChild('Humanoid')) then
                        v462.HumanoidRootPart.CFrame = u458[v462.Name]
                        v462.Head.CanCollide = false
                        v462.Humanoid.Sit = false

                        v462.Humanoid:ChangeState(11)
                        task.wait(0.1)
                        v462.Humanoid:ChangeState(14)

                        v462.HumanoidRootPart.CanCollide = false
                        v462.Humanoid.JumpPower = 0
                        v462.Humanoid.WalkSpeed = 0

                        local _Animator3 = v462.Humanoid:FindFirstChild('Animator')

                        if _Animator3 then
                            _Animator3:Destroy()
                        end

                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                    end
                end
            end)
        end
    end
end)

BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)

spawn(function()
    while wait(0.1) do
        if FarmMode == 'Farm Bone' and (getgenv().AutoFarm and World3) then
            pcall(function()
                local v464 = game:GetService('Workspace').Enemies:GetChildren()
                local v465, v466, v467 = pairs(v464)
                local v468 = false

                while true do
                    local v469

                    v467, v469 = v465(v466, v467)

                    if v467 == nil then
                        break
                    end
                    if (v469.Name == 'Reborn Skeleton' or (v469.Name == 'Living Zombie' or (v469.Name == 'Demonic Soul' or v469.Name == 'Posessed Mummy'))) and (v469:FindFirstChild('Humanoid') and (v469:FindFirstChild('HumanoidRootPart') and v469.Humanoid.Health > 0)) then
                        v468 = true

                        repeat
                            wait(0.1)
                            AutoHaki()
                            EquipWeapon(getgenv().SelectWeapon)

                            v469.HumanoidRootPart.CanCollide = false
                            v469.Humanoid.WalkSpeed = 0
                            v469.Head.CanCollide = false
                            getgenv().BonesBring = true

                            topos(v469.HumanoidRootPart.CFrame * Pos)
                        until not getgenv().AutoFarm or (not v469.Parent or v469.Humanoid.Health <= 0)
                    end
                end

                if not v468 then
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude <= 1500 then
                            topos(BonePos)
                        else
                            BTP(BonePos)
                        end
                    else
                        topos(BonePos)
                    end

                    UnEquipWeapon(getgenv().SelectWeapon)

                    getgenv().BonesBring = false

                    topos(CFrame.new(-9515, 164, 5786))

                    local v470, v471, v472 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                    while true do
                        local v473

                        v472, v473 = v470(v471, v472)

                        if v472 == nil then
                            break
                        end
                        if v473.Name == 'Reborn Skeleton' or (v473.Name == 'Living Zombie' or (v473.Name == 'Demonic Soul' or v473.Name == 'Posessed Mummy')) then
                            topos(v473.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end
            end)
        end
    end
end)

local u474 = {
    ['Cookie Crafter'] = CFrame.new(-2333.28052, 37.8239059, -12093.2861),
    ['Cake Guard'] = CFrame.new(-1575.56433, 37.8238907, -12416.2529),
    ['Baking Staff'] = CFrame.new(-1872.35742, 37.8239517, -12899.4248),
    ['Head Baker'] = CFrame.new(-2223.1416, 53.5283203, -12854.752),
}

spawn(function()
    while task.wait(0.2) do
        if getgenv().CakeBring then
            pcall(function()
                local v475, v476, v477 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v478

                    v477, v478 = v475(v476, v477)

                    if v477 == nil then
                        break
                    end
                    if u474[v478.Name] then
                        local v479 = u474[v478.Name]

                        if v479 then
                            v478.HumanoidRootPart.CFrame = v479
                        end

                        v478.Head.CanCollide = false
                        v478.Humanoid.Sit = false

                        v478.Humanoid:ChangeState(11)
                        task.wait(0.1)
                        v478.Humanoid:ChangeState(14)

                        v478.HumanoidRootPart.CanCollide = false
                        v478.Humanoid.JumpPower = 0
                        v478.Humanoid.WalkSpeed = 0

                        if v478.Humanoid:FindFirstChild('Animator') then
                            v478.Humanoid.Animator:Destroy()
                        end

                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait(0.1) do
        if FarmMode == 'Farm Katakuri' and (getgenv().AutoFarm and World3) then
            pcall(function()
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer('CakePrinceSpawner')

                if game.ReplicatedStorage:FindFirstChild('Cake Prince') or game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') then
                        local v480, v481, v482 = pairs(game.Workspace.Enemies:GetChildren())

                        while true do
                            local v483

                            v482, v483 = v480(v481, v482)

                            if v482 == nil then
                                break
                            end
                            if getgenv().AutoFarm and (v483.Name == 'Cake Prince' and (v483:FindFirstChild('HumanoidRootPart') and (v483:FindFirstChild('Humanoid') and v483.Humanoid.Health > 0))) then
                                repeat
                                    game:GetService('RunService').Heartbeat:wait()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)

                                    v483.HumanoidRootPart.CanCollide = false
                                    v483.Humanoid.WalkSpeed = 0
                                    v483.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    topos(v483.HumanoidRootPart.CFrame * Pos)
                                until not getgenv().AutoFarm or (not v483.Parent or v483.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('Workspace').Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
                        topos(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                    end
                elseif game:GetService('Workspace').Enemies:FindFirstChild('Cookie Crafter') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Guard') or (game:GetService('Workspace').Enemies:FindFirstChild('Baking Staff') or game:GetService('Workspace').Enemies:FindFirstChild('Head Baker'))) then
                    local v484, v485, v486 = pairs(game.Workspace.Enemies:GetChildren())

                    while true do
                        local v487

                        v486, v487 = v484(v485, v486)

                        if v486 == nil then
                            break
                        end
                        if v487:FindFirstChild('Humanoid') and (v487:FindFirstChild('HumanoidRootPart') and (v487.Humanoid.Health > 0 and (v487.Name == 'Cookie Crafter' or (v487.Name == 'Cake Guard' or (v487.Name == 'Baking Staff' or v487.Name == 'Head Baker'))))) and (v487:FindFirstChild('HumanoidRootPart') and (v487:FindFirstChild('Humanoid') and v487.Humanoid.Health > 0)) then
                            repeat
                                game:GetService('RunService').Heartbeat:wait()
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)

                                v487.HumanoidRootPart.CanCollide = false
                                v487.Humanoid.WalkSpeed = 0
                                v487.Head.CanCollide = false

                                topos(v487.HumanoidRootPart.CFrame * Pos)

                                getgenv().CakeBring = true
                            until not getgenv().AutoFarm or (not v487.Parent or v487.Humanoid.Health <= 0)
                        end
                    end
                else
                    local v488 = CFrame.new(-2077, 252, -12373)

                    if BypassTP then
                        BTP(v488)
                    else
                        topos(v488)
                    end
                end
            end)
        end
    end
end)
Main:AddToggle('Toggle', {
    Title = 'Start Farm',
    Default = false,
}):OnChanged(function(p489)
    getgenv().AutoFarm = p489

    StopTween(getgenv().AutoFarm)
end)
Main:AddParagraph({
    Title = 'Farming Material',
    Content = string.rep('-', 21),
})

local v490 = World1 and {
    'Leather + Scrap Metal',
    'Angel Wings',
    'Magma Ore',
    'Fish Tail',
} or (World2 and {
    'Leather + Scrap Metal',
    'Radioactive Material',
    'Ectoplasm',
    'Mystic Droplet',
    'Magma Ore',
    'Vampire Fang',
} or (World3 and {
    'Leather + Scrap Metal',
    'Demonic Wisp',
    'Conjured Cocoa',
    'Dragon Scale',
    'Gunpowder',
    'Fish Tail',
    'Mini Tusk',
} or {}))

MaterialListMon = Main:AddDropdown('MaterialListMon', {
    Title = 'Select Material',
    Values = v490,
    Multi = false,
})

MaterialListMon:OnChanged(function(p491)
    getgenv().SelectMaterial = p491
end)
Main:AddToggle('Toggle', {
    Title = 'Farm Material',
    Default = false,
}):OnChanged(function(p492)
    getgenv().AutoMaterial = p492

    if not p492 then
        StopTween()
    end
end)
spawn(function()
    local function u495(p493, p494)
        if p493:FindFirstChild('Humanoid') and (p493:FindFirstChild('HumanoidRootPart') and (p493.Humanoid.Health > 0 and p493.Name == p494)) then
            repeat
                task.wait(0.1)
                AutoHaki()
                EquipWeapon(getgenv().SelectWeapon)

                p493.HumanoidRootPart.CanCollide = false
                p493.Humanoid.WalkSpeed = 0
                p493.Head.CanCollide = false

                topos(p493.HumanoidRootPart.CFrame * Pos)

                getgenv().StartMagnet = true
                MonFarm = p493.Name
                PosMon = p493.HumanoidRootPart.CFrame
            until not getgenv().AutoMaterial or (not p493.Parent or p493.Humanoid.Health <= 0)

            UnEquipWeapon(getgenv().SelectWeapon)
        end
    end
    local function u504()
        local v496, v497, v498 = pairs(game:GetService('Workspace')._WorldOrigin.EnemySpawns:GetChildren())

        while true do
            local v499

            v498, v499 = v496(v497, v498)

            if v498 == nil then
                break
            end

            local v500, v501, v502 = ipairs(MMon)

            while true do
                local v503

                v502, v503 = v500(v501, v502)

                if v502 == nil then
                    break
                end
                if string.find(v499.Name, v503) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v499.Position).Magnitude >= 10 then
                    topos(v499.CFrame * Pos)
                end
            end
        end
    end

    while task.wait(0.1) do
        if getgenv().AutoMaterial then
            pcall(function()
                if getgenv().SelectMaterial then
                    MaterialMon(getgenv().SelectMaterial)
                    topos(MPos)
                end

                local v505, v506, v507 = ipairs(MMon)

                while true do
                    local v508

                    v507, v508 = v505(v506, v507)

                    if v507 == nil then
                        break
                    end

                    local v509, v510, v511 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v512

                        v511, v512 = v509(v510, v511)

                        if v511 == nil then
                            break
                        end

                        u495(v512, v508)
                    end
                end

                u504()
            end)
        end
    end
end)
Main:AddParagraph({
    Title = 'Mastery Farm',
    Content = string.rep('-', 21),
})

Slider = Main:AddSlider('Slider', {
    Title = 'Select Health [ % ]',
    Default = 30,
    Min = 0,
    Max = 100,
    Rounding = 5,
    Callback = function(p513)
        getgenv().Kill_At = p513
    end,
})
Dropdown = Main:AddDropdown('DropdownFarm', {
    Title = 'Select Method Farm Mastery',
    Values = {
        'Blox Fruit',
        'Gun',
    },
    Multi = false,
})

Dropdown:SetValue('Blox Fruit')
Dropdown:OnChanged(function(p514)
    FarmMode2 = p514
end)
spawn(function()
    while task.wait() do
        if FarmMode2 == 'Blox Fruit' and getgenv().MasteryFarm then
            pcall(function()
                QuestTitle = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

                if not string.find(QuestTitle, NameMon) then
                    UseSkill = false
                    Skillaimbot = false

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                end
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    UseSkill = false

                    CheckQuest()

                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 2000 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
                                topos(CFrameQuest)
                            else
                                topos(CFrameQuest)
                            end
                        else
                            BTP(CFrameQuest)
                        end
                    end

                    repeat
                        task.wait()
                        topos(CFrameQuest)
                    until (CFrameQuest.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not getgenv().MasteryFarm

                    if (CFrameQuest.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, LevelQuest)
                        wait(0.1)
                    end
                end
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()

                    if game:GetService('Workspace').Enemies:FindFirstChild(Mon) then
                        local v515, v516, v517 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v518

                            v517, v518 = v515(v516, v517)

                            if v517 == nil then
                                break
                            end
                            if v518:FindFirstChild('HumanoidRootPart') and (v518:FindFirstChild('Humanoid') and (v518.Humanoid.Health > 0 and v518.Name == Mon)) then
                                if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                    HealthMs = v518.Humanoid.MaxHealth * getgenv().Kill_At / 100

                                    task.wait()

                                    if v518.Humanoid.Health > HealthMs then
                                        UseSkill = false
                                        Skillaimbot = false

                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)

                                        MonFarm = v518.Name
                                        PosMon = v518.HumanoidRootPart.CFrame

                                        topos(v518.HumanoidRootPart.CFrame * Pos)

                                        v518.HumanoidRootPart.CanCollide = false
                                        PosMonMasteryFruit = v518.HumanoidRootPart.CFrame
                                        v518.Humanoid.WalkSpeed = 0
                                        v518.Head.CanCollide = false
                                    else
                                        AutoHaki()
                                        EquipWeapon(game:GetService('Players').LocalPlayer.Data.DevilFruit.Value)
                                        topos(v518.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))

                                        v518.HumanoidRootPart.CanCollide = false
                                        PosMonMasteryFruit = v518.HumanoidRootPart.CFrame
                                        MonFarm = v518.Name
                                        PosMon = v518.HumanoidRootPart.CFrame
                                        v518.Humanoid.WalkSpeed = 0
                                        v518.Head.CanCollide = false
                                        UseSkill = true
                                        Skillaimbot = true
                                    end

                                    getgenv().StartMagnet = true

                                    if getgenv().MasteryFarm and (v518.Humanoid.Health > 0 and v518.Parent) and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                                    end
                                else
                                    UseSkill = false

                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                                end
                            end
                        end
                    else
                        topos(CFrameMon)

                        UseSkill = false
                        Skillaimbot = false
                        Mob = game:GetService('ReplicatedStorage'):FindFirstChild(Mon)

                        if Mob then
                            topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10))
                        elseif game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                            game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = true

                            task.wait()

                            game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = false
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait() do
        if UseSkill then
            pcall(function()
                CheckQuest()

                local v519, v520, v521 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v522

                    v521, v522 = v519(v520, v521)

                    if v521 == nil then
                        break
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild(game:GetService('Players').LocalPlayer.Data.DevilFruit.Value) then
                        MasBF = game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Data.DevilFruit.Value].Level.Value
                    elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild(game:GetService('Players').LocalPlayer.Data.DevilFruit.Value) then
                        MasBF = game:GetService('Players').LocalPlayer.Backpack[game:GetService('Players').LocalPlayer.Data.DevilFruit.Value].Level.Value
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild(game:GetService('Players').LocalPlayer.Data.DevilFruit.Value) then
                        if getgenv().SkillZ then
                            local v523 = {
                                PosMonMasteryFruit.Position,
                            }

                            game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Name].RemoteEvent:FireServer(unpack(v523))
                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                        end
                        if getgenv().SkillX then
                            local v524 = {
                                PosMonMasteryFruit.Position,
                            }

                            game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Name].RemoteEvent:FireServer(unpack(v524))
                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                        end
                        if getgenv().SkillC then
                            local v525 = {
                                PosMonMasteryFruit.Position,
                            }

                            game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Name].RemoteEvent:FireServer(unpack(v525))
                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                        end
                        if getgenv().SkillV then
                            local v526 = {
                                PosMonMasteryFruit.Position,
                            }

                            game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Name].RemoteEvent:FireServer(unpack(v526))
                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                        end
                        if getgenv().SkillF then
                            local v527 = {
                                PosMonMasteryFruit.Position,
                            }

                            game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Name].RemoteEvent:FireServer(unpack(v527))
                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'F', false, game)
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'F', false, game)
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    game:GetService('RunService').RenderStepped:Connect(function()
        pcall(function()
            if UseSkill then
                local v528, v529, v530 = pairs(game:GetService('Players').LocalPlayer.PlayerGui.Notifications:GetChildren())

                while true do
                    local v531

                    v530, v531 = v528(v529, v530)

                    if v530 == nil then
                        break
                    end
                    if v531.Name == 'NotificationTemplate' and string.find(v531.Text, 'Skill locked!') then
                        v531:Destroy()
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    pcall(function()
        game:GetService('RunService').RenderStepped:Connect(function()
            if UseSkill then
                local v532 = {
                    PosMonMasteryFruit.Position,
                }

                game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(v532))
            end
        end)
    end)
end)
spawn(function()
    pcall(function()
        while task.wait() do
            if FarmMode2 == 'Gun' and getgenv().MasteryFarm then
                QuestTitle = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

                if not string.find(QuestTitle, NameMon) then
                    Skillaimbot = false

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                end
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()

                        if game:GetService('Workspace').Enemies:FindFirstChild(Mon) then
                            pcall(function()
                                local v533, v534, v535 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v536

                                    v535, v536 = v533(v534, v535)

                                    if v535 == nil then
                                        return
                                    end
                                    if v536.Name == Mon then
                                        repeat
                                            if true then
                                                task.wait()

                                                if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                    HealthMin = v536.Humanoid.MaxHealth * getgenv().Kill_At / 100

                                                    if v536.Humanoid.Health > HealthMin then
                                                        AutoHaki()
                                                        EquipWeapon(getgenv().SelectWeapon)

                                                        MonFarm = v536.Name
                                                        PosMon = v536.HumanoidRootPart.CFrame
                                                        v536.Humanoid.WalkSpeed = 0
                                                        v536.HumanoidRootPart.CanCollide = false
                                                        v536.Head.CanCollide = false

                                                        topos(v536.HumanoidRootPart.CFrame * Pos)
                                                        game:GetService('VirtualUser'):CaptureController()
                                                        game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                                    else
                                                        EquipWeapon(SelectWeaponGun)

                                                        Skillaimbot = true
                                                        AimSkill = v536.Engine.CFrame * CFrame.new(0, -15, 0)
                                                        AimBotSkillPosition = AimSkill.Position
                                                        MonFarm = v536.Name
                                                        PosMon = v536.HumanoidRootPart.CFrame

                                                        topos(v536.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10))

                                                        v536.Humanoid.WalkSpeed = 0
                                                        v536.HumanoidRootPart.CanCollide = false
                                                        v536.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                                        v536.Head.CanCollide = false

                                                        local v537 = {
                                                            v536.HumanoidRootPart.Position,
                                                            v536.HumanoidRootPart,
                                                        }

                                                        game:GetService('Players').LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(v537))
                                                        task.wait(0.1)
                                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                        task.wait(0.1)
                                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                    end

                                                    getgenv().StartMagnet = true
                                                    PosMonMasteryGun = v536.HumanoidRootPart.CFrame
                                                else
                                                    getgenv().StartMagnet = true

                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                                                end
                                            end
                                        until v536.Humanoid.Health <= 0 or not getgenv().MasteryFarm or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            end)
                        else
                            topos(CFrameMon)

                            Mob = game:GetService('ReplicatedStorage'):FindFirstChild(Mon)

                            if Mob then
                                topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10))
                            elseif game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = true

                                task.wait()

                                game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = false
                            end
                        end
                    end
                else
                    CheckQuest()

                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 2000 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
                                topos(CFrameQuest)
                            else
                                topos(CFrameQuest)
                            end
                        else
                            BTP(CFrameQuest)
                        end
                    else
                        topos(CFrameQuest)
                    end
                    if (CFrameQuest.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        task.wait(1.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, LevelQuest)
                    end
                end
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        if getgenv().MasteryFarm then
            while task.wait() do
                local v538, v539, v540 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                while true do
                    local v541

                    v540, v541 = v538(v539, v540)

                    if v540 == nil then
                        break
                    end
                    if v541:IsA('Tool') and v541:FindFirstChild('RemoteFunctionShoot') then
                        SelectWeaponGun = v541.Name
                    end
                end
            end
        end
    end)
end)

local _ = game:GetService('Players').LocalPlayer

spawn(function()
    pcall(function()
        while task.wait() do
            local v542, v543, v544 = pairs(game:GetService('Players').LocalPlayer.Backpack:GetChildren())

            while true do
                local v545

                v544, v545 = v542(v543, v544)

                if v544 == nil then
                    break
                end
                if v545:IsA('Tool') and v545:FindFirstChild('RemoteFunctionShoot') then
                    SelectWeaponGun = v545.Name
                end
            end
        end
    end)
end)
Main:AddToggle('Toggle', {
    Title = 'Auto Farm Mastery',
    Default = false,
}):OnChanged(function(p546)
    getgenv().MasteryFarm = p546

    StopTween(getgenv().MasteryFarm)
end)
Main:AddToggle('Toggle', {
    Title = 'Skill Z',
    Default = true,
}):OnChanged(function(p547)
    getgenv().SkillZ = p547
end)
Main:AddToggle('Toggle', {
    Title = 'Skill X',
    Default = false,
}):OnChanged(function(p548)
    getgenv().SkillX = p548
end)
Main:AddToggle('Toggle', {
    Title = 'Skill C',
    Default = false,
}):OnChanged(function(p549)
    getgenv().SkillC = p549
end)
Main:AddToggle('Toggle', {
    Title = 'Skill V',
    Default = false,
}):OnChanged(function(p550)
    getgenv().SkillV = p550
end)
Main:AddToggle('Toggle', {
    Title = 'Skill F',
    Default = false,
}):OnChanged(function(p551)
    getgenv().SkillF = p551
end)

Stack = Window:AddTab({
    Title = 'Tab Stack Farm',
    Icon = '',
})
Dropdown = Stack:AddDropdown('DropdownFarm', {
    Title = 'Select Melee',
    Values = {
        'Superhuman',
        'DeathStep',
        'Sharkman Karate',
        'Electric Claw',
        'Dragon Talon',
        'GodHuman',
    },
    Multi = false,
})

Dropdown:OnChanged(function(p552)
    GetMode = p552
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if GetMode == 'Superhuman' and (getgenv().AutoGetMelee and World2) then
                local _LocalPlayer13 = game.Players.LocalPlayer
                local _Backpack = _LocalPlayer13.Backpack
                local _Character7 = _LocalPlayer13.Character
                local _Value = _LocalPlayer13.Data.Beli.Value
                local v557 = _LocalPlayer13.Data.Fragments and _LocalPlayer13.Data.Fragments.Value or 0

                if (_Backpack:FindFirstChild('Combat') or _Character7:FindFirstChild('Combat')) and _Value >= 150000 then
                    UnEquipWeapon('Combat')
                    task.wait(0.1)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
                end
                if _Backpack:FindFirstChild('Superhuman') or _Character7:FindFirstChild('Superhuman') then
                    getgenv().SelectWeapon = 'Superhuman'
                end

                local v558, v559, v560 = ipairs({
                    {
                        'Black Leg',
                        300,
                        'BuyElectro',
                        300000,
                    },
                    {
                        'Electro',
                        300,
                        'BuyFishmanKarate',
                        750000,
                    },
                    {
                        'Fishman Karate',
                        300,
                        'DragonClaw',
                        1500,
                        'BlackbeardReward',
                    },
                    {
                        'Dragon Claw',
                        300,
                        'BuySuperhuman',
                        3000000,
                    },
                })

                while true do
                    local v561

                    v560, v561 = v558(v559, v560)

                    if v560 == nil then
                        break
                    end

                    local v562 = v561[1]
                    local v563 = v561[2]
                    local v564 = v561[3]
                    local v565 = v561[4]
                    local v566 = v561[5] == 'BlackbeardReward'
                    local v567 = _Backpack:FindFirstChild(v562) or _Character7:FindFirstChild(v562)

                    if v567 then
                        if v567.Level.Value >= v563 then
                            if v563 <= v567.Level.Value and (v566 and v565 <= v557 or not v566 and v565 <= _Value) then
                                UnEquipWeapon(v562)
                                task.wait(0.1)

                                if v566 then
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(v564, 'DragonClaw', '1')
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(v564, 'DragonClaw', '2')
                                else
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(v564)
                                end
                            end
                        else
                            getgenv().SelectWeapon = v562
                        end
                    end
                end
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if GetMode == 'DeathStep' and (getgenv().AutoGetMelee and World2) then
                local _LocalPlayer14 = game:GetService('Players').LocalPlayer
                local _Backpack2 = _LocalPlayer14.Backpack
                local _Character8 = _LocalPlayer14.Character
                local v571 = _Backpack2:FindFirstChild('Black Leg') or _Character8:FindFirstChild('Black Leg')

                if v571 or (_Backpack2:FindFirstChild('Death Step') or _Character8:FindFirstChild('Death Step')) then
                    if v571 and v571.Level.Value >= 450 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')

                        getgenv().SelectWeapon = 'Death Step'
                    elseif v571 and v571.Level.Value < 450 then
                        getgenv().SelectWeapon = 'Black Leg'
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
                end
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if GetMode == 'Sharkman Karate' and (getgenv().AutoGetMelee and World2) then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')

                local v572 = string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate'), 'keys')
                local _LocalPlayer15 = game:GetService('Players').LocalPlayer
                local _Backpack3 = _LocalPlayer15.Backpack
                local _Character9 = _LocalPlayer15.Character
                local v576 = _Character9:FindFirstChild('Water Key') or _Backpack3:FindFirstChild('Water Key')
                local _FishmanKarate = _Character9:FindFirstChild('Fishman Karate')

                if _FishmanKarate then
                    _FishmanKarate = _Character9:FindFirstChild('Fishman Karate').Level.Value >= 400
                end
                if v572 then
                    if v576 then
                        topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
                    elseif not _FishmanKarate then
                        local _TideKeeper = game:GetService('Workspace').Enemies:FindFirstChild('Tide Keeper')

                        if _TideKeeper then
                            local _HumanoidRootPart7 = _TideKeeper:FindFirstChild('HumanoidRootPart')

                            if _HumanoidRootPart7 then
                                local _CFrame2 = _HumanoidRootPart7.CFrame

                                repeat
                                    task.wait(0.1)
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)

                                    _HumanoidRootPart7.CanCollide = false
                                    _HumanoidRootPart7.Parent.Humanoid.WalkSpeed = 0
                                    _HumanoidRootPart7.CFrame = _CFrame2

                                    topos(_HumanoidRootPart7.CFrame * CFrame.new(2, 20, 2))
                                until not _HumanoidRootPart7.Parent or (_HumanoidRootPart7.Parent.Humanoid.Health <= 0 or (not getgenv().AutoGetMelee or v576))
                            end
                        else
                            topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857325999999999e-8, 0.885206044, 4.0332897e-9, 1, 1.35347511e-8, -0.885206044, -2.72606271e-9, 0.465199202))
                            task.wait(1)
                        end
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
                end
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            local _LocalPlayer16 = game:GetService('Players').LocalPlayer
            local _Backpack4 = _LocalPlayer16.Backpack
            local _Character10 = _LocalPlayer16.Character
            local v584 = _Backpack4:FindFirstChild('Electro') or _Character10:FindFirstChild('Electro')

            if not _Backpack4:FindFirstChild('Electric Claw') then
                _Character10:FindFirstChild('Electric Claw')
            end

            local v585 = v584 and (v584.Level.Value or 0) or 0

            if GetMode == 'Electric Claw' and (getgenv().AutoGetMelee and World3) then
                if v584 and 400 <= v585 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')

                    getgenv().SelectWeapon = 'Electric Claw'
                elseif not v584 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
                end
            end
            if getgenv().AutoGetMelee and (v584 and 400 <= v585) then
                if getgenv().AutoFarm then
                    if getgenv().AutoFarm then
                        getgenv().AutoFarm = false

                        task.wait(1)

                        repeat
                            task.wait(1)
                            topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                        until not getgenv().AutoGetMelee or (_Character10.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw', 'Start')
                        task.wait(1)

                        repeat
                            task.wait(1)
                            topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                        until not getgenv().AutoGetMelee or (_Character10.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10

                        task.wait(1)

                        repeat
                            task.wait(1)
                            topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                        until not getgenv().AutoGetMelee or (_Character10.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                        task.wait(1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')

                        getgenv().SelectWeapon = 'Electric Claw'

                        task.wait(0.1)

                        getgenv().AutoFarm = true
                    end
                else
                    repeat
                        task.wait(1)
                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                    until not getgenv().AutoGetMelee or (_Character10.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw', 'Start')
                    task.wait(1)

                    repeat
                        task.wait(1)
                        topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                    until not getgenv().AutoGetMelee or (_Character10.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10

                    task.wait(1)

                    repeat
                        task.wait(1)
                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                    until not getgenv().AutoGetMelee or (_Character10.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                    task.wait(1)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
                end
            end
        end
    end)
end)
spawn(function()
    while task.wait(0.1) do
        local _LocalPlayer17 = game:GetService('Players').LocalPlayer
        local _Backpack5 = _LocalPlayer17.Backpack
        local _Character11 = _LocalPlayer17.Character
        local v589 = _Backpack5:FindFirstChild('Dragon Claw') or _Character11:FindFirstChild('Dragon Claw')

        if not _Backpack5:FindFirstChild('Dragon Talon') then
            _Character11:FindFirstChild('Dragon Talon')
        end

        local v590 = v589 and (v589.Level.Value or 0) or 0

        if GetMode == 'Dragon Talon' and (getgenv().AutoGetMelee and World3) then
            if v589 then
                if v590 >= 400 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')

                    getgenv().SelectWeapon = 'Dragon Talon'
                elseif v590 <= 399 then
                    getgenv().SelectWeapon = 'Dragon Claw'
                end
            else
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
            end
        end
    end
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if GetMode == 'GodHuman' and (getgenv().AutoGetMelee and World3) then
                local _LocalPlayer18 = game.Players.LocalPlayer
                local _Backpack6 = _LocalPlayer18.Backpack
                local _Character12 = _LocalPlayer18.Character

                local function v597(p594, p595)
                    local v596 = _Backpack6:FindFirstChild(p594) or _Character12:FindFirstChild(p594)

                    if v596 then
                        v596 = p595 <= v596.Level.Value
                    end

                    return v596
                end

                if v597('Superhuman', 400) or (v597('Death Step', 400) or (v597('Sharkman Karate', 400) or (v597('Electric Claw', 400) or v597('Dragon Talon', 400)))) then
                    if v597('Superhuman', 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
                        game.StarterGui:SetCore('SendNotification', {
                            Title = 'Superhuman Ready!',
                            Text = 'Buying Death Step...',
                            Duration = 5,
                        })
                    elseif v597('Death Step', 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
                        game.StarterGui:SetCore('SendNotification', {
                            Title = 'Death Step Ready!',
                            Text = 'Buying Sharkman Karate...',
                            Duration = 5,
                        })
                    elseif v597('Sharkman Karate', 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
                        game.StarterGui:SetCore('SendNotification', {
                            Title = 'Sharkman Karate Ready!',
                            Text = 'Buying Electric Claw...',
                            Duration = 5,
                        })
                    elseif v597('Electric Claw', 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')
                        game.StarterGui:SetCore('SendNotification', {
                            Title = 'Electric Claw Ready!',
                            Text = 'Buying Dragon Talon...',
                            Duration = 5,
                        })
                    elseif v597('Dragon Talon', 400) then
                        local _BuyGodhuman = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman', true)

                        if string.find(_BuyGodhuman, 'Bring') then
                            game.StarterGui:SetCore('SendNotification', {
                                Title = 'Not Enough Material',
                                Text = 'You need more resources.',
                                Duration = 5,
                            })
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman')
                            game.StarterGui:SetCore('SendNotification', {
                                Title = 'GodHuman Purchased!',
                                Text = 'Congratulations!',
                                Duration = 5,
                            })
                        end
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
                    game.StarterGui:SetCore('SendNotification', {
                        Title = 'Not Have SuperHuman!!',
                        Text = '',
                        Duration = 5,
                    })
                end
            end
        end
    end)
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Get Melee',
    Default = false,
}):OnChanged(function(p599)
    getgenv().AutoGetMelee = p599

    StopTween(getgenv().AutoGetMelee)
end)
Stack:AddToggle('Toggle', {
    Title = 'Teleport To Fruit',
    Default = false,
}):OnChanged(function(p600)
    getgenv().TeleportToFruit = p600

    StopTween(getgenv().TeleportToFruit)
end)

local _Workspace3 = game:GetService('Workspace')
local _StarterGui = game:GetService('StarterGui')

spawn(function()
    while task.wait(0.2) do
        if getgenv().TeleportToFruit then
            local v603 = _Workspace3
            local v604, v605, v606 = ipairs(v603:GetChildren())
            local v607 = false

            while true do
                local v608

                v606, v608 = v604(v605, v606)

                if v606 == nil then
                    break
                end
                if v608:IsA('Model') and (string.find(v608.Name, 'Fruit') and v608:FindFirstChild('Handle')) then
                    topos(v608.Handle.CFrame)

                    v607 = true

                    break
                end
            end

            if v607 then
                break
            end
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Teleport To Fruit [ Hop Server ]',
    Default = false,
}):OnChanged(function(p609)
    getgenv().TeleportToFruitHop = p609
end)
spawn(function()
    while true do
        if not task.wait(0.5) then
            return
        end
        if getgenv().TeleportToFruit and getgenv().TeleportToFruitHop then
            local v610 = _Workspace3
            local v611, v612, v613 = ipairs(v610:GetChildren())
            local v614 = false

            while true do
                local v615

                v613, v615 = v611(v612, v613)

                if v613 == nil then
                    break
                end
                if v615:IsA('Model') and (string.find(v615.Name, 'Fruit') and v615:FindFirstChild('Handle')) then
                    topos(v615.Handle.CFrame)

                    v614 = true

                    break
                end
            end

            if not v614 then
                task.wait(1)
                _StarterGui:SetCore('SendNotification', {
                    Title = 'Server Hop..',
                    Text = '',
                    Duration = 5,
                })
                Hop()
            end
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto New World',
    Default = false,
}):OnChanged(function(p616)
    getgenv().AutoNewWorld = p616

    StopTween(getgenv().AutoNewWorld)
end)
spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoNewWorld and World1 then
            spawn(function()
                local _LocalPlayer19 = game:GetService('Players').LocalPlayer
                local _Workspace4 = game:GetService('Workspace')
                local _ReplicatedStorage5 = game:GetService('ReplicatedStorage')

                if _LocalPlayer19.Data.Level.Value >= 700 and World1 then
                    local _Door = _Workspace4.Map.Ice.Door

                    if _Door.CanCollide ~= false or _Door.Transparency ~= 1 then
                        if _Workspace4.Enemies:FindFirstChild('Ice Admiral [Lv. 700] [Boss]') then
                            local v621, v622, v623 = pairs(_Workspace4.Enemies:GetChildren())

                            while true do
                                local v624

                                v623, v624 = v621(v622, v623)

                                if v623 == nil then
                                    break
                                end
                                if v624.Name == 'Ice Admiral' and (v624:FindFirstChild('Humanoid') and v624:FindFirstChild('HumanoidRootPart')) then
                                    local _CFrame3 = v624.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(0.05)
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)

                                        v624.HumanoidRootPart.CanCollide = false
                                        v624.Humanoid.WalkSpeed = 0
                                        v624.Head.CanCollide = false
                                        v624.HumanoidRootPart.CFrame = _CFrame3

                                        topos(v624.HumanoidRootPart.CFrame * Pos)
                                    until not getgenv().AutoNewWorld or (not v624.Parent or v624.Humanoid.Health <= 0)
                                end
                            end
                        elseif _ReplicatedStorage5:FindFirstChild('Ice Admiral') then
                            topos(_ReplicatedStorage5:FindFirstChild('Ice Admiral').HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                        else
                            _ReplicatedStorage5.Remotes.CommF_:InvokeServer('TravelDressrosa')
                        end
                    else
                        local v626 = CFrame.new(4849.29883, 5.65138149, 719.611877)

                        repeat
                            topos(v626)
                            task.wait(0.1)
                        until (v626.Position - _LocalPlayer19.Character.HumanoidRootPart.Position).Magnitude <= 3 or not getgenv().AutoNewWorld

                        task.wait(1.1)
                        _ReplicatedStorage5.Remotes.CommF_:InvokeServer('DressrosaQuestProgress', 'Detective')
                        task.wait(0.1)
                        EquipWeapon('Key')

                        local v627 = CFrame.new(1347.7124, 37.3751602, -1325.6488)

                        repeat
                            topos(v627)
                            task.wait(0.1)
                        until (v627.Position - _LocalPlayer19.Character.HumanoidRootPart.Position).Magnitude <= 3 or not getgenv().AutoNewWorld

                        task.wait(0.1)
                    end
                end
            end)
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Third World',
    Default = false,
}):OnChanged(function(p628)
    getgenv().AutoThirdSea = p628

    StopTween(getgenv().AutoThirdSea)
end)
spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoThirdSea and World2 then
            pcall(function()
                local _LocalPlayer20 = game:GetService('Players').LocalPlayer
                local _ReplicatedStorage6 = game:GetService('ReplicatedStorage')
                local _Enemies = game:GetService('Workspace').Enemies

                if _LocalPlayer20.Data.Level.Value >= 1500 and World2 then
                    getgenv().AutoFarm = false

                    if _ReplicatedStorage6.Remotes.CommF_:InvokeServer('ZQuestProgress', 'General') == 0 then
                        topos(CFrame.new(-1926.322, 12.82, 1738.309))

                        if (CFrame.new(-1926.322, 12.82, 1738.309).Position - _LocalPlayer20.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            task.wait(1.1)
                            _ReplicatedStorage6.Remotes.CommF_:InvokeServer('ZQuestProgress', 'Begin')
                        end

                        task.wait(1.3)

                        if _Enemies:FindFirstChild('rip_indra [Lv. 1500] [Boss]') then
                            local v632, v633, v634 = pairs(_Enemies:GetChildren())

                            while true do
                                local v635

                                v634, v635 = v632(v633, v634)

                                if v634 == nil then
                                    break
                                end
                                if v635.Name == 'rip_indra' and (v635:FindFirstChild('Humanoid') and (v635:FindFirstChild('HumanoidRootPart') and v635.Humanoid.Health > 0)) then
                                    local _CFrame4 = v635.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(0.05)
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)
                                        topos(v635.HumanoidRootPart.CFrame * Pos)

                                        v635.HumanoidRootPart.CFrame = _CFrame4
                                        v635.HumanoidRootPart.CanCollide = false
                                        v635.Humanoid.WalkSpeed = 0

                                        _ReplicatedStorage6.Remotes.CommF_:InvokeServer('TravelZou')
                                    until not getgenv().AutoThirdSea or (v635.Humanoid.Health <= 0 or not v635.Parent)
                                end
                            end
                        elseif not _Enemies:FindFirstChild('rip_indra') and (CFrame.new(-26880.934, 22.849, 473.19).Position - _LocalPlayer20.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            topos(CFrame.new(-26880.934, 22.849, 473.19))
                        end
                    end
                end
            end)
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Factory',
    Default = false,
}):OnChanged(function(p637)
    getgenv().AutoFactory = p637

    StopTween(getgenv().AutoFactory)
end)
task.spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoFactory and World2 then
            local _Core = game:GetService('Workspace').Enemies:FindFirstChild('Core')

            if _Core and _Core.Humanoid.Health > 0 then
                repeat
                    task.wait(0.1)
                    AutoHaki()
                    EquipWeapon(getgenv().SelectWeapon)
                    topos(_Core.HumanoidRootPart.CFrame)
                until _Core.Humanoid.Health <= 0 or not getgenv().AutoFactory
            else
                topos(CFrame.new(448.46756, 199.356781, -441.389252))
            end
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Pirate Raid',
    Default = false,
}):OnChanged(function(p639)
    getgenv().AutoPirateRaid = p639

    StopTween(getgenv().AutoPirateRaid)
end)
task.spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoPirateRaid and World3 then
            pcall(function()
                local v640 = CFrame.new(-5496.17432, 313.768921, -2841.53027)
                local _LocalPlayer21 = game.Players.LocalPlayer
                local _Character13 = _LocalPlayer21.Character

                if _Character13 then
                    _Character13 = _LocalPlayer21.Character:FindFirstChild('HumanoidRootPart')
                end
                if _Character13 then
                    if (CFrame.new(-5539.311, 313.801, -2972.372).Position - _Character13.Position).Magnitude > 500 then
                        UnEquipWeapon(getgenv().SelectWeapon)

                        if BypassTP then
                            local _Magnitude5 = (_Character13.Position - v640.Position).Magnitude

                            if _Magnitude5 > 1500 then
                                BTP(v640)
                            elseif _Magnitude5 <= 1500 then
                                topos(v640)
                            end
                        end

                        topos(CFrame.new(-5122, 315, -2963))
                    else
                        local v644, v645, v646 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v647

                            v646, v647 = v644(v645, v646)

                            if v646 == nil then
                                break
                            end
                            if getgenv().AutoPirateRaid and (v647:FindFirstChild('HumanoidRootPart') and (v647:FindFirstChild('Humanoid') and (v647.Humanoid.Health > 0 and (v647.HumanoidRootPart.Position - _Character13.Position).Magnitude < 2000))) then
                                repeat
                                    task.wait(0.1)
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)

                                    v647.HumanoidRootPart.CanCollide = false

                                    topos(v647.HumanoidRootPart.CFrame * Pos)

                                    getgenv().StartMagnet = true
                                until v647.Humanoid.Health <= 0 or not (v647.Parent and getgenv().AutoPirateRaid)
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Elite Hunter',
    Default = false,
}):OnChanged(function(p648)
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')

    getgenv().AutoEliteHunter = p648

    StopTween(getgenv().AutoEliteHunter)
end)
Stack:AddToggle('Toggle', {
    Title = 'Hop Server Elite Hunter',
    Description = 'Find New Elite Hunter Server',
    Default = false,
}):OnChanged(function(p649)
    getgenv().AutoEliteHunterHop = p649
end)
spawn(function()
    while task.wait(0.3) do
        if getgenv().AutoEliteHunter and World3 then
            pcall(function()
                local _Quest = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest

                if _Quest.Visible ~= true then
                    local _EliteHunter2 = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')

                    if getgenv().AutoEliteHunterHop and _EliteHunter2 == "I don't have anything for you right now. Come back later." then
                        Hop()
                    end
                else
                    local _ = _Quest.Container.QuestTitle.Title.Text
                    local v652, v653, v654 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                    local v655 = {
                        'Diablo',
                        'Deandre',
                        'Urban',
                    }
                    local v656 = false

                    while true do
                        local v657

                        v654, v657 = v652(v653, v654)

                        if v654 == nil then
                            break
                        end
                        if table.find(v655, v657.Name) and (v657:FindFirstChild('Humanoid') and (v657:FindFirstChild('HumanoidRootPart') and v657.Humanoid.Health > 0)) then
                            v656 = true

                            while true do
                                task.wait(0.2)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)

                                if v657:FindFirstChild('HumanoidRootPart') then
                                    v657.HumanoidRootPart.CanCollide = false
                                    v657.Humanoid.WalkSpeed = 0

                                    topos(v657.HumanoidRootPart.CFrame * Pos)
                                end
                                if not getgenv().AutoEliteHunter or (v657.Humanoid.Health <= 0 or not v657.Parent) then
                                    break
                                end
                            end
                        end
                    end

                    if not v656 then
                        local v658, v659, v660 = pairs(v655)

                        while true do
                            local v661

                            v660, v661 = v658(v659, v660)

                            if v660 == nil then
                                break
                            end

                            local v662 = game:GetService('ReplicatedStorage'):FindFirstChild(v661)

                            if v662 and v662:FindFirstChild('HumanoidRootPart') then
                                topos(v662.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))

                                break
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Touch Pad Haki',
    Default = false,
}):OnChanged(function(p663)
    getgenv().AutoTouchPadHaki = p663

    StopTween(getgenv().AutoTouchPadHaki)
end)
spawn(function()
    while task.wait(1) do
        pcall(function()
            if getgenv().AutoTouchPadHaki and World3 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('activateColor', 'Winter Sky')
                task.wait(0.5)

                local v664 = CFrame.new(-5420.16602, 1084.9657, -2666.8208)

                repeat
                    topos(v664)
                    task.wait(0.2)
                until getgenv().StopTween == true or (getgenv().AutoTouchPadHaki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v664.Position).Magnitude <= 10)

                task.wait(0.5)
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('activateColor', 'Pure Red')
                task.wait(0.5)

                local v665 = CFrame.new(-5414.41357, 309.865753, -2212.45776)

                repeat
                    topos(v665)
                    task.wait(0.2)
                until getgenv().StopTween == true or (getgenv().AutoTouchPadHaki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v665.Position).Magnitude <= 10)

                task.wait(0.5)
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('activateColor', 'Snow White')
                task.wait(0.5)

                local v666 = CFrame.new(-4971.47559, 331.565765, -3720.02954)

                repeat
                    topos(v666)
                    task.wait(0.2)
                until getgenv().StopTween == true or (getgenv().AutoTouchPadHaki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v666.Position).Magnitude <= 10)

                task.wait(0.5)
                game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 600))
                task.wait(1)
                game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 600))
            end
        end)
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Rip Indra',
    Default = false,
}):OnChanged(function(p667)
    getgenv().AutoRipIndra = p667

    StopTween(getgenv().AutoRipIndra)
end)
spawn(function()
    pcall(function()
        while task.wait(1) do
            if getgenv().AutoRipIndra and World3 then
                local _Enemies2 = game:GetService('Workspace').Enemies
                local _LocalPlayer22 = game:GetService('Players').LocalPlayer

                if _Enemies2:FindFirstChild('rip_indra True Form') or _Enemies2:FindFirstChild('rip_indra') then
                    local v670, v671, v672 = pairs(_Enemies2:GetChildren())

                    while true do
                        local u673

                        v672, u673 = v670(v671, v672)

                        if v672 == nil then
                            break
                        end
                        if (u673.Name == 'rip_indra True Form' or u673.Name == 'rip_indra') and (u673.Humanoid.Health > 0 and (u673:IsA('Model') and (u673:FindFirstChild('Humanoid') and u673:FindFirstChild('HumanoidRootPart')))) then
                            repeat
                                task.wait(0.3)
                                pcall(function()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)

                                    u673.HumanoidRootPart.CanCollide = false
                                    u673.Humanoid.WalkSpeed = 0

                                    topos(u673.HumanoidRootPart.CFrame * Pos)
                                end)
                            until getgenv().AutoRipIndra == false or u673.Humanoid.Health <= 0
                        end
                    end
                elseif _LocalPlayer22.Backpack:FindFirstChild("God's Chalice") or _LocalPlayer22.Character:FindFirstChild("God's Chalice") then
                    repeat
                        task.wait(0.3)
                        topos(CFrame.new(-5563.75048828125, 320.4276123046875, -2662.509521484375))
                        EquipWeapon("God's Chalice")
                    until not (_LocalPlayer22.Backpack:FindFirstChild("God's Chalice") or _LocalPlayer22.Character:FindFirstChild("God's Chalice"))
                elseif game:GetService('ReplicatedStorage'):FindFirstChild('rip_indra True Form') then
                    local _rip_indraTrueForm = game:GetService('ReplicatedStorage'):FindFirstChild('rip_indra True Form')

                    topos(_rip_indraTrueForm.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end)
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Soul Reaper',
    Default = false,
}):OnChanged(function(p675)
    getgenv().AutoSoulReaper = p675

    StopTween(getgenv().AutoSoulReaper)
end)
spawn(function()
    while true do
        if getgenv().AutoSoulReaper and World3 then
            pcall(function()
                local _Enemies3 = game:GetService('Workspace').Enemies
                local _ReplicatedStorage7 = game:GetService('ReplicatedStorage')
                local _LocalPlayer23 = game:GetService('Players').LocalPlayer
                local _Backpack7 = _LocalPlayer23.Backpack
                local _Character14 = _LocalPlayer23.Character
                local v681

                if _Character14 then
                    v681 = _Character14:FindFirstChild('HumanoidRootPart')
                else
                    v681 = _Character14
                end
                if _Enemies3:FindFirstChild('Soul Reaper') then
                    local v682, v683, v684 = pairs(_Enemies3:GetChildren())

                    while true do
                        local v685

                        v684, v685 = v682(v683, v684)

                        if v684 == nil then
                            break
                        end
                        if string.find(v685.Name, 'Soul Reaper') then
                            repeat
                                task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                topos(v685.HumanoidRootPart.CFrame * Pos)

                                v685.HumanoidRootPart.CanCollide = false
                                v685.Humanoid.WalkSpeed = 0
                                v685.HumanoidRootPart.Transparency = 1
                            until v685.Humanoid.Health <= 0 or not getgenv().AutoSoulReaper
                        end
                    end
                elseif _Backpack7:FindFirstChild('Hallow Essence') or _Character14:FindFirstChild('Hallow Essence') then
                    local v686 = CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)

                    repeat
                        topos(v686)
                        task.wait(0.1)
                    until (v686.Position - v681.Position).Magnitude <= 8

                    EquipWeapon('Hallow Essence')
                else
                    local _SoulReaper = _ReplicatedStorage7:FindFirstChild('Soul Reaper')

                    if _SoulReaper then
                        topos(_SoulReaper.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end)
        end

        task.wait(0.1)
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Pray',
    Default = false,
}):OnChanged(function(p688)
    getgenv().AutoPray = p688

    StopTween(getgenv().AutoPray)
end)
spawn(function()
    while wait(0.5) do
        if getgenv().AutoPray and World3 then
            local v689 = CFrame.new(-8652.99707, 143.450119, 6170.50879)

            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v689.Position).magnitude > 5 then
                topos(v689)
                wait(0.5)
            end

            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 1)
            end)
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Try Luck',
    Default = false,
}):OnChanged(function(p690)
    getgenv().AutoTryLuck = p690

    StopTween(getgenv().AutoTryLuck)
end)
spawn(function()
    while wait(0.5) do
        if getgenv().AutoTryLuck and World3 then
            local v691 = CFrame.new(-8652.99707, 143.450119, 6170.50879)

            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v691.Position).magnitude > 5 then
                topos(v691)
                wait(0.5)
            end

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2)
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Dough King',
    Default = false,
}):OnChanged(function(p692)
    getgenv().AutoDoughKing = p692

    StopTween(getgenv().AutoDoughKing)
end)
spawn(function()
    game:GetService('RunService').Heartbeat:Connect(function()
        pcall(function()
            local v693, v694, v695 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            while true do
                local v696

                v695, v696 = v693(v694, v695)

                if v695 == nil then
                    break
                end
                if getgenv().AutoDoughKing and (StartCakegetgenv().StartMagnet and (v696.Name == 'Cookie Crafter' or (v696.Name == 'Cake Guard' or (v696.Name == 'Baking Staff' or v696.Name == 'Head Baker')))) and (v696.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 300 then
                    v696.HumanoidRootPart.CFrame = POSCAKE
                    v696.HumanoidRootPart.CanCollide = false

                    if v696.Humanoid:FindFirstChild('Animator') then
                        v696.Humanoid.Animator:Destroy()
                    end

                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                end
            end
        end)
    end)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoDoughKing and World3 then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SweetChaliceNpc'), 'Where') then
                        game.StarterGui:SetCore('SendNotification', {
                            Title = 'Notification',
                            Text = 'Not Have Enough Material',
                            Icon = 'http://www.roblox.com/asset/?id=',
                            Duration = 2.5,
                        })
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SweetChaliceNpc')
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Sweet Chalice') or game.Players.LocalPlayer.Character:FindFirstChild('Sweet Chalice') then
                    if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 'Do you want to open the portal now?') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')
                    elseif game.Workspace.Enemies:FindFirstChild('Baking Staff') or (game.Workspace.Enemies:FindFirstChild('Head Baker') or (game.Workspace.Enemies:FindFirstChild('Cake Guard') or game.Workspace.Enemies:FindFirstChild('Cookie Crafter'))) then
                        local v697, v698, v699 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v700

                            v699, v700 = v697(v698, v699)

                            if v699 == nil then
                                break
                            end
                            if (v700.Name == 'Baking Staff' or (v700.Name == 'Head Baker' or (v700.Name == 'Cake Guard' or v700.Name == 'Cookie Crafter'))) and v700.Humanoid.Health > 0 then
                                repeat
                                    task.wait(0.05)
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)

                                    StartCakegetgenv().StartMagnet = true
                                    POSCAKE = v700.HumanoidRootPart.CFrame

                                    topos(v700.HumanoidRootPart.CFrame * Pos)
                                until getgenv().AutoDoughKing == false or (game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') or (not v700.Parent or v700.Humanoid.Health <= 0))
                            end
                        end
                    else
                        StartCakegetgenv().StartMagnet = false

                        topos(CFrame.new(-1820.063, 210.748, -12297.496))
                    end
                elseif game.ReplicatedStorage:FindFirstChild('Dough King') or game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                        local v701, v702, v703 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v704

                            v703, v704 = v701(v702, v703)

                            if v703 == nil then
                                break
                            end
                            if v704.Name == 'Dough King' then
                                repeat
                                    task.wait(0.05)
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)

                                    v704.HumanoidRootPart.CanCollide = false

                                    topos(v704.HumanoidRootPart.CFrame * Pos)
                                until getgenv().AutoDoughKing == false or (not v704.Parent or v704.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(CFrame.new(-2009.28, 4532.972, -14937.308))
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Red Key') or game.Players.LocalPlayer.Character:FindFirstChild('Red Key') then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'CakeScientist',
                        'Check',
                    }))
                elseif game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true and (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Diablo') or (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Deandre') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Urban'))) and (game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban'))) then
                    local v705, v706, v707 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v708

                        v707, v708 = v705(v706, v707)

                        if v707 == nil then
                            break
                        end
                        if (v708.Name == 'Diablo' or (v708.Name == 'Deandre' or v708.Name == 'Urban')) and (v708:FindFirstChild('Humanoid') and (v708:FindFirstChild('HumanoidRootPart') and v708.Humanoid.Health > 0)) then
                            repeat
                                task.wait(0.05)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)

                                v708.HumanoidRootPart.CanCollide = false
                                v708.Humanoid.WalkSpeed = 0

                                topos(v708.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                            until getgenv().AutoDoughKing == false or (v708.Humanoid.Health <= 0 or not v708.Parent) or (game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice"))
                        end
                    end
                end
            end)
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Darkbeard',
    Default = false,
}):OnChanged(function(p709)
    getgenv().AutoDarkbeard = p709

    StopTween(getgenv().AutoDarkbeard)
end)
spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoDarkbeard and World2 then
            pcall(function()
                local _Enemies4 = game:GetService('Workspace').Enemies
                local _LocalPlayer24 = game:GetService('Players').LocalPlayer

                if _Enemies4:FindFirstChild('Darkbeard') then
                    local v712, v713, v714 = pairs(_Enemies4:GetChildren())

                    while true do
                        local v715

                        v714, v715 = v712(v713, v714)

                        if v714 == nil then
                            break
                        end
                        if v715.Name == 'Darkbeard' and (v715:FindFirstChild('Humanoid') and (v715:FindFirstChild('HumanoidRootPart') and v715.Humanoid.Health > 0)) then
                            repeat
                                task.wait(0.05)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)

                                v715.HumanoidRootPart.CanCollide = false
                                v715.Humanoid.WalkSpeed = 0

                                topos(v715.HumanoidRootPart.CFrame * Pos)
                            until not getgenv().AutoDarkbeard or (not v715.Parent or v715.Humanoid.Health <= 0)
                        end
                    end
                end
                if _LocalPlayer24.Backpack:FindFirstChild('Fist of Darkness') or _LocalPlayer24.Character:FindFirstChild('Fist of Darkness') then
                    task.wait(0.1)
                    topos(CFrame.new(3778.584, 15.791, -3499.404))
                    EquipWeapon('Fist of Darkness')

                    if not getgenv().AutoDarkbeard then
                    end
                end
                if game:GetService('ReplicatedStorage'):FindFirstChild('Darkbeard') then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Darkbeard').HumanoidRootPart.CFrame * Pos)
                end
            end)
        end
    end
end)

Other = Window:AddTab({
    Title = 'Tab Farming Other',
    Icon = '',
})

Other:AddParagraph({
    Title = 'Quest Dragon',
    Content = '',
})
Other:AddButton({
    Title = 'Teleport To Dragon Dojo',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5661.5322265625, 1013.0907592773438, -334.9649963378906))
        topos(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
    end,
})
Other:AddToggle('Toggle', {
    Title = 'Auto Quest Dojo Trainer',
    Default = false,
}):OnChanged(function(p716)
    getgenv().DojoClaimQuest = p716

    StopTween(getgenv().DojoClaimQuest)
end)

local u717 = CFrame.new(5855.19629, 1208.32178, 872.713501, 0.606994748, -1.81058823e-9, -0.794705868, 5.72712722e-9, 1, 2.09605577e-9, 0.794705868, -5.8236762099999995e-9, 0.606994748)

spawn(function()
    while task.wait(0.2) do
        if getgenv().DojoClaimQuest and World3 then
            pcall(function()
                if BypassTP then
                    BTP(u717)
                else
                    topos(u717)
                end
                if (u717.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                    game:GetService('ReplicatedStorage').Modules.Net['RF/InteractDragonQuest']:InvokeServer({
                        NPC = 'Dojo Trainer',
                        Command = 'ClaimQuest',
                    })
                    task.wait(1)
                    game:GetService('ReplicatedStorage').Modules.Net['RF/InteractDragonQuest']:InvokeServer({
                        NPC = 'Dojo Trainer',
                        Command = 'RequestQuest',
                    })
                end
            end)
        end
    end
end)
Other:AddToggle('Toggle', {
    Title = 'Auto Upgrade Dragon Talon',
    Default = false,
}):OnChanged(function(p718)
    getgenv().DragonTalonUpgrade = p718

    StopTween(getgenv().DragonTalonUpgrade)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().DragonTalonUpgrade and World3 then
            local v719 = CFrame.new(5661.89014, 1211.31909, 864.836731, 0.811413169, -1.36805838e-8, -0.584473014, 4.75227395e-8, 1, 4.25682458e-8, 0.584473014, -6.231619659999999e-8, 0.811413169)

            if (v719.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                game:GetService('ReplicatedStorage').Modules.Net['RF/InteractDragonQuest']:InvokeServer({
                    NPC = 'Uzoth',
                    Command = 'Upgrade',
                })
            else
                topos(v719)
            end
        end
    end
end)
Other:AddToggle('Toggle', {
    Title = 'Auto Attack Hydra Mob And Collect Ember',
    Default = false,
}):OnChanged(function(p720)
    getgenv().BlazeEmberFarm = p720

    StopTween(getgenv().BlazeEmberFarm)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().BlazeEmberFarm and World3 then
            pcall(function()
                local _Enemies5 = game:GetService('Workspace').Enemies

                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

                if not (_Enemies5:FindFirstChild('Ghost') or (_Enemies5:FindFirstChild('Hydra Enforcer') or _Enemies5:FindFirstChild('Venomous Assailant'))) then
                    topos(CFrame.new(5394.36475, 1082.71057, 561.993958, -0.62453711, 3.17826405e-8, -0.780995131, 6.775309909999999e-8, 1, -1.34849545e-8, 0.780995131, -6.13366922e-8, -0.62453711))

                    return
                end

                local v722, v723, v724 = pairs(_Enemies5:GetChildren())

                while true do
                    local v725

                    v724, v725 = v722(v723, v724)

                    if v724 == nil then
                    end
                    if (v725.Name == 'Hydra Enforcer' or v725.Name == 'Venomous Assailant') and (v725:FindFirstChild('Humanoid') and (v725:FindFirstChild('HumanoidRootPart') and v725.Humanoid.Health > 0)) then
                    end
                end

                game:GetService('RunService').Heartbeat:wait()
                AutoHaki()
                EquipWeapon(getgenv().SelectWeapon)
                topos(v725.HumanoidRootPart.CFrame * Pos)

                getgenv().StartMagnet = true

                if v725.HumanoidRootPart.CanCollide then
                    v725.HumanoidRootPart.CanCollide = false
                end
                if v725.HumanoidRootPart.Size ~= Vector3.new(60, 60, 60) then
                    v725.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                end
                if v725.HumanoidRootPart.Transparency ~= 1 then
                    v725.HumanoidRootPart.Transparency = 1
                end

                MonFarm = v725.Name
                PosMon = v725.HumanoidRootPart.CFrame

                if getgenv().BlazeEmberFarm and v725.Humanoid.Health > 0 then
                else
                end
            end)
        end
    end
end)
Other:AddToggle('Toggle', {
    Title = 'Auto Collect FireFlower',
    Default = false,
}):OnChanged(function(p726)
    getgenv().AutoCollectFireFlowers = p726
end)
spawn(function()
    while wait() do
        local v727 = getgenv().AutoCollectFireFlowers and workspace:FindFirstChild('FireFlowers')

        if v727 then
            local v728, v729, v730 = pairs(v727:GetChildren())

            while true do
                local v731

                v730, v731 = v728(v729, v730)

                if v730 == nil then
                    break
                end
                if v731:IsA('Model') and v731.PrimaryPart then
                    local _Position4 = v731.PrimaryPart.Position

                    if (_Position4 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1 then
                        topos(CFrame.new(_Position4))
                    else
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                        wait(1.5)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'E', false, game)
                    end
                end
            end
        end
    end
end)
Other:AddParagraph({
    Title = 'Farm Chest',
    Content = string.rep('-', 21),
})

ToggleChest = Other:AddToggle('ToggleChest', {
    Title = 'Auto Chest',
    Default = false,
})

ToggleChest:OnChanged(function(p733)
    getgenv().AutoFarmChest = p733
end)
spawn(function()
    local v734 = nil

    while wait(0.2) do
        if getgenv().AutoFarmChest then
            local _LocalPlayer25 = game:GetService('Players').LocalPlayer
            local _Position5 = (_LocalPlayer25.Character or _LocalPlayer25.CharacterAdded:Wait()):GetPivot().Position
            local __ChestTagged = game:GetService('CollectionService'):GetTagged('_ChestTagged')
            local _huge3 = math.huge
            local v739, v740, v741 = ipairs(__ChestTagged)
            local v742 = nil

            while true do
                local v743

                v741, v743 = v739(v740, v741)

                if v741 == nil then
                    break
                end
                if not v743:GetAttribute('IsDisabled') then
                    local _Magnitude6 = (v743:GetPivot().Position - _Position5).Magnitude

                    if _Magnitude6 < _huge3 then
                        v742 = v743
                        _huge3 = _Magnitude6
                    end
                end
            end

            if v742 and v742 ~= v734 then
                topos(v742:GetPivot())

                v734 = v742
            end
        end
    end
end)
Other:AddToggle('Toggle', {
    Title = "Stop When Have God's Chalice& Fist Of Darkness",
    Default = false,
}):OnChanged(function(p745)
    getgenv().StopChest = p745
end)
spawn(function()
    while task.wait(0.5) do
        local u746 = false

        local function v747()
            u746 = true
        end

        local v748 = getgenv().StopChest and game.Players.LocalPlayer

        if v748 then
            local _Backpack8 = v748:FindFirstChild('Backpack')
            local _Character15 = v748.Character

            if _Backpack8 and (_Character15 and (_Backpack8:FindFirstChild('Fist of Darkness') or (_Character15:FindFirstChild('Fist of Darkness') or (_Backpack8:FindFirstChild("God's Chalice") or _Character15:FindFirstChild("God's Chalice"))))) then
                getgenv().AutoFarmChest = false

                if ToggleChest and typeof(ToggleChest.Set) == 'function' then
                    ToggleChest:Set(false)
                end

                v747()
            end
        end
        if u746 then
            break
        end
    end
end)
Other:AddParagraph({
    Title = 'Farm Observation',
    Content = string.rep('-', 21),
})

ObservationRange = Other:AddParagraph({
    Title = 'Observation Level',
    Content = '',
})

spawn(function()
    local _Value2 = game:GetService('Players').LocalPlayer.VisionRadius.Value

    while wait(0.1) do
        pcall(function()
            local _Value3 = game:GetService('Players').LocalPlayer.VisionRadius.Value

            if _Value3 ~= _Value2 then
                ObservationRange:SetDesc('Observation Range Level: ' .. math.floor(_Value3))

                _Value2 = _Value3
            end
        end)
    end
end)
Other:AddToggle('Toggle', {
    Title = 'Auto UP Observation V2',
    Default = false,
}):OnChanged(function(p753)
    getgenv().AutoObservationHakiV2 = p753

    StopTween(getgenv().AutoObservationHakiV2)
end)
spawn(function()
    local u754 = tick()

    while task.wait(0.1) do
        pcall(function()
            if not (getgenv().AutoObservationHakiV2 and World3) then
                return
            end
            if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                if tick() - u754 >= 1 then
                    topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))

                    u754 = tick()
                end

                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                task.wait(1)
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'CitizenQuest', 1)
            end
            if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Defeat 50 Forest Pirates') then
            end
            if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ~= 'Defeat Captain Elephant (0/1)' or not game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant') then
                if game.Players.LocalPlayer.Backpack:FindFirstChild('Banana') and (game.Players.LocalPlayer.Backpack:FindFirstChild('Apple') and game.Players.LocalPlayer.Backpack:FindFirstChild('Pineapple')) then
                    if tick() - u754 >= 1 then
                        topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))

                        u754 = tick()
                    end

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Fruit Bowl') or game.Players.LocalPlayer.Character:FindFirstChild('Fruit Bowl') then
                    if tick() - u754 >= 1 then
                        topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))

                        u754 = tick()
                    end

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk2', 'Start')
                    task.wait(1)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk2', 'Buy')
                end
            end

            local v755, v756, v757 = pairs(game:GetService('Workspace').Enemies:GetChildren())
            local v758

            v757, v758 = v755(v756, v757)

            if v757 == nil then
            end
            if v758.Name ~= 'Captain Elephant' then
            end
            if not game:GetService('Workspace').Enemies:FindFirstChild('Forest Pirate') then
            end

            local v759, v760, v761 = pairs(game:GetService('Workspace').Enemies:GetChildren())
            local v762

            v761, v762 = v759(v760, v761)

            if v761 == nil then
            end
            if v762.Name ~= 'Forest Pirate' then
            end
            if not game.Players.LocalPlayer.Character:FindFirstChild('HasBuso') then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Buso')
            end

            EquipWeapon(getgenv().SelectWeapon)
            topos(v762.HumanoidRootPart.CFrame * Pos)

            PosHee = v762.HumanoidRootPart.CFrame
            v762.HumanoidRootPart.CFrame = v762.HumanoidRootPart.CFrame
            v762.HumanoidRootPart.CanCollide = false
            v762.Humanoid.WalkSpeed = 0
            v762.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

            if getgenv().AutoObservationHakiV2 == false or v762.Humanoid.Health <= 0 then
            else
            end
            if not game.Players.LocalPlayer.Character:FindFirstChild('HasBuso') then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Buso')
            end

            EquipWeapon(getgenv().SelectWeapon)
            topos(v758.HumanoidRootPart.CFrame * Pos)

            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
            end

            v758.HumanoidRootPart.CFrame = v758.HumanoidRootPart.CFrame
            v758.HumanoidRootPart.CanCollide = false
            v758.Humanoid.WalkSpeed = 0
            v758.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

            if getgenv().AutoObservationHakiV2 == false or v758.Humanoid.Health <= 0 then
            end
        end)
    end
end)
spawn(function()
    local u763 = tick()

    while true do
        task.wait(0.1)
        pcall(function()
            if getgenv().AutoObservationHakiV2 and (World3 and (sethiddenproperty and tick() - u763 >= 1)) then
                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)

                u763 = tick()
            end
        end)
    end
end)
spawn(function()
    game:GetService('RunService').Heartbeat:Connect(function()
        pcall(function()
            if getgenv().AutoObservationHakiV2 and World3 then
                local _Character16 = game:GetService('Players').LocalPlayer.Character

                if _Character16 and _Character16:FindFirstChild('Humanoid') then
                    local _Humanoid5 = _Character16.Humanoid

                    if _Humanoid5:GetState() ~= Enum.HumanoidStateType.Physics then
                        _Humanoid5:ChangeState(Enum.HumanoidStateType.Physics)
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    pcall(function()
        game:GetService('RunService').Heartbeat:Connect(function()
            task.wait(0.1)

            if getgenv().AutoObservationHakiV2 and getgenv().StartMagnet then
                local v766 = game.Workspace.Enemies:GetChildren()
                local v767, v768, v769 = ipairs(v766)

                while true do
                    local v770

                    v769, v770 = v767(v768, v769)

                    if v769 == nil then
                        break
                    end
                    if v770.Name == 'Forest Pirate' and (v770:FindFirstChild('Humanoid') and v770.Humanoid.Health > 0) then
                        local _HumanoidRootPart8 = v770.HumanoidRootPart

                        if _HumanoidRootPart8.CanCollide ~= false then
                            _HumanoidRootPart8.CanCollide = false
                        end
                        if _HumanoidRootPart8.Size ~= Vector3.new(50, 50, 50) then
                            _HumanoidRootPart8.Size = Vector3.new(50, 50, 50)
                        end
                        if _HumanoidRootPart8.CFrame ~= PosHee then
                            _HumanoidRootPart8.CFrame = PosHee
                        end
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    game:GetService('RunService').Heartbeat:Connect(function()
        pcall(function()
            if getgenv().AutoObservationHakiV2 and getgenv().StartMagnet then
                CheckQuest()

                local v772 = game.Workspace.Enemies:GetChildren()
                local v773, v774, v775 = ipairs(v772)

                while true do
                    local v776

                    v775, v776 = v773(v774, v775)

                    if v775 == nil then
                        break
                    end
                    if v776.Name == Ms and v776:FindFirstChild('Humanoid') then
                        local _Humanoid6 = v776.Humanoid

                        if _Humanoid6.Health > 0 then
                            _Humanoid6:ChangeState(11)
                            task.wait(0.1)
                            _Humanoid6:ChangeState(14)
                        end
                    end
                end
            end
        end)
    end)
end)
Other:AddToggle('Toggle', {
    Title = 'Farm Observation',
    Default = false,
}):OnChanged(function(p778)
    getgenv().AutoObservation = p778

    StopTween(getgenv().AutoObservation)
end)
spawn(function()
    pcall(function()
        while true do
            repeat
                if not task.wait(0.1) then
                    return
                end
            until getgenv().AutoObservation

            if game:GetService('Players').LocalPlayer.VisionRadius.Value < 5000 then
                break
            end

            Alert:create('You Have Max Points')
            task.wait(1)
        end

        local v779 = nil
        local v780 = nil
        local _LocalPlayer26 = game:GetService('Players').LocalPlayer
        local _Enemies6 = game:GetService('Workspace').Enemies
        local _ScreenGui = _LocalPlayer26.PlayerGui.ScreenGui

        if World2 then
            v780 = CFrame.new(-5478.39209, 15.9775667, -5246.9126)
            v779 = 'Lava Pirate [Lv. 1200]'
        elseif World1 then
            v780 = CFrame.new(5533.29785, 88.1079102, 4852.3916)
            v779 = 'Galley Captain'
        elseif World3 then
            v780 = CFrame.new(4638.78564453125, 1078.94091796875, 881.8002319335938)
            v779 = 'Venomous Assailant'
        end

        local v784 = _Enemies6:FindFirstChild(v779)

        if not v784 then
        end
        if not _ScreenGui:FindFirstChild('ImageLabel') then
        end

        task.wait(0.1)

        _LocalPlayer26.Character.HumanoidRootPart.CFrame = v784.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)

        if getgenv().AutoObservation and _ScreenGui:FindFirstChild('ImageLabel') then
        end

        topos(v780)
        task.wait(0.1)

        _LocalPlayer26.Character.HumanoidRootPart.CFrame = v784.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)

        if not _ScreenGui:FindFirstChild('ImageLabel') and getgenv().AutoObservation_Hop then
            game:GetService('TeleportService'):Teleport(game.PlaceId, _LocalPlayer26)
        end
        if getgenv().AutoObservation and not _ScreenGui:FindFirstChild('ImageLabel') then
        else
        end
    end)
end)
Other:AddParagraph({
    Title = 'Auto Boss',
    Content = string.rep('-', 21),
})

if World1 then
    tableBoss = {
        'The Gorilla King',
        'Bobby',
        'Yeti',
        'Mob Leader',
        'Vice Admiral',
        'Warden',
        'Chief Warden',
        'Swan',
        'Magma Admiral',
        'Fishman Lord',
        'Wysper',
        'Thunder God',
        'Cyborg',
        'Saber Expert',
    }
elseif World2 then
    tableBoss = {
        'Diamond',
        'Jeremy',
        'Fajita',
        'Don Swan',
        'Smoke Admiral',
        'Cursed Captain',
        'Darkbeard',
        'Order',
        'Awakened Ice Admiral',
        'Tide Keeper',
    }
elseif World3 then
    tableBoss = {
        'Stone',
        'Island Empress',
        'Kilo Admiral',
        'Captain Elephant',
        'Beautiful Pirate',
        'rip_indra True Form',
        'Longma',
        'Soul Reaper',
        'Cake Queen',
        'Cake Prince',
        'Dough King',
    }
end

Dropdown = Other:AddDropdown('Dropdown', {
    Title = 'Select Boss',
    Values = tableBoss,
    Multi = false,
})

Dropdown:OnChanged(function(p785)
    getgenv().SelectBoss = p785
end)
Other:AddToggle('Toggle', {
    Title = 'Auto Kill Boss',
    Default = getgenv().AutoFarmBoss,
}):OnChanged(function(p786)
    getgenv().AutoFarmBoss = p786

    StopTween(getgenv().AutoFarmBoss)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoFarmBoss and getgenv().BypassTP then
            pcall(function()
                local _Enemies7 = game:GetService('Workspace').Enemies
                local _SelectBoss = getgenv().SelectBoss
                local _ = getgenv().SelectWeapon
                local _HumanoidRootPart9 = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

                if not _Enemies7:FindFirstChild(_SelectBoss) then
                    if game.ReplicatedStorage:FindFirstChild(_SelectBoss) then
                        local _HumanoidRootPart10 = game.ReplicatedStorage:FindFirstChild(_SelectBoss).HumanoidRootPart

                        if (_HumanoidRootPart10.CFrame.Position - _HumanoidRootPart9.Position).Magnitude > 1500 then
                            BTP(_HumanoidRootPart10.CFrame)
                        else
                            topos(_HumanoidRootPart10.CFrame)
                        end
                    end

                    return
                end

                local v791, v792, v793 = pairs(_Enemies7:GetChildren())
                local v794

                v793, v794 = v791(v792, v793)

                if v793 == nil then
                end
                if v794.Name ~= _SelectBoss or not (v794:FindFirstChild('Humanoid') and v794:FindFirstChild('HumanoidRootPart')) then
                else
                end

                local _Humanoid7 = v794.Humanoid
                local _HumanoidRootPart11 = v794.HumanoidRootPart

                if _Humanoid7.Health <= 0 then
                end

                task.wait()
                AutoHaki()
                EquipWeapon(getgenv().SelectWeapon)

                if _HumanoidRootPart11.CanCollide then
                    _HumanoidRootPart11.CanCollide = false
                end
                if _Humanoid7.WalkSpeed ~= 0 then
                    _Humanoid7.WalkSpeed = 0
                end
                if _HumanoidRootPart11.Size ~= Vector3.new(80, 80, 80) then
                    _HumanoidRootPart11.Size = Vector3.new(80, 80, 80)
                end

                topos(_HumanoidRootPart11.CFrame * Pos)

                if getgenv().AutoFarmBoss and (v794.Parent and _Humanoid7.Health > 0) then
                else
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoFarmBoss and not getgenv().BypassTP then
            pcall(function()
                local _Enemies8 = game:GetService('Workspace').Enemies
                local _SelectBoss2 = getgenv().SelectBoss
                local _ = getgenv().SelectWeapon

                if not _Enemies8:FindFirstChild(_SelectBoss2) then
                    local v799 = game:GetService('ReplicatedStorage'):FindFirstChild(_SelectBoss2)

                    if v799 then
                        topos(v799.HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                    end

                    return
                end

                local v800, v801, v802 = pairs(_Enemies8:GetChildren())
                local v803

                v802, v803 = v800(v801, v802)

                if v802 == nil then
                end
                if v803.Name ~= _SelectBoss2 or not (v803:FindFirstChild('Humanoid') and v803:FindFirstChild('HumanoidRootPart')) then
                else
                end

                local _Humanoid8 = v803.Humanoid
                local _HumanoidRootPart12 = v803.HumanoidRootPart

                if _Humanoid8.Health <= 0 then
                end

                task.wait()
                AutoHaki()
                EquipWeapon(getgenv().SelectWeapon)

                if _HumanoidRootPart12.CanCollide then
                    _HumanoidRootPart12.CanCollide = false
                end
                if _Humanoid8.WalkSpeed ~= 0 then
                    _Humanoid8.WalkSpeed = 0
                end
                if _HumanoidRootPart12.Size ~= Vector3.new(80, 80, 80) then
                    _HumanoidRootPart12.Size = Vector3.new(80, 80, 80)
                end

                topos(_HumanoidRootPart12.CFrame * Pos)

                if getgenv().AutoFarmBoss and (v803.Parent and _Humanoid8.Health > 0) then
                else
                end
            end)
        end
    end
end)
Other:AddToggle('Toggle', {
    Title = 'Auto Kill All Boss',
    Default = false,
}):OnChanged(function(p806)
    getgenv().AutoFarmAllBoss = p806

    StopTween(getgenv().AutoFarmAllBoss)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoFarmAllBoss then
            pcall(function()
                local v807, v808, v809 = pairs(tableBoss)

                while true do
                    local v810

                    v809, v810 = v807(v808, v809)

                    if v809 == nil then
                        break
                    end
                    if game:GetService('Workspace').Enemies:FindFirstChild(v810) then
                        local v811, v812, v813 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v814

                            v813, v814 = v811(v812, v813)

                            if v813 == nil then
                                break
                            end
                            if v814.Name == v810 and (v814:FindFirstChild('Humanoid') and (v814:FindFirstChild('HumanoidRootPart') and v814.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)

                                    v814.HumanoidRootPart.CanCollide = false
                                    v814.Humanoid.WalkSpeed = 0
                                    v814.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                    topos(v814.HumanoidRootPart.CFrame * Pos)
                                until not getgenv().AutoFarmAllBoss or (not v814.Parent or v814.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild(v810) then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild(v810).HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end
            end)
        end
    end
end)

Blog = Window:AddTab({
    Title = 'Tab Fruit And Raid',
    Icon = '',
})

Blog:AddToggle('Toggle', {
    Title = 'Random Devil Fruit',
    Default = false,
}):OnChanged(function(p815)
    getgenv().RandomFruit = p815
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().RandomFruit then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Cousin', 'Buy')
        end
    end
end)
Blog:AddToggle('Toggle', {
    Title = 'Auto Store Fruit',
    Default = false,
}):OnChanged(function(p816)
    getgenv().AutoStoreFruit = p816
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoStoreFruit then
            pcall(function()
                if getgenv().AutoStoreFruit then
                    local _LocalPlayer27 = game:GetService('Players').LocalPlayer
                    local _Character17 = _LocalPlayer27.Character
                    local _Backpack9 = _LocalPlayer27.Backpack
                    local v820, v821, v822 = ipairs({
                        {
                            'Rocket Fruit',
                            'Rocket-Rocket',
                        },
                        {
                            'Spin Fruit',
                            'Spin-Spin',
                        },
                        {
                            'Blade Fruit',
                            'Blade-Blade',
                        },
                        {
                            'Spring Fruit',
                            'Spring-Spring',
                        },
                        {
                            'Bomb Fruit',
                            'Bomb-Bomb',
                        },
                        {
                            'Smoke Fruit',
                            'Smoke-Smoke',
                        },
                        {
                            'Spike Fruit',
                            'Spike-Spike',
                        },
                        {
                            'Flame Fruit',
                            'Flame-Flame',
                        },
                        {
                            'Falcon Fruit',
                            'Falcon-Falcon',
                        },
                        {
                            'Ice Fruit',
                            'Ice-Ice',
                        },
                        {
                            'Sand Fruit',
                            'Sand-Sand',
                        },
                        {
                            'Dark Fruit',
                            'Dark-Dark',
                        },
                        {
                            'Diamond Fruit',
                            'Diamond-Diamond',
                        },
                        {
                            'Light Fruit',
                            'Light-Light',
                        },
                        {
                            'Rubber Fruit',
                            'Rubber-Rubber',
                        },
                        {
                            'Barrier Fruit',
                            'Barrier-Barrier',
                        },
                        {
                            'Ghost Fruit',
                            'Ghost-Ghost',
                        },
                        {
                            'Magma Fruit',
                            'Magma-Magma',
                        },
                        {
                            'Quake Fruit',
                            'Quake-Quake',
                        },
                        {
                            'Buddha Fruit',
                            'Buddha-Buddha',
                        },
                        {
                            'Love Fruit',
                            'Love-Love',
                        },
                        {
                            'Spider Fruit',
                            'Spider-Spider',
                        },
                        {
                            'Sound Fruit',
                            'Sound-Sound',
                        },
                        {
                            'Phoenix Fruit',
                            'Phoenix-Phoenix',
                        },
                        {
                            'Portal Fruit',
                            'Portal-Portal',
                        },
                        {
                            'Rumble Fruit',
                            'Rumble-Rumble',
                        },
                        {
                            'Pain Fruit',
                            'Pain-Pain',
                        },
                        {
                            'Blizzard Fruit',
                            'Blizzard-Blizzard',
                        },
                        {
                            'Gravity Fruit',
                            'Gravity-Gravity',
                        },
                        {
                            'Mammoth Fruit',
                            'Mammoth-Mammoth',
                        },
                        {
                            'T-Rex Fruit',
                            'T-Rex-T-Rex',
                        },
                        {
                            'Dough Fruit',
                            'Dough-Dough',
                        },
                        {
                            'Shadow Fruit',
                            'Shadow-Shadow',
                        },
                        {
                            'Venom Fruit',
                            'Venom-Venom',
                        },
                        {
                            'Gas Fruit',
                            'Gas-Gas',
                        },
                        {
                            'Control Fruit',
                            'Control-Control',
                        },
                        {
                            'Spirit Fruit',
                            'Spirit-Spirit',
                        },
                        {
                            'Leopard Fruit',
                            'Leopard-Leopard',
                        },
                        {
                            'Yeti Fruit',
                            'Yeti-Yeti',
                        },
                        {
                            'Kitsune Fruit',
                            'Kitsune-Kitsune',
                        },
                        {
                            'Dragon Fruit',
                            'Dragon-Dragon',
                        },
                    })

                    while true do
                        local v823

                        v822, v823 = v820(v821, v822)

                        if v822 == nil then
                            break
                        end

                        local v824 = v823[1]
                        local v825 = v823[2]

                        if _Character17:FindFirstChild(v824) or _Backpack9:FindFirstChild(v824) then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', v825, _Backpack9:FindFirstChild(v824))
                        end
                    end
                end
            end)
        end

        task.wait(0.1)
    end
end)

FruitList = {
    'Rocket-Rocket',
    'Spin-Spin',
    'Blade-Blade',
    'Spring-Spring',
    'Bomb-Bomb',
    'Smoke-Smoke',
    'Spike-Spike',
    'Flame-Flame',
    'Falcon-Falcon',
    'Ice-Ice',
    'Sand-Sand',
    'Dark-Dark',
    'Diamond-Diamond',
    'Light-Light',
    'Rubber-Rubber',
    'Barrier-Barrier',
    'Ghost-Ghost',
    'Magma-Magma',
    'Quake-Quake',
    'Buddha-Buddha',
    'Love-Love',
    'Spider-Spider',
    'Sound-Sound',
    'Phoenix-Phoenix',
    'Portal-Portal',
    'Rumble-Rumble',
    'Pain-Pain',
    'Blizzard-Blizzard',
    'Gravity-Gravity',
    'T-Rex-T-Rex',
    'Mammoth-Mammoth',
    'Dough-Dough',
    'Shadow-Shadow',
    'Venom-Venom',
    'Gas-Gas',
    'Control-Control',
    'Spirit-Spirit',
    'Leopard-Leopard',
    'Yeti-Yeti',
    'Kitsune-Kitsune',
    'Dragon-Dragon',
}
Dropdown = Blog:AddDropdown('Dropdown', {
    Title = 'Blox Fruit Sniper Shop',
    Values = FruitList,
    Multi = false,
})

Dropdown:OnChanged(function(p826)
    getgenv().SelectFruit = p826
end)
Blog:AddToggle('Toggle', {
    Title = 'Buy Blox Fruit Sniper Shop',
    Default = false,
}):OnChanged(function(p827)
    getgenv().AutoBuyFruitSniper = p827
end)
spawn(function()
    pcall(function()
        while task.wait(1) do
            if getgenv().AutoBuyFruitSniper then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GetFruits')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('PurchaseRawFruit', getgenv().SelectFruit)
            end
        end
    end)
end)
Blog:AddParagraph({
    Title = 'Raids',
    Content = string.rep('-', 21),
})

Dropdown = Blog:AddDropdown('Dropdown', {
    Title = 'Select Raid',
    Values = {
        'Dark',
        'Sand',
        'Magma',
        'Rumble',
        'Flame',
        'Ice',
        'Light',
        'Quake',
        'Buddha',
        'Spider',
        'Phoenix',
        'Dough',
    },
    Multi = false,
})

Dropdown:OnChanged(function(p828)
    getgenv().SelectChip = p828
end)
Blog:AddToggle('Toggle', {
    Title = 'Get Fruit In Inventory Low Beli',
    Default = false,
}):OnChanged(function(p829)
    getgenv().AutoGetFruit = p829
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if getgenv().AutoGetFruit then
                local v830, v831, v832 = ipairs({
                    'Rocket-Rocket',
                    'Spin-Spin',
                    'Chop-Chop',
                    'Spring-Spring',
                    'Bomb-Bomb',
                    'Smoke-Smoke',
                    'Spike-Spike',
                    'Flame-Flame',
                    'Falcon-Falcon',
                    'Ice-Ice',
                    'Sand-Sand',
                    'Dark-Dark',
                    'Ghost-Ghost',
                    'Diamond-Diamond',
                    'Light-Light',
                    'Rubber-Rubber',
                    'Barrier-Barrier',
                })

                while true do
                    local v833

                    v832, v833 = v830(v831, v832)

                    if v832 == nil then
                        break
                    end

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        v833,
                    }))
                end
            end
        end)
    end
end)
Blog:AddToggle('Toggle', {
    Title = 'Auto Raid',
    Default = false,
}):OnChanged(function(p834)
    getgenv().Auto_Dungeon = p834
end)
spawn(function()
    while true do
        if not task.wait(1) then
            return
        end
        if getgenv().Auto_Dungeon and not game.Players.LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == false then
            local v835, v836, v837 = ipairs({
                'Island 5',
                'Island 4',
                'Island 3',
                'Island 2',
                'Island 1',
            })

            while true do
                local v838

                v837, v838 = v835(v836, v837)

                if v837 == nil then
                    break
                end

                local v839 = game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild(v838)

                if v839 then
                    topos(v839.CFrame * CFrame.new(0, 70, 100))

                    break
                end
            end
        end
    end
end)
spawn(function()
    while task.wait(1) do
        pcall(function()
            if getgenv().Auto_Dungeon and game:GetService('Players').LocalPlayer.PlayerGui.Main.Timer.Visible == false and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Special Microchip') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Special Microchip')) then
                if World2 then
                    fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                elseif World3 then
                    fireclickdetector(game:GetService('Workspace').Map['Boat Castle'].RaidSummon2.Button.Main.ClickDetector)
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait(1) do
        if getgenv().Auto_Dungeon then
            local v840, v841, v842 = pairs(game.Workspace.Enemies:GetDescendants())

            while true do
                local u843

                v842, u843 = v840(v841, v842)

                if v842 == nil then
                    break
                end
                if u843:FindFirstChild('Humanoid') and (u843:FindFirstChild('HumanoidRootPart') and u843.Humanoid.Health > 0) then
                    pcall(function()
                        repeat
                            task.wait(0.001)

                            u843.Humanoid.Health = 0
                            u843.HumanoidRootPart.CanCollide = false

                            sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                        until not getgenv().Auto_Dungeon or (not u843.Parent or u843.Humanoid.Health <= 0)
                    end)
                end
            end
        end
    end
end)
spawn(function()
    while task.wait(1) do
        if getgenv().Auto_Dungeon then
            pcall(function()
                local v844 = {
                    'RaidsNpc',
                    'Select',
                    getgenv().SelectChip,
                }

                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v844))
            end)
        end
    end
end)
spawn(function()
    while wait(1) do
        pcall(function()
            if getgenv().Auto_Dungeon and game:GetService('Players').LocalPlayer.PlayerGui.Main.Timer.Visible == false and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Special Microchip') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Special Microchip')) then
                if World2 then
                    fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                elseif World3 then
                    fireclickdetector(game:GetService('Workspace').Map['Boat Castle'].RaidSummon2.Button.Main.ClickDetector)
                end
            end
        end)
    end
end)
Blog:AddToggle('Toggle', {
    Title = 'Auto Awaken Fruit',
    Default = false,
}):OnChanged(function(p845)
    getgenv().AutoAwaken = p845
end)
spawn(function()
    pcall(function()
        while wait(1) do
            if getgenv().AutoAwaken then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Awakener', 'Check')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Awakener', 'Awaken')
            end
        end
    end)
end)

if World2 then
    Blog:AddButton({
        Title = 'Teleport To Lab',
        Description = '',
        Callback = function()
            topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
        end,
    })
end
if World3 then
    Blog:AddButton({
        Title = 'Teleport To Lab',
        Description = '',
        Callback = function()
            topos(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-8, -0.378151238, 4.55503146e-9, 1, 1.07377559e-7, 0.378151238, 9.7681621e-8, -0.925743818))
        end,
    })
end

Sea = Window:AddTab({
    Title = 'Tab Sea Event',
    Icon = '',
})
SetSpeedBoatSlider = Sea:AddSlider('SliderSpeedBoat', {
    Title = 'Ship Speed',
    Default = 300,
    Min = 0,
    Max = 1000,
    Rounding = 1,
    Callback = function(p846)
        SetSpeedBoat = p846
    end,
})

SetSpeedBoatSlider:OnChanged(function(p847)
    SetSpeedBoat = p847
end)
SetSpeedBoatSlider:SetValue(300)

ListSeaZone = {
    'Zone 1',
    'Zone 2',
    'Zone 3',
    'Zone 4',
    'Zone 5',
    'Zone 6',
}
zoneselect = Sea:AddDropdown('zoneselect', {
    Title = 'Select Zone',
    Values = ListSeaZone,
    Multi = false,
    Default = false,
})

zoneselect:OnChanged(function(p848)
    getgenv().SelectedZone = p848
end)

ListSeaBoat = {
    'Guardian',
    'PirateGrandBrigade',
    'MarineGrandBrigade',
    'PirateBrigade',
    'MarineBrigade',
    'PirateSloop',
    'MarineSloop',
    'BeastHunter',
}
selectthuyen = Sea:AddDropdown('selectthuyen', {
    Title = 'Select Boat',
    Values = ListSeaBoat,
    Multi = false,
    Default = false,
})

selectthuyen:OnChanged(function(p849)
    getgenv().SelectedBoat = p849
end)

boattween = Sea:AddDropdown('boattween', {
    Title = 'Speed Tween Boat',
    Values = {
        '180',
        '200',
        '250',
        '300',
        '325',
        '350',
    },
    Multi = false,
    Default = 300,
})

boattween:OnChanged(function(p850)
    getgenv().SpeedBoat = p850
end)
spawn(function()
    pcall(function()
        while wait() do
            if getgenv().SelectedZone ~= 'Zone 1' then
                if getgenv().SelectedZone ~= 'Zone 2' then
                    if getgenv().SelectedZone ~= 'Zone 3' then
                        if getgenv().SelectedZone ~= 'Zone 4' then
                            if getgenv().SelectedZone ~= 'Zone 5' then
                                if getgenv().SelectedZone == 'Zone 6' then
                                    CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 2.02319411e-10, -0.99428153, -0.0651681125, -0.0846010372)
                                end
                            else
                                CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -1.39882339e-9, -0.981290519, -0.0365765914, -0.189026669)
                            end
                        else
                            CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972)
                        end
                    else
                        CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 2.70896673e-11, -0.925605655, -0.0370079502, 0.376675636)
                    end
                else
                    CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -4.15334017e-10, -0.949422479, -0.0606706589, 0.308084518)
                end
            else
                CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -2.3650920099999997e-10, -0.991110802, -0.0569955558, 0.120211802)
            end
        end
    end)
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Penetrate Rocks When Boat Runs',
    Default = true,
}):OnChanged(function(p851)
    getgenv().GoThroughRocks = p851
end)
spawn(function()
    while task.wait(1) do
        if getgenv().GoThroughRocks or getgenv().SailBoat then
            local v852, v853, v854 = ipairs(game:GetService('Workspace').Boats:GetChildren())

            while true do
                local v855

                v854, v855 = v852(v853, v854)

                if v854 == nil then
                    break
                end

                local v856, v857, v858 = ipairs(v855:GetDescendants())

                while true do
                    local v859

                    v858, v859 = v856(v857, v858)

                    if v858 == nil then
                        break
                    end
                    if v859:IsA('BasePart') then
                        v859.CanCollide = false
                    end
                end
            end
        else
            local v860, v861, v862 = ipairs(game:GetService('Workspace').Boats:GetChildren())

            while true do
                local v863

                v862, v863 = v860(v861, v862)

                if v862 == nil then
                    break
                end

                local v864, v865, v866 = ipairs(v863:GetDescendants())

                while true do
                    local v867

                    v866, v867 = v864(v865, v866)

                    if v866 == nil then
                        break
                    end
                    if v867:IsA('BasePart') then
                        v867.CanCollide = true
                    end
                end
            end
        end
    end
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Sea Event',
    Default = false,
}):OnChanged(function(p868)
    getgenv().SailBoat = p868

    StopTween(getgenv().SailBoat)
end)

function CheckBoat()
    local _Boats = game:GetService('Workspace'):FindFirstChild('Boats')
    local _SelectedBoat = getgenv().SelectedBoat

    if not (_Boats and _SelectedBoat) then
        return false
    end

    local v871, v872, v873 = pairs(_Boats:GetChildren())

    while true do
        local v874

        v873, v874 = v871(v872, v873)

        if v873 == nil then
            break
        end
        if v874.Name == _SelectedBoat and v874:FindFirstChild('MyBoatEsp') then
            return v874
        end
    end

    return false
end
function CheckEnemiesBoat()
    local _Enemies9 = game:GetService('Workspace'):FindFirstChild('Enemies')

    if _Enemies9 then
        return _Enemies9:FindFirstChild('FishBoat') or (_Enemies9:FindFirstChild('PirateBrigade') or _Enemies9:FindFirstChild('PirateGrandBrigade') and true or false)
    else
        return false
    end
end
function CheckShark()
    local _Enemies10 = game:GetService('Workspace'):FindFirstChild('Enemies')
    local _LocalPlayer28 = game.Players.LocalPlayer

    if _LocalPlayer28 then
        _LocalPlayer28 = _LocalPlayer28.Character
    end
    if _LocalPlayer28 then
        _LocalPlayer28 = _LocalPlayer28:FindFirstChild('HumanoidRootPart')
    end
    if not (_Enemies10 and _LocalPlayer28) then
        return false
    end

    local v878, v879, v880 = pairs(_Enemies10:GetChildren())

    while true do
        local v881

        v880, v881 = v878(v879, v880)

        if v880 == nil then
            break
        end

        local _Humanoid9 = v881:FindFirstChild('Humanoid')
        local _HumanoidRootPart13 = v881:FindFirstChild('HumanoidRootPart')

        if v881.Name == 'Shark' and (_Humanoid9 and (_HumanoidRootPart13 and (_Humanoid9.Health > 0 and (_HumanoidRootPart13.Position - _LocalPlayer28.Position).Magnitude <= 200))) then
            return true
        end
    end

    return false
end
function CheckPiranha()
    local _Enemies11 = game:GetService('Workspace'):FindFirstChild('Enemies')
    local _LocalPlayer29 = game.Players.LocalPlayer

    if _LocalPlayer29 then
        _LocalPlayer29 = _LocalPlayer29.Character
    end
    if _LocalPlayer29 then
        _LocalPlayer29 = _LocalPlayer29:FindFirstChild('HumanoidRootPart')
    end
    if not (_Enemies11 and _LocalPlayer29) then
        return false
    end

    local v886, v887, v888 = pairs(_Enemies11:GetChildren())

    while true do
        local v889

        v888, v889 = v886(v887, v888)

        if v888 == nil then
            break
        end

        local _Humanoid10 = v889:FindFirstChild('Humanoid')
        local _HumanoidRootPart14 = v889:FindFirstChild('HumanoidRootPart')

        if v889.Name == 'Piranha' and (_Humanoid10 and (_HumanoidRootPart14 and (_Humanoid10.Health > 0 and (_HumanoidRootPart14.Position - _LocalPlayer29.Position).Magnitude <= 200))) then
            return true
        end
    end

    return false
end
function AddEsp(p892, p893)
    if p893 and p893:IsA('Instance') then
        local _BillboardGui = Instance.new('BillboardGui')
        local _TextLabel = Instance.new('TextLabel')

        _BillboardGui.Name = p892
        _BillboardGui.Parent = p893
        _BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        _BillboardGui.AlwaysOnTop = true
        _BillboardGui.Size = UDim2.new(0, 200, 0, 50)
        _BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
        _TextLabel.Parent = _BillboardGui
        _TextLabel.BackgroundTransparency = 1
        _TextLabel.Size = UDim2.new(1, 0, 1, 0)
        _TextLabel.Font = Enum.Font.GothamBold
        _TextLabel.TextColor3 = Color3.new(1, 1, 1)
        _TextLabel.TextSize = 15
        _TextLabel.Text = 'YOUR BOAT IS HERE\u{2193}'

        return _BillboardGui
    end
end

spawn(function()
    while wait(0.2) do
        pcall(function()
            if getgenv().SailBoat then
                if CheckBoat() then
                    if CheckBoat() then
                        local v896, v897, v898 = pairs(game:GetService('Workspace').Boats:GetChildren())

                        while true do
                            local v899

                            v898, v899 = v896(v897, v898)

                            if v898 == nil then
                                break
                            end
                            if v899.Name == getgenv().SelectedBoat and v899:FindFirstChild('MyBoatEsp') then
                                if game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit ~= false then
                                    repeat
                                        wait()

                                        stopboat = TPB(CFrameSelectedZone, v899.VehicleSeat)
                                    until CheckShark() and getgenv().AutoKillShark or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and getgenv().AutoTerrorshark or CheckPiranha() and getgenv().AutoKillPiranha or (game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') and getgenv().AutoKillFishCrew or (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and getgenv().RelzFishBoat or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') and getgenv().RelzPirateBrigade or (game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') and getgenv().RelzPirateGrandBrigade or CheckSeaBeast() and getgenv().AutoSeaBest or (game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit == false or getgenv().SailBoat == false))))))

                                    if stopboat then
                                        stopboat:Stop()
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                                    wait(0.1)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 32, false, game)
                                elseif CheckShark() and getgenv().AutoKillShark or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and getgenv().AutoTerrorshark or CheckPiranha() and getgenv().AutoKillPiranha or (game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') and getgenv().AutoKillFishCrew or (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and getgenv().RelzFishBoat or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') and getgenv().RelzPirateBrigade or (game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') and getgenv().RelzPirateGrandBrigade or CheckSeaBeast() and getgenv().AutoSeaBest))))) then
                                    if stoppos then
                                        stoppos:Stop()
                                    end
                                else
                                    stoppos = topos(v899.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                end
                            end
                        end
                    end
                else
                    BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781)

                    if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                        buyb = topos(BuyBoatCFrame)
                    else
                        topos(CFrame.new(-16224, 9, 439))
                    end
                    if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        if buyb then
                            buyb:Stop()
                        end

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBoat', getgenv().SelectedBoat)

                        local v900, v901, v902 = pairs(game:GetService('Workspace').Boats:GetChildren())

                        while true do
                            local v903

                            v902, v903 = v900(v901, v902)

                            if v902 == nil then
                                break
                            end
                            if v903.Name == getgenv().SelectedBoat and (v903.VehicleSeat.CFrame.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                AddEsp('MyBoatEsp', v903)
                            end
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        while task.wait(0.2) do
            if getgenv().SailBoat then
                local _Enemies12 = game:GetService('Workspace').Enemies

                if CheckShark() and getgenv().AutoKillShark and true or (_Enemies12:FindFirstChild('Terrorshark') and getgenv().AutoTerrorshark and true or (CheckPiranha() and getgenv().AutoKillPiranha and true or (_Enemies12:FindFirstChild('Fish Crew Member') and getgenv().AutoKillFishCrew and true or (_Enemies12:FindFirstChild('FishBoat') and getgenv().RelzFishBoat and true or (_Enemies12:FindFirstChild('PirateBrigade') and getgenv().RelzPirateBrigade and true or (_Enemies12:FindFirstChild('PirateGrandBrigade') and getgenv().RelzPirateGrandBrigade and true or (CheckSeaBeast() and getgenv().AutoSeaBest and true or false))))))) then
                    local _Humanoid11 = game.Players.LocalPlayer.Character:FindFirstChild('Humanoid')

                    if _Humanoid11 and _Humanoid11.Sit then
                        local _VirtualInputManager2 = game:GetService('VirtualInputManager')

                        _VirtualInputManager2:SendKeyEvent(true, 32, false, game)
                        task.wait(0.1)
                        _VirtualInputManager2:SendKeyEvent(false, 32, false, game)
                    end
                end
            end
        end
    end)
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if not getgenv().SailBoat then
                return
            end

            local v907 = game:GetService('Workspace').Enemies:GetChildren()

            if getgenv().AutoKillFishCrew then
            end
            if not getgenv().RelzFishBoat then
                return
            end

            local v908, v909, v910 = pairs(v907)

            while true do
                local v911

                v910, v911 = v908(v909, v910)

                if v910 == nil then
                end
                if not v911:FindFirstChild('Engine') then
                end

                local _CFrame5 = v911.Engine.CFrame

                task.wait()

                local _Position6 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

                if (_CFrame5.Position - _Position6).Magnitude > 5 then
                    topos(_CFrame5)
                end

                getgenv().SeaSkill = (_CFrame5.Position - _Position6).Magnitude <= 50
                Skillaimbot = true
                AimBotSkillPosition = _CFrame5.Position + Vector3.new(0, -15, 0)

                if v911.Parent and (v911.Health >= 0 and getgenv().RelzFishBoat) then
                end

                Skillaimbot = false
                getgenv().SeaSkill = false
            end

            StartBring = true

            task.wait()
            AutoHaki()
            EquipWeapon(getgenv().SelectWeapon)

            local _Position7 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

            if (v916.HumanoidRootPart.Position - _Position7).Magnitude > 5 then
                topos(v916.HumanoidRootPart.CFrame * Pos)
            end

            getgenv().SeaSkill = false

            if getgenv().AutoKillFishCrew and (v916.Parent and v916.Humanoid.Health > 0) then
            else
            end

            StartBring = false

            local v915, v916 = v917(v918, v915)

            if v915 == nil then
            end
            if v916.Name ~= 'Fish Crew Member' or (not v916:FindFirstChild('Humanoid') or (not v916:FindFirstChild('HumanoidRootPart') or v916.Humanoid.Health <= 0)) then
            else
            end

            local v917, v918

            v917, v918, v915 = pairs(v907)
        end)
    end
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if not getgenv().SailBoat then
                return
            end

            local v919 = game:GetService('Workspace').Enemies:GetChildren()

            if getgenv().AutoKillFishCrew then
                local v920, v921, v922 = pairs(v919)

                while true do
                    local v923

                    v922, v923 = v920(v921, v922)

                    if v922 == nil then
                        break
                    end
                    if v923.Name == 'Fish Crew Member' and (v923:FindFirstChild('Humanoid') and (v923:FindFirstChild('HumanoidRootPart') and v923.Humanoid.Health > 0)) then
                        getgenv().StartMagnet = true

                        repeat
                            task.wait()
                            AutoHaki()
                            EquipWeapon(getgenv().SelectWeapon)
                            topos(v923.HumanoidRootPart.CFrame * Pos)

                            getgenv().SeaSkill = false
                        until not getgenv().AutoKillFishCrew or (not v923.Parent or v923.Humanoid.Health <= 0)

                        getgenv().StartMagnet = false
                    end
                end
            end
            if not getgenv().RelzFishBoat then
                return
            end

            local v924, v925, v926 = pairs(v919)
            local _CFrame6 = v928.Engine.CFrame

            Skillaimbot = false
            getgenv().SeaSkill = false

            local v928

            v926, v928 = v924(v925, v926)

            if v926 == nil then
            end
            if v928:FindFirstChild('Engine') then
            else
            end

            task.wait()

            local _Position8 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

            getgenv().SeaSkill = (_CFrame6.Position - _Position8).Magnitude <= 50

            if (_CFrame6.Position - _Position8).Magnitude > 5 then
                topos(_CFrame6)
            end

            Skillaimbot = true
            AimBotSkillPosition = _CFrame6.Position + Vector3.new(0, -15, 0)

            if v928.Parent and (v928.Health >= 0 and getgenv().RelzFishBoat) then
            else
            end
        end)
    end
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Shark',
    Default = false,
}):OnChanged(function(p930)
    getgenv().AutoKillShark = p930

    StopTween(getgenv().AutoKillShark)
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Piranha',
    Default = false,
}):OnChanged(function(p931)
    getgenv().AutoKillPiranha = p931

    StopTween(getgenv().AutoKillPiranha)
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Fish Crew',
    Default = false,
}):OnChanged(function(p932)
    getgenv().AutoKillFishCrew = p932

    StopTween(getgenv().AutoKillFishCrew)
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            local _LocalPlayer30 = game.Players.LocalPlayer

            if _LocalPlayer30 then
                _LocalPlayer30 = _LocalPlayer30.Character
            end

            local v934

            if _LocalPlayer30 then
                v934 = _LocalPlayer30:FindFirstChild('HumanoidRootPart')
            else
                v934 = _LocalPlayer30
            end
            if not v934 then
                return
            end

            local v935 = game:GetService('Workspace').Enemies:GetChildren()

            if getgenv().AutoKillShark and World3 then
                local v936, v937, v938 = pairs(v935)

                while true do
                    local v939

                    v938, v939 = v936(v937, v938)

                    if v938 == nil then
                        break
                    end
                    if v939.Name == 'Shark' and (v939:FindFirstChild('Humanoid') and (v939:FindFirstChild('HumanoidRootPart') and (v939.Humanoid.Health > 0 and (v939.HumanoidRootPart.Position - v934.Position).Magnitude <= 500))) then
                        EquipWeapon(getgenv().SelectWeapon)

                        repeat
                            task.wait(0.1)
                            AutoHaki()
                            EquipWeapon(getgenv().SelectWeapon)

                            v939.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v939.HumanoidRootPart.CanCollide = false

                            topos(v939.HumanoidRootPart.CFrame * Pos)
                        until not getgenv().AutoKillShark or (not v939.Parent or v939.Humanoid.Health <= 0)
                    end
                end
            end
            if getgenv().AutoKillPiranha and World3 then
                local v940, v941, v942 = pairs(v935)

                while true do
                    local v943

                    v942, v943 = v940(v941, v942)

                    if v942 == nil then
                        break
                    end
                    if v943.Name == 'Piranha' and (v943:FindFirstChild('Humanoid') and (v943:FindFirstChild('HumanoidRootPart') and (v943.Humanoid.Health > 0 and (v943.HumanoidRootPart.Position - v934.Position).Magnitude <= 500))) then
                        EquipWeapon(getgenv().SelectWeapon)

                        repeat
                            task.wait(0.1)
                            AutoHaki()
                            EquipWeapon(getgenv().SelectWeapon)

                            v943.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v943.HumanoidRootPart.CanCollide = false

                            topos(v943.HumanoidRootPart.CFrame * Pos)
                        until not getgenv().AutoKillPiranha or (not v943.Parent or v943.Humanoid.Health <= 0)
                    end
                end
            end
            if getgenv().AutoKillFishCrew and World3 then
                local v944, v945, v946 = pairs(v935)

                while true do
                    local v947

                    v946, v947 = v944(v945, v946)

                    if v946 == nil then
                        break
                    end
                    if v947.Name == 'Fish Crew Member' and (v947:FindFirstChild('Humanoid') and (v947:FindFirstChild('HumanoidRootPart') and (v947.Humanoid.Health > 0 and (v947.HumanoidRootPart.Position - v934.Position).Magnitude <= 500))) then
                        EquipWeapon(getgenv().SelectWeapon)

                        repeat
                            task.wait(0.1)
                            AutoHaki()
                            EquipWeapon(getgenv().SelectWeapon)

                            v947.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v947.HumanoidRootPart.CanCollide = false

                            topos(v947.HumanoidRootPart.CFrame * Pos)

                            MonFarm = v947.Name
                            PosMon = v947.HumanoidRootPart.CFrame
                        until not getgenv().AutoKillFishCrew or (not v947.Parent or v947.Humanoid.Health <= 0)
                    end
                end
            end
            if not (getgenv().AutoTerrorshark and World3) then
                return
            end

            local v948, v949, v950 = pairs(v935)
            local v951

            v950, v951 = v948(v949, v950)

            if v950 == nil then
            end
            if v951.Name ~= 'Terrorshark' or (not v951:FindFirstChild('Humanoid') or (not v951:FindFirstChild('HumanoidRootPart') or v951.Humanoid.Health <= 0)) then
            end

            EquipWeapon(getgenv().SelectWeapon)

            if true then
                task.wait(0.1)
                AutoHaki()
                EquipWeapon(getgenv().SelectWeapon)

                v951.HumanoidRootPart.CanCollide = false
                v951.Humanoid.WalkSpeed = 0
                v951.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                if _LocalPlayer30.Humanoid.Health >= 2000 then
                    topos(v951.HumanoidRootPart.CFrame * CFrame.new(0, 55, 0))
                else
                    fastpos(v951.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0))
                    task.wait(1)
                end
            end

            TerrorSharkpos = v951.HumanoidRootPart.CFrame

            if getgenv().AutoTerrorshark and (v951.Parent and v951.Humanoid.Health > 0) then
            else
            end
        end)
    end
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if getgenv().AutoTerrorshark then
                local _LocalPlayer31 = game.Players.LocalPlayer

                if _LocalPlayer31 then
                    _LocalPlayer31 = _LocalPlayer31.Character
                end
                if _LocalPlayer31 then
                    _LocalPlayer31 = _LocalPlayer31:FindFirstChild('HumanoidRootPart')
                end
                if not _LocalPlayer31 then
                    return
                end

                local _Terrorshark = game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark')

                if _Terrorshark and (_Terrorshark:FindFirstChild('HumanoidRootPart') and (_Terrorshark.HumanoidRootPart.Position - _LocalPlayer31.Position).Magnitude <= 150) then
                    repeat
                        task.wait()
                    until not getgenv().AutoTerrorshark
                end
            end
        end)
    end
end)

function UpDownPos(p954)
    if typeof(p954) == 'CFrame' then
        fastpos(p954 * CFrame.new(0, 40, 0))
        task.wait(1)
        fastpos(p954 * CFrame.new(0, 300, 0))
        task.wait(2)
    end
end

Sea:AddToggle('Toggle', {
    Title = 'Auto Ghost Ship',
    Default = false,
}):OnChanged(function(p955)
    getgenv().RelzFishBoat = p955

    StopTween(getgenv().RelzFishBoat)

    if not getgenv().RelzFishBoat then
        getgenv().SeaSkill = false
        Skillaimbot = false
    end
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Pirate Brigade',
    Default = false,
}):OnChanged(function(p956)
    getgenv().RelzPirateBrigade = p956

    StopTween(getgenv().RelzPirateBrigade)
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Pirate Grand Brigade',
    Default = false,
}):OnChanged(function(p957)
    getgenv().RelzPirateGrandBrigade = p957

    StopTween(getgenv().RelzPirateGrandBrigade)
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if not getgenv().RelzFishBoat then
                return
            end

            local v958, v959, v960 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            while true do
                local v961

                v960, v961 = v958(v959, v960)

                if v960 == nil then
                    return
                end
                if v961.Name == 'FishBoat' and v961:FindFirstChild('Engine') then
                    repeat
                        task.wait(0.1)

                        local v962 = v961.Engine.CFrame * CFrame.new(0, 10, 0)
                        local _LocalPlayer32 = game.Players.LocalPlayer

                        if _LocalPlayer32 then
                            _LocalPlayer32 = _LocalPlayer32.Character
                        end
                        if _LocalPlayer32 then
                            _LocalPlayer32 = _LocalPlayer32:FindFirstChild('HumanoidRootPart')
                        end
                        if _LocalPlayer32 and (v961.Engine.Position - _LocalPlayer32.Position).Magnitude <= 50 then
                            getgenv().SeaSkill = true
                        else
                            getgenv().SeaSkill = false
                        end
                        if _LocalPlayer32 and (_LocalPlayer32.Position - v962.Position).Magnitude > 2 then
                            topos(v962)
                        end

                        Skillaimbot = true
                        AimBotSkillPosition = v961.Engine.Position
                    until not v961.Parent or v961.Health.Value <= 0 or not (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and (v961:FindFirstChild('Engine') and getgenv().RelzFishBoat))

                    Skillaimbot = false
                    getgenv().SeaSkill = false
                end
            end
        end)
    end
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Terror Shark',
    Default = false,
}):OnChanged(function(p964)
    getgenv().AutoTerrorshark = p964

    StopTween(getgenv().AutoTerrorshark)
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Sea Beast',
    Default = false,
}):OnChanged(function(p965)
    getgenv().AutoSeaBest = p965

    StopTween(getgenv().AutoSeaBest)

    if not getgenv().AutoSeaBest then
        getgenv().SeaSkill = false
        Skillaimbot = false
    end
end)

function CheckSeaBeast()
    local _SeaBeasts = game:GetService('Workspace'):FindFirstChild('SeaBeasts')

    if not _SeaBeasts then
        return false
    end

    local v967, v968, v969 = ipairs(_SeaBeasts:GetChildren())

    while true do
        local v970

        v969, v970 = v967(v968, v969)

        if v969 == nil then
            break
        end

        local _Humanoid12 = v970:FindFirstChild('Humanoid')

        if _Humanoid12 and (v970:FindFirstChild('HumanoidRootPart') and _Humanoid12.Health > 0) then
            return true
        end
    end

    return false
end

task.spawn(function()
    while task.wait(0.5) do
        if getgenv().AutoSeaBest then
            pcall(function()
                local _Workspace5 = game:GetService('Workspace')
                local _LocalPlayer33 = game.Players.LocalPlayer

                if not _Workspace5:FindFirstChild('SeaBeasts') then
                    return
                end

                local v974, v975, v976 = pairs(_Workspace5.SeaBeasts:GetChildren())

                Skillaimbot = false
                getgenv().SeaSkill = false

                local v977

                v976, v977 = v974(v975, v976)

                if v976 == nil then
                end
                if not CheckSeaBeast() then
                end
                if true then
                    wait()

                    CFrameSeaBeast = v977.HumanoidRootPart.CFrame * CFrame.new(0, 400, 0)

                    if (CFrameSeaBeast.Position - _LocalPlayer33.Character.HumanoidRootPart.CFrame.Position).Magnitude > 50 then
                        getgenv().SeaSkill = false
                    else
                        getgenv().SeaSkill = true
                    end
                end

                Skillaimbot = true
                AimBotSkillPosition = v977.HumanoidRootPart.CFrame.Position

                topos(CFrameSeaBeast)

                if getgenv().AutoSeaBest and (v977:FindFirstChild('Humanoid') and (v977:FindFirstChild('HumanoidRootPart') and (v977.Humanoid.Health >= 0 and v977.Parent))) then
                else
                end
            end)
        end
    end
end)

local function u980(p978, p979)
    game:service('VirtualInputManager'):SendKeyEvent(true, p978, false, game)
    task.wait(p979)
    game:service('VirtualInputManager'):SendKeyEvent(false, p978, false, game)
end

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if getgenv().SeaSkill then
                local _LocalPlayer34 = game.Players.LocalPlayer
                local _Backpack10 = _LocalPlayer34.Backpack

                if getgenv().UseSeaFruitSkill and not DoneSkillFruit then
                    local v983, v984, v985 = pairs(_Backpack10:GetChildren())

                    while true do
                        local v986

                        v985, v986 = v983(v984, v985)

                        if v985 == nil then
                            break
                        end
                        if v986:IsA('Tool') and v986.ToolTip == 'Blox Fruit' then
                            _LocalPlayer34.Character.Humanoid:EquipTool(v986)
                        end
                    end

                    if getgenv().SkillFruitZ then
                        u980('Z', getgenv().SeaHoldSKillZ)
                    end
                    if getgenv().SkillFruitX then
                        u980('X', getgenv().SeaHoldSKillX)
                    end
                    if getgenv().SkillFruitC then
                        u980('C', getgenv().SeaHoldSKillC)
                    end
                    if getgenv().SkillFruitV then
                        u980('V', getgenv().SeaHoldSKillV)
                    end
                    if getgenv().SkillFruitF then
                        u980('F', getgenv().SeaHoldSKillF)
                    end

                    DoneSkillFruit = true
                end
                if getgenv().UseSeaMeleeSkill and not DoneSkillMelee then
                    local v987, v988, v989 = pairs(_Backpack10:GetChildren())

                    while true do
                        local v990

                        v989, v990 = v987(v988, v989)

                        if v989 == nil then
                            break
                        end
                        if v990:IsA('Tool') and v990.ToolTip == 'Melee' then
                            _LocalPlayer34.Character.Humanoid:EquipTool(v990)
                        end
                    end

                    if getgenv().SkillMeleeZ then
                        u980('Z', 0)
                    end
                    if getgenv().SkillMeleeX then
                        u980('X', 0)
                    end
                    if getgenv().SkillMeleeC then
                        u980('C', 0)
                    end

                    DoneSkillMelee = true
                end
                if getgenv().UseSeaSwordSkill and not DoneSkillSword then
                    local v991, v992, v993 = pairs(_Backpack10:GetChildren())

                    while true do
                        local v994

                        v993, v994 = v991(v992, v993)

                        if v993 == nil then
                            break
                        end
                        if v994:IsA('Tool') and v994.ToolTip == 'Sword' then
                            _LocalPlayer34.Character.Humanoid:EquipTool(v994)
                        end
                    end

                    if getgenv().SkillSwordZ then
                        u980('Z', 0)
                    end
                    if getgenv().SkillSwordX then
                        u980('X', 0)
                    end

                    DoneSkillSword = true
                end
                if getgenv().UseSeaGunSkill and not DoneSkillGun then
                    local v995, v996, v997 = pairs(_Backpack10:GetChildren())

                    while true do
                        local v998

                        v997, v998 = v995(v996, v997)

                        if v997 == nil then
                            break
                        end
                        if v998:IsA('Tool') and v998.ToolTip == 'Gun' then
                            _LocalPlayer34.Character.Humanoid:EquipTool(v998)
                        end
                    end

                    if getgenv().SkillGunZ then
                        u980('Z', 0.1)
                    end
                    if getgenv().SkillGunX then
                        u980('X', 0.1)
                    end

                    DoneSkillGun = true
                end

                task.wait(0.5)

                DoneSkillMelee = false
                DoneSkillFruit = false
                DoneSkillSword = false
                DoneSkillGun = false
            end
        end)
    end
end)
Sea:AddParagraph({
    Title = 'Kitsune Event',
    Content = string.rep('-', 21),
})
Sea:AddToggle('Toggle', {
    Title = 'Teleport To Kitsune Island',
    Default = false,
}):OnChanged(function(p999)
    getgenv().TweenToKitsune = p999

    StopTween(getgenv().TweenToKitsune)
end)
spawn(function()
    while wait() do
        local v1000 = getgenv().TweenToKitsune and game:GetService('Workspace').Map:FindFirstChild('KitsuneIsland')

        if v1000 then
            local _NeonShrinePart = v1000.ShrineActive.NeonShrinePart

            topos(_NeonShrinePart.CFrame * CFrame.new(0, 0, 10))
        end
    end
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Summon Soul EmBer',
    Default = false,
}):OnChanged(function(p1002)
    getgenv().SummonKitsume = p1002
end)
spawn(function()
    while task.wait(0.6) do
        if getgenv().SummonKitsume and World3 then
            pcall(function()
                local _ReplicatedStorage8 = game:GetService('ReplicatedStorage')
                local _Modules = _ReplicatedStorage8:FindFirstChild('Modules')

                if _Modules then
                    _Modules = _ReplicatedStorage8.Modules:FindFirstChild('Net')
                end
                if _Modules then
                    _Modules = _Modules:FindFirstChild('RF/KitsuneStatuePray')
                end
                if _Modules then
                    _Modules:InvokeServer()
                end
            end)
        end
    end
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Collect Azure Wisp',
    Default = false,
}):OnChanged(function(p1005)
    getgenv().CollectAzure = p1005

    StopTween(getgenv().CollectAzure)
end)
task.spawn(function()
    while task.wait(1) do
        if getgenv().CollectAzure then
            pcall(function()
                local _AttachedAzureEmber = game:GetService('Workspace'):FindFirstChild('AttachedAzureEmber')
                local _EmberTemplate = game:GetService('Workspace'):FindFirstChild('EmberTemplate')

                if _AttachedAzureEmber and _EmberTemplate then
                    local _Part = _EmberTemplate:FindFirstChild('Part')

                    if _Part and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - _Part.Position).Magnitude > 10 then
                        fastpos(_Part.CFrame)
                    end
                end
            end)
        end
    end
end)

Slider = Sea:AddSlider('Slider', {
    Title = 'Set Azure Ember',
    Default = 20,
    Min = 0,
    Max = 25,
    Rounding = 5,
    Callback = function(p1009)
        getgenv().SetToTradeAureEmber = p1009
    end,
})

Sea:AddToggle('Toggle', {
    Title = 'Auto Trade Azure Ember',
    Default = false,
    Callback = function(p1010)
        getgenv().TradeAureEmber = p1010
    end,
})

function GetCountMaterials(p1011)
    local _getInventory = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory')
    local v1013, v1014, v1015 = pairs(_getInventory)

    while true do
        local v1016

        v1015, v1016 = v1013(v1014, v1015)

        if v1015 == nil then
            break
        end
        if v1016.Name == p1011 then
            return v1016.Count
        end
    end

    return 0
end

task.spawn(function()
    while task.wait(3) do
        if getgenv().TradeAureEmber then
            pcall(function()
                if GetCountMaterials('Azure Ember') >= getgenv().SetToTradeAureEmber then
                    game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/KitsuneStatuePray'):InvokeServer()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KitsuneStatuePray')
                    task.wait(5)
                end
            end)
        end
    end
end)
Sea:AddButton({
    Title = 'Trade Azure Wisp',
    Callback = function()
        game:GetService('ReplicatedStorage'):WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RF/KitsuneStatuePray'):InvokeServer()
    end,
})
Sea:AddParagraph({
    Title = 'Leviathan Event',
    Content = string.rep('-', 21),
})
Sea:AddButton({
    Title = 'Buy Spy',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('InfoLeviathan', '2')
    end,
})
Sea:AddToggle('Toggle', {
    Title = 'Teleport To Frozen Dimension',
    Default = false,
}):OnChanged(function(p1017)
    getgenv().AutoFrozenDimension = p1017
end)
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            local v1018 = getgenv().AutoFrozenDimension and World3 and game:GetService('Workspace').Map:FindFirstChild('FrozenDimension')

            if v1018 then
                local _Position9 = v1018.Center.Position

                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(_Position9.X, 500, _Position9.Z)).Magnitude > 10 then
                    topos(CFrame.new(_Position9.X, 500, _Position9.Z))
                end
            end
        end)
    end
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Attack Leviathan',
    Default = false,
}):OnChanged(function(p1020)
    getgenv().KillLevi = p1020
end)
task.spawn(function()
    while task.wait(0.5) do
        if getgenv().KillLevi and World3 then
            pcall(function()
                local v1021, v1022, v1023 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

                while true do
                    local v1024

                    v1023, v1024 = v1021(v1022, v1023)

                    if v1023 == nil then
                        return
                    end
                    if v1024.Name == 'Leviathan' and v1024:FindFirstChild('HumanoidRootPart') then
                    end
                end

                task.wait(0.2)

                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1024.HumanoidRootPart.Position).Magnitude > 10 then
                    topos(v1024.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                end
                if not getgenv().SeaSkill then
                    getgenv().SeaSkill = true
                end
                if not IsHakiActive() then
                    AutoHaki()
                end

                AimBotSkillPosition = v1024.HumanoidRootPart
                Skillaimbot = true

                if v1024:FindFirstChild('HumanoidRootPart') and getgenv().KillLevi then
                else
                end

                getgenv().SeaSkill = false
                Skillaimbot = false
            end)
        end
    end
end)

ChooseSkill = Window:AddTab({
    Title = 'Tab Setting Select Skill',
    Icon = '',
})

ChooseSkill:AddParagraph({
    Title = 'Setting Sea Event',
    Content = string.rep('-', 21),
})
ChooseSkill:AddParagraph({
    Title = 'Activating Skill Event,\nAnd Skill Leviathan Flawless Fusion',
})
ChooseSkill:AddToggle('Toggle', {
    Title = 'Select Use Fruit',
    Default = true,
}):OnChanged(function(p1025)
    getgenv().UseSeaFruitSkill = p1025
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Select Use Melee',
    Default = true,
}):OnChanged(function(p1026)
    getgenv().UseSeaMeleeSkill = p1026
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Select Use Sword',
    Default = true,
}):OnChanged(function(p1027)
    getgenv().UseSeaSwordSkill = p1027
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Select Use Gun',
    Default = true,
}):OnChanged(function(p1028)
    getgenv().UseSeaGunSkill = p1028
end)
ChooseSkill:AddParagraph({
    Title = 'Activate Weapon Farm Event,\nClick to Activate',
})
ChooseSkill:AddParagraph({
    Title = 'Setting Skill Fruit',
    Content = string.rep('-', 21),
})
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Fruit Z',
    Default = true,
}):OnChanged(function(p1029)
    getgenv().SkillFruitZ = p1029
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Fruit X',
    Default = true,
}):OnChanged(function(p1030)
    getgenv().SkillFruitX = p1030
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Fruit C',
    Default = true,
}):OnChanged(function(p1031)
    getgenv().SkillFruitC = p1031
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Fruit V',
    Default = false,
}):OnChanged(function(p1032)
    getgenv().SkillFruitV = p1032
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Fruit F',
    Default = false,
}):OnChanged(function(p1033)
    getgenv().SkillFruitF = p1033
end)
ChooseSkill:AddParagraph({
    Title = 'Use To Enable Skill Fruit,\nPlease Select Correct',
})
ChooseSkill:AddParagraph({
    Title = 'Setting Skill Melee',
    Content = string.rep('-', 21),
})
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Melee Z',
    Default = true,
}):OnChanged(function(p1034)
    getgenv().SkillMeleeZ = p1034
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Melee X',
    Default = true,
}):OnChanged(function(p1035)
    getgenv().SkillMeleeX = p1035
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Melee C',
    Default = true,
}):OnChanged(function(p1036)
    getgenv().SkillMeleeC = p1036
end)
ChooseSkill:AddParagraph({
    Title = 'Use To Enable Skill Melee,\nPlease Select Correct',
})
ChooseSkill:AddParagraph({
    Title = 'Setting Skill Sword And Gun',
    Content = string.rep('-', 21),
})
ChooseSkill:AddToggle('Toggle', {
    Title = 'Sword And Gun Skill Z',
    Default = true,
}):OnChanged(function(p1037)
    getgenv().SkillSwordZ = p1037
    getgenv().SkillGunZ = p1037
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Sword And Gun Skill X',
    Default = true,
}):OnChanged(function(p1038)
    getgenv().SkillSwordX = p1038
    getgenv().SkillGunX = p1038
end)
ChooseSkill:AddParagraph({
    Title = 'Use To Enable Skill Sword and Gun,\nPlease Select Correct',
})

local v1039 = getrawmetatable(game)
local ___namecall = v1039.__namecall

setreadonly(v1039, false)

v1039.__namecall = newcclosure(function(...)
    local v1041 = getnamecallmethod()
    local v1042 = {...}

    if tostring(v1041) ~= 'FireServer' or (tostring(v1042[1]) ~= 'RemoteEvent' or (tostring(v1042[2]) == 'true' or (tostring(v1042[2]) == 'false' or not Skillaimbot))) then
        return ___namecall(...)
    end

    v1042[2] = AimBotSkillPosition

    return ___namecall(unpack(v1042))
end)

local function u1045(p1043, p1044)
    game:service('VirtualInputManager'):SendKeyEvent(true, p1043, false, game)
    wait(p1044 or 0.1)
    game:service('VirtualInputManager'):SendKeyEvent(false, p1043, false, game)
end

task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if u980 then
                local v1046, v1047, v1048 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v1049

                    v1048, v1049 = v1046(v1047, v1048)

                    if v1048 == nil then
                        break
                    end
                    if v1049.Name == MonFarm and (v1049:FindFirstChild('Humanoid') and (v1049:FindFirstChild('HumanoidRootPart') and v1049.Humanoid.Health <= v1049.Humanoid.MaxHealth * getgenv().Kill_At / 100)) then
                        if getgenv().SkillZ then
                            u1045('Z', getgenv().HoldSKillZ)
                        end
                        if getgenv().SkillX then
                            u1045('X', getgenv().HoldSKillX)
                        end
                        if getgenv().SkillC then
                            u1045('C', getgenv().HoldSKillC)
                        end
                    end
                end
            end
        end)
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if UseGunSkill then
                local v1050, v1051, v1052 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v1053

                    v1052, v1053 = v1050(v1051, v1052)

                    if v1052 == nil then
                        break
                    end
                    if v1053.Name == MonFarm and (v1053:FindFirstChild('Humanoid') and (v1053:FindFirstChild('HumanoidRootPart') and (v1053.Humanoid.Health <= v1053.Humanoid.MaxHealth * getgenv().Kill_At / 100 and getgenv().SkillZ))) then
                        u1045('Z', 0.1)
                    end
                end
            end
        end)
    end
end)

Volcanic = Window:AddTab({
    Title = 'Tab Volcanic Event',
    Icon = '',
})

Volcanic:AddButton({
    Title = 'Destroy Lava In Prehistoric Island',
    Callback = function()
        local v1054, v1055, v1056 = pairs(game.Workspace:GetDescendants())

        while true do
            local v1057

            v1056, v1057 = v1054(v1055, v1056)

            if v1056 == nil then
                break
            end
            if v1057.Name == 'Lava' then
                v1057:Destroy()
            end
        end

        local v1058, v1059, v1060 = pairs(game.ReplicatedStorage:GetDescendants())

        while true do
            local v1061

            v1060, v1061 = v1058(v1059, v1060)

            if v1060 == nil then
                break
            end
            if v1061.Name == 'Lava' then
                v1061:Destroy()
            end
        end
    end,
})
Volcanic:AddButton({
    Title = 'Crafting Volcanic Magnet',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CraftItem',
            'Craft',
            'Volcanic Magnet',
        }))
    end,
})
Volcanic:AddToggle('MyToggle', {
    Title = 'Teleport Prehistoric Island',
    Default = false,
}):OnChanged(function(p1062)
    getgenv().TweenPrehistoric = p1062
end)
spawn(function()
    local v1063 = nil

    while not v1063 do
        v1063 = game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        wait()
    end
    while wait() do
        local v1064 = getgenv().TweenPrehistoric and World3 and game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        if v1064 then
            local _Core2 = v1064:FindFirstChild('Core')

            if _Core2 then
                _Core2 = v1064.Core:FindFirstChild('PrehistoricRelic')
            end
            if _Core2 then
                _Core2 = _Core2:FindFirstChild('Skull')
            end
            if _Core2 then
                topos(CFrame.new(_Core2.Position))

                getgenv().TweenPrehistoric = false
            end
        end
    end
end)
Volcanic:AddToggle('Toggle', {
    Title = 'Auto Event Volcano Island Defense',
    Default = false,
}):OnChanged(function(p1066)
    getgenv().AutoDefendVolcano = p1066
end)

local function u1068(p1067)
    game:GetService('VirtualInputManager'):SendKeyEvent(true, p1067, false, game)
    wait(0.1)
    game:GetService('VirtualInputManager'):SendKeyEvent(false, p1067, false, game)
end
local function u1075()
    pcall(function()
        local _InteriorLava = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild('InteriorLava')

        if _InteriorLava and _InteriorLava:IsA('Model') then
            _InteriorLava:Destroy()
        end

        local _PrehistoricIsland = game.Workspace.Map:FindFirstChild('PrehistoricIsland')

        if _PrehistoricIsland then
            local v1071, v1072, v1073 = pairs(_PrehistoricIsland:GetDescendants())

            while true do
                local v1074

                v1073, v1074 = v1071(v1072, v1073)

                if v1073 == nil then
                    break
                end
                if v1074:IsA('Part') and v1074.Name:lower():find('lava') then
                    v1074:Destroy()
                end
                if v1074:IsA('MeshPart') and v1074.Name:lower():find('lava') then
                    v1074:Destroy()
                end
            end
        end
    end)
end
local function u1083()
    local _VolcanoRocks = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild('VolcanoRocks')

    if not _VolcanoRocks then
        return nil
    end

    local v1077, v1078, v1079 = pairs(_VolcanoRocks:GetChildren())

    while true do
        local v1080

        v1079, v1080 = v1077(v1078, v1079)

        if v1079 == nil then
            break
        end
        if v1080:IsA('Model') then
            local _volcanorock = v1080:FindFirstChild('volcanorock')

            if _volcanorock and _volcanorock:IsA('MeshPart') then
                local _Color = _volcanorock.Color

                if _Color == Color3.fromRGB(185, 53, 56) or _Color == Color3.fromRGB(185, 53, 57) then
                    return _volcanorock
                end
            end
        end
    end

    return nil
end
local function u1095(p1084)
    local _LocalPlayer35 = game.Players.LocalPlayer
    local _Backpack11 = _LocalPlayer35:FindFirstChild('Backpack')

    if not _Backpack11 then
        return
    end

    local v1087, v1088, v1089 = pairs(_Backpack11:GetChildren())

    while true do
        local v1090

        v1089, v1090 = v1087(v1088, v1089)

        if v1089 == nil then
            break
        end
        if v1090:IsA('Tool') and v1090.ToolTip == p1084 then
            v1090.Parent = _LocalPlayer35.Character

            local v1091, v1092, v1093 = ipairs({
                'Z',
                'X',
                'C',
                'V',
                'F',
            })

            while true do
                local u1094

                v1093, u1094 = v1091(v1092, v1093)

                if v1093 == nil then
                    break
                end

                wait(0.1)
                pcall(function()
                    u1068(u1094)
                end)
            end

            v1090.Parent = _Backpack11

            break
        end
    end
end

spawn(function()
    while wait(0.1) do
        if getgenv().AutoDefendVolcano then
            if typeof(AutoHaki) == 'function' then
                AutoHaki()
            end

            u1075()

            local v1096 = u1083()

            if v1096 then
                local v1097 = CFrame.new(v1096.Position)

                if typeof(topos) == 'function' then
                    topos(v1097)
                end
                if v1096.Color == Color3.fromRGB(185, 53, 56) or v1096.Color == Color3.fromRGB(185, 53, 57) then
                    local _Character18 = game.Players.LocalPlayer.Character

                    if _Character18 then
                        _Character18 = _Character18:FindFirstChild('HumanoidRootPart')
                    end
                    if _Character18 and (_Character18.Position - v1096.Position).Magnitude <= 1 then
                        if getgenv().UseMelee then
                            u1095('Melee')
                        end
                        if getgenv().UseSword then
                            u1095('Sword')
                        end
                        if getgenv().UseGun then
                            u1095('Gun')
                        end
                    end

                    getgenv().TweenToPrehistoric = false
                else
                    u1083()
                end
            else
                getgenv().TweenToPrehistoric = true
            end
        end
    end
end)
Volcanic:AddToggle('Toggle', {
    Title = 'Auto Kill Aura Golems',
    Default = false,
}):OnChanged(function(p1099)
    getgenv().KillAura = p1099
end)
spawn(function()
    while wait(0.1) do
        if getgenv().KillAura then
            pcall(function()
                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)

                local v1100, v1101, v1102 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v1103

                    v1102, v1103 = v1100(v1101, v1102)

                    if v1102 == nil then
                        break
                    end

                    local _Humanoid13 = v1103:FindFirstChild('Humanoid')
                    local _HumanoidRootPart15 = v1103:FindFirstChild('HumanoidRootPart')

                    if _Humanoid13 and (_HumanoidRootPart15 and _Humanoid13.Health > 0) then
                        _Humanoid13.Health = 0
                        _HumanoidRootPart15.CanCollide = false
                    end
                end
            end)
        end
    end
end)
Volcanic:AddToggle('Toggle', {
    Title = 'Auto Collect Bone',
    Default = false,
}):OnChanged(function(p1106)
    getgenv().CollectBone = p1106
end)
spawn(function()
    repeat
        if not wait(0.1) then
            return
        end
    until getgenv().AutoCollectBone and World3

    local v1107, v1108, v1109 = ipairs(workspace:GetDescendants())
    local v1110 = {}

    while true do
        local v1111

        v1109, v1111 = v1107(v1108, v1109)

        if v1109 == nil then
            break
        end
        if v1111:IsA('BasePart') and v1111.Name == 'DinoBone' then
            table.insert(v1110, v1111)
        end
    end

    local v1112, v1113, v1114 = ipairs(v1110)

    topos(CFrame.new(v1116.Position))
    wait(0.2)

    local v1115 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

    if v1115 then
        v1115 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end
    if v1115 and (v1115 - v1116.Position).Magnitude > 1 then
    end

    local v1116

    v1114, v1116 = v1112(v1113, v1114)

    if v1114 == nil then
    end
    if typeof(topos) ~= 'function' then
    else
    end
end)
Volcanic:AddToggle('Toggle', {
    Title = 'Auto Collect Egg',
    Default = false,
}):OnChanged(function(p1117)
    getgenv().CollectEgg = p1117
end)
spawn(function()
    repeat
        repeat
            repeat
                if not wait(0.1) then
                    return
                end
            until getgenv().CollectEgg and World3 and (workspace:FindFirstChild('Map') and (workspace.Map:FindFirstChild('PrehistoricIsland') and workspace.Map.PrehistoricIsland.Core:FindFirstChild('SpawnedDragonEggs')))

            local v1118 = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren()
        until #v1118 > 0

        local v1119 = v1118[math.random(1, #v1118)]
    until v1119:IsA('Model') and (v1119.PrimaryPart and typeof(topos) == 'function')

    topos(v1119.PrimaryPart.CFrame)
    wait(0.2)

    local v1120 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

    if v1120 then
        v1120 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end
    if v1120 and (v1120 - v1119.PrimaryPart.Position).Magnitude > 1 then
    else
    end

    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
    wait(1)
    game:GetService('VirtualInputManager'):SendKeyEvent(false, 'E', false, game)
end)
Volcanic:AddParagraph({
    Title = 'Setting Skill Volcano Island',
    Content = string.rep('-', 21),
})
Volcanic:AddToggle('Toggle', {
    Title = 'Auto Use Skill Melee',
    Default = false,
}):OnChanged(function(p1121)
    getgenv().UseMelee = p1121
end)
Volcanic:AddToggle('Toggle', {
    Title = 'Auto Use Skill Sword',
    Default = false,
}):OnChanged(function(p1122)
    getgenv().UseSword = p1122
end)
Volcanic:AddToggle('Toggle', {
    Title = 'Auto Use Skill Gun',
    Default = false,
}):OnChanged(function(p1123)
    getgenv().UseGun = p1123
end)

Race = Window:AddTab({
    Title = 'Tab Upgrade Race',
    Icon = '',
})

Race:AddParagraph({
    Title = 'Race Draco',
    Content = string.rep('-', 21),
})
game:GetService('RunService')
Race:AddToggle('Toggle', {
    Title = 'Teleport To The Draco Clan Trial Door',
    Default = false,
}):OnChanged(function(p1124)
    getgenv().TrialTeleportDraco = p1124
end)

local function u1126(p1125)
    if topos and typeof(p1125) == 'CFrame' then
        topos(p1125)
    end
end

spawn(function()
    local _PrehistoricIsland2 = workspace:WaitForChild('Map'):FindFirstChild('PrehistoricIsland')

    if _PrehistoricIsland2 then
        _PrehistoricIsland2 = _PrehistoricIsland2:FindFirstChild('TrialTeleport')
    end

    while task.wait(0.5) do
        if getgenv().TrialTeleportDraco and (_PrehistoricIsland2 and _PrehistoricIsland2:IsA('Part')) then
            u1126(CFrame.new(_PrehistoricIsland2.Position))
        end
    end
end)
Race:AddParagraph({
    Title = 'Race Normal',
    Content = string.rep('-', 21),
})
Race:AddToggle('Toggle', {
    Title = 'Auto Upgrade Race V2',
    Default = false,
}):OnChanged(function(p1128)
    getgenv().UpgradeRaceV2 = p1128
end)
spawn(function()
    pcall(function()
        while task.wait(0.2) do
            if getgenv().UpgradeRaceV2 and World2 then
                local _LocalPlayer36 = game:GetService('Players').LocalPlayer
                local _Character19 = _LocalPlayer36.Character

                if _Character19 then
                    _Character19 = _LocalPlayer36.Character:FindFirstChild('HumanoidRootPart')
                end

                local _Backpack12 = _LocalPlayer36.Backpack

                if not _LocalPlayer36.Data.Race:FindFirstChild('Evolved') then
                    local _Alchemist = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1')

                    if _Alchemist == 0 then
                        local v1133 = CFrame.new(-2779.83521, 72.9661407, -3574.02002)

                        if _Character19 and (v1133.Position - _Character19.Position).Magnitude > 4 then
                            topos(v1133)
                        else
                            task.wait(1.1)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '2')
                        end
                    elseif _Alchemist == 1 then
                        if _Backpack12:FindFirstChild('Flower 1') or _LocalPlayer36.Character:FindFirstChild('Flower 1') then
                            if _Backpack12:FindFirstChild('Flower 2') or _LocalPlayer36.Character:FindFirstChild('Flower 2') then
                                if not (_Backpack12:FindFirstChild('Flower 3') or _LocalPlayer36.Character:FindFirstChild('Flower 3')) then
                                    if game:GetService('Workspace').Enemies:FindFirstChild('Zombie') then
                                        local v1134, v1135, v1136 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                        while true do
                                            local v1137

                                            v1136, v1137 = v1134(v1135, v1136)

                                            if v1136 == nil then
                                                break
                                            end
                                            if v1137.Name == 'Zombie' and (v1137:FindFirstChild('HumanoidRootPart') and v1137:FindFirstChild('Humanoid')) then
                                                repeat
                                                    task.wait()
                                                    EquipWeapon(getgenv().SelectWeapon)
                                                    AutoHaki()
                                                    topos(v1137.HumanoidRootPart.CFrame * Pos)

                                                    v1137.HumanoidRootPart.CanCollide = false
                                                    v1137.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                                    game:GetService('VirtualUser'):CaptureController()
                                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                                until _Backpack12:FindFirstChild('Flower 3') or (v1137.Humanoid.Health <= 0 or not (v1137.Parent and getgenv().UpgradeRaceV2))
                                            end
                                        end
                                    else
                                        topos(CFrame.new(-5685.923, 48.48, -853.237))
                                    end
                                end
                            else
                                topos(game:GetService('Workspace').Flower2.CFrame)
                            end
                        else
                            topos(game:GetService('Workspace').Flower1.CFrame)
                        end
                    elseif _Alchemist == 2 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '3')
                    end
                end
            end
        end
    end)
end)
Race:AddToggle('Toggle', {
    Title = 'Auto Get Cyborg',
    Description = 'Buy Chip And Kill Order',
    Default = false,
}):OnChanged(function(p1138)
    getgenv().AutoCyborg = p1138
end)
spawn(function()
    pcall(function()
        while task.wait(0.5) do
            if getgenv().AutoCyborg and not (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Microchip') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Microchip') or (game:GetService('Workspace').Enemies:FindFirstChild('Order') or game:GetService('ReplicatedStorage'):FindFirstChild('Order')))) then
                wait(0.3)
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Microchip', '1')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Microchip', '2')
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        while task.wait(0.5) do
            if getgenv().AutoCyborg then
                if not game:GetService('Workspace').Enemies:FindFirstChild('Order') and (not game:GetService('ReplicatedStorage'):FindFirstChild('Order') and (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Microchip') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Microchip'))) then
                    fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                end
                if game:GetService('ReplicatedStorage'):FindFirstChild('Order') or game:GetService('Workspace').Enemies:FindFirstChild('Order') then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Order') then
                        local v1139, v1140, v1141 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1142

                            v1141, v1142 = v1139(v1140, v1141)

                            if v1141 == nil then
                                break
                            end
                            if v1142.Name == 'Order' then
                                repeat
                                    task.wait(0.1)
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    topos(v1142.HumanoidRootPart.CFrame * Pos)

                                    v1142.HumanoidRootPart.CanCollide = false
                                    v1142.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
                                until not v1142.Parent or (v1142.Humanoid.Health <= 0 or getgenv().AutoCyborg == false)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Order') then
                        topos(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                    end
                end
            end
        end
    end)
end)
Race:AddToggle('Toggle', {
    Title = 'Auto Get Ghoul',
    Default = false,
}):OnChanged(function(p1143)
    getgenv().AutoGhoul = p1143
end)
spawn(function()
    while task.wait(0.1) and getgenv().AutoGhoul do
        local _CursedCaptain = game:GetService('Workspace').Enemies:FindFirstChild('Cursed Captain')

        if _CursedCaptain and (_CursedCaptain:FindFirstChild('Humanoid') and _CursedCaptain:FindFirstChild('HumanoidRootPart')) then
            local _Humanoid14 = _CursedCaptain.Humanoid
            local _HumanoidRootPart16 = _CursedCaptain.HumanoidRootPart

            if _Humanoid14.Health > 0 then
                _HumanoidRootPart16.CanCollide = false
                _Humanoid14.WalkSpeed = 0
                _HumanoidRootPart16.Size = Vector3.new(50, 50, 50)

                repeat
                    task.wait(0.05)
                    AutoHaki()
                    EquipWeapon(getgenv().SelectWeapon)
                    topos(_HumanoidRootPart16.CFrame * CFrame.new(0, 10, 0))
                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', 1000)
                until not getgenv().AutoGhoul or (_Humanoid14.Health <= 0 or not _CursedCaptain.Parent)
            end
        else
            local _CursedCaptain2 = game:GetService('ReplicatedStorage'):FindFirstChild('Cursed Captain')

            if _CursedCaptain2 then
                topos(_CursedCaptain2.HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
            end
        end
    end
end)
Race:AddParagraph({
    Title = 'Race V4',
    Content = string.rep('-', 21),
})
Race:AddToggle('Toggle', {
    Title = 'No Frog',
    Default = false,
}):OnChanged(function(p1148)
    getgenv().NoFrog = p1148
end)
spawn(function()
    while true do
        if getgenv().NoFrog then
            pcall(function()
                local _Lighting2 = game:GetService('Lighting')

                if _Lighting2:FindFirstChild('LightingLayers') then
                    _Lighting2.LightingLayers:Destroy()
                end
                if _Lighting2:FindFirstChild('Sky') then
                    _Lighting2.Sky:Destroy()
                end
            end)
        end

        wait(1)

        while not getgenv().NoFrog do
            wait(1)
        end
    end
end)
Race:AddToggle('Toggle', {
    Title = 'Teleport Ancient Clock',
    Default = false,
}):OnChanged(function(p1150)
    getgenv().TeleportAcientClock = p1150

    StopTween(getgenv().TeleportAcientClock)
end)
spawn(function()
    while true do
        repeat
            wait(0.5)
        until getgenv().TeleportAcientClock

        topos(CFrame.new(29549, 15069, -88))
    end
end)
Race:AddToggle('Toggle', {
    Title = 'Auto Buy Gear',
    Default = false,
}):OnChanged(function(p1151)
    getgenv().AutoBuyGear = p1151
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if getgenv().AutoBuyGear and World3 then
                game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_'):InvokeServer(unpack({
                    'UpgradeRace',
                    'Buy',
                }))
            else
                repeat
                    task.wait(1)
                until getgenv().AutoBuyGear
            end
        end
    end)
end)
Race:AddToggle('Toggle', {
    Title = 'Auto Finish Train Quest',
    Default = false,
}):OnChanged(function(p1152)
    getgenv().Race_1 = p1152
    getgenv().QuestTrain_2 = p1152

    if not p1152 then
        StopTween(getgenv().QuestTrain_2)
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if getgenv().Race_1 and game.Players.LocalPlayer.Character then
                local _Character20 = game.Players.LocalPlayer.Character

                if _Character20:FindFirstChild('RaceTransformed') and _Character20.RaceTransformed.Value then
                    getgenv().QuestTrain_2 = false

                    topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))
                end
            end
        end)
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if getgenv().QuestTrain_2 and (World3 and game.Players.LocalPlayer.Character) then
                local _Enemies13 = workspace:FindFirstChild('Enemies')

                if _Enemies13 then
                    local v1155, v1156, v1157 = pairs(_Enemies13:GetChildren())

                    while true do
                        local v1158

                        v1157, v1158 = v1155(v1156, v1157)

                        if v1157 == nil then
                            break
                        end
                        if v1158:IsA('Model') and (v1158.Name == 'Reborn Skeleton' or (v1158.Name == 'Living Zombie' or (v1158.Name == 'Demonic Soul' or v1158.Name == 'Posessed Mummy'))) and (v1158:FindFirstChild('Humanoid') and (v1158:FindFirstChild('HumanoidRootPart') and v1158.Humanoid.Health > 0)) then
                            repeat
                                task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)

                                v1158.HumanoidRootPart.CanCollide = false
                                v1158.Humanoid.WalkSpeed = 0
                                v1158.Head.CanCollide = false

                                topos(v1158.HumanoidRootPart.CFrame * Pos)

                                getgenv().BonesBring = true
                            until not getgenv().QuestTrain_2 or (v1158.Parent == nil or v1158.Humanoid.Health <= 0)
                        end
                    end
                end
                if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude <= 1500 then
                        topos(BonePos)
                    else
                        BTP(BonePos)
                    end
                else
                    topos(BonePos)
                end

                UnEquipWeapon(getgenv().SelectWeapon)

                getgenv().BonesBring = false

                topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))

                local _ReplicatedStorage9 = game:GetService('ReplicatedStorage')
                local v1160, v1161, v1162 = pairs(_ReplicatedStorage9:GetChildren())

                while true do
                    local v1163

                    v1162, v1163 = v1160(v1161, v1162)

                    if v1162 == nil then
                        break
                    end
                    if v1163:IsA('Model') and (v1163.Name == 'Reborn Skeleton' or (v1163.Name == 'Living Zombie' or (v1163.Name == 'Demonic Soul' or v1163.Name == 'Posessed Mummy'))) and v1163:FindFirstChild('HumanoidRootPart') then
                        topos(v1163.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end
        end)
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if getgenv().Race_1 and game.Players.LocalPlayer.Character then
                local _Character21 = game.Players.LocalPlayer.Character

                if _Character21:FindFirstChild('RaceTransformed') and not _Character21.RaceTransformed.Value then
                    getgenv().QuestTrain_2 = true
                end
            end
        end)
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if getgenv().Race_1 and game.Players.LocalPlayer.Character then
                local _Character22 = game.Players.LocalPlayer.Character

                if _Character22:FindFirstChild('RaceEnergy') and (_Character22.RaceEnergy.Value >= 1 and not _Character22.RaceTransformed.Value) then
                    local _VirtualInputManager3 = game:GetService('VirtualInputManager')

                    _VirtualInputManager3:SendKeyEvent(true, 'Y', false, game)
                    task.wait(0.1)
                    _VirtualInputManager3:SendKeyEvent(false, 'Y', false, game)
                end
            end
        end)
    end
end)

Pullever = Race:AddParagraph({
    Title = 'Pull Lever Done',
    Content = 'Status: ',
})

spawn(function()
    local v1167 = ''

    while task.wait(1) do
        local v1168, v1169 = pcall(function()
            return game.ReplicatedStorage.Remotes.CommF_:InvokeServer('templedoorcheck')
        end)

        if v1168 then
            local v1170 = v1169 and '\u{2705}' or '\u{274c}'

            if v1170 ~= v1167 then
                Pullever:SetDesc('Status: ' .. v1170)

                v1167 = v1170
            end
        end
    end
end)
Race:AddToggle('Toggle', {
    Title = 'Teleport To Migare Island',
    Default = false,
}):OnChanged(function(p1171)
    getgenv().TeleportMigare = p1171

    StopTween(getgenv().TeleportMigare)
end)
spawn(function()
    pcall(function()
        while wait(0.5) do
            if getgenv().TeleportMigare and World3 then
                local _MysticIsland = game:GetService('Workspace').Map:FindFirstChild('MysticIsland')

                if _MysticIsland and _MysticIsland:FindFirstChild('Center') then
                    local _Position10 = _MysticIsland.Center.Position
                    local v1174 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

                    if v1174 then
                        v1174 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    end
                    if v1174 and (Vector3.new(_Position10.X, 500, _Position10.Z) - v1174).magnitude > 5 then
                        topos(CFrame.new(_Position10.X, 500, _Position10.Z))
                    end
                end
            end
        end
    end)
end)
Race:AddToggle('Toggle', {
    Title = 'Teleport To Highest Point',
    Default = false,
}):OnChanged(function(p1175)
    getgenv().Tweentohighestpoint = p1175

    if p1175 then
        spawn(function()
            while getgenv().Tweentohighestpoint do
                local v1176 = tweento_highestpoint()

                if v1176 and v1176:FindFirstChild('CFrame') then
                    local v1177 = v1176.CFrame * CFrame.new(0, 211.88, 0)
                    local v1178 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

                    if v1178 then
                        v1178 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    end
                    if v1178 and (v1177.Position - v1178).magnitude > 5 then
                        topos(v1177)
                    end
                end

                wait(0.5)
            end
        end)
    end
end)
Race:AddToggle('Toggle', {
    Title = 'Teleport To Advanced Fruit Dealer',
    Default = false,
}):OnChanged(function(p1179)
    getgenv().TeleportAdvancedFruitDealer = p1179

    if p1179 then
        spawn(function()
            while true do
                if not (getgenv().TeleportAdvancedFruitDealer and wait(0.5)) then
                    return
                end
                if game:GetService('Workspace').Map:FindFirstChild('MysticIsland') then
                    local v1180, v1181, v1182 = pairs(game:GetService('Workspace').NPCs:GetChildren())
                    local v1183 = {}

                    while true do
                        local v1184

                        v1182, v1184 = v1180(v1181, v1182)

                        if v1182 == nil then
                            break
                        end

                        table.insert(v1183, v1184)
                    end

                    local v1185, v1186, v1187 = pairs(v1183)

                    while true do
                        local v1188

                        v1187, v1188 = v1185(v1186, v1187)

                        if v1187 == nil then
                            break
                        end
                        if v1188.Name == 'Advanced Fruit Dealer' and v1188:FindFirstChild('HumanoidRootPart') then
                            local _CFrame7 = v1188.HumanoidRootPart.CFrame
                            local v1190 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

                            if v1190 then
                                v1190 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                            end
                            if v1190 and (_CFrame7.Position - v1190).magnitude > 5 then
                                topos(_CFrame7)
                            end

                            break
                        end
                    end
                end
            end
        end)
    end
end)
Race:AddToggle('Toggle', {
    Title = 'Lock Moon And On Race V3',
    Default = false,
}):OnChanged(function(p1191)
    getgenv().LockMoonAndOnRaceV3 = p1191

    if p1191 then
        spawn(function()
            while getgenv().LockMoonAndOnRaceV3 and wait(0.5) do
                pcall(function()
                    if World3 then
                        local v1192 = game.Lighting:GetMoonDirection()

                        if v1192 and v1192.Magnitude > 0 then
                            local v1193 = game.Workspace.CurrentCamera.CFrame.p + v1192 * 100

                            game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, v1193)
                        end
                    end
                end)
            end
        end)
        spawn(function()
            while getgenv().LockMoonAndOnRaceV3 and wait(3) do
                pcall(function()
                    if World3 then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'T', false, game)
                        wait(0.1)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'T', false, game)
                    end
                end)
            end
        end)
    end
end)
Race:AddToggle('Toggle', {
    Title = 'Teleport To Blue Gear',
    Default = false,
}):OnChanged(function(p1194)
    getgenv().TeleportToGear = p1194

    StopTween(getgenv().TeleportToGear)
end)
spawn(function()
    while task.wait(0.1) do
        local u1195 = false

        local function v1196()
            u1195 = true
        end

        if getgenv().TeleportToGear and World3 then
            local _MysticIsland2 = game:GetService('Workspace').Map:FindFirstChild('MysticIsland')

            if _MysticIsland2 then
                local v1198, v1199, v1200 = ipairs(_MysticIsland2:GetChildren())

                while true do
                    local v1201

                    v1200, v1201 = v1198(v1199, v1200)

                    if v1200 == nil then
                        break
                    end
                    if v1201:IsA('MeshPart') and v1201.Material == Enum.Material.Neon then
                        topos(v1201.CFrame)
                        v1196()
                    end
                end
            end
        end
        if u1195 then
            break
        end
    end
end)
Race:AddButton({
    Title = 'Teleport To Trial Door',
    Callback = function()
        local _LocalPlayer37 = game:GetService('Players').LocalPlayer

        if _LocalPlayer37 and _LocalPlayer37:FindFirstChild('Data') and _LocalPlayer37.Data:FindFirstChild('Race') then
            local _Value4 = _LocalPlayer37.Data.Race.Value
            local v1204 = {
                Human = CFrame.new(29221.822, 14890.975, -205.991),
                Skypiea = CFrame.new(28960.158, 14919.624, 235.039),
                Fishman = CFrame.new(28231.175, 14890.975, -211.641),
                Cyborg = CFrame.new(28502.681, 14895.975, -423.727),
                Ghoul = CFrame.new(28674.244, 14890.676, 445.431),
                Mink = CFrame.new(29012.341, 14890.975, -380.149),
            }

            if v1204[_Value4] and typeof(topos) == 'function' then
                topos(v1204[_Value4])
            end
        end
    end,
})
Race:AddToggle('Toggle', {
    Title = 'Auto Trial Race',
    Default = false,
}):OnChanged(function(p1205)
    getgenv().AutoTrialRace = p1205

    StopTween(getgenv().AutoTrialRace)
end)
spawn(function()
    local _LocalPlayer38 = game:GetService('Players').LocalPlayer
    local _Race = _LocalPlayer38.Data.Race
    local _VirtualInputManager4 = game:GetService('VirtualInputManager')

    while true do
        while true do
            if not getgenv().AutoTrialRace then
                return
            end

            wait(0.5)

            if _Race.Value == 'Human' then
                break
            end
            if _Race.Value ~= 'Skypiea' then
                if _Race.Value ~= 'Fishman' then
                    if _Race.Value ~= 'Cyborg' then
                        if _Race.Value ~= 'Ghoul' then
                            if _Race.Value == 'Mink' then
                                local v1209, v1210, v1211 = pairs(game:GetService('Workspace'):GetDescendants())

                                while true do
                                    local v1212

                                    v1211, v1212 = v1209(v1210, v1211)

                                    if v1211 == nil then
                                        break
                                    end
                                    if v1212.Name == 'StartPoint' then
                                        topos(v1212.CFrame * CFrame.new(0, 10, 0))

                                        break
                                    end
                                end
                            end
                        else
                            local v1213, v1214, v1215 = pairs(game.Workspace.Enemies:GetChildren())

                            while true do
                                local v1216, u1217 = v1213(v1214, v1215)

                                if v1216 == nil then
                                    break
                                end

                                v1215 = v1216

                                if u1217:FindFirstChild('Humanoid') and (u1217:FindFirstChild('HumanoidRootPart') and u1217.Humanoid.Health > 0) then
                                    pcall(function()
                                        repeat
                                            wait()

                                            u1217.Humanoid.Health = 0
                                            u1217.HumanoidRootPart.CanCollide = false

                                            sethiddenproperty(_LocalPlayer38, 'SimulationRadius', math.huge)
                                        until not getgenv().AutoTrialRace or (not u1217.Parent or u1217.Humanoid.Health <= 0)
                                    end)
                                end
                            end
                        end
                    else
                        topos(CFrame.new(28654, 14898.7832, -30))
                    end
                else
                    local _SeaBeast1 = game:GetService('Workspace').SeaBeasts:FindFirstChild('SeaBeast1')

                    if _SeaBeast1 then
                        local _HumanoidRootPart17 = _SeaBeast1:FindFirstChild('HumanoidRootPart')

                        if _HumanoidRootPart17 then
                            topos(_HumanoidRootPart17.CFrame)

                            local _Backpack13 = _LocalPlayer38.Backpack

                            local function v1227(p1221)
                                local v1222 = _Backpack13
                                local v1223, v1224, v1225 = pairs(v1222:GetChildren())

                                while true do
                                    local v1226

                                    v1225, v1226 = v1223(v1224, v1225)

                                    if v1225 == nil then
                                        break
                                    end
                                    if v1226:IsA('Tool') and v1226.ToolTip == p1221 then
                                        _LocalPlayer38.Character.Humanoid:EquipTool(v1226)
                                        wait(0.2)
                                        _VirtualInputManager4:SendKeyEvent(true, 122, false, game)
                                        _VirtualInputManager4:SendKeyEvent(false, 122, false, game)
                                        wait(0.2)
                                        _VirtualInputManager4:SendKeyEvent(true, 120, false, game)
                                        _VirtualInputManager4:SendKeyEvent(false, 120, false, game)
                                        wait(0.2)
                                        _VirtualInputManager4:SendKeyEvent(true, 99, false, game)
                                        _VirtualInputManager4:SendKeyEvent(false, 99, false, game)
                                    end
                                end
                            end

                            v1227('Melee')
                            v1227('Blox Fruit')
                            v1227('Sword')
                            v1227('Gun')
                        end
                    end
                end
            else
                local _Model = game:GetService('Workspace').Map.SkyTrial.Model

                if _Model then
                    local v1229, v1230, v1231 = pairs(_Model:GetDescendants())

                    while true do
                        local v1232

                        v1231, v1232 = v1229(v1230, v1231)

                        if v1231 == nil then
                            break
                        end
                        if v1232.Name == 'snowisland_Cylinder.081' then
                            BTPZ(v1232.CFrame)

                            break
                        end
                    end
                end
            end
        end

        local v1233, v1234, v1235 = pairs(game.Workspace.Enemies:GetChildren())

        while true do
            local v1236, u1237 = v1233(v1234, v1235)

            if v1236 == nil then
                break
            end

            v1235 = v1236

            if u1237:FindFirstChild('Humanoid') and (u1237:FindFirstChild('HumanoidRootPart') and u1237.Humanoid.Health > 0) then
                pcall(function()
                    repeat
                        wait()

                        u1237.Humanoid.Health = 0
                        u1237.HumanoidRootPart.CanCollide = false

                        sethiddenproperty(_LocalPlayer38, 'SimulationRadius', math.huge)
                    until not getgenv().AutoTrialRace or (not u1237.Parent or u1237.Humanoid.Health <= 0)
                end)
            end
        end
    end
end)
Race:AddToggle('Toggle', {
    Title = 'Auto Kill Player After Trial V4',
    Default = false,
}):OnChanged(function(p1238)
    getgenv().AutoKillPlayerAfterTrial = p1238

    StopTween(getgenv().AutoKillPlayerAfterTrial)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoKillPlayerAfterTrial and World3 then
            pcall(function()
                local _LocalPlayer39 = game.Players.LocalPlayer
                local _Character23 = _LocalPlayer39.Character

                if _Character23 and _Character23:FindFirstChild('HumanoidRootPart') then
                    local v1241, v1242, v1243 = ipairs(game.Workspace.Characters:GetChildren())

                    while true do
                        local u1244

                        v1243, u1244 = v1241(v1242, v1243)

                        if v1243 == nil then
                            break
                        end
                        if u1244.Name ~= _LocalPlayer39.Name and (u1244:FindFirstChild('Humanoid') and u1244:FindFirstChild('HumanoidRootPart')) then
                            local _Humanoid15 = u1244.Humanoid
                            local _HumanoidRootPart18 = u1244.HumanoidRootPart

                            if _Humanoid15.Health > 0 and (_Character23.HumanoidRootPart.Position - _HumanoidRootPart18.Position).Magnitude <= 230 then
                                task.spawn(function()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    topos(_HumanoidRootPart18.CFrame * CFrame.new(1, 1, 2))

                                    _HumanoidRootPart18.Size = Vector3.new(60, 60, 60)
                                    _HumanoidRootPart18.CanCollide = false

                                    if u1244:FindFirstChild('Head') then
                                        u1244.Head.CanCollide = false
                                    end

                                    _Humanoid15.WalkSpeed = 0

                                    sethiddenproperty(_LocalPlayer39, 'SimulationRadius', math.huge)

                                    while getgenv().AutoKillPlayerAfterTrial and (_Humanoid15.Health > 0 and (u1244.Parent and (_HumanoidRootPart18 and _Humanoid15))) do
                                        task.wait(0.1)
                                    end
                                end)
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Get = Window:AddTab({
    Title = 'Tab Get Items And Buy',
    Icon = '',
})

Get:AddToggle('Toggle', {
    Title = 'Auto Trade Bone',
    Default = false,
}):OnChanged(function(p1247)
    getgenv().AutoTradeBone = p1247
end)
spawn(function()
    local v1248 = true
    local v1249 = 1

    while task.wait(0.5) do
        if getgenv().AutoTradeBone and (World3 and v1248) then
            local u1250 = {
                'Bones',
                'Buy',
                1,
                1,
            }
            local _CommF_10 = game:GetService('ReplicatedStorage').Remotes.CommF_

            if _CommF_10 then
                local _, _ = pcall(function()
                    _CommF_10:InvokeServer(unpack(u1250))
                end)
            end

            wait(v1249)

            v1248 = true
        end
    end
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Buy Legendary Sword',
    Default = false,
}):OnChanged(function(p1252)
    getgenv().AutoBuyLegendarySword = p1252
end)
spawn(function()
    local v1253 = 0

    while task.wait(1) do
        if getgenv().AutoBuyLegendarySword and World2 then
            local v1254 = tick()

            if v1254 - v1253 >= 2 then
                pcall(function()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LegendarySwordDealer',
                        '1',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LegendarySwordDealer',
                        '2',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LegendarySwordDealer',
                        '3',
                    }))
                end)

                v1253 = v1254
            end
        end
    end
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Buy Haki Color',
    Default = false,
}):OnChanged(function(p1255)
    getgenv().Auto_Buy_Enchancement = p1255
end)
spawn(function()
    local v1256 = 0

    while true do
        local v1257

        if getgenv().Auto_Buy_Enchancement then
            v1257 = tick()

            if v1257 - v1256 < 2 then
                v1257 = v1256
            else
                local u1258 = {
                    'ColorsDealer',
                    '2',
                }

                pcall(function()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(u1258))
                end)
            end
        else
            v1257 = v1256
        end

        wait(0.1)

        v1256 = v1257
    end
end)

local u1259 = false

Get:AddToggle('Toggle', {
    Title = 'Hop Server [ Haki color or Legendary Sword]',
    Default = false,
}):OnChanged(function(p1260)
    u1259 = p1260

    if u1259 then
        Hop()
    end
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Get Rainbow Haki',
    Default = false,
}):OnChanged(function(p1261)
    getgenv().AutoRainbowHaki = p1261
end)
spawn(function()
    pcall(function()
        while task.wait(0.2) do
            local u1262 = false

            local function v1263()
                u1262 = true
            end

            if getgenv().AutoRainbowHaki and World3 then
                local _LocalPlayer40 = game:GetService('Players').LocalPlayer
                local _Character24 = _LocalPlayer40.Character

                if _Character24 then
                    _Character24 = _Character24:FindFirstChild('HumanoidRootPart')
                end

                local _Quest2 = _LocalPlayer40.PlayerGui.Main.Quest

                if _Character24 then
                    if _Quest2.Visible then
                        local _Text2 = _Quest2.Container.QuestTitle.Title.Text
                        local v1268 = {
                            Stone = Vector3.new(-1175, 53, 6811),
                            ['Island Empress'] = Vector3.new(5887, 1019, -114),
                            ['Kilo Admiral'] = Vector3.new(3014, 509, -7354),
                            ['Captain Elephant'] = Vector3.new(-13485.0283, 331.709259, -8012.4873),
                            ['Beautiful Pirate'] = Vector3.new(5377, 22, -62),
                        }
                        local v1269, v1270, v1271 = pairs(v1268)

                        while true do
                            local v1272

                            v1271, v1272 = v1269(v1270, v1271)

                            if v1271 == nil then
                                break
                            end
                            if string.find(_Text2, v1271) then
                                local v1273 = game:GetService('Workspace').Enemies:FindFirstChild(v1271)

                                if v1273 and v1273:FindFirstChild('HumanoidRootPart') then
                                    local _CFrame8 = v1273.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)
                                        topos(v1273.HumanoidRootPart.CFrame * Pos)

                                        v1273.HumanoidRootPart.CanCollide = false
                                        v1273.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v1273.HumanoidRootPart.CFrame = _CFrame8

                                        game:GetService('VirtualUser'):CaptureController()
                                        game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                    until not getgenv().AutoRainbowHaki or (v1273.Humanoid.Health <= 0 or not (v1273.Parent and _Quest2.Visible))
                                else
                                    topos(CFrame.new(v1272))
                                end

                                v1263()
                            end
                        end
                    else
                        local v1275 = Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875)

                        if (v1275 - _Character24.Position).Magnitude <= 30 then
                            task.wait(1.1)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('HornedMan', 'Bet')
                        else
                            topos(CFrame.new(v1275))
                        end
                    end
                end
            end
            if u1262 then
                break
            end
        end
    end)
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Skull Guitar',
    Default = false,
}):OnChanged(function(p1276)
    getgenv().AutoSkullGuitar = p1276
end)
spawn(function()
    while task.wait() do
        if getgenv().AutoSkullGuitar then
            pcall(function()
                if GetWeaponInventory('Skull Guitar') then
                    if string.find(game:GetService('ReplicatedStorage').Remotes.CommF:InvokeServer('gravestoneEvent', 2), 'Error') then
                        topos(CFrame.new(-8653.206, 140.985, 6160.033))
                    elseif string.find(game:GetService('ReplicatedStorage').Remotes.CommF:InvokeServer('gravestoneEvent', 2), 'Nothing') then
                        topos('Wait Full Moon')
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF:InvokeServer('gravestoneEvent', 2, true)
                    end
                else
                    local _LocalPlayer41 = game:GetService('Players').LocalPlayer
                    local _Character25 = _LocalPlayer41.Character

                    if _Character25 then
                        _Character25 = _LocalPlayer41.Character:FindFirstChild('HumanoidRootPart')
                    end
                    if _Character25 and (Vector3.new(-9681.458, 6.139, 6341.372) - _Character25.Position).Magnitude <= 5000 then
                        if game:GetService('Workspace').NPCs:FindFirstChild('Skeleton Machine') then
                            game:GetService('ReplicatedStorage').Remotes.CommF:InvokeServer('soulGuitarBuy', true)
                        else
                            local _HauntedCastle = game:GetService('Workspace').Map:FindFirstChild('Haunted Castle')

                            if _HauntedCastle and _HauntedCastle.Candle1.Transparency == 0 then
                                local _Placard1 = _HauntedCastle:FindFirstChild('Placard1')

                                if _Placard1 and _Placard1.Left.Part.Transparency == 0 then
                                    Quest2 = true

                                    topos(CFrame.new(-8762.691, 176.847, 6171.308))
                                    task.wait(1)

                                    for v1281 = 7, 1, -1 do
                                        local v1282 = _HauntedCastle:FindFirstChild('Placard' .. v1281)

                                        if v1282 then
                                            if v1282:FindFirstChild('Left') then
                                                if v1282.Left:FindFirstChild('ClickDetector') then
                                                    fireclickdetector(v1282.Left.ClickDetector)
                                                    task.wait(0.5)
                                                end
                                            end
                                        end
                                    end
                                end
                            elseif _HauntedCastle and _HauntedCastle.Tablet and _HauntedCastle.Tablet:FindFirstChild('Segment1') then
                                local _LabPuzzle = _HauntedCastle:FindFirstChild('Lab Puzzle')

                                if _LabPuzzle and _LabPuzzle.ColorFloor.Model.Part1:FindFirstChild('ClickDetector') then
                                    Quest4 = true

                                    topos(CFrame.new(-9553.599, 65.623, 6041.588))
                                    task.wait(1)

                                    local v1284, v1285, v1286 = ipairs({
                                        3,
                                        4,
                                        4,
                                        4,
                                        6,
                                        6,
                                        8,
                                        10,
                                        10,
                                        10,
                                    })

                                    while true do
                                        local v1287

                                        v1286, v1287 = v1284(v1285, v1286)

                                        if v1286 == nil then
                                            break
                                        end

                                        local v1288 = _LabPuzzle.ColorFloor.Model:FindFirstChild('Part' .. v1287)

                                        if v1288 and v1288:FindFirstChild('ClickDetector') then
                                            topos(v1288.CFrame)
                                            task.wait(1)
                                            fireclickdetector(v1288.ClickDetector)
                                            task.wait(0.5)
                                        end
                                    end
                                else
                                    Quest3 = true
                                end
                            else
                                if game:GetService('Workspace').NPCs:FindFirstChild('Ghost') then
                                    game:GetService('ReplicatedStorage').Remotes.CommF:InvokeServer('GuitarPuzzleProgress', 'Ghost')
                                end

                                local _Enemies14 = game.Workspace:FindFirstChild('Enemies')

                                if _Enemies14 and _Enemies14:FindFirstChild('Living Zombie') then
                                    local v1290, v1291, v1292 = pairs(_Enemies14:GetChildren())

                                    while true do
                                        local v1293

                                        v1292, v1293 = v1290(v1291, v1292)

                                        if v1292 == nil then
                                            break
                                        end
                                        if v1293:FindFirstChild('HumanoidRootPart') and (v1293:FindFirstChild('Humanoid') and (v1293.Humanoid.Health > 0 and v1293.Name == 'Living Zombie')) then
                                            AutoHaki()
                                            EquipWeapon(getgenv().SelectWeapon)

                                            v1293.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v1293.HumanoidRootPart.Transparency = 1
                                            v1293.Humanoid.JumpPower = 0
                                            v1293.Humanoid.WalkSpeed = 0
                                            v1293.HumanoidRootPart.CanCollide = false
                                            v1293.HumanoidRootPart.CFrame = _Character25.CFrame * CFrame.new(0, 20, 0)

                                            topos(CFrame.new(-10160.787, 138.662, 5955.031))
                                            task.wait(0.5)

                                            local _VirtualUser2 = game:GetService('VirtualUser')

                                            _VirtualUser2:CaptureController()
                                            _VirtualUser2:Button1Down(Vector2.new(1280, 672))
                                        end
                                    end
                                else
                                    topos(CFrame.new(-10160.787, 138.662, 5955.031))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Get CDK',
    Description = 'Teleport To Claim CDK',
    Default = false,
}):OnChanged(function(p1295)
    getgenv().AutoGetCDK = p1295
end)
task.spawn(function()
    repeat
        task.wait()
    until getgenv().AutoGetCDK

    local _LocalPlayer42 = game.Players.LocalPlayer
    local _ReplicatedStorage10 = game:GetService('ReplicatedStorage')
    local _Workspace6 = game:GetService('Workspace')
    local _Enemies15 = _Workspace6.Enemies
    local u1300 = false

    while getgenv().AutoGetCDK do
        task.wait(0.2)
        pcall(function()
            _ReplicatedStorage10.Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Good')
            task.wait(0.2)
            _ReplicatedStorage10.Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Evil')
            task.wait(0.2)
            _ReplicatedStorage10.Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Boss')
            task.wait(0.2)

            if _Enemies15:FindFirstChild('Cursed Skeleton Boss') then
                local v1301 = _Enemies15
                local v1302, v1303, v1304 = pairs(v1301:GetChildren())

                while true do
                    local v1305

                    v1304, v1305 = v1302(v1303, v1304)

                    if v1304 == nil then
                        break
                    end
                    if v1305.Name == 'Cursed Skeleton Boss' and (v1305:FindFirstChild('Humanoid') and (v1305:FindFirstChild('HumanoidRootPart') and v1305.Humanoid.Health > 0)) then
                        local _Character26 = _LocalPlayer42.Character
                        local _Backpack14 = _LocalPlayer42.Backpack

                        if _Character26:FindFirstChild('Yama') or _Backpack14:FindFirstChild('Yama') then
                            EquipWeapon('Yama')
                        elseif _Character26:FindFirstChild('Tushita') or _Backpack14:FindFirstChild('Tushita') then
                            EquipWeapon('Tushita')
                        elseif not u1300 then
                            game.StarterGui:SetCore('SendNotification', {
                                Title = 'Hiru Hub',
                                Text = 'Use! - Yama or Tushita',
                                con = 'rbxassetid://11995210995',
                                Duration = 10,
                            })

                            u1300 = true
                        end

                        Buso()

                        v1305.HumanoidRootPart.CanCollide = false
                        v1305.Humanoid.WalkSpeed = 0

                        topos(v1305.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                        if syn and not getgenv().SimulationSet then
                            sethiddenproperty(_LocalPlayer42, 'SimulationRadius', math.huge)

                            getgenv().SimulationSet = true
                        end

                        repeat
                            task.wait()
                        until not getgenv().AutoGetCDK or (not v1305.Parent or v1305.Humanoid.Health <= 0)
                    end
                end
            else
                topos(CFrame.new(-12318.193, 601.951, -6538.662))
                task.wait(0.5)
                topos(_Workspace6.Map.Turtle.Cursed.BossDoor.CFrame)
            end
        end)
    end
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Yama',
    Default = false,
}):OnChanged(function(p1308)
    getgenv().AutoYama = p1308
end)
spawn(function()
    while task.wait(1) do
        pcall(function()
            if getgenv().AutoYama then
                local _EliteHunter3 = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress')

                if _EliteHunter3 and 30 <= _EliteHunter3 then
                    local _LocalPlayer43 = game:GetService('Players').LocalPlayer
                    local _Yama = _LocalPlayer43.Backpack:FindFirstChild('Yama')
                    local _Waterfall = game:GetService('Workspace').Map:FindFirstChild('Waterfall')
                    local v1313 = (not _Yama and (_Waterfall and _Waterfall:FindFirstChild('SealedKatana')) and true or false) and _Waterfall.SealedKatana.Handle:FindFirstChild('ClickDetector')

                    if v1313 then
                        repeat
                            task.wait(0.5)
                            fireclickdetector(v1313)
                        until _LocalPlayer43.Backpack:FindFirstChild('Yama') or not getgenv().AutoYama
                    end
                end
            end
        end)
    end
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Tushita',
    Default = false,
}):OnChanged(function(p1314)
    getgenv().AutoTushita = p1314
end)
spawn(function()
    while task.wait(0.5) do
        if getgenv().AutoTushita and World3 then
            pcall(function()
                local _Enemies16 = game:GetService('Workspace').Enemies
                local _Longma = _Enemies16:FindFirstChild('Longma')
                local _LocalPlayer44 = game.Players.LocalPlayer
                local _Character27 = _LocalPlayer44.Character
                local v1319

                if _Character27 then
                    v1319 = _Character27:FindFirstChild('HumanoidRootPart')
                else
                    v1319 = _Character27
                end
                if not (_Longma and v1319) then
                    topos(CFrame.new(-10238.876, 389.791, -9549.794))

                    local _Longma2 = game:GetService('ReplicatedStorage'):FindFirstChild('Longma')

                    if _Longma2 and _Longma2:FindFirstChild('HumanoidRootPart') then
                        TP(_Longma2.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end

                    return
                end

                local v1321, v1322, v1323 = pairs(_Enemies16:GetChildren())

                while true do
                    local v1324

                    v1323, v1324 = v1321(v1322, v1323)

                    if v1323 == nil then
                    end
                    if v1324.Name == 'Longma' and (v1324.Parent and (v1324:FindFirstChild('Humanoid') and v1324:FindFirstChild('HumanoidRootPart'))) then
                        local _Humanoid16 = v1324.Humanoid
                        local _HumanoidRootPart19 = v1324.HumanoidRootPart

                        if _Humanoid16.Health > 0 then
                            if not _Character27:FindFirstChild('Haki') then
                                AutoHaki()
                            end
                            if getgenv().SelectWeapon and not _Character27:FindFirstChild(getgenv().SelectWeapon) then
                                EquipWeapon(getgenv().SelectWeapon)
                            end

                            while true do
                                task.wait(0.1)

                                _HumanoidRootPart19.CanCollide = false
                                _Humanoid16.WalkSpeed = 0

                                if (_HumanoidRootPart19.Position - v1319.Position).Magnitude > 5 then
                                    topos(_HumanoidRootPart19.CFrame * Pos)
                                end

                                pcall(function()
                                    sethiddenproperty(_LocalPlayer44, 'SimulationRadius', math.huge)
                                end)

                                if not getgenv().AutoTushita or (not v1324.Parent or _Humanoid16.Health <= 0) then
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Saber',
    Default = false,
}):OnChanged(function(p1327)
    getgenv().AutoSaber = p1327
end)
spawn(function()
    while task.wait(0.5) do
        if getgenv().AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
            pcall(function()
                local _LocalPlayer45 = game.Players.LocalPlayer
                local _Character28 = _LocalPlayer45.Character
                local v1330

                if _Character28 then
                    v1330 = _Character28:FindFirstChild('HumanoidRootPart')
                else
                    v1330 = _Character28
                end
                if v1330 then
                    local _Jungle = game:GetService('Workspace').Map.Jungle
                    local _Desert = game:GetService('Workspace').Map.Desert
                    local v1333 = CFrame.new(-1404.91, 29.97, 3.8)

                    if _Jungle.Final.Part.Transparency ~= 0 then
                        local v1334 = game:GetService('Workspace').Enemies:FindFirstChild('Saber Expert') or game:GetService('ReplicatedStorage'):FindFirstChild('Saber Expert')

                        if v1334 then
                            repeat
                                task.wait()
                                EquipWeapon(getgenv().SelectWeapon)
                                topos(v1334.HumanoidRootPart.CFrame)

                                v1334.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v1334.HumanoidRootPart.Transparency = 1
                                v1334.Humanoid.JumpPower = 0
                                v1334.Humanoid.WalkSpeed = 0
                                v1334.HumanoidRootPart.CanCollide = false

                                game:GetService('VirtualUser'):CaptureController()
                                game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                            until v1334.Humanoid.Health <= 0 or not getgenv().AutoSaber

                            if v1334.Humanoid.Health <= 0 then
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'PlaceRelic')
                            end
                        end
                    elseif _Jungle.QuestPlates.Door.Transparency ~= 0 then
                        if _Desert.Burn.Part.Transparency ~= 0 then
                            local _CommF_11 = game:GetService('ReplicatedStorage').Remotes.CommF_

                            if _CommF_11:InvokeServer('ProQuestProgress', 'SickMan') == 0 then
                                if _CommF_11:InvokeServer('ProQuestProgress', 'RichSon') ~= nil then
                                    if _CommF_11:InvokeServer('ProQuestProgress', 'RichSon') ~= 0 then
                                        if _CommF_11:InvokeServer('ProQuestProgress', 'RichSon') == 1 then
                                            _CommF_11:InvokeServer('ProQuestProgress', 'RichSon')
                                            task.wait(0.1)
                                            EquipWeapon('Relic')
                                            task.wait(0.1)
                                            topos(v1333)
                                        end
                                    else
                                        local v1336 = game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader') or game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader')

                                        if v1336 then
                                            topos(v1336.HumanoidRootPart.CFrame)

                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(getgenv().SelectWeapon)

                                                v1336.HumanoidRootPart.CanCollide = false
                                                v1336.Humanoid.WalkSpeed = 0

                                                topos(v1336.HumanoidRootPart.CFrame)
                                                game:GetService('VirtualUser'):CaptureController()
                                                game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                                sethiddenproperty(_LocalPlayer45, 'SimulationRadius', math.huge)
                                            until v1336.Humanoid.Health <= 0 or not getgenv().AutoSaber
                                        end
                                    end
                                else
                                    _CommF_11:InvokeServer('ProQuestProgress', 'RichSon')
                                end
                            else
                                _CommF_11:InvokeServer('ProQuestProgress', 'GetCup')
                                task.wait(0.1)
                                EquipWeapon('Cup')
                                task.wait(0.1)
                                _CommF_11:InvokeServer('ProQuestProgress', 'FillCup', _Character28:FindFirstChild('Cup'))
                                task.wait(0.1)
                                _CommF_11:InvokeServer('ProQuestProgress', 'SickMan')
                            end
                        elseif _LocalPlayer45.Backpack:FindFirstChild('Torch') or _Character28:FindFirstChild('Torch') then
                            EquipWeapon('Torch')
                            topos(CFrame.new(1114.61, 5.04, 4350.22))
                        else
                            topos(CFrame.new(-1610, 11.5, 164))
                        end
                    else
                        local v1337 = CFrame.new(-1612.55, 36.97, 148.71)

                        if (v1337.Position - v1330.Position).Magnitude > 100 then
                            topos(v1337)
                        else
                            for v1338 = 1, 5 do
                                local v1339 = _Jungle.QuestPlates:FindFirstChild('Plate' .. v1338)

                                if v1339 then
                                    if v1339:FindFirstChild('Button') then
                                        v1330.CFrame = v1339.Button.CFrame

                                        task.wait(0.5)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

ESP = Window:AddTab({
    Title = 'Tab ESP',
    Icon = '',
})

local _RunService2 = game:GetService('RunService')
local _LocalPlayer46 = game:GetService('Players').LocalPlayer
local u1342 = false
local u1343 = nil

function UpdateIslandESP()
    if _LocalPlayer46 and _LocalPlayer46.Character and _LocalPlayer46.Character:FindFirstChild('Head') then
        local _Position11 = _LocalPlayer46.Character.Head.Position
        local v1345 = game:GetService('Workspace')._WorldOrigin.Locations:GetChildren()
        local v1346, v1347, v1348 = ipairs(v1345)

        while true do
            local v1349

            v1348, v1349 = v1346(v1347, v1348)

            if v1348 == nil then
                break
            end
            if v1349.Name ~= 'Sea' then
                if u1342 then
                    local _NameEsp = v1349:FindFirstChild('NameEsp')

                    if not _NameEsp then
                        _NameEsp = Instance.new('BillboardGui')
                        _NameEsp.Name = 'NameEsp'
                        _NameEsp.ExtentsOffset = Vector3.new(0, 1, 0)
                        _NameEsp.Size = UDim2.new(1, 200, 1, 30)
                        _NameEsp.Adornee = v1349
                        _NameEsp.AlwaysOnTop = true
                        _NameEsp.Parent = v1349

                        local _TextLabel2 = Instance.new('TextLabel', _NameEsp)

                        _TextLabel2.Font = Enum.Font.GothamBold
                        _TextLabel2.TextSize = 14
                        _TextLabel2.TextWrapped = true
                        _TextLabel2.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel2.TextYAlignment = Enum.TextYAlignment.Top
                        _TextLabel2.BackgroundTransparency = 1
                        _TextLabel2.TextStrokeTransparency = 0.5
                        _TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel2.Parent = _NameEsp
                    end

                    local _TextLabel3 = _NameEsp:FindFirstChildOfClass('TextLabel')

                    if _TextLabel3 then
                        local v1353 = (_Position11 - v1349.Position).Magnitude / 3

                        _TextLabel3.Text = string.format('%s\n%d Distance', v1349.Name, math.floor(v1353 + 0.5))
                    end
                else
                    local _NameEsp2 = v1349:FindFirstChild('NameEsp')

                    if _NameEsp2 then
                        _NameEsp2:Destroy()
                    end
                end
            end
        end
    end
end

ESP:AddToggle('Toggle', {
    Title = 'ESP Island',
    Default = false,
}):OnChanged(function(p1355)
    u1342 = p1355

    if u1342 then
        if not u1343 then
            u1343 = _RunService2.Heartbeat:Connect(UpdateIslandESP)
        end
    else
        if u1343 then
            u1343:Disconnect()

            u1343 = nil
        end

        local v1356, v1357, v1358 = ipairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

        while true do
            local v1359

            v1358, v1359 = v1356(v1357, v1358)

            if v1358 == nil then
                break
            end

            local _NameEsp3 = v1359:FindFirstChild('NameEsp')

            if _NameEsp3 then
                _NameEsp3:Destroy()
            end
        end
    end
end)

local _RunService3 = game:GetService('RunService')
local _LocalPlayer47 = game:GetService('Players').LocalPlayer
local u1363 = false
local u1364 = nil
local u1365 = math.random(1, 1000000)

function UpdateDevilChams()
    if _LocalPlayer47 and _LocalPlayer47.Character and _LocalPlayer47.Character:FindFirstChild('Head') then
        local _Position12 = _LocalPlayer47.Character.Head.Position
        local v1367, v1368, v1369 = ipairs(game.Workspace:GetChildren())

        while true do
            local u1370

            v1369, u1370 = v1367(v1368, v1369)

            if v1369 == nil then
                break
            end

            pcall(function()
                if u1370:IsA('Model') and string.find(u1370.Name, 'Fruit') and u1370:FindFirstChild('Handle') then
                    local _Handle = u1370.Handle

                    if u1363 then
                        local v1372 = _Handle:FindFirstChild('NameEsp' .. u1365)

                        if not v1372 then
                            v1372 = Instance.new('BillboardGui')
                            v1372.Name = 'NameEsp' .. u1365
                            v1372.ExtentsOffset = Vector3.new(0, 1, 0)
                            v1372.Size = UDim2.new(1, 200, 1, 30)
                            v1372.Adornee = _Handle
                            v1372.AlwaysOnTop = true
                            v1372.Parent = _Handle

                            local _TextLabel4 = Instance.new('TextLabel', v1372)

                            _TextLabel4.Font = Enum.Font.GothamSemibold
                            _TextLabel4.TextSize = 14
                            _TextLabel4.TextWrapped = true
                            _TextLabel4.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel4.TextYAlignment = Enum.TextYAlignment.Top
                            _TextLabel4.BackgroundTransparency = 1
                            _TextLabel4.TextStrokeTransparency = 0.5
                            _TextLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
                            _TextLabel4.Parent = v1372
                        end

                        local _TextLabel5 = v1372:FindFirstChildOfClass('TextLabel')

                        if _TextLabel5 then
                            local v1375 = (_Position12 - _Handle.Position).Magnitude / 3

                            _TextLabel5.Text = string.format('%s\n%d Distance', u1370.Name, math.floor(v1375 + 0.5))
                        end
                    else
                        local v1376 = _Handle:FindFirstChild('NameEsp' .. u1365)

                        if v1376 then
                            v1376:Destroy()
                        end
                    end
                end
            end)
        end
    end
end

ESP:AddToggle('Toggle', {
    Title = 'ESP Fruit',
    Default = false,
}):OnChanged(function(p1377)
    u1363 = p1377

    if u1363 then
        if not u1364 then
            u1364 = _RunService3.Heartbeat:Connect(UpdateDevilChams)
        end
    else
        if u1364 then
            u1364:Disconnect()

            u1364 = nil
        end

        local v1378, v1379, v1380 = ipairs(game.Workspace:GetChildren())

        while true do
            local v1381

            v1380, v1381 = v1378(v1379, v1380)

            if v1380 == nil then
                break
            end
            if v1381:IsA('Model') and (string.find(v1381.Name, 'Fruit') and v1381:FindFirstChild('Handle')) then
                local v1382 = v1381.Handle:FindFirstChild('NameEsp' .. u1365)

                if v1382 then
                    v1382:Destroy()
                end
            end
        end
    end
end)

local _RunService4 = game:GetService('RunService')
local _LocalPlayer48 = game:GetService('Players').LocalPlayer
local u1385 = false
local u1386 = nil
local u1387 = math.random(1, 1000000)

function UpdatePlayerChams()
    if _LocalPlayer48 and _LocalPlayer48.Character and _LocalPlayer48.Character:FindFirstChild('Head') then
        local _Position13 = _LocalPlayer48.Character.Head.Position
        local v1389, v1390, v1391 = ipairs(game:GetService('Players'):GetPlayers())

        while true do
            local u1392

            v1391, u1392 = v1389(v1390, v1391)

            if v1391 == nil then
                break
            end

            pcall(function()
                if u1392 ~= _LocalPlayer48 and u1392.Character and (u1392.Character:FindFirstChild('Head') and u1392.Character:FindFirstChild('Humanoid')) then
                    local _Head4 = u1392.Character.Head
                    local _Humanoid17 = u1392.Character.Humanoid
                    local v1395 = _Head4:FindFirstChild('NameEsp' .. u1387)

                    if u1385 then
                        if not v1395 then
                            v1395 = Instance.new('BillboardGui')
                            v1395.Name = 'NameEsp' .. u1387
                            v1395.ExtentsOffset = Vector3.new(0, 1, 0)
                            v1395.Size = UDim2.new(1, 200, 1, 30)
                            v1395.Adornee = _Head4
                            v1395.AlwaysOnTop = true
                            v1395.Parent = _Head4

                            local _TextLabel6 = Instance.new('TextLabel', v1395)

                            _TextLabel6.Font = Enum.Font.GothamSemibold
                            _TextLabel6.TextSize = 14
                            _TextLabel6.TextWrapped = true
                            _TextLabel6.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel6.TextYAlignment = Enum.TextYAlignment.Top
                            _TextLabel6.BackgroundTransparency = 1
                            _TextLabel6.TextStrokeTransparency = 0.5
                            _TextLabel6.Parent = v1395
                        end

                        local _TextLabel7 = v1395:FindFirstChildOfClass('TextLabel')

                        if _TextLabel7 then
                            local v1398 = math.floor((_Position13 - _Head4.Position).Magnitude / 3 + 0.5)
                            local v1399 = math.floor(_Humanoid17.Health / _Humanoid17.MaxHealth * 100 + 0.5)

                            _TextLabel7.Text = string.format('%s\n%d Distance\nHealth: %d%%', u1392.Name, v1398, v1399)

                            if u1392.Team ~= _LocalPlayer48.Team then
                                _TextLabel7.TextColor3 = Color3.fromRGB(255, 0, 0)
                            else
                                _TextLabel7.TextColor3 = Color3.fromRGB(0, 255, 0)
                            end
                        end
                    elseif v1395 then
                        v1395:Destroy()
                    end
                end
            end)
        end
    end
end

ESP:AddToggle('Toggle', {
    Title = 'ESP Player',
    Default = false,
}):OnChanged(function(p1400)
    u1385 = p1400

    if u1385 then
        if not u1386 then
            u1386 = _RunService4.Heartbeat:Connect(UpdatePlayerChams)
        end
    else
        if u1386 then
            u1386:Disconnect()

            u1386 = nil
        end

        local v1401, v1402, v1403 = ipairs(game:GetService('Players'):GetPlayers())

        while true do
            local v1404

            v1403, v1404 = v1401(v1402, v1403)

            if v1403 == nil then
                break
            end
            if v1404 ~= _LocalPlayer48 and v1404.Character and v1404.Character:FindFirstChild('Head') then
                local v1405 = v1404.Character.Head:FindFirstChild('NameEsp' .. u1387)

                if v1405 then
                    v1405:Destroy()
                end
            end
        end
    end
end)

PVP = Window:AddTab({
    Title = 'Tab PVP',
    Icon = '',
})

local v1406, v1407, v1408 = ipairs(game.Players:GetPlayers())
local v1409 = {}

while true do
    local v1410

    v1408, v1410 = v1406(v1407, v1408)

    if v1408 == nil then
        break
    end

    v1409[v1408] = v1410.Name
end

Dropdown = PVP:AddDropdown('Dropdown', {
    Title = 'Select Player PVP',
    Values = v1409,
    Multi = false,
    Default = false,
})

Dropdown:OnChanged(function(p1411)
    getgenv().SelectPlayer = p1411
end)
PVP:AddToggle('MyToggle', {
    Title = 'Teleport Player',
    Default = false,
}):OnChanged(function(p1412)
    getgenv().TeleportPlayer = p1412

    if getgenv().TeleportPlayer then
        task.spawn(function()
            while getgenv().TeleportPlayer do
                local v1413 = game:GetService('Players'):FindFirstChild(getgenv().SelectPlayer)
                local v1414 = v1413 and v1413.Character and v1413.Character:FindFirstChild('HumanoidRootPart')

                if v1414 then
                    topos(v1414.CFrame)
                end

                task.wait(0.1)
            end
        end)
    end
end)
PVP:AddToggle('Toggle', {
    Title = 'Auto Aimbot',
    Default = false,
}):OnChanged(function(p1415)
    getgenv().Aimbot = p1415
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if getgenv().Aimbot and getgenv().SelectPlayer then
                local v1416 = game.Players:FindFirstChild(getgenv().SelectPlayer)
                local _Character29 = game.Players.LocalPlayer.Character

                if _Character29 then
                    _Character29 = _Character29:FindFirstChildOfClass('Tool')
                end
                if v1416 and (v1416.Character and _Character29) then
                    local _RemoteEvent = _Character29:FindFirstChild('RemoteEvent')
                    local _MousePos = _Character29:FindFirstChild('MousePos')
                    local _HumanoidRootPart20 = v1416.Character:FindFirstChild('HumanoidRootPart')

                    if _RemoteEvent and (_MousePos and _HumanoidRootPart20) then
                        _RemoteEvent:FireServer(_HumanoidRootPart20.Position)
                    end
                end
            end
        end
    end)
end)
PVP:AddToggle('Toggle', {
    Title = 'Auto Aimbot Gun',
    Default = false,
}):OnChanged(function(p1421)
    getgenv().AimbotGun = p1421
end)
spawn(function()
    while task.wait(0.1) do
        if getgenv().AimbotGun and SelectWeaponGun then
            local _LocalPlayer49 = game:GetService('Players').LocalPlayer

            if _LocalPlayer49 then
                _LocalPlayer49 = _LocalPlayer49.Character
            end
            if _LocalPlayer49 then
                _LocalPlayer49 = _LocalPlayer49:FindFirstChild(SelectWeaponGun)
            end

            local u1423 = game:GetService('Players'):FindFirstChild(getgenv().SelectPlayer)

            if u1423 then
                u1423 = u1423.Character
            end
            if u1423 then
                u1423 = u1423:FindFirstChild('HumanoidRootPart')
            end
            if _LocalPlayer49 and u1423 then
                pcall(function()
                    _LocalPlayer49.Cooldown.Value = 0

                    local v1424 = {
                        u1423.Position,
                        u1423,
                    }

                    _LocalPlayer49.RemoteFunctionShoot:InvokeServer(unpack(v1424))
                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                end)
            end
        end
    end
end)
PVP:AddToggle('Toggle', {
    Title = 'Safe Modes',
    Default = false,
}):OnChanged(function(p1425)
    getgenv().SafeMode = p1425
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if getgenv().SafeMode then
                local _Character30 = game.Players.LocalPlayer.Character

                if _Character30 and (_Character30:FindFirstChild('Humanoid') and _Character30:FindFirstChild('HumanoidRootPart')) then
                    local v1427 = _Character30.Humanoid.MaxHealth * (getgenv().Safe / 100)

                    if _Character30.Humanoid.Health <= v1427 then
                        while getgenv().SafeMode and _Character30.Humanoid.Health <= v1427 do
                            task.wait(0.1)

                            _Character30.HumanoidRootPart.CFrame = _Character30.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0)
                        end
                    end
                end
            end
        end)
    end
end)

Slider = PVP:AddSlider('Slider', {
    Title = 'Safe Mode At',
    Default = 30,
    Min = 0,
    Max = 100,
    Rounding = 5,
    Callback = function(p1428)
        getgenv().Safe = p1428
    end,
})

PVP:AddToggle('Toggle', {
    Title = 'Walk On Water',
    Default = true,
}):OnChanged(function(p1429)
    getgenv().WalkWater = p1429

    local _WaterBasePlane = game:GetService('Workspace').Map['WaterBase-Plane']

    if getgenv().WalkWater then
        _WaterBasePlane.Size = Vector3.new(1000, 112, 1000)
    else
        _WaterBasePlane.Size = Vector3.new(1000, 80, 1000)
    end
end)
PVP:AddToggle('Toggle', {
    Title = 'No Clip',
    Default = false,
}):OnChanged(function(p1431)
    getgenv().NoClip = p1431

    if getgenv().NoClipConnection then
        getgenv().NoClipConnection:Disconnect()
    end
    if p1431 then
        getgenv().NoClipConnection = game:GetService('RunService').Stepped:Connect(function()
            local v1432, v1433, v1434 = ipairs(game.Players.LocalPlayer.Character:GetDescendants())

            while true do
                local v1435

                v1434, v1435 = v1432(v1433, v1434)

                if v1434 == nil then
                    break
                end
                if v1435:IsA('BasePart') then
                    v1435.CanCollide = false
                end
            end
        end)
    else
        local v1436, v1437, v1438 = ipairs(game.Players.LocalPlayer.Character:GetDescendants())

        while true do
            local v1439

            v1438, v1439 = v1436(v1437, v1438)

            if v1438 == nil then
                break
            end
            if v1439:IsA('BasePart') then
                v1439.CanCollide = true
            end
        end
    end
end)

local _LocalPlayer50 = game:GetService('Players').LocalPlayer

getgenv().WalkSpeed = 16

local _Toggle3 = PVP:AddToggle('Toggle', {
    Title = 'Change WalkSpeed',
    Default = false,
})
local u1442 = nil

local function u1445()
    if _Toggle3.Value then
        local _Character31 = _LocalPlayer50.Character
        local u1444 = _Character31 and _Character31:FindFirstChildOfClass('Humanoid')

        if u1444 then
            u1444.WalkSpeed = getgenv().WalkSpeed

            if u1442 then
                u1442:Disconnect()
            end

            u1442 = u1444:GetPropertyChangedSignal('WalkSpeed'):Connect(function()
                if _Toggle3.Value then
                    u1444.WalkSpeed = getgenv().WalkSpeed
                end
            end)
        end
    end
end

local v1446 = _Toggle3

_Toggle3.OnChanged(v1446, function(p1447)
    if p1447 then
        u1445()
        _LocalPlayer50.CharacterAdded:Connect(u1445)
    else
        if u1442 then
            u1442:Disconnect()

            u1442 = nil
        end

        local _Character32 = _LocalPlayer50.Character
        local v1449 = _Character32 and _Character32:FindFirstChildOfClass('Humanoid')

        if v1449 then
            v1449.WalkSpeed = 16
        end
    end
end)

Input = PVP:AddInput('Input', {
    Title = 'Input WalkSpeed',
    Default = 100,
    Placeholder = 'Input',
    Numeric = true,
    Finished = true,
    Callback = function(p1450)
        getgenv().WalkSpeed = p1450
    end,
})

game.StarterGui:SetCore('SendNotification', {
    Title = 'Yes Or No',
    Text = 'U want reset Config?',
    Icon = 'rbxassetid://5009915795',
    Duration = 100000,
    Button1 = 'Yes',
    Button2 = 'No',
})

local _ScreenGui2 = Instance.new('ScreenGui')
local _Frame = Instance.new('Frame')
local _ImageLabel = Instance.new('ImageLabel')
local _UICorner = Instance.new('UICorner')
local _TextButton = Instance.new('TextButton')

_ScreenGui2.Parent = game:GetService('CoreGui')
_ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_Frame.Parent = _ScreenGui2
_Frame.AnchorPoint = Vector2.new(0.1, 0.1)
_Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_Frame.BackgroundTransparency = 0
_Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
_Frame.BorderSizePixel = 1
_Frame.Position = UDim2.new(0, 20, 0.1, -6)
_Frame.Size = UDim2.new(0, 50, 0, 50)
_Frame.Name = 'dut dit'
_ImageLabel.Parent = _Frame
_ImageLabel.Name = 'Banana Test'
_ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
_ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
_ImageLabel.Size = UDim2.new(0, 40, 0, 40)
_ImageLabel.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
_ImageLabel.BackgroundTransparency = 1
_ImageLabel.BorderSizePixel = 1
_ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
_ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
_ImageLabel.Image = 'http://www.roblox.com/asset/?id= 5009915795'
_UICorner.CornerRadius = UDim.new(1, 0)
_UICorner.Parent = _Frame
_TextButton.Name = 'TextButton'
_TextButton.Parent = _Frame
_TextButton.AnchorPoint = Vector2.new(0, 0)
_TextButton.Position = UDim2.new(0, 0, 0, 0)
_TextButton.Size = UDim2.new(1, 0, 1, 0)
_TextButton.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
_TextButton.BackgroundTransparency = 1
_TextButton.BorderSizePixel = 1
_TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
_TextButton.TextColor3 = Color3.fromRGB(27, 42, 53)
_TextButton.Text = ''
_TextButton.Font = Enum.Font.SourceSans
_TextButton.TextSize = 8
_TextButton.TextTransparency = 0

local _TweenService4 = game:GetService('TweenService')
local _VirtualInputManager5 = game:GetService('VirtualInputManager')
local u1458 = false
local u1459 = UDim2.new(0, 40, 0, 40)
local u1460 = UDim2.new(0, 30, 0, 30)
local u1461 = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local u1462 = false
local v1463 = _TweenService4
local u1464 = _TweenService4.Create(v1463, _Frame, u1461, {BackgroundTransparency = 0.25})
local v1465 = _TweenService4
local u1466 = _TweenService4.Create(v1465, _Frame, u1461, {BackgroundTransparency = 0})

_TextButton.MouseButton1Down:Connect(function()
    if u1458 then
        _TweenService4:Create(_ImageLabel, u1461, {Size = u1459}):Play()
    else
        _TweenService4:Create(_ImageLabel, u1461, {Size = u1460}):Play()
    end

    u1458 = not u1458

    if u1462 then
        u1466:Play()
    else
        u1464:Play()
    end

    u1462 = not u1462

    _VirtualInputManager5:SendKeyEvent(true, 'LeftControl', false, game)
end)
print('--[[Hop Server If You Meet Game Admin]]--')

local u1467 = {
    red_game43 = true,
    rip_indra = true,
    Axiore = true,
    Polkster = true,
    wenlocktoad = true,
    Daigrock = true,
    toilamvidamme = true,
    oofficialnoobie = true,
    Uzoth = true,
    Azarth = true,
    arlthmetic = true,
    Death_King = true,
    Lunoven = true,
    TheGreateAced = true,
    rip_fud = true,
    drip_mama = true,
    layandikit12 = true,
    Hingoi = true,
}

spawn(function()
    while true do
        wait(1)

        local v1468, v1469, v1470 = pairs(game.Players:GetPlayers())

        while true do
            local v1471

            v1470, v1471 = v1468(v1469, v1470)

            if v1470 == nil then
                break
            end
            if u1467[v1471.Name] then
                Hop()
            end
        end
    end
end)

local _ = 10 > tick() - 0
