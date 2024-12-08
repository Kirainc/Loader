_G.Safe = {
    ["Attacking Mode"] = "Safe",
    ["Enabled"] = true,
}

repeat task.wait() until game:IsLoaded()

if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")  then
	repeat wait()
		if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
			if _G.JoinTeam == "Pirate" then
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			elseif _G.JoinTeam == "Marine" then
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			else
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			end
		end
	until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end

wait(3)

FirstLoad = true

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Kirainc Hub Project",
    SubTitle = "Blox Fruits By !xNoNameZ",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = true,
    Theme = "Rose",
    MinimizeKey = Enum.KeyCode.RightControl
})

-- https://lucide.dev/icons/
local Tabs = {
    Main = Window:AddTab({ Title = "General", Icon = "home" }),

    Automatic = Window:AddTab({ Title = "Automatic", Icon = "swords" }),

    Stats = Window:AddTab({ Title = "Stats", Icon = "bar-chart-4" }),

    Player = Window:AddTab({ Title = "Players", Icon = "baby" }),

    Island = Window:AddTab({ Title = "Island", Icon = "palmtree" }),

    Raid = Window:AddTab({ Title = "Dungeon", Icon = "palmtree" }),
    
    Fruit = Window:AddTab({ Title = "Devil Fruits", Icon = "apple" }),

    Shop = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),

    Miscellaneous = Window:AddTab({ Title = "Miscellaneous", Icon = "list-plus" }),

    Settings = Window:AddTab({ Title = "User Interface", Icon = "settings" })
}

local Options = Fluent.Options
do

-- [ Quest Api ] --

if game.PlaceId == 2753915549 then
    OldWorld = true
elseif game.PlaceId == 4442272183 then
    NewWorld = true
elseif game.PlaceId == 7449423635 then
    ThirdWorld = true
end

function CheckQuest() 
  MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
  if OldWorld then
      if MyLevel == 1 or MyLevel <= 14 then
          Mon = "Bandit"
          LevelQuest = 1
          NameQuest = "BanditQuest1"
          NameMon = "Bandit"
          CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
          CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
      elseif MyLevel == 15 or MyLevel <= 29 then
          Mon = "Gorilla"
          LevelQuest = 2
          NameQuest = "JungleQuest"
          NameMon = "Gorilla"
          CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
          CFrameMon = CFrame.new(-1230.667724609375, 6.279364109039307, -516.2539672851562)
      elseif MyLevel == 30 or MyLevel <= 39 then
          Mon = "Pirate"
          LevelQuest = 1
          NameQuest = "BuggyQuest1"
          NameMon = "Pirate"
          CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
          CFrameMon = CFrame.new(-1218.242431640625, 4.75205135345459, 3915.81103515625)
      elseif MyLevel == 40 or MyLevel <= 59 then
          Mon = "Brute"
          LevelQuest = 2
          NameQuest = "BuggyQuest1"
          NameMon = "Brute"
          CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
          CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
      elseif MyLevel == 60 or MyLevel <= 74 then
          Mon = "Desert Bandit"
          LevelQuest = 1
          NameQuest = "DesertQuest"
          NameMon = "Desert Bandit"
          CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
          CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
      elseif MyLevel == 75 or MyLevel <= 89 then
          Mon = "Desert Officer"
          LevelQuest = 2
          NameQuest = "DesertQuest"
          NameMon = "Desert Officer"
          CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
          CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
      elseif MyLevel == 90 or MyLevel <= 99 then
          Mon = "Snow Bandit"
          LevelQuest = 1
          NameQuest = "SnowQuest"
          NameMon = "Snow Bandit"
          CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
          CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
      elseif MyLevel == 100 or MyLevel <= 119 then
          Mon = "Snowman"
          LevelQuest = 2
          NameQuest = "SnowQuest"
          NameMon = "Snowman"
          CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
          CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
      elseif MyLevel == 120 or MyLevel <= 149 then
          Mon = "Chief Petty Officer"
          LevelQuest = 1
          NameQuest = "MarineQuest2"
          NameMon = "Chief Petty Officer"
          CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
      elseif MyLevel == 150 or MyLevel <= 174 then
          Mon = "Sky Bandit"
          LevelQuest = 1
          NameQuest = "SkyQuest"
          NameMon = "Sky Bandit"
          CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
          CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
      elseif MyLevel == 175 or MyLevel <= 189 then
          Mon = "Dark Master"
          LevelQuest = 2
          NameQuest = "SkyQuest"
          NameMon = "Dark Master"
          CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
          CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
      elseif MyLevel == 190 or MyLevel <= 209 then
          Mon = "Prisoner"
          LevelQuest = 1
          NameQuest = "PrisonerQuest"
          NameMon = "Prisoner"
          CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
          CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
      elseif MyLevel == 210 or MyLevel <= 249 then
          Mon = "Dangerous Prisoner"
          LevelQuest = 2
          NameQuest = "PrisonerQuest"
          NameMon = "Dangerous Prisoner"
          CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
          CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
      elseif MyLevel == 250 or MyLevel <= 274 then
          Mon = "Toga Warrior"
          LevelQuest = 1
          NameQuest = "ColosseumQuest"
          NameMon = "Toga Warrior"
          CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
          CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
      elseif MyLevel == 275 or MyLevel <= 299 then
          Mon = "Gladiator"
          LevelQuest = 2
          NameQuest = "ColosseumQuest"
          NameMon = "Gladiator"
          CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
          CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
      elseif MyLevel == 300 or MyLevel <= 324 then
          Mon = "Military Soldier"
          LevelQuest = 1
          NameQuest = "MagmaQuest"
          NameMon = "Military Soldier"
          CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
          CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
      elseif MyLevel == 325 or MyLevel <= 374 then
          Mon = "Military Spy"
          LevelQuest = 2
          NameQuest = "MagmaQuest"
          NameMon = "Military Spy"
          CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
          CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
      elseif MyLevel == 375 or MyLevel <= 399 then
          Mon = "Fishman Warrior"
          LevelQuest = 1
          NameQuest = "FishmanQuest"
          NameMon = "Fishman Warrior"
          CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
          CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
          if Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
          end
      elseif MyLevel == 400 or MyLevel <= 449 then
          Mon = "Fishman Commando"
          LevelQuest = 2
          NameQuest = "FishmanQuest"
          NameMon = "Fishman Commando"
          CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
          CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
          if Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
          end
      elseif MyLevel == 450 or MyLevel <= 474 then
          Mon = "God's Guard"
          LevelQuest = 1
          NameQuest = "SkyExp1Quest"
          NameMon = "God's Guard"
          CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
          CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
          if Auto_Farm_Level and Auto_Farm_Fully and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
          end
      elseif MyLevel == 475 or MyLevel <= 524 then
          Mon = "Shanda"
          LevelQuest = 2
          NameQuest = "SkyExp1Quest"
          NameMon = "Shanda"
          CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
          CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
          if Auto_Farm_Level and Auto_Farm_Fully and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
          end
      elseif MyLevel == 525 or MyLevel <= 549 then
          Mon = "Royal Squad"
          LevelQuest = 1
          NameQuest = "SkyExp2Quest"
          NameMon = "Royal Squad"
          CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
      elseif MyLevel == 550 or MyLevel <= 624 then
          Mon = "Royal Soldier"
          LevelQuest = 2
          NameQuest = "SkyExp2Quest"
          NameMon = "Royal Soldier"
          CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
      elseif MyLevel == 625 or MyLevel <= 649 then
          Mon = "Galley Pirate"
          LevelQuest = 1
          NameQuest = "FountainQuest"
          NameMon = "Galley Pirate"
          CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
          CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
      elseif MyLevel >= 650 then
          Mon = "Galley Captain"
          LevelQuest = 2
          NameQuest = "FountainQuest"
          NameMon = "Galley Captain"
          CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
          CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
      end
  elseif NewWorld then
      if MyLevel == 700 or MyLevel <= 724 then
          Mon = "Raider"
          LevelQuest = 1
          NameQuest = "Area1Quest"
          NameMon = "Raider"
          CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)

          CFrameMon = CFrame.new(364.545532, 39.4827118, 2318.80884, 0.99361068, 0, -0.112861879, 0, 1, 0, 0.112861879, 0, 0.99361068)
          CFrameMon = CFrame.new(-713.320312, 39.483036, 2382.00244, 0.99998039, 0, 0.00626525469, 0, 1, 0, -0.00626525469, 0, 0.99998039)
      elseif MyLevel == 725 or MyLevel <= 774 then
          Mon = "Mercenary"
          LevelQuest = 2
          NameQuest = "Area1Quest"
          NameMon = "Mercenary"
          CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)

          CFrameMon = CFrame.new(-959.88562, 79.0433121, 1689.34216, -0.519833982, -4.60919694e-08, -0.854267299, -2.10137969e-08, 1, -4.11677767e-08, 0.854267299, -3.44900886e-09, -0.519833982)
          CFrameMob = CFrame.new(-1097.50134, 80.2704315, 1154.44653, -0.998735368, -5.17227328e-08, 0.0502755493, -5.20890033e-08, 1, -5.97504224e-09, -0.0502755493, -8.58628901e-09, -0.998735368)
      elseif MyLevel == 750 or MyLevel <= 799 then
          Mon = "Swan Pirate"
          LevelQuest = 1
          NameQuest = "Area2Quest"
          NameMon = "Swan Pirate"
          CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
          CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
      elseif MyLevel == 800 or MyLevel <= 874 then
          Mon = "Factory Staff"
          NameQuest = "Area2Quest"
          LevelQuest = 2
          NameMon = "Factory Staff"
          CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
          CFrameMon = CFrame.new(-179.817947, 149.77565, -255.867432, -0.386231571, 4.79212892e-09, -0.922401845, -4.66115857e-08, 1, 2.47126515e-08, 0.922401845, 5.25394199e-08, -0.386231571)
      elseif MyLevel == 875 or MyLevel <= 899 then
          Mon = "Marine Lieutenant"
          LevelQuest = 1
          NameQuest = "MarineQuest3"
          NameMon = "Marine Lieutenant"
          CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
          CFrameMon = CFrame.new(-2439.96313, 73.3593445, -3218.30811, 0.513842463, 1.80383619e-08, -0.857884586, -4.84671325e-09, 1, 1.81235524e-08, 0.857884586, -5.15472953e-09, 0.513842463)
      elseif MyLevel == 900 or MyLevel <= 949 then
          Mon = "Marine Captain"
          LevelQuest = 2
          NameQuest = "MarineQuest3"
          NameMon = "Marine Captain"
          CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
          CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
      elseif MyLevel == 950 or MyLevel <= 974 then
          Mon = "Zombie"
          LevelQuest = 1
          NameQuest = "ZombieQuest"
          NameMon = "Zombie"
          CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
          CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
      elseif MyLevel == 975 or MyLevel <= 999 then
          Mon = "Vampire"
          LevelQuest = 2
          NameQuest = "ZombieQuest"
          NameMon = "Vampire"
          CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
          CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
      elseif MyLevel == 1000 or MyLevel <= 1049 then
          Mon = "Snow Trooper"
          LevelQuest = 1
          NameQuest = "SnowMountainQuest"
          NameMon = "Snow Trooper"
          CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
          CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
      elseif MyLevel == 1050 or MyLevel <= 1099 then
          Mon = "Winter Warrior"
          LevelQuest = 2
          NameQuest = "SnowMountainQuest"
          NameMon = "Winter Warrior"
          CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
          CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
      elseif MyLevel == 1100 or MyLevel <= 1124 then
          Mon = "Lab Subordinate"
          LevelQuest = 1
          NameQuest = "IceSideQuest"
          NameMon = "Lab Subordinate"
          CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
          CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
      elseif MyLevel == 1125 or MyLevel <= 1174 then
          Mon = "Horned Warrior"
          LevelQuest = 2
          NameQuest = "IceSideQuest"
          NameMon = "Horned Warrior"
          CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
          CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
      elseif MyLevel == 1175 or MyLevel <= 1199 then
          Mon = "Magma Ninja"
          LevelQuest = 1
          NameQuest = "FireSideQuest"
          NameMon = "Magma Ninja"
          CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
          CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
      elseif MyLevel == 1200 or MyLevel <= 1249 then
          Mon = "Lava Pirate"
          LevelQuest = 2
          NameQuest = "FireSideQuest"
          NameMon = "Lava Pirate"
          CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
          CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
      elseif MyLevel == 1250 or MyLevel <= 1274 then
          Mon = "Ship Deckhand"
          LevelQuest = 1
          NameQuest = "ShipQuest1"
          NameMon = "Ship Deckhand"
          CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
          CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
          if Auto_Farm_Level and Auto_Farm_Fully and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
          end
      elseif MyLevel == 1275 or MyLevel <= 1299 then
          Mon = "Ship Engineer"
          LevelQuest = 2
          NameQuest = "ShipQuest1"
          NameMon = "Ship Engineer"
          CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
          CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
          if Auto_Farm_Level and Auto_Farm_Fully and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
          end           
      elseif MyLevel == 1300 or MyLevel <= 1324 then
          Mon = "Ship Steward"
          LevelQuest = 1
          NameQuest = "ShipQuest2"
          NameMon = "Ship Steward"
          CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
          CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
          if Auto_Farm_Level and Auto_Farm_Fully and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
          end
      elseif MyLevel == 1325 or MyLevel <= 1349 then
          Mon = "Ship Officer"
          LevelQuest = 2
          NameQuest = "ShipQuest2"
          NameMon = "Ship Officer"
          CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
          CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
          if Auto_Farm_Level and Auto_Farm_Fully and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
          end
      elseif MyLevel == 1350 or MyLevel <= 1374 then
          Mon = "Arctic Warrior"
          LevelQuest = 1
          NameQuest = "FrostQuest"
          NameMon = "Arctic Warrior"
          CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
          CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
          if Auto_Farm_Level and Auto_Farm_Fully and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
          end
      elseif MyLevel == 1375 or MyLevel <= 1424 then
          Mon = "Snow Lurker"
          LevelQuest = 2
          NameQuest = "FrostQuest"
          NameMon = "Snow Lurker"
          CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
          CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
      elseif MyLevel == 1425 or MyLevel <= 1449 then
          Mon = "Sea Soldier"
          LevelQuest = 1
          NameQuest = "ForgottenQuest"
          NameMon = "Sea Soldier"
          CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
          CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
      elseif MyLevel >= 1450 then
          Mon = "Water Fighter"
          LevelQuest = 2
          NameQuest = "ForgottenQuest"
          NameMon = "Water Fighter"
          CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
          CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
      end
  elseif ThirdWorld then
      if MyLevel == 1500 or MyLevel <= 1524 then
          Mon = "Pirate Millionaire"
          LevelQuest = 1
          NameQuest = "PiratePortQuest"
          NameMon = "Pirate Millionaire"
          CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
          CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
      elseif MyLevel == 1525 or MyLevel <= 1574 then
          Mon = "Pistol Billionaire"
          LevelQuest = 2
          NameQuest = "PiratePortQuest"
          NameMon = "Pistol Billionaire"
          CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
          CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
      elseif MyLevel == 1575 or MyLevel <= 1599 then
          Mon = "Dragon Crew Warrior"
          LevelQuest = 1
          NameQuest = "AmazonQuest"
          NameMon = "Dragon Crew Warrior"
          CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
          CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
      elseif MyLevel == 1600 or MyLevel <= 1624 then 
          Mon = "Dragon Crew Archer"
          NameQuest = "AmazonQuest"
          LevelQuest = 2
          NameMon = "Dragon Crew Archer"
          CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
          CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
      elseif MyLevel == 1625 or MyLevel <= 1649 then
          Mon = "Female Islander"
          NameQuest = "AmazonQuest2"
          LevelQuest = 1
          NameMon = "Female Islander"
          CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
          CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
      elseif MyLevel == 1650 or MyLevel <= 1699 then 
          Mon = "Giant Islander"
          NameQuest = "AmazonQuest2"
          LevelQuest = 2
          NameMon = "Giant Islander"
          CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
          CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
      elseif MyLevel == 1700 or MyLevel <= 1724 then
          Mon = "Marine Commodore"
          LevelQuest = 1
          NameQuest = "MarineTreeIsland"
          NameMon = "Marine Commodore"
          CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
          CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
      elseif MyLevel == 1725 or MyLevel <= 1774 then
          Mon = "Marine Rear Admiral"
          NameMon = "Marine Rear Admiral"
          NameQuest = "MarineTreeIsland"
          LevelQuest = 2
          CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
          CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
      elseif MyLevel == 1775 or MyLevel <= 1799 then
          Mon = "Fishman Raider"
          LevelQuest = 1
          NameQuest = "DeepForestIsland3"
          NameMon = "Fishman Raider"
          CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
          CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
      elseif MyLevel == 1800 or MyLevel <= 1824 then
          Mon = "Fishman Captain"
          LevelQuest = 2
          NameQuest = "DeepForestIsland3"
          NameMon = "Fishman Captain"
          CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
          CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
      elseif MyLevel == 1825 or MyLevel <= 1849 then
          Mon = "Forest Pirate"
          LevelQuest = 1
          NameQuest = "DeepForestIsland"
          NameMon = "Forest Pirate"
          CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
          CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
      elseif MyLevel == 1850 or MyLevel <= 1899 then
          Mon = "Mythological Pirate"
          LevelQuest = 2
          NameQuest = "DeepForestIsland"
          NameMon = "Mythological Pirate"
          CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
          CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
      elseif MyLevel == 1900 or MyLevel <= 1924 then
          Mon = "Jungle Pirate"
          LevelQuest = 1
          NameQuest = "DeepForestIsland2"
          NameMon = "Jungle Pirate"
          CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
          CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
      elseif MyLevel == 1925 or MyLevel <= 1974 then
          Mon = "Musketeer Pirate"
          LevelQuest = 2
          NameQuest = "DeepForestIsland2"
          NameMon = "Musketeer Pirate"
          CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
          CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
      elseif MyLevel == 1975 or MyLevel <= 1999 then
          Mon = "Reborn Skeleton"
          LevelQuest = 1
          NameQuest = "HauntedQuest1"
          NameMon = "Reborn Skeleton"
          CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
          CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
      elseif MyLevel == 2000 or MyLevel <= 2024 then
          Mon = "Living Zombie"
          LevelQuest = 2
          NameQuest = "HauntedQuest1"
          NameMon = "Living Zombie"
          CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
          CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
      elseif MyLevel == 2025 or MyLevel <= 2049 then
          Mon = "Demonic Soul"
          LevelQuest = 1
          NameQuest = "HauntedQuest2"
          NameMon = "Demonic Soul"
          CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
          CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
      elseif MyLevel == 2050 or MyLevel <= 2074 then
          Mon = "Posessed Mummy"
          LevelQuest = 2
          NameQuest = "HauntedQuest2"
          NameMon = "Posessed Mummy"
          CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
      elseif MyLevel == 2075 or MyLevel <= 2099 then
          Mon = "Peanut Scout"
          LevelQuest = 1
          NameQuest = "NutsIslandQuest"
          NameMon = "Peanut Scout"
          CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
      elseif MyLevel == 2100 or MyLevel <= 2124 then
          Mon = "Peanut President"
          LevelQuest = 2
          NameQuest = "NutsIslandQuest"
          NameMon = "Peanut President"
          CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
      elseif MyLevel == 2125 or MyLevel <= 2149 then
          Mon = "Ice Cream Chef"
          LevelQuest = 1
          NameQuest = "IceCreamIslandQuest"
          NameMon = "Ice Cream Chef"
          CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
      elseif MyLevel == 2150 or MyLevel <= 2199 then
          Mon = "Ice Cream Commander"
          LevelQuest = 2
          NameQuest = "IceCreamIslandQuest"
          NameMon = "Ice Cream Commander"
          CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
      elseif MyLevel == 2200 or MyLevel <= 2224 then
          Mon = "Cookie Crafter"
          LevelQuest = 1
          NameQuest = "CakeQuest1"
          NameMon = "Cookie Crafter"
          CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
          CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
      elseif MyLevel == 2225 or MyLevel <= 2249 then
          Mon = "Cake Guard"
          LevelQuest = 2
          NameQuest = "CakeQuest1"
          NameMon = "Cake Guard"
          CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
          CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
      elseif MyLevel == 2250 or MyLevel <= 2274 then
          Mon = "Baking Staff"
          LevelQuest = 1
          NameQuest = "CakeQuest2"
          NameMon = "Baking Staff"
          CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
          CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
      elseif MyLevel == 2275 or MyLevel <= 2299 then
          Mon = "Head Baker"
          LevelQuest = 2
          NameQuest = "CakeQuest2"
          NameMon = "Head Baker"
          CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
          CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
      elseif MyLevel == 2300 or MyLevel <= 2324 then
          Mon = "Cocoa Warrior"
          LevelQuest = 1
          NameQuest = "ChocQuest1"
          NameMon = "Cocoa Warrior"
          CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
          CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
      elseif MyLevel == 2325 or MyLevel <= 2349 then
          Mon = "Chocolate Bar Battler"
          LevelQuest = 2
          NameQuest = "ChocQuest1"
          NameMon = "Chocolate Bar Battler"
          CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
          CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
      elseif MyLevel == 2350 or MyLevel <= 2374 then
          Mon = "Sweet Thief"
          LevelQuest = 1
          NameQuest = "ChocQuest2"
          NameMon = "Sweet Thief"
          CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
          CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
      elseif MyLevel == 2375 or MyLevel <= 2399 then
          Mon = "Candy Rebel"
          LevelQuest = 2
          NameQuest = "ChocQuest2"
          NameMon = "Candy Rebel"
          CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
          CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
      elseif MyLevel == 2400 or MyLevel <= 2424 then
          Mon = "Candy Pirate"
          LevelQuest = 1
          NameQuest = "CandyQuest1"
          NameMon = "Candy Pirate"
          CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
          CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
      elseif MyLevel == 2425 or MyLevel <= 2449 then
          Mon = "Snow Demon"
          LevelQuest = 2
          NameQuest = "CandyQuest1"
          NameMon = "Snow Demon"
          CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
          CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
      elseif MyLevel == 2450 or MyLevel <= 2474 then
          Mon = "Isle Outlaw"
          LevelQuest = 1
          NameQuest = "TikiQuest1"
          NameMon = "Isle Outlaw"
          CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
          CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
      elseif MyLevel == 2475 or MyLevel <= 2499 then
          Mon = "Island Boy"
          LevelQuest = 2
          NameQuest = "TikiQuest1"
          NameMon = "Island Boy"
          CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
          CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
      elseif MyLevel == 2500 or MyLevel <= 2524 then
          Mon = "Sun-kissed Warrior"
          LevelQuest = 1
          NameQuest = "TikiQuest2"
          NameMon = "kissed"
          CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
          CFrameMon = CFrame.new(-16349.8779296875, 92.0808334350586, 1123.4169921875)
      elseif MyLevel >= 2525 then
          Mon = "Isle Champion"
          LevelQuest = 2
          NameQuest = "TikiQuest2"
          NameMon = "Isle Champion"
          CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
          CFrameMon = CFrame.new(-17003, 175, 1050)
      end
  end
end

-- [ Boss Quest ] --

function CheckBossQuest()
    if Select_Boss == "Saber Expert" then
        MsBoss = "Saber Expert"
        NameBoss = "Saber Expert"
        CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
    elseif Select_Boss == "The Saw" then
        MsBoss = "The Saw"
        NameBoss = "The Saw"
        CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
    elseif Select_Boss == "Greybeard" then
        MsBoss = "Greybeard"
        NameBoss = "Greybeard"
        CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
    elseif Select_Boss == "The Gorilla King" then
        MsBoss = "The Gorilla King"
        NameBoss = "The Gorilla King"
        NameQuestBoss = "JungleQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
        CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
    elseif Select_Boss == "Bobby" then
        MsBoss = "Bobby"
        NameBoss = "Bobby"
        NameQuestBoss = "BuggyQuest1"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
        CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
    elseif Select_Boss == "Yeti" then
        MsBoss = "Yeti"
        NameBoss = "Yeti"
        NameQuestBoss = "SnowQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
        CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
    elseif Select_Boss == "Mob Leader" then
        MsBoss = "Mob Leader"
        NameBoss = "Mob Leader"
        CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
    elseif Select_Boss == "Vice Admiral" then
        MsBoss = "Vice Admiral"
        NameBoss = "Vice Admiral"
        NameQuestBoss = "MarineQuest2"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
        CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
    elseif Select_Boss == "Warden" then
        MsBoss = "Warden"
        NameBoss = "Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 1
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif Select_Boss == "Chief Warden" then
        MsBoss = "Chief Warden"
        NameBoss = "Chief Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif Select_Boss == "Swan" then
        MsBoss = "Swan"
        NameBoss = "Swan"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif Select_Boss == "Magma Admiral" then
        MsBoss = "Magma Admiral"
        NameBoss = "Magma Admiral"
        NameQuestBoss = "MagmaQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
        CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
    elseif Select_Boss == "Fishman Lord" then
        MsBoss = "Fishman Lord"
        NameBoss = "Fishman Lord"
        NameQuestBoss = "FishmanQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
        CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
    elseif Select_Boss == "Wysper" then
        MsBoss = "Wysper"
        NameBoss = "Wysper"
        NameQuestBoss = "SkyExp1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
        CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
    elseif Select_Boss == "Thunder God" then
        MsBoss = "Thunder God"
        NameBoss = "Thunder God"
        NameQuestBoss = "SkyExp2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
        CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
    elseif Select_Boss == "Cyborg" then
        MsBoss = "Cyborg"
        NameBoss = "Cyborg"
        NameQuestBoss = "FountainQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
        CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
    -- New World
    elseif Select_Boss == "Diamond" then
        MsBoss = "Diamond"
        NameBoss = "Diamond"
        NameQuestBoss = "Area1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
        CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
    elseif Select_Boss == "Jeremy" then
        MsBoss = "Jeremy"
        NameBoss = "Jeremy"
        NameQuestBoss = "Area2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
        CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
    elseif Select_Boss == "Fajita" then
        MsBoss = "Fajita"
        NameBoss = "Fajita"
        NameQuestBoss = "MarineQuest3"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
        CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
    elseif Select_Boss == "Don Swan" then
        MsBoss = "Don Swan"
        NameBoss = "Don Swan"
        CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
    elseif Select_Boss == "Smoke Admiral" then
        MsBoss = "Smoke Admiral"
        NameBoss = "Smoke Admiral"
        NameQuestBoss = "IceSideQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
        CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
    elseif Select_Boss == "Cursed Captain" then
        MsBoss = "Cursed Captain"
        NameBoss = "Cursed Captain"
        CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
    elseif Select_Boss == "Darkbeard" then
        MsBoss = "Darkbeard"
        NameBoss = "Darkbeard"
        CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
    elseif Select_Boss == "Order" then
        MsBoss = "Order"
        NameBoss = "Order"
        CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
    elseif Select_Boss == "Awakened Ice Admiral" then
        MsBoss = "Awakened Ice Admiral"
        NameBoss = "Awakened Ice Admiral"
        NameQuestBoss = "FrostQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
        CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
    elseif Select_Boss == "Tide Keeper" then
        MsBoss = "Tide Keeper"
         NameBoss = "Tide Keeper"
        NameQuestBoss = "ForgottenQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
        CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
    -- Thire World
    elseif Select_Boss == "Stone" then
        MsBoss = "Stone"
        NameBoss = "Stone"
        NameQuestBoss = "PiratePortQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-290, 44, 5577)
        CFrameBoss = CFrame.new(-1085, 40, 6779)
    elseif Select_Boss == "Island Empress" then
        MsBoss = "Island Empress"
         NameBoss = "Island Empress"
        NameQuestBoss = "AmazonQuest2"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5443, 602, 752)
        CFrameBoss = CFrame.new(5659, 602, 244)
    elseif Select_Boss == "Kilo Admiral" then
        MsBoss = "Kilo Admiral"
        NameBoss = "Kilo Admiral"
        NameQuestBoss = "MarineTreeIsland"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(2178, 29, -6737)
        CFrameBoss =CFrame.new(2846, 433, -7100)
    elseif Select_Boss == "Captain Elephant" then
        MsBoss = "Captain Elephant"
        NameBoss = "Captain Elephant"
        NameQuestBoss = "DeepForestIsland"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
        CFrameBoss = CFrame.new(-13221, 325, -8405)
    elseif Select_Boss == "Beautiful Pirate" then
        MsBoss = "Beautiful Pirate"
        NameBoss = "Beautiful Pirate"
        NameQuestBoss = "DeepForestIsland2"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
        CFrameBoss = CFrame.new(5182, 23, -20)
    elseif Select_Boss == "Cake Queen" then
        MsBoss = "Cake Queen"
        NameBoss = "Cake Queen"
        NameQuestBoss = "IceCreamIslandQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-716, 382, -11010)
        CFrameBoss = CFrame.new(-821, 66, -10965)
    elseif Select_Boss == "rip_indra True Form" then
        MsBoss = "rip_indra True Form"
        NameBoss = "rip_indra True Form"
        CFrameBoss = CFrame.new(-5359, 424, -2735)
    elseif Select_Boss == "Longma" then
        MsBoss = "Longma"
        NameBoss = "Longma"
        CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
    elseif Select_Boss == "Soul Reaper" then
        MsBoss = "Soul Reaper"
        NameBoss = "Soul Reaper"
        CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
    end
end

-- [ toTarget ] --

function ToTarget(p)
	task.spawn(function()
		pcall(function()
			if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 200 then 
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
				if game.Players.LocalPlayer.Character:FindFirstChild("Root") then
					game.Players.LocalPlayer.Character:FindFirstChild("Root"):Destroy();
					wait()
					ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end;
				if game.Players.LocalPlayer.Character:FindFirstChild("Root") then
					game.Players.LocalPlayer.Character:FindFirstChild("Root"):Remove();
				end;
			elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
				local K = Instance.new("Part",game.Players.LocalPlayer.Character)
				K.Size = Vector3.new(1,0.5,1)
				K.Name = "Root"
				K.Anchored = true
				K.Transparency = 1
				K.CanCollide = false
				K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
			end
			local r = game:GetService("Players").LocalPlayer
			local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
			local z = game:service("TweenService")
			local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
			local S,g = pcall(function()
				local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = p})
				q:Play()
			end)
			if _G.StopTween == true then
            q:Cancel()
            _G.Clip = false
        end
			if not S then 
				return g
			end
			game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
				pcall(function()
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 50 then 
						task.spawn(function()
							pcall(function()
								if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 200 then 
									game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
								else 
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
								end
							end)
						end)
					elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 25 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 40 then 
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 25 then 
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					end
				end)
			end
		end)
	end)    
end

function InstantTP(P)
    repeat wait()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500
end

task.spawn(function()
	while task.wait() do 
		pcall(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.Root.CFrame;
			if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1 then
				game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
			end
		end)
	end
end)

-- [ Cancel toTarget ] --

function CancelTween(target)
    if not target then
        _G.CancelTween = true
        wait()
        ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.CancelTween = false
        _G.Clip = false
    end
    if game.Players.LocalPlayer.Character:FindFirstChild('Highlight') then
        game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
    end
end

-- [ Attack Farm ] -- 

AttackType = 1
spawn(function()
    while wait(.1) do
        if AttackType == 1 then
            AttackFarm = CFrame.new(0, 25, 0)
        end
    end
end)
spawn(function()
    while wait(.1) do
        AttackType = 1
        wait(1)
    end
end)

-- [ Random Attack ] --

RandomType = 1
spawn(function()
	while wait(.1) do
		if RandomType == 1 then
			RandomFarm = CFrame.new(0, 0, -25)
		elseif RandomType == 2 then
			RandomFarm = CFrame.new(25, 0, 0)
		elseif RandomType == 3 then
			RandomFarm = CFrame.new(0, 0, 25)
		elseif RandomType == 4 then
			RandomFarm = CFrame.new(-25, 0, 0)
		elseif RandomType == 5 then
			RandomFarm = CFrame.new(0, 25, 0)
		end
	end
end)
spawn(function()
	while wait(.1) do
		RandomType = 1
		wait(0.1)
		RandomType = 2
		wait(0.1)
		RandomType = 3
		wait(0.1)
		RandomType = 4
		wait(0.1)
		RandomType = 5
		wait(0.1)
	end
end)

-- [ Check Mob ] --

CheckType = 1
spawn(function()
	while wait(.1) do
		if CheckType == 1 then
			Check = CFrame.new(0, 30, -100)
		elseif CheckType == 2 then
			Check = CFrame.new(100, 30, 0)
		elseif CheckType == 3 then
			Check = CFrame.new(0, 30, 100)
		elseif CheckType == 4 then
			Check = CFrame.new(-100, 30, 0)
		end
	end
end)
spawn(function()
	while wait(.1) do
		CheckType = 1
		wait(1)
		CheckType = 2
		wait(1)
		CheckType = 3
		wait(1)
		CheckType = 4
	end
end)

FastCheck = 1
spawn(function()
	while wait(.1) do
		if FastCheck == 1 then
			Fast = CFrame.new(0, 30, -500)
		elseif FastCheck == 2 then
			Fast = CFrame.new(500, 30, 0)
		elseif FastCheck == 3 then
			Fast = CFrame.new(0, 30, 500)
		elseif FastCheck == 4 then
			Fast = CFrame.new(-500, 30, 0)
		end
	end
end)
spawn(function()
	while wait(.1) do
		FastCheck = 1
		wait(0.5)
		FastCheck = 2
		wait(0.5)
		FastCheck = 3
		wait(0.5)
		FastCheck = 4
        wait(0.5)
	end
end)

-- [ InstantAttack ] --

function Click()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end

_G.Safe = {
    ["Attacking Mode"] = "Safe",
    ["Enabled"] = true,
}

InstantAttack = true

if _G.Safe["Attacking Mode"] == "Safe" and _G.Safe["Enabled"] then
    Delay = 0.15
elseif _G.Safe["Attacking Mode"] == "Normally" and _G.Safe["Enabled"] then
    Delay = 0.1
end

spawn(function()
    while wait() do
        pcall(function()
            if InstantAttack and not Auto_Farm_Fruit and not Auto_Farm_Gun then
                repeat wait(Delay)
                    AttackFunction()
                until not InstantAttack
            end
        end)
    end
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if InstantAttack then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()
			    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
    end)
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if InstantAttack == true then
            game.Players.LocalPlayer.Character.Stun.Value = 0
            game.Players.LocalPlayer.Character.Busy.Value = false        
        end
    end)
end)

task.spawn(function()
	if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
		game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
			pcall(function()
				if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
					game.Players.LocalPlayer.Character.Stun.Value = 0
				end
			end)
		end)
	end
end)

spawn(function()
	while wait() do
		for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
			pcall(function()
				if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
					v:Destroy()
				end
			end)
		end
	end
end)

function Signature()
    local ac = CombatFrameworkR.activeController
    if ac and ac.equipped then
     for Ryuen = 1, 1 do
        local bladehit = getAllBladeHits(100)
        if #bladehit > 0 then
            local AcAttack8 = debug.getupvalue(ac.attack, 5)
            local AcAttack9 = debug.getupvalue(ac.attack, 6)
            local AcAttack7 = debug.getupvalue(ac.attack, 4)
            local AcAttack10 = debug.getupvalue(ac.attack, 7)
            local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
            local NumberAc13 = AcAttack7 * 798405
            (function() 
                NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
                AcAttack8 = math.floor(NumberAc12 / AcAttack9)
                AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
            end)()
            AcAttack10 = AcAttack10 + 1
            debug.setupvalue(ac.attack, 5, AcAttack8)
            debug.setupvalue(ac.attack, 6, AcAttack9)
            debug.setupvalue(ac.attack, 4, AcAttack7)
            debug.setupvalue(ac.attack, 7, AcAttack10)
            for k, v in pairs(ac.animator.anims.basic) do
                v:Play(0.01, 0.01, 0.01)
            end
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 1, "")
            end
        end
    end
    end
    end

local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

task.spawn(function()
    local CombatFrameworkOld = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
    local CombatFrameworkR = getupvalues(CombatFrameworkOld)[2]
    local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)

    function maxincrement()
        return #CombatFrameworkR.activeController.anims.basic
    end

    spawn(function()
        local old
        old = hookmetamethod(game, "__namecall",function(self,...)
            local method = getnamecallmethod() local args = {...}
            if method:lower() == "fireserver" then
                if args[1] == "hit" then
                    args[3] = maxincrement()
                    return old(self,unpack(args))
                end 
            end
        return old(self,...)
        end) 
    end)
end)

function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then 
    return 
    end
    while ret.Parent ~= game.Players.LocalPlayer.Character do 
        ret = ret.Parent end
    return ret
end

function AttackNoCD(Num)
    if Num == 1 then
        local AC = CbFw2.activeController
        for i = 1,1 do tick()
            local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                plr.Character,
                {plr.Character.HumanoidRootPart},
                60
            )
            local cac = {}
            local hash = {}
            for k, v in pairs(bladehit) do
                if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                    table.insert(cac, v.Parent.HumanoidRootPart)
                    hash[v.Parent] = true
                end
            end
            bladehit = cac
            if #bladehit > 0 then
                local u8 = debug.getupvalue(AC.attack, 5)
                local u9 = debug.getupvalue(AC.attack, 6)
                local u7 = debug.getupvalue(AC.attack, 4)
                local u10 = debug.getupvalue(AC.attack, 7)
                local u12 = (u8 * 798405 + u7 * 727595) % u9
                local u13 = u7 * 798405
                (function()
                    u12 = (u12 * u9 + u13) % 1099511627776
                    u8 = math.floor(u12 / u9)
                    u7 = u12 - u8 * u9
                end)()
                u10 = u10 + 1
                debug.setupvalue(AC.attack, 5, u8)
                debug.setupvalue(AC.attack, 6, u9)
                debug.setupvalue(AC.attack, 4, u7)
                debug.setupvalue(AC.attack, 7, u10)
                pcall(function()
                    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                        AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                        game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "")
                    end
                end)
            end
        end
    elseif Num == 0 then
        local AC = CbFw2.activeController
        for i = 1,1 do tick()
            local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                plr.Character,
                {plr.Character.HumanoidRootPart},
                60
            )
            local cac = {}
            local hash = {}
            for k, v in pairs(bladehit) do
                if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                    table.insert(cac, v.Parent.HumanoidRootPart)
                    hash[v.Parent] = true
                end
            end
            bladehit = cac
            if #bladehit > 0 then
                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                end
                pcall(function()
                    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                        for i,CombatFrameworkR in pairs(CbFw) do
                            pcall(function()
                                if i == 2 then
                                    local AC = CbFw2.activeController
                                    local CSR = require(game.ReplicatedStorage.Util.CameraShaker)
                                    CSR:Stop()
                                    CombatFrameworkR.activeController.attacking = false
                                    CombatFrameworkR.activeController.blocking = false
                                    CombatFrameworkR.activeController.focusStart = 1655503339.0980349
                                    CombatFrameworkR.activeController.increment = 4
                                    CombatFrameworkR.activeController.hitboxMagnitude = 55
                                    CombatFrameworkR.activeController.timeToNextBlock = tick()
                                    CombatFrameworkR.activeController.timeToNextAttack = tick()
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):ClickButton1(Vector2.new(1300,760), game:GetService("Workspace").Camera.CFrame)
                                    AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                                end
                            end)
                        end
                    end
                end)
            end
        end
    end
end

local STOP = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)

if not shared.orl then
    shared.orl = STOPRL.wrapAttackAnimationAsync
end

if not shared.cpc then
    shared.cpc = STOP.play 
end

spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
            local Hits = STOPRL.getBladeHits(b,c,d)
            if Hits then
                STOP.play = function() end
                a:Play(0.01,0.01,0.01)
                func(Hits)
                STOP.play = shared.cpc
                wait(a.length * 0.5)
                a:Stop()
            end
        end
    end)
end)

if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
	game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
	game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

function Click()
	game:GetService('VirtualUser'):CaptureController()
	game:GetService('VirtualUser'):Button1Down(Vector2.new(851, 158))
end

local Module =  require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local CombatFramework = debug.getupvalues(Module)[2]
local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)

spawn(function()
	while true do
		if InstantAttack then
			pcall(function()
				CameraShakerR:Stop()
				CombatFramework.activeController.attacking = false
				CombatFramework.activeController.timeToNextAttack = 0
				CombatFramework.activeController.increment = 3
				CombatFramework.activeController.hitboxMagnitude = 100
				CombatFramework.activeController.blocking = false
				CombatFramework.activeController.timeToNextBlock = 0
				CombatFramework.activeController.focusStart = 0
				CombatFramework.activeController.humanoid.AutoRotate = true
			end)
		end
		task.wait()
	end
end)

function GetBladeHit()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local p13 = CmrFwLib.activeController
    local weapon = p13.blades[1]
    if not weapon then 
        return weapon
    end
    while weapon.Parent ~= game.Players.LocalPlayer.Character do
        weapon = weapon.Parent 
    end
    return weapon
end
function AttackHit()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local plr = game.Players.LocalPlayer
    for i = 1, 1 do
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,{plr.Character.HumanoidRootPart},60)
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            pcall(function()
                CmrFwLib.activeController.timeToNextAttack = 1
                CmrFwLib.activeController.attacking = false
                CmrFwLib.activeController.blocking = false
                CmrFwLib.activeController.timeToNextBlock = 0
                CmrFwLib.activeController.increment = 3
                CmrFwLib.activeController.hitboxMagnitude = 100
                CmrFwLib.activeController.focusStart = 0
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetBladeHit()))
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
            end)
        end
    end
end

spawn(function()
    while wait(.1) do
        if InstantAttack then
            pcall(function()
                repeat task.wait(Delay)
                    AttackHit()
                until not InstantAttack
            end)
        end
    end
end)

function AttackPlayers()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end

function ActiveHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
    end
end

function EquipWeapon(ToolSe)
    if not game.Players.LocalPlayer.Character:FindFirstChild(ToolSe) then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

task.spawn(function()
	while wait() do
		pcall(function()
			if Weapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							Weapon = v.Name
						end
					end
				end
			elseif Weapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							Weapon = v.Name
						end
					end
				end
			elseif Weapon == "Fruits" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							Weapon = v.Name
						end
					end
				end
			end
		end)
	end
end)

spawn(function()
    pcall(function()
        while wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then 
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

function EquipTool(ToolSe)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

-- [ Start Magnet ] --

_G.StartMagnet = true
getgenv().Magnitude = 350

spawn(function()
	while task.wait() do
		pcall(function()
            CheckQuest()
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.StartMagnet then
					if StartMagnet and v.Name == MonFarm or v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= getgenv().Magnitude then
						if v.Name == "Factory Staff" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 250 then
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								v.HumanoidRootPart.CFrame = PosMon
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
							end
						elseif v.Name == MonFarm or v.Name == Mon then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= getgenv().Magnitude then
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                v.HumanoidRootPart.CFrame = PosMon
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
				end
			end
		end)
	end
end)

-- [ Isnetwork Owner ] --

function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= getgenv().Magnitude then 
			return true
		end
		return false
	end
end

-- [ Optimize Function ] --

spawn(function()
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
        pcall(function()
            if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
                v:Destroy()
            end
        end)
    end
end)

-- [ AFK Checking Function ] --

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- [ Get Count Function ] --

function CheckItem(ah)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v.Name == ah then
            return v
        end
    end
end

function CheckMaterial(matname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Material" then
				if v.Name == matname then
					return v.Count
				end
			end
		end
	end
	return 0
end

function CheckWeapon(Weaponname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end

-- [ Abandoned Quest ] --

function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end

-- [ Mastery Check Function ] --

local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(...)
	local method = getnamecallmethod()
	local args = {...}
	if tostring(method) == "FireServer" then
		if tostring(args[1]) == "RemoteEvent" then
			if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
				if Skillaimbot then
					args[2] = AimBotSkillPosition
					return old(unpack(args))
				end
			end
		end
	end
	return old(...)
end)

spawn(function()
    while wait() do
        pcall(function()
            if UseSkill then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
                        if SkillZ then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                            wait(HoldSkill)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                        end
                        if SkillX then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                            wait(HoldSkill)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                        end
                        if SkillC then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                            wait(HoldSkill)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                        end
                        if SkillV then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                            wait(HoldSkill)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                        end
                        if SkillF then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
                            wait(HoldSkill)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
                        end
                    end
                end
            end
        end)
    end
end)


spawn(function()
    while wait() do
        pcall(function()
            if ActiveGun then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
                        if SkillZ then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                            wait(0.5)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                        end
                        if SkillX then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                            wait(0.5)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                        end
                    end
                end
            end
        end)
    end
end)

-- [ Get Weapon ] --

function GetWeaponInventory(Weaponname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end

function EquipWeaponSword()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end

-- [ Body Velocity ] --

spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		if Auto_Farm_Level or Auto_Farm_Nearest or Auto_Second_Sea or Auto_Third_Sea or Auto_Farm_Boss or Auto_Super_Human or Auto_Death_Step or Auto_Sharkman_Karate or Auto_Electric_Claw or Auto_Dragon_Talon or Auto_GodHuman or Auto_Saber or Auto_Pole or Auto_Rengoku or Auto_Cavander or Auto_Tushita or Auto_Cursed_Dual_Katana or Auto_Bartilo or Auto_Factory or Auto_Rainbow_Haki or Auto_MusketeerHat or Auto_Observation_V2 or Auto_HolyTorch or Farm_MagmaOre or Farm_AngelWing or Farm_Leather or Farm_ScrapMetal or Farm_Ectoplasm or Farm_Cocoa or Farm_Gunpowder or Farm_FishTail or Farm_DragonScale or Farm_MiniTuskthen then
			if not game:GetService("Workspace"):FindFirstChild("LOL") then
				local LOL = Instance.new("Part")
				LOL.Name = "LOL"
				LOL.Parent = game.Workspace
				LOL.Anchored = true
				LOL.Transparency = 1
				LOL.Size = Vector3.new(30,-0.5,30)
			elseif game:GetService("Workspace"):FindFirstChild("LOL") then
				game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
			end
		else
			if game:GetService("Workspace"):FindFirstChild("LOL") then
				game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
			end
		end
	end)
end)
	
spawn(function()
	pcall(function()
		while wait() do
			if Auto_Farm_Level or Auto_Farm_Nearest or Auto_Second_Sea or Auto_Third_Sea or Auto_Farm_Boss or Auto_Super_Human or Auto_Death_Step or Auto_Sharkman_Karate or Auto_Electric_Claw or Auto_Dragon_Talon or Auto_GodHuman or Auto_Saber or Auto_Pole or Auto_Rengoku or Auto_Cavander or Auto_Tushita or Auto_Cursed_Dual_Katana or Auto_Bartilo or Auto_Factory or Auto_Rainbow_Haki or Auto_MusketeerHat or Auto_Observation_V2 or Auto_HolyTorch or Farm_MagmaOre or Farm_AngelWing or Farm_Leather or Farm_ScrapMetal or Farm_Ectoplasm or Farm_Cocoa or Farm_Gunpowder or Farm_FishTail or Farm_DragonScale or Farm_MiniTuskthen == true then
				if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local Noclip = Instance.new("BodyVelocity")
					Noclip.Name = "BodyClip"
					Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
					Noclip.MaxForce = Vector3.new(100000,100000,100000)
					Noclip.Velocity = Vector3.new(0,0,0)
				end
			end
		end
	end)
end)
	
spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
			if Auto_Farm_Level or Auto_Farm_Nearest or Auto_Second_Sea or Auto_Third_Sea or Auto_Farm_Boss or Auto_Super_Human or Auto_Death_Step or Auto_Sharkman_Karate or Auto_Electric_Claw or Auto_Dragon_Talon or Auto_GodHuman or Auto_Saber or Auto_Pole or Auto_Rengoku or Auto_Cavander or Auto_Tushita or Auto_Cursed_Dual_Katana or Auto_Bartilo or Auto_Factory or Auto_Rainbow_Haki or Auto_MusketeerHat or Auto_Observation_V2 or Auto_HolyTorch or Farm_MagmaOre or Farm_AngelWing or Farm_Leather or Farm_ScrapMetal or Farm_Ectoplasm or Farm_Cocoa or Farm_Gunpowder or Farm_FishTail or Farm_DragonScale or Farm_MiniTuskthen == true then
				for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.CanCollide = false    
					end
				end
			end
		end)
	end)
end)

-- [ Automatic Farm Tabs ] --

SecondLoad = true

local MainTab = Tabs.Main:AddSection("[⚔️] Main")

local Auto_Farm_Level = Tabs.Main:AddToggle("Auto_Farm_Level", {Title = "Auto Farm Level", Default = false })

Auto_Farm_Level:OnChanged(function(value)
    Auto_Farm_Level = value
    CancelTween(Auto_Farm_Level)
end)

spawn(function()
    while wait() do
        if Auto_Farm_Level then
            pcall(function()
                CheckQuest()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    if InstantTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
					    InstantTP(CFrameQuest)
					elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
					    ToTarget(CFrameQuest)
					end
				else
					ToTarget(CFrameQuest)
				end
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            ActiveHaki()                                            
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            StartMagnet = true
                                            ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                        until not Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnet = false
                                    end
                                end
                            end
                        end
                   else
                        ToTarget(CFrameMon * Check)
                        if game.Players.LocalPlayer.Data.Level.Value == 800 or game.Players.LocalPlayer.Data.Level.Value <= 899 then
                            ToTarget(CFrameMon * Factory)
                        end 
                        wait(0.1)
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Auto_Farm_Level and RandomAttack then
            pcall(function()
                CheckQuest()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    if InstantTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
					    InstantTP(CFrameQuest)
					elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
					    ToTarget(CFrameQuest)
					end
				else
					ToTarget(CFrameQuest)
				end
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            ActiveHaki()                                            
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            StartMagnet = true
                                            ToTarget(v.HumanoidRootPart.CFrame * RandomFarm)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                        until not Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnet = false
                                    end
                                end
                            end
                        end
                   else
                        ToTarget(CFrameMon * Check)
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end
            end)
        end
    end
end)

local Auto_Farm_Nearest = Tabs.Main:AddToggle("Auto_Farm_Nearest", {Title = "Auto Farm Nearest", Default = false })

Auto_Farm_Nearest:OnChanged(function(value)
    Auto_Farm_Nearest = value
    CancelTween(Auto_Farm_Nearest)
end)

spawn(function()
    while wait(.1) do
        if Auto_Farm_Nearest then
            pcall(function()
                for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        if v.Name then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= NearestDistance then
                                repeat wait()
                                    StartMagnet = true
                                    ActiveHaki()    
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    v.HumanoidRootPart.Transparency = 1
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                until not Auto_Farm_Nearest or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                                StartMagnet = false
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local Distance = Tabs.Main:AddSlider("Distance", {
    Title = "Distance Mob ( % )",
    Description = "",
    Default = 2500,
    Min = 1000,
    Max = 5000,
    Rounding = 100,
    Callback = function(Value)
        NearestDistance = Value
    end
})
Distance:OnChanged(function(Value)
    NearestDistance = Value
end)

local Mastery = Tabs.Main:AddSection("[🥋] Mastery")

local Auto_Farm_Fruit = Tabs.Main:AddToggle("Auto_Farm_Fruit", {Title = "Auto Farm Fruit Mastery", Default = false })

Auto_Farm_Fruit:OnChanged(function(value)
    Auto_Farm_Fruit  = value
    CancelTween(Auto_Farm_Fruit)
end)

spawn(function()
    while wait() do
        if Auto_Farm_Fruit then
            pcall(function()
                CheckQuest()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    repeat wait()
                        ToTarget(CFrameQuest)
                    until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmFruitMastery
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        HealthMs = v.Humanoid.MaxHealth * MobHealth/100
                                        repeat task.wait()
                                            if v.Humanoid.Health <= HealthMs then
                                                EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                UseSkill = true
                                                Skillaimbot = true
                                                ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0))
                                            else           
                                                ActiveSkill = false 
                                                Skillaimbot = false
                                                EquipWeapon(Weapon)
                                                ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                            end
                                            AimBotSkillPosition = v.HumanoidRootPart.Position
                                            MonFarm = v.Name
                                            PosMon = v.HumanoidRootPart.CFrame
                                            ActiveHaki()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            StartMagnet = true
                                            NormalAttack()
                                        until not Auto_Farm_Fruit or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnet = false
                                        UseSkill = false
                                        ActiveAimbot = false
                                    end
                                end
                            end
                        end
                    else
                        UnEquipWeapon(Weapon)
                    end
                end
            end)
        end
    end
end)

function NormalAttack()
    if not _G.NormalAttack then
        local a3 = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
        local a4 = debug.getupvalues(a3)[2]
        local a5 = require(game.ReplicatedStorage.Util.CameraShaker)
        a5:Stop()
        a4.activeController.attacking = false
        a4.activeController.timeToNextAttack = 0
        a4.activeController.hitboxMagnitude = 180
        game:GetService "VirtualUser":CaptureController()
        game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
    end
end

local Auto_Farm_Gun = Tabs.Main:AddToggle("Auto_Farm_Gun", {Title = "Auto Farm Gun Mastery", Default = false })

Auto_Farm_Gun:OnChanged(function(value)
    Auto_Farm_Gun  = value
end)

local Auto_Farm_Melee = Tabs.Main:AddToggle("Auto_Farm_Melee", {Title = "Auto Farm Fighting Style", Default = false })

Auto_Farm_Melee:OnChanged(function(value)
    Auto_Farm_Melee  = value
    CancelTween(Auto_Farm_Melee)
end)

spawn(function()
	while wait() do
		pcall(function()
			if Auto_Farm_Melee then
				Auto_Farm_Level = true
				if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 600 then
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BlackbeardReward",
						[2] = "DragonClaw",
						[3] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuySuperhuman"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 600 then
					wait(1)
					local string_1 = "BuyElectricClaw";
					local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
					Target:InvokeServer(string_1);
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuySharkmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuyDeathStep"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuyDragonTalon"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 600 then
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
				end
			end
		end)
	end
end)

local Travelling = Tabs.Main:AddSection("[✈️] Travelling")

local Auto_Second_Sea = Tabs.Main:AddToggle("Auto_Second_Sea", {Title = "Auto Second Sea", Default = false })

Auto_Second_Sea:OnChanged(function(value)
    Auto_Second_Sea  = value
    CancelTween(Auto_Second_Sea)
end)

spawn(function()
    while wait() do
        if Auto_Second_Sea and game.Players.LocalPlayer.Data.Level.Value >= 700 and OldWorld then
            Auto_Farm_Level = false
            pcall(function()
                if game.Players.LocalPlayer.Data.Level.Value >= 700 and OldWorld then
                    if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                        repeat wait() ToTarget(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Auto_Second_Sea
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                        EquipWeapon("Key")
                        local Key_Dressrosa = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                        repeat wait() ToTarget(Key_Dressrosa) until (Key_Dressrosa.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Auto_Second_Sea
                        wait(3)
                    elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        ActiveHaki()
                                        EquipWeapon(Weapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        v.HumanoidRootPart.Transparency = 1
                                        ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Second_Sea
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                end
                            end
                        else
                            ToTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    end
                end
            end)
        end
    end
end)

local Auto_Third_Sea = Tabs.Main:AddToggle("Auto_Third_Sea", {Title = "Auto Third Sea", Default = false })

Auto_Third_Sea:OnChanged(function(value)
    Auto_Third_Sea  = value
    CancelTween(Auto_Third_Sea)
end)

spawn(function()
    while wait() do
        if Auto_Third_Sea and NewWorld then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and NewWorld then
                    Auto_Farm_Level = false
                    if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                        ToTarget(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                        if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                        end
                        wait(1.8)
                        if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "rip_indra" then
                                    if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and Auto_Third_Sea then
                                        OldCFrameThird = v.HumanoidRootPart.CFrame
                                        repeat task.wait()
                                            ActiveHaki()
                                            EquipWeapon(Weapon)
                                            ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                            v.HumanoidRootPart.CFrame = OldCFrameThird
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until Auto_Third_Sea == false or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            end
                        elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            ToTarget(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                        end
                    end
                end
            end)
        end
    end
end)

local Boss = Tabs.Main:AddSection("[🏰] Bosses")

	if OldWorld then
		tableBoss = {
			"The Gorilla King",
			"Bobby",
			"Yeti",
			"Mob Leader",
			"Vice Admiral",
			"Warden",
			"Chief Warden",
			"Swan",
			"Magma Admiral",
			"Fishman Lord",
			"Wysper",
			"Thunder God",
			"Cyborg",
			"Saber Expert"
		}
	elseif NewWorld then
		tableBoss = {
			"Diamond",
			"Jeremy",
			"Fajita",
			"Don Swan",
			"Smoke Admiral",
			"Cursed Captain",
			"Darkbeard",
			"Order",
			"Awakened Ice Admiral",
			"Tide Keeper"
		}
	elseif ThirdWorld then
		tableBoss = {
			"Stone",
			"Island Empress",
			"Kilo Admiral",
			"Captain Elephant",
			"Beautiful Pirate",
			"rip_indra True Form",
			"Longma",
			"Soul Reaper",
			"Cake Queen"
		}
	end

local Select_Boss = Tabs.Main:AddDropdown("Select_Boss", {
    Title = "Select Boss",
    Description = "",
    Values = tableBoss,
    Multi = false,
    Default = 1,
})

Select_Boss:OnChanged(function(Value)
    Select_Boss = Value
end)

local Auto_Farm_Boss = Tabs.Main:AddToggle("Auto_Farm_Boss", {Title = "Auto Farm Boss", Default = false })

Auto_Farm_Boss:OnChanged(function(value)
    Auto_Farm_Boss  = value
end)

	spawn(function()
		while wait() do
			if Auto_Farm_Boss then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild(Auto_Farm_Boss) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == Select_Boss then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat wait()
										ActiveHaki()
										StartMagnet = true
										EquipWeapon(Weapon)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
										Tween(v.HumanoidRootPart.CFrame * Pos)
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
									until not Auto_Farm_Boss or not v.Parent or v.Humanoid.Health <= 0
									StartMagnet = false
								end
							end
						end
					elseif game.ReplicatedStorage:FindFirstChild(Auto_Farm_Boss) then
						if ((game.ReplicatedStorage:FindFirstChild(Auto_Farm_Boss).HumanoidRootPart.CFrame).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
							ToTarget(game.ReplicatedStorage:FindFirstChild(Auto_Farm_Boss).HumanoidRootPart.CFrame)
						else
							InstantTP(game.ReplicatedStorage:FindFirstChild(Auto_Farm_Boss).HumanoidRootPart.CFrame)
						end
					end
				end)
			end
		end
	end)

local Settings = Tabs.Main:AddSection("[⚙️] Setting")

local WeaponType = Tabs.Main:AddDropdown("WeaponType", {
    Title = "Select Weapon Type",
    Values = {"Melee","Sword","Fruits"},
    Multi = false,
    Default = 1,
})

WeaponType:OnChanged(function(Value)
    Weapon = Value
end)

InstantType = "Normal Fast Attack"

local InstantType = Tabs.Main:AddDropdown("InstantType", {
    Title = "Select Instant Type",
    Values = {"Secret Fast Attack","Super Fast Attack","Normal Fast Attack","Slow Fast Attack"},
    Multi = false,
    Default = 1,
})

InstantType:OnChanged(function(Value)
    InstantType = Value
end)

spawn(function()
    while wait(.1) do
        if InstantType then
            pcall(function()
                if InstantType == "Secret Fast Attack" then
                    Delay = 0.05
                elseif InstantType == "Super Fast Attack" then
                    Delay = 0.1
                elseif InstantType == "Normal Fast Attack" then
                    Delay = 0.3
                elseif InstantType == "Slow Fast Attack" then
                    Delay = 0.5
                end
            end)
        end
    end
end)

local InstantTP = Tabs.Main:AddToggle("InstantTP", {Title = "Instant Teleport", Default = true })

InstantTP:OnChanged(function(value)
    InstantTP = value
end)

local AcceptQuest = Tabs.Main:AddToggle("AcceptQuest", {Title = "Accept Quest", Default = true })

AcceptQuest:OnChanged(function(value)
    AcceptQuest = value
end)

local RandomAttack = Tabs.Main:AddToggle("RandomAttack", {Title = "Random Attack", Default = false })

RandomAttack:OnChanged(function(value)
    RandomAttack = value
end)

local Settings = Tabs.Main:AddSection("[⚙️] Mastery Setting")

local Health = Tabs.Main:AddSlider("Health", {
    Title = "Mob Heath ( % )",
    Description = "",
    Default = 25,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        MobHealth = Value
    end
})
Health:OnChanged(function(Value)
    MobHealth = Value
end)

local HoldSkill = Tabs.Main:AddSlider("HoldSkill", {
    Title = "Holding Skill ( % )",
    Description = "",
    Default = 1,
    Min = 1,
    Max = 5,
    Rounding = 1,
    Callback = function(Value)
        Hold = Value
    end
})
HoldSkill:OnChanged(function(Value)
    Hold = Value
end)

local Z = Tabs.Main:AddToggle("Z", {Title = "Skill Z", Default = true })

Z:OnChanged(function(value)
    SkillZ = value
end)

local X = Tabs.Main:AddToggle("X", {Title = "Skill X", Default = true })

X:OnChanged(function(value)
    SkillX = value
end)

local C = Tabs.Main:AddToggle("C", {Title = "Skill C", Default = true })

C:OnChanged(function(value)
    SkillC = value
end)

local V = Tabs.Main:AddToggle("V", {Title = "Skill V", Default = true })

V:OnChanged(function(value)
    SkillV = value
end)

-- [ Automatic Tab ] --

local FightingStyle = Tabs.Automatic:AddSection("[🎯] Fighting Style")

local Superhuman = Tabs.Automatic:AddToggle("Superhuman", {Title = "Doing Superhuman Quest", Default = false })

Superhuman:OnChanged(function(value)
    Auto_Super_Human = value
    CancelTween(CancelTween)
end)

local DeathStep = Tabs.Automatic:AddToggle("DeathStep", {Title = "Doing Death Step Quest", Default = false })

DeathStep:OnChanged(function(value)
    Auto_Death_Step = value
    CancelTween(Auto_Death_Step)
end)

local SharkmanKarate = Tabs.Automatic:AddToggle("SharkmanKarate", {Title = "Find Sharkman Karate", Default = false })

SharkmanKarate:OnChanged(function(value)
    Auto_Sharkman_Karate = value
    CancelTween(Auto_Sharkman_Karate)
end)

local ElectricClaw = Tabs.Automatic:AddToggle("ElectricClaw", {Title = "Doing Electric Claw Quest", Default = false })

ElectricClaw:OnChanged(function(value)
    Auto_Electric_Claw = value
    CancelTween(Auto_Electric_Claw)
end)

local DragonTalon = Tabs.Automatic:AddToggle("DragonTalon", {Title = "Find Dragon Talon", Default = false })

DragonTalon:OnChanged(function(value)
    Auto_Dragon_Talon = value
    CancelTween(Auto_Dragon_Talon)
end)

local GodHuman = Tabs.Automatic:AddToggle("GodHuman", {Title = "Doing God Human Quest", Default = false })

GodHuman:OnChanged(function(value)
    Auto_GodHuman = value
    CancelTween(Auto_GodHuman)
end)

spawn(function()
    pcall(function()
        while wait() do 
            if Auto_Super_Human then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                    UnEquipWeapon("Combat")
                    wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end   
                if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                    Weapon = "Superhuman"
                end  
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                        Weapon = "Black Leg"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                        Weapon = "Electro"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                        Weapon = "Fishman Karate"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                        Weapon = "Dragon Claw"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end 
                end
            end
        end
    end)
end)

spawn(function()
    while wait() do wait()
        if Auto_Death_Step then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                    Weapon = "Death Step"
                end  
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                    Weapon = "Death Step"
                end  
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                    Weapon = "Black Leg"
                end 
            else 
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
            end
        end
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if Auto_Sharkman_Karate then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                        ToTarget(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                    else 
                        Ms = "Tide Keeper"
                        if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then   
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then    
                                    OldCFrameShark = v.HumanoidRootPart.CFrame
                                    repeat task.wait(Delay)
                                        ActiveHaki()
                                        EquipWeapon(Weapon)
                                        v.Head.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameShark
                                        ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                        AttackNoCD()
                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not v.Parent or v.Humanoid.Health <= 0 or Auto_Sharkman_Karate == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
                                end
                            end
                        else
                            ToTarget(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
                            wait(3)
                        end
                    end
                else 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do 
            if Auto_Electric_Claw then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        Weapon = "Electric Claw"
                    end  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        Weapon = "Electric Claw"
                    end  
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
                        Weapon = "Electro"
                    end 
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                end
            end
            if Auto_Electric_Claw then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                        if Auto_Farm_Level == false then
                            repeat task.wait()
                                ToTarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                            until not Auto_Electric_Claw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                            wait(2)
                            repeat task.wait()
                                ToTarget(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                            until not Auto_Electric_Claw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                            wait(1)
                            repeat task.wait()
                                ToTarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                            until not Auto_Electric_Claw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        elseif Auto_Farm_Level == true then
                            Auto_Farm_Level = false
                            wait(1)
                            repeat task.wait()
                                ToTarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                            until not Auto_Electric_Claw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                            wait(2)
                            repeat task.wait()
                                ToTarget(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                            until not Auto_Electric_Claw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                            wait(1)
                            repeat task.wait()
                                ToTarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                            until not Auto_Electric_Claw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            Weapon = "Electric Claw"
                            wait(.1)
                            Auto_Farm_Level = true
                        end
                    end
                end
            end
        end
    end)
end)

spawn(function()
    while wait() do
        if Auto_Dragon_Talon then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    Weapon = "Dragon Talon"
                end  
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    Weapon = "Dragon Talon"
                end  
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
                    Weapon = "Dragon Claw"
                end 
            else 
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
            end
        end
    end
end)

spawn(function()
    while task.wait() do
        if Auto_GodHuman then
            pcall(function()
                if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true)) then
                    Weapon = "Godhuman"
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value <= 399 and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value <= 399 and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value <= 399 and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value <= 399 then
                    if not ThirdWorld then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                    elseif ThirdWorld then
                        if CheckMaterial("Fish Tail") <= 20 then
                            ToTarget(CFrame.new(-10993,332,-8940))
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Fishman Raider" or v.Name == "Fishman Captain" then
                                        repeat task.wait()
                                            ActiveHaki()
                                            EquipWeapon(Weapon)
                                            InstantAttack = true
                                            ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                        until not Auto_GodHuman or not v.Parent or v.Humanoid.Health <= 0 or CheckMaterial("Fish Tail") >= 20
                                    end
                                else
                                    ToTarget(CFrame.new(-10993,332,-8940))
                                end
                            end
                        elseif CheckMaterial("Dragon Scale") <= 10 then
                            ToTarget(CFram.new(6594,383,139))
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Fishman Raider" or v.Name == "Fishman Captain" then
                                        repeat task.wait()
                                            ActiveHaki()
                                            EquiqWeapon(Weapon)
                                            InstantAttack = true
                                            ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                        until not Auto_GodHuman or not v.Parent or v.Humanoid.Health <= 0 or CheckMaterial("Dragon Scale") >= 10
                                    end
                                else
                                    ToTarget(CFram.new(6594,383,139))
                                end
                            end
                        end
                        if CheckMaterial("Dragon Scale") >= 10 and CheckMaterial("Fish Tail") >= 20 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end
                    end
                    if not NewWorld then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    elseif NewWorld then
                        if CheckMaterial("Magma Ore") <= 20 then
                            ToTarget(CFrame.new(-5428,78,-5959))
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Magma Ninja" then
                                        repeat task.wait()
                                            ActiveHaki()
                                            EquiqWeapon(Weapon)
                                            ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            InstantAttack = true
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                        until not Auto_GodHuman or not v.Parent or v.Humanoid.Health <= 0 or CheckMaterial("Magma Ore") >= 20
                                    end
                                else
                                    ToTarget(CFrame.new(-5428,78,-5959))
                                end
                            end
                        elseif CheckMaterial("Mystic Droplet") <= 10 then
                            ToTarget(CFrame.new(-3385,239,-10542))
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Water Fighter" then
                                        repeat task.wait()
                                            ActiveHaki()
                                            EquipWeapon(Weapon)
                                            ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                            InstantAttack = true
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                        until not Auto_GodHuman or not v.Parent or v.Humanoid.Health <= 0 or CheckMaterial("Mystic Droplet") >= 10
                                    end
                                else
                                    ToTarget(CFrame.new(-3385,239,-10542))
                                end
                            end
                        end
                        if CheckMaterial("Mystic Droplet") >= 10 and CheckMaterial("Magma Ore") >= 20 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        end
                    end
                    if CheckMaterial("Mystic Droplet") >= 10 and CheckMaterial("Magma Ore") >= 20 and CheckMaterial("Dragon Scale") >= 10 and CheckMaterial("Fish Tail") >= 20 and ThirdWorld then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                        wait(.3)
                        print("Kirainc Hub [Task] : Searching Mystic Droplet . . .")
                        if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true)) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true)
                            wait(.3)
                            print("Kirainc Hub [Task] : Searching God Human . . .")
                        end
                    elseif not ThirdWorld then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                    end
                else
                    print("Kirainc Hub [Task] : Something Went Wrong")
                end
            end)
        end
    end
end)

local Sword = Tabs.Automatic:AddSection("[⚔️] Sword")

local Saber = Tabs.Automatic:AddToggle("Saber", {Title = "Find Saber Sword", Default = false })

Saber:OnChanged(function(value)
    Auto_Saber = value
    CancelTween(Auto_Saber)
end)

local Pole = Tabs.Automatic:AddToggle("Pole", {Title = "Doing Pole Quest", Default = false })

Pole:OnChanged(function(value)
    Auto_Pole = value
    CancelTween(Auto_Pole)
end)

local Rengoku = Tabs.Automatic:AddToggle("Rengoku", {Title = "Find Rengoku Sword", Default = false })

Rengoku:OnChanged(function(value)
    Auto_Rengoku = value
    CancelTween(Auto_Rengoku)
end)

local LegendarySword = Tabs.Automatic:AddToggle("LegendarySword", {Title = "Find Legendary Sword", Default = false })

LegendarySword:OnChanged(function(value)
    Auto_Legendary_Sword = value
end)

local TrueTripleKatana = Tabs.Automatic:AddToggle("TrueTripleKatana", {Title = "Doing True Triple Katana", Default = false })

TrueTripleKatana:OnChanged(function(value)
    Auto_True_Triple_Katana = value
end)

local Cavander = Tabs.Automatic:AddToggle("Cavander", {Title = "Find Cavander Sword", Default = false })

Cavander:OnChanged(function(value)
    Auto_Cavander = value
    CancelTween(Auto_Cavander)
end)

local Yama = Tabs.Automatic:AddToggle("Yama", {Title = "Find Yama Sword", Default = false })

Yama:OnChanged(function(value)
    Auto_Yama = value
    CancelTween(Auto_Yama)
end)

local Tushita = Tabs.Automatic:AddToggle("Tushita", {Title = "Find Tushita Sword", Default = false })

Tushita:OnChanged(function(value)
    Auto_Tushita = value
    CancelTween(Auto_Tushita)
end)

local DualCursed = Tabs.Automatic:AddToggle("DualCursed", {Title = "Doing Cursed Dual Katana", Default = false })

DualCursed:OnChanged(function(value)
    Auto_Cursed_Dual_Katana = value
    CancelTween(Auto_Cursed_Dual_Katana)
end)

spawn(function()
    while task.wait() do
        if Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
            pcall(function()
                Auto_Farm_Level = false
                if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(1)
                        else
                            ToTarget(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                        end
                    else
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                EquipWeapon("Torch")
                                ToTarget(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                            else
                                ToTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                wait(0.5)
                                EquipWeapon("Cup")
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                                wait(0)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                if v.Name == "Mob Leader" then
                                                    repeat task.wait()
                                                        ActiveHaki()
                                                        EquipWeapon(Weapon)
                                                        ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        v.HumanoidRootPart.Transparency = 1
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        --v.Humanoid:ChangeState(11)
                                                        --v.Humanoid:ChangeState(14)
                                                        FarmPos = v.HumanoidRootPart.CFrame
                                                        MonFarm = v.Name
                                                        game:GetService'VirtualUser':CaptureController()
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                                    until v.Humanoid.Health <= 0 or Auto_Saber == false
                                                end
                                            end
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                                ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * AttackFarm)
                                            end
                                        end
                                    end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    wait(0.5)
                                    EquipWeapon("Relic")
                                    wait(0.5)
                                    ToTarget(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                end
                            end
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Saber Expert" then
                                    repeat task.wait()
                                        ActiveHaki()
                                        EquipWeapon(Weapon)
                                        ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                    until not v.Parent or v.Humanoid.Health <= 0 or Auto_Saber == false
                                    if v.Humanoid.Health <= 0 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
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

spawn(function()
    while task.wait() do
        if Auto_Pole and OldWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Thunder God" then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    InstantAttack = true
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                until not Auto_Pole or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame)
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Rengoku and NewWorld then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                    EquipWeapon("Hidden Key")
                    Rengoku = CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875)
                    if InstantTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rengoku.Position).Magnitude > 2000 then
                            InstantTP(Rengoku)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rengoku.Position).Magnitude < 2000 then
                            ToTarget(Rengoku)
                        end
                    else
                        ToTarget(Rengoku)
                    end
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Snow Lurker" or v.Name == "Arctic Warrior" then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquiqWeapon(Weapon)
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    InstantAttack = true
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or Rengoku == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    ToTarget(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if Auto_Legendary_Sword then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if Auto_True_Triple_Katana then
                local string_1 = "MysteriousMan";
                local string_2 = "2";
                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                Target:InvokeServer(string_1, string_2);
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Cavander then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Beautiful Pirate" then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquiqWeapon(Weapon)
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    InstantAttack = true
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                until not Auto_Cavander or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Cavander_Pos = game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame
                    ToTarget(Cavander_Pos)
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Auto_Yama then
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                repeat wait(.1)
                    fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not Auto_Yama
            end
        end
    end
end)

spawn(function()
    while wait() do
        if Auto_Tushita then
            if game:GetService("Workspace").Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == ("Longma [Lv. 2000] [Boss]" or v.Name == "Longma [Lv. 2000] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                        repeat wait()
                            StartMagnet = true
                            InstantAttack = true
                            ActiveHaki()
                            EquipWeapon(Weapon)
                            PosMon = v.HumanoidRootPart.CFrame
                            InstantAttack = true
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid:ChangeState(11)
                            ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                        until not Auto_Tushita or not v.Parent or v.Humanoid.Health <= 0
                        StartMagnet = false
                    end
                end
            else
                ToTarget(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
            end
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if Auto_Cursed_Dual_Katana then
                if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                            EquipWeapon("Tushita")
                            
                        end
                    elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            EquipWeapon("Yama")
                            
                        end
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if Auto_Cursed_Dual_Katana then
                if CheckMaterial("Alucard Fragment") == 0 then
                    Auto_Quest_Yama_1 = true
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                elseif CheckMaterial("Alucard Fragment") == 1 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = true
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                elseif CheckMaterial("Alucard Fragment") == 2 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = true
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                elseif CheckMaterial("Alucard Fragment") == 3 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = true
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                elseif CheckMaterial("Alucard Fragment") == 4 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = true
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                elseif CheckMaterial("Alucard Fragment") == 5 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = true
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                elseif CheckMaterial("Alucard Fragment") == 6 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton Boss" or v.Name == "Cursed Skeleton" then
                                    if v.Humanoid.Health > 0 then
                                        ActiveHaki()
                                        Weapon = "Sword"
                                        EquipWeapon(Weapon)
                                        ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                    end
                                end
                            end
                        end
                    else
                        if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                            wait(1)
                            ToTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            ToTarget(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                        else
                            ToTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                        end   
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if Auto_Quest_Yama_1 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Mythological Pirate" then
                            repeat wait()
                                ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        end
                    end
                else
                    ToTarget(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if Auto_Quest_Yama_2 then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        v.HazeESP.Size = UDim2.new(50,50,50,50)
                        v.HazeESP.MaxDistance = "inf"
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        v.HazeESP.Size = UDim2.new(50,50,50,50)
                        v.HazeESP.MaxDistance = "inf"
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
                    v.HumanoidRootPart.CFrame = PosMonsEsp
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                        vc.Velocity = Vector3.new(0, 0, 0)
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if Auto_Quest_Yama_2 then 
            pcall(function() 
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        repeat wait()
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                ToTarget(V.HumanoidRootPart.CFrame * AttackFarm)
                            else
                                ActiveHaki()
                                Weapon = "Sword"
                                EquipWeapon(Sword)
                                ToTarget(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                --v.Humanoid:ChangeState(11)
                                --v.Humanoid:ChangeState(14)
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                Click()
                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end							
                            end      
                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
                    else
                        for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                            if y:FindFirstChild("HazeESP") then
                                if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                    ToTarget(y.HumanoidRootPart.CFrameMon * AttackFarm)
                                else
                                    ToTarget(y.HumanoidRootPart.CFrame * AttackFarm)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Auto_Quest_Yama_3 then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
                    ToTarget(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                    repeat wait()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Hell's Messenger" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            ActiveHaki()
                                            Weapon = "Sword"
                                            EquipWeapon(Weapon)
                                            ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
                                    end
                                end
                            end
                        else
                            wait(5)
                            ToTarget(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)        
                            ToTarget(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            ToTarget(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            ToTarget(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                        end
                    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or CheckMaterial("Alucard Fragment") == 3
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Soul Reaper" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                    end
                                end
                            end
                        else
                            ToTarget(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_1 then
            ToTarget(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
            wait(5)
            ToTarget(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
            wait(5)
            ToTarget(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_2 then
            pcall(function()
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                repeat wait()
                                    ActiveHaki()
                                    Weapon = "Sword"
                                    EquipWeapon(Weapon)
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                            end
                        end
                    end
                else
                    ToTarget(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Queen" then
                                if v.Humanoid.Health > 0 then
                                    repeat wait()
                                        ActiveHaki()
                                        Weapon = "Sword"
                                        EquipWeapon(Sword)
                                        ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                        if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                end
                            end
                        end
                    else
                        ToTarget(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                    end
                elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                    repeat wait()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Heaven's Guardian" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            ActiveHaki()
                                            Weapon = "Sword"
                                            EquiqWeapon(Weapon)
                                            ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
                                    end
                                end
                            end
                        else
                            wait(5)
                            ToTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)        
                            ToTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            ToTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            ToTarget(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                        end
                    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or CheckMaterial("Alucard Fragment") == 6
                end
            end)
        end
    end
end)

local Gun = Tabs.Automatic:AddSection("[🔫] Gun")

local SoulGuitar = Tabs.Automatic:AddToggle("SoulGuitar", {Title = "Doing Soul Guitar Quest", Default = false })

SoulGuitar:OnChanged(function(value)
    Auto_SoulGuitar = value
    CancelTween(Auto_SoulGuitar)
end)

task.spawn(function()
	while wait() do
		pcall(function()
			if CheckWeapon("Soul Guitar") == false then
				if Auto_SoulGuitar then
					if CheckMaterial("Bones") >= 500 and CheckMaterial("Ectoplasm") >= 250 and CheckMaterial("Dark Fragment") >= 1 then
						if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3000 then
							if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
								local Remotes = game.ReplicatedStorage:WaitForChild("Remotes");
								local __CommF = Remotes:WaitForChild("CommF_");
								local GuitarProgress = __CommF:InvokeServer("GuitarPuzzleProgress", "Check");
								if not GuitarProgress then 
									local gravestoneEvent = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("gravestoneEvent", 2);
									if gravestoneEvent == true then
										__CommF:InvokeServer("gravestoneEvent", 2, true);
									else 
										if Auto_SoulGuitarHop then
											Hop()
										end
									end;
								end
								if GuitarProgress then 
									local Swamp = GuitarProgress.Swamp;
									local Gravestones = GuitarProgress.Gravestones;
									local Ghost = GuitarProgress.Ghost;
									local Trophies = GuitarProgress.Trophies;
									local Pipes = GuitarProgress.Pipes;
									local CraftedOnce = GuitarProgress.CraftedOnce;
									if Swamp and Gravestones and Ghost and Trophies and Pipes then 
										Auto_SoulGuitar = false
									end
									if not Swamp then 
										repeat wait() 
											ToTarget(CFrame.new(-10141.462890625, 138.6524658203125, 5935.06298828125) * CFrame.new(0,30,0))
										until game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(-10141.462890625, 138.6524658203125, 5935.06298828125)) <= 100
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Living Zombie" then
												if v:FindFirstChild('Humanoid') then 
													if v:FindFirstChild('HumanoidRootPart') then 
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then 
															repeat wait() 
																ActiveHaki()
                                                                EquipWeapon(Weapon)
                                                                ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                                v.HumanoidRootPart.Transparency = 1
                                                                v.Humanoid.JumpPower = 0
                                                                v.Humanoid.WalkSpeed = 0
                                                                v.HumanoidRootPart.CanCollide = false
                                                                PosMon = v.HumanoidRootPart.CFrame
                                                                MonFarm = v.Name
                                                               AttackNoCD()
															until not v.Parent or v.Humanoid.Health <= 0 or not  v:FindFirstChild('HumanoidRootPart') or not v:FindFirstChild('Humanoid') or not _G.AutoNevaSoulGuitar
															SoulGuitarMagnet = false
														end
													end
												end
											end
										end   
									end
									wait(1)
									if Swamp and not Gravestones then 
										__CommF:InvokeServer("GuitarPuzzleProgress", "Gravestones");
									end
									wait(1)
									if Swamp and  Gravestones and not Ghost then 
										__CommF:InvokeServer("GuitarPuzzleProgress", "Ghost");
									end 
									wait(1)
									if  Swamp and  Gravestones and Ghost and not Trophies then 
										__CommF:InvokeServer("GuitarPuzzleProgress", "Trophies");
									end
									wait(1)
									if  Swamp and  Gravestones and Ghost and Trophies and not Pipes then 
										__CommF:InvokeServer("GuitarPuzzleProgress", "Pipes");
									end
								end
							else
								if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
									print("Kirainc Hub - Notify : toTarget Grave")
									toTarget(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
								elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
                                    print("Kirainc Hub - Notify : Waiting Full Moon")
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
								end
							end
						else
							ToTarget(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
						end
					else
						if CheckMaterial("Ectoplasm") <= 250 then
							if NewWorld then
								if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat task.wait()
													ActiveHaki()
                                                    EquipWeapon(Weapon)
                                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                                    StartMagnet = true
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    AttackNoCD()
												until not Auto_SoulGuitar or not v.Parent or v.Humanoid.Health <= 0
												StartMagnet = false
											end
										end
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							end
						elseif CheckMaterial("Dark Fragment") <= 1 then
							if NewWorld then
								if game.ReplicatedStorage:FindFirstChild("Darkbeard") or game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Darkbeard" and v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat task.wait()
												ActiveHaki()
                                                EquipWeapon(Weapon)
                                                ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                 v.HumanoidRootPart.Transparency = 1
                                                 v.Humanoid.JumpPower = 0
                                                 v.Humanoid.WalkSpeed = 0
                                                 v.HumanoidRootPart.CanCollide = false
                                                 AttackNoCD()
											until Auto_SoulGuitar or v.Humanoid.Health <= 0
										end
									end
								else
									ToTarget(CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							end
						elseif CheckMaterial("Bones") <= 500 then
							if ThirdWorld then
								if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat task.wait()
												ActiveHaki()
                                                EquipWeapon(Weapon)
                                                StartMagnet = true
                                                ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                                 v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                 v.HumanoidRootPart.Transparency = 1
                                                 v.Humanoid.JumpPower = 0
                                                 v.Humanoid.WalkSpeed = 0
                                                 v.HumanoidRootPart.CanCollide = false
                                                 PosMon = v.HumanoidRootPart.CFrame
                                                 MonFarm = v.Name
                                                 AttackNoCD()
												until not Auto_SoulGuitar or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
												StartMagnet = false
											end
										end
									end
								else
									ToTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
							end
						end
					end
				end
			end
		end)
	end
end)

local Quest = Tabs.Automatic:AddSection("[🥊] Quest")

local Bartilo = Tabs.Automatic:AddToggle("Bartilo", {Title = "Doing Bartilo Quest", Default = false })

Bartilo:OnChanged(function(value)
    Auto_Bartilo = value
    CancelTween(Auto_Bartilo)
end)

local Factory = Tabs.Automatic:AddToggle("Factory", {Title = "Doing Farm Factory", Default = false })

Factory:OnChanged(function(value)
    Auto_Factory = value
    CancelTween(Auto_Factory)
end)

local Law = Tabs.Automatic:AddToggle("Law", {Title = "Doing Order Dungeon", Default = false })

Law:OnChanged(function(value)
    Auto_OrderDungeon = value
    CancelTween(Auto_OrderDungeon)
end)

local RainbowHaki = Tabs.Automatic:AddToggle("RainbowHaki", {Title = "Doing Rainbow Haki Quest", Default = false })

RainbowHaki:OnChanged(function(value)
    Auto_RainbowHaki = value
    CancelTween(Auto_RainbowHaki)
end)

local MusketeerHat = Tabs.Automatic:AddToggle("MusketeerHat", {Title = "Find Musketeer Hat", Default = false })

MusketeerHat:OnChanged(function(value)
    Auto_MusketeerHat = value
    CancelTween(Auto_MusketeerHat)
end)

local ObservationV2 = Tabs.Automatic:AddToggle("ObservationV2", {Title = "Doing Observation V2 Quest", Default = false })

ObservationV2:OnChanged(function(value)
    Auto_Observation_V2 = value
    CancelTween(Auto_Observation_V2)
end)

local HolyTorch = Tabs.Automatic:AddToggle("HolyTorch", {Title = "Find Holy Torch", Default = false })

HolyTorch:OnChanged(function(value)
    Auto_HolyTorch = value
    CancelTween(Auto_HolyTorch)
end)

spawn(function()
    pcall(function()
        while wait(.1) do
            if Auto_Bartilo and NewWorld then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                            Ms = "Swan Pirate"
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    pcall(function()
                                        repeat task.wait()
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            EquipWeapon(Weapon)
                                            ActiveHaki()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)													
                                            PosMonBarto =  v.HumanoidRootPart.CFrame
                                            StartMagnet = true
                                        until not v.Parent or v.Humanoid.Health <= 0 or Auto_Bartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnet = false
                                    end)
                                end
                            end
                        else
                            repeat ToTarget(CFrame.new(932.624451, 156.106079, 1180.27466)) wait() until not Auto_Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466)).Magnitude <= 10
                        end
                    else
                        repeat ToTarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not Auto_Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                    end 
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                        Ms = "Jeremy"
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Ms then
                                OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                repeat task.wait()
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    EquipWeapon(Weapon)
                                    ActiveHaki()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)			
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not v.Parent or v.Humanoid.Health <= 0 or Auto_Bartilo == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                        repeat ToTarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not Auto_Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                        wait(1)
                        repeat ToTarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not Auto_Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        wait(2)
                    else
                        repeat ToTarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not Auto_Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                    repeat ToTarget(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not Auto_Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat ToTarget(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not Auto_Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                    wait(1)
                    repeat ToTarget(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not Auto_Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat ToTarget(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not Auto_Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                    wait(1)
                    repeat ToTarget(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not Auto_Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                    wait(1)
                    repeat ToTarget(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not Auto_Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                    wait(1)
                    repeat ToTarget(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not Auto_Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                    wait(1)
                    repeat ToTarget(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not Auto_Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                end
            end
        end
    end)
end)

spawn(function()
    while task.wait() do
        if Auto_Factory and NewWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Core" then
                            if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and Auto_Factory then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    Click()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    ToTarget(CFrame.new(448.46756, 199.356781, -441.389252))
                                until Auto_Factory == false or v.Humanoid.Health <= 0 or not v.Parent
                            end
                        end
                    end
                else
                    if InstantTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(448.46756, 199.356781, -441.389252).Position).Magnitude > 2000 then
                            InstantTP(CFrame.new(448.46756, 199.356781, -441.389252))
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(448.46756, 199.356781, -441.389252).Position).Magnitude < 2000 then
                            ToTarget(CFrame.new(448.46756, 199.356781, -441.389252))
                        end
                    else
                        ToTarget(CFrame.new(448.46756, 199.356781, -441.389252))
                    end         
                end        
            end)
        end
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if Auto_OrderDungeon then
                if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    wait(0.3)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait(0.4) do
            if Auto_OrderDungeon then
                if not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                    end
                end
                if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Order" then
                                repeat wait(Delay)
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
                                    Click()
                                until not v.Parent or v.Humanoid.Health <= 0 or Auto_OrderDungeon == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                        ToTarget(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                    end
                end
            end
        end
    end)
end)

spawn(function()
    while task.wait() do
        if Auto_RainbowHaki then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    Rainbow_1 = CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875)
                    if InstantTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rainbow_1.Position).Magnitude > 2000 then
                            InstantTP(Rainbow_1)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rainbow_1.Position).Magnitude < 2000 then
                            ToTarget(Rainbow_1)
                        end
                    else
                        ToTarget(Rainbow_1)
                    end
                    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Stone") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Stone" then
                                    repeat task.wait()
                                        ActiveHaki()
                                        EquipWeapon(Weapon)
                                        ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                        InstantAttack = true
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                    until Auto_RainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Stone") then
                            Rainbow_2 = game:GetService("ReplicatedStorage"):FindFirstChild("Stone").HumanoidRootPart.CFrame
                            if InstantTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rainbow_2.Position).Magnitude > 2000 then
                                    InstantTP(Rainbow_2 * AttackFarm)
                                    wait(3)
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rainbow_2.Position).Magnitude < 2000 then
                                    ToTarget(Rainbow_2 * AttackFarm)
                                end
                            else
                                ToTarget(Rainbow_2 * AttackFarm)
                            end
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Island Empress") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Island Empress" then
                                    repeat task.wait()
                                        ActiveHaki()
                                        EquipWeapon(Weapon)
                                        InstantAttack = true
                                        ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                    until Auto_RainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress") then
                            Rainbow_3 = game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress").HumanoidRootPart.CFrame
                            if InstantTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rainbow_3.Position).Magnitude > 2000 then
                                    InstantTP(Rainbow_3 * AttackFarm)
                                    wait(3)
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rainbow_3.Position).Magnitude < 2000 then
                                    ToTarget(Rainbow_3 * AttackFarm)
                                end
                            else
                                ToTarget(Rainbow_3 * AttackFarm)
                            end
                        end
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Kilo Admiral") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Kilo Admiral" then
                                    repeat task.wait()
                                        ActiveHaki()
                                        EquipWeapon(Weapon)
                                        InstantAttack = true
                                        ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                    until Auto_RainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Kilo Admiral") then
                            Rainbow_4 = game:GetService("ReplicatedStorage"):FindFirstChild("Kilo Admiral").HumanoidRootPart.CFrame
                            if InstantTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rainbow_4.Position).Magnitude > 2000 then
                                    InstantTP(Rainbow_4 * AttackFarm)
                                    wait(3)
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rainbow_4.Position).Magnitude < 2000 then
                                    ToTarget(Rainbow_4 * AttackFarm)
                                end
                            else
                                ToTarget(Rainbow_4 * AttackFarm)
                            end
                        end
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Captain Elephant") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Captain Elephant" then
                                    repeat task.wait()
                                        ActiveHaki()
                                        EquipWeapon(Weapon)
                                        ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                        InstantAttack = true
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                    until Auto_RainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
                            Rainbow_5 = game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame
                            if InstantTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rainbow_5.Position).Magnitude > 2000 then
                                    InstantTP(Rainbow_5 * AttackFarm)
                                    wait(3)
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rainbow_5.Position).Magnitude < 2000 then
                                    ToTarget(Rainbow_5 * AttackFarm)
                                end
                            else
                                ToTarget(Rainbow_5 * AttackFarm)
                            end
                        end
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Beautiful Pirate") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Beautiful Pirate" then
                                    repeat task.wait()
                                        ActiveHaki()
                                        EquipWeapon(Weapon)
                                        InstantAttack = true
                                        ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                    until Auto_RainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
                            Rainbow_6 = game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame
                            if InstantTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rainbow_6.Position).Magnitude > 2000 then
                                    InstantTP(Rainbow_6 * AttackFarm)
                                    wait(3)
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rainbow_6.Position).Magnitude < 2000 then
                                    ToTarget(Rainbow_6 * AttackFarm)
                                end
                            else
                                ToTarget(Rainbow_6 * Pos)
                            end
                        end
                    end
                else
                    Rainbow_7 = CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875)
                    if InstantTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rainbow_7.Position).Magnitude > 2000 then
                            InstantTP(Rainbow_7)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Rainbow_7.Position).Magnitude < 2000 then
                            ToTarget(Rainbow_7)
                        end
                    else
                        ToTarget(Rainbow_7)
                    end
                    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if Auto_Observation_V2 then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 3 then
                    Auto_MusketeerHat = false
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and  game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                        repeat 
                            ToTarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
                            wait() 
                        until not Auto_Observation_V2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                        wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                        repeat 
                            ToTarget(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
                            wait() 
                        until not Auto_Observation_V2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
                        wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
                    else
                        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                            if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                                v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
                                wait()
                                firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
                                wait()
                            end
                        end   
                    end
                else
                    Auto_MusketeerHat = true
                end
            end
        end)
    end
end)

spawn(function()
    pcall(function()
        while wait(.1) do
            if Auto_MusketeerHat then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Forest Pirate" then
                                    repeat task.wait(Delay)
                                        pcall(function()
                                            EquipWeapon(Weapon)
                                            ActiveHaki()
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                            v.HumanoidRootPart.CanCollide = false
                                            AttackNoCD()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            StartMagnet = true
                                        end)
                                    until Auto_MusketeerHat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    StartMagnet = false
                                end
                            end
                        else
                            StartMagnet = false
                            ToTarget(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                        end
                    else
                        ToTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                        if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    OldCFrameElephant = v.HumanoidRootPart.CFrame
                                    repeat task.wait(Delay)
                                        pcall(function()
                                            EquipWeapon(Weapon)
                                            ActiveHaki()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.CFrame = OldCFrameElephant
                                            ATtackNoCD()
                                            -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        end)
                                    until Auto_MusketeerHat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            ToTarget(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                        end
                    else
                        ToTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                        if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                    ToTarget(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                end
            end
        end
    end)
end)

spawn(function()
    while wait(.5) do
        pcall(function()
            if Auto_HolyTorch then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                    repeat wait(.2)
                        EquipWeapon("Holy Torch")
                        ToTarget(CFrame.new(-10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    until (Vector3.new(-10752.4434, 415.261749, -9367.43848)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    repeat wait(.2)
                        EquipWeapon("Holy Torch")
                        ToTarget(CFrame.new(-11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229))
                    until (Vector3.new(-11671.6289, 333.78125, -9474.31934)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    repeat wait(.2)
                        EquipWeapon("Holy Torch")
                        ToTarget(CFrame.new(-12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642))
                    until (Vector3.new(-12133.1406, 521.507446, -10654.292)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    repeat wait(.2)
                        EquipWeapon("Holy Torch")
                        ToTarget(CFrame.new(-13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228))
                    until (Vector3.new(-13336.127, 484.521179, -6985.31689)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    EquipWeapon("Holy Torch")
                    repeat wait(.2)
                        ToTarget(CFrame.new(-13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108))
                    until (Vector3.new(-13487.623, 336.436188, -7924.53857)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    Com()
                    wait(20)
                end
            end
        end)
    end
end)
end

local Bones = Tabs.Automatic:AddSection("[🦴] Bones")

local Bones = Tabs.Automatic:AddToggle("Bones", {Title = "Auto Farm Bones", Default = false })

Bones:OnChanged(function(value)
    Farm_Bone = value
    CancelTween(Farm_Bone)
end)

local CakePrince = Tabs.Automatic:AddSection("[🎂] Cake Prince")

local CakePrince = Tabs.Automatic:AddToggle("CakePrince", {Title = "Auto Farm Cake Prince", Default = false })

CakePrince:OnChanged(function(value)
    Farm_CakePrince = value
    CancelTween(Farm_CakePrince)
end)

spawn(function()
    while wait() do
        if Farm_CakePrince then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cake Prince" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    AttackNoCD()
                                    -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until not Farm_CakePrince or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                    ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    else                               
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait(_G.FastAttackDelay)
                                                AutoHaki()
                                                StartMagnet = true
                                                getgenv().Magnitude = 350
                                                EquipWeapon(Weapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false 
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                                AttackNoCD()
                                            until not Farm_CakePrince or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") 
                                            StartMagnet = false
                                        end
                                    end
                                end
                            else
                            if InstantTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375).Position).Magnitude > 1500 then
                                InstantTP(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375).Position).Magnitude < 1500 then
                                ToTarget(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                            end
                            else
                                ToTarget(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                            end
                                UnEquipWeapon(Weapon)
                                ToTarget(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                                MagnetDought = false
                                UnEquipWeapon(Weapon)
                                ToTarget(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375) * Check)
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                    ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
                                        ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
                                            ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
                                                ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                            end
                                        end
                                    end
                                end                       
                            end
                        else
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                                ToTarget(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                                    ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)    

local Farm_DoughKing = Tabs.Automatic:AddToggle("Farm_DoughKing", {Title = "Auto Farm Dough King", Default = false })

Farm_DoughKing:OnChanged(function(value)
    Farm_DoughKing = value
end)

spawn(function()
    while wait() do
        if Farm_DoughKing and ThirdWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Dough King" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    AttackNoCD()
                                    -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until not Farm_DoughKing or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local SpawnCakePrince = Tabs.Automatic:AddToggle("SpawnCakePrince", {Title = "Enabled Spawn Cake Prince", Default = false })

SpawnCakePrince:OnChanged(function(value)
    CakePrince_Spawn = value
end)

spawn(function() 
    while wait(5) do
        if CakePrince_Spawn and game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
        end
    end
end) 

local Material = Tabs.Automatic:AddSection("[🔥] Materials")

local MagmaOre = Tabs.Automatic:AddToggle("MagmaOre", {Title = "Auto Farm Magma Ore", Default = false })

MagmaOre:OnChanged(function(value)
    Farm_MagmaOre = value
    CancelTween(Farm_MagmaOre)
end)

local AngelWings = Tabs.Automatic:AddToggle("AngelWings", {Title = "Auto Farm Angel Wing", Default = false })

AngelWings:OnChanged(function(value)
    Farm_AngelWing = value
    CancelTween(Farm_AngelWing)
end)

local Leather = Tabs.Automatic:AddToggle("Leather", {Title = "Auto Farm Leather", Default = false })

Leather:OnChanged(function(value)
    Farm_Leather = value
    CancelTween(Farm_Leather)
end)

local ScrapMetal = Tabs.Automatic:AddToggle("ScrapMetal", {Title = "Auto Farm Scrap Metal", Default = false })

ScrapMetal:OnChanged(function(value)
    Farm_ScrapMetal = value
    CancelTween(Farm_ScrapMetal)
end)

local Ectoplasm = Tabs.Automatic:AddToggle("Ectoplasm", {Title = "Auto Farm Ectoplasm", Default = false })

Ectoplasm:OnChanged(function(value)
    Farm_Ectoplasm = value
    CancelTween(Farm_Ectoplasm)
end)

local Cocoa = Tabs.Automatic:AddToggle("Cocoa", {Title = "Auto Farm Conjures Cocoa", Default = false })

Cocoa:OnChanged(function(value)
    Farm_Cocoa = value
    CancelTween(Farm_Cocoa)
end)

local Gunpowder = Tabs.Automatic:AddToggle("Gunpowder", {Title = "Auto Farm Gunpowder", Default = false })

Gunpowder:OnChanged(function(value)
    Farm_Gunpowder = value
    CancelTween(Farm_Gunpowder)
end)

local FishTail = Tabs.Automatic:AddToggle("FishTail", {Title = "Auto Farm Fish Tail", Default = false })

FishTail:OnChanged(function(value)
    Farm_FishTail = value
    CancelTween(Farm_FishTail)
end)

local DragonScale = Tabs.Automatic:AddToggle("DragonScale", {Title = "Auto Farm Dragon Scale", Default = false })

DragonScale:OnChanged(function(value)
    Farm_DragonScale = value
    CancelTween(Farm_DragonScale)
end)

local MiniTusk = Tabs.Automatic:AddToggle("MiniTusk", {Title = "Auto Farm Mini Tusk", Default = false })

MiniTusk:OnChanged(function(value)
    Farm_MiniTusk = value
    CancelTween(Farm_MiniTusk)
end)

spawn(function()
        while wait() do
            if Farm_MagmaOre and OldWorld then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Military Spy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Military Spy" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        ActiveHaki()
                                        EquipWeapon(Weapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartMagnet = true
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not Farm_MagmaOre or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                end
                            end
                        end
                    else
                    if InstantTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875).Position).Magnitude > 1500 then
			            InstantTP(CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875))
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875).Position).Magnitude < 1500 then
                        ToTarget(CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875))
					end
				else
				    ToTarget(CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875))
				end
				    UnEquipWeapon(Weapon)
                    ToTarget(CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy") then
                            ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end)
            end
        end
    end)

spawn(function()
        while wait() do
            if Farm_MagmaOre and NewWorld then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Lava Pirate" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        ActiveHaki()
                                        EquipWeapon(Weapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartMagnet = true
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not Farm_MagmaOre or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                end
                            end
                        end
                    else
                    if InstantTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375).Position).Magnitude > 1500 then
                        InstantTP(CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375))
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375).Position).Magnitude < 1500 then
                        ToTarget(CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375))
					end
				else
				    ToTarget(CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375))
				end
				    UnEquipWeapon(Weapon)
                    ToTarget(CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate") then
                            ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end)
            end
        end
    end)

spawn(function()
    while wait() do
        if Farm_AngelWing and OldWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Royal Soldier" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    StartMagnet = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not Farm_AngelWing or not v.Parent or v.Humanoid.Health <= 0
                                StartMagnet = false
                            end
                        end
                    end
                else
                if InstantTP then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375).Position).Magnitude > 1500 then
                    InstantTP(CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375))
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375).Position).Magnitude < 1500 then
                    ToTarget(CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375))
                end
            else
                ToTarget(CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375))
            end
                UnEquipWeapon(Weapon)
                ToTarget(CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier") then
                        ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Farm_Leather and OldWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Pirate") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Pirate" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    StartMagnet = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not Farm_Leather or not v.Parent or v.Humanoid.Health <= 0
                                StartMagnet = true
                            end
                        end
                    end
                else
                if InstantTP then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625).Position).Magnitude > 1500 then
                    InstantTP(CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625))
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625).Position).Magnitude < 1500 then
                    ToTarget(CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625))
                end
            else
                ToTarget(CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625))
            end
                UnEquipWeapon(Weapon)
                ToTarget(CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate") then
                        ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Farm_Leather and NewWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Marine Captain" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    StartMagnet = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not Farm_Leather or not v.Parent or v.Humanoid.Health <= 0
                                StartMagnet = false
                            end
                        end
                    end
                else
                if InstantTP then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375).Position).Magnitude > 1500 then
                InstantTP(CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375))
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375).Position).Magnitude < 1500 then
                    ToTarget(CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375))
                end
            else
                ToTarget(CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375))
            end
                UnEquipWeapon(Waepon)
                ToTarget(CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain") then
                        ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Farm_Leather and ThirdWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Jungle Pirate" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    StartMagnet = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not Farm_Leather or not v.Parent or v.Humanoid.Health <= 0
                                StartMagnet = false
                            end
                        end
                    end
                else
                if InstantTP then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375).Position).Magnitude > 1500 then
                    InstantTP(CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375))
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375).Position).Magnitude < 1500 then
                    ToTarget(CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375))
                end
            else
                ToTarget(CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375))
            end
                UnEquipWeapon(Weapon)
                ToTarget(CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate") then
                        ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
            end)
        end
    end
end)

spawn(function()
        while wait() do
            if Farm_ScrapMetal and OldWorld then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Brute") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Brute" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        ActiveHaki()
                                        EquipWeapon(Weapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartMagnet = true
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not Farm_ScrapMetal or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if InstantTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125).Position).Magnitude > 1500 then
                        InstantTP(CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125))
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125).Position).Magnitude < 1500 then
                        ToTarget(CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125))
					end
				else
				    ToTarget(CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125))
				end
				    UnEquipWeapon(Weapon)
                    ToTarget(CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Brute") then
                            ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Brute").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end)
            end
        end
    end)
    
spawn(function()
    while wait() do
        if Farm_ScrapMetal and NewWorld then
            pcall(function()
                  if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary") then
                      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                      if v.Name == "Mercenary" then
                              if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                  repeat task.wait()
                                      ActiveHaki()
                                      EquipWeapon(Weapon)
                                      v.HumanoidRootPart.CanCollide = false
                                      v.Humanoid.WalkSpeed = 0
                                      v.Head.CanCollide = false 
                                      StartMagnet = true
                                      PosMon = v.HumanoidRootPart.CFrame
                                      MonFarm = v.Name
                                      ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                      game:GetService("VirtualUser"):CaptureController()
                                     game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                               until not Farm_ScrapMetal or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                if InstantTP then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125).Position).Magnitude > 1500 then
			        InstantTP(CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125))
				elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125).Position).Magnitude < 1500 then
                    ToTarget(CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125))
				end
			else
				ToTarget(CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125))
			end
				UnEquipWeapon(_G.SelectWeapon)
                ToTarget(CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary") then
                        ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
            end)
        end
     end
end)
    
spawn(function()
    while wait() do
        if Farm_ScrapMetal and ThirdWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Pirate Millionaire" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    StartMagnet = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not Farm_ScrapMetal or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                if InstantTP then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875).Position).Magnitude > 1500 then
                    InstantTP(CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875))
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875).Position).Magnitude < 1500 then
                    ToTarget(CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875))
                end
            else
                ToTarget(CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875))
            end
                UnEquipWeapon(Weapon)
                ToTarget(CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire") then
                        ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
            end)
        end
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if Farm_Ectoplasm and NewWorld then
                if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                ActiveHaki()
                                if string.find(v.Name,"Ship") then
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    EctoplasmMon = v.HumanoidRootPart.CFrame
                                    StartMagnet = true
                                else
                                    StartMagnet = false
                                    ToTarget(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                end
                            until Farm_Ectoplasm == false or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                else
                    ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))                         
                    StartMagnet = false
                    local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if Distance > 18000 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                    end
                    ToTarget(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                end
            end
        end
    end)
end)

spawn(function()
    while wait() do
        if Farm_Cocoa and ThirdWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Chocolate Bar Battler" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    StartMagnet = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not Farm_Cocoa or not v.Parent or v.Humanoid.Health <= 0
                                StartMagnet = false
                            end
                        end
                    end
                else
                if InstantTP then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375).Position).Magnitude > 1500 then
                    InstantTP(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375))
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375).Position).Magnitude < 1500 then
                    ToTarget(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375))
                end
            else
                ToTarget(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375))
            end
                UnEquipWeapon(Weapon)
                ToTarget(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler") then
                        ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Farm_DragonScale and ThirdWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Dragon Crew Warrior" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    StartMagnet = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not Farm_DragonScale or not v.Parent or v.Humanoid.Health <= 0
                                StartMagnet = false
                            end
                        end
                    end
                else
                if InstantTP then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125).Position).Magnitude > 1500 then
                    InstantTP(CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125))
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125).Position).Magnitude < 1500 then
                    ToTarget(CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125))
                end
            else
                ToTarget(CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125))
            end
                UnEquipWeapon(Weapon)
                ToTarget(CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior") then
                        ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Farm_Gunpowder and ThirdWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Pistol Billionaire" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    StartMagnet = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not Farm_Gunpowder or not v.Parent or v.Humanoid.Health <= 0
                                StartMagnet = false
                            end
                        end
                    end
                else
                if InstantTP then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875).Position).Magnitude > 1500 then
                    InstantTP(CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875))
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875).Position).Magnitude < 1500 then
                    ToTarget(CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875))
                end
            else
                ToTarget(CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875))
            end
                UnEquipWeapon(Weapon)
                ToTarget(CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire") then
                        ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Farm_FishTail and ThirdWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Fishman Captain" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    StartMagnet = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not Farm_FishTail or not v.Parent or v.Humanoid.Health <= 0
                                StartMagnet = false
                            end
                        end
                    end
                else
                if InstantTP then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875).Position).Magnitude > 1500 then
                    InstantTP(CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875))
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875).Position).Magnitude < 1500 then
                    ToTarget(CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875))
                end
            else
                ToTarget(CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875))
            end
                UnEquipWeapon(Weapon)
                ToTarget(CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain") then
                        ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Farm_MiniTusk and ThirdWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Mythological Pirate" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    StartMagnet = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    ToTarget(v.HumanoidRootPart.CFrame * AttackFarm)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not Farm_MiniTusk or not v.Parent or v.Humanoid.Health <= 0
                                StartMagnet = false
                            end
                        end
                    end
                else
                if InstantTP then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125).Position).Magnitude > 1500 then
                    InstantTP(CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125))
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125).Position).Magnitude < 1500 then
                    ToTarget(CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125))
                end
            else
                ToTarget(CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125))
            end
                UnEquipWeapon(Weapon)
                ToTarget(CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate") then
                        ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
            end)
        end
    end
end)

local SelectStats = Tabs.Stats:AddSection("Select Point")

local SelectPoint = Tabs.Stats:AddSlider("SelectPoint", {
    Title = "Select Point",
    Description = "",
    Default = 3,
    Min = 1,
    Max = 2549,
    Rounding = 1,
    Callback = function(Value)
        _G.Point = Value
    end
})

SelectPoint:OnChanged(function(Value)
    _G.Point = Value
end)

SelectPoint:SetValue(3)

local SelectStats = Tabs.Stats:AddSection("Select Stats")

local MeleeStats = Tabs.Stats:AddToggle("MeleeStats", {Title = "Melee",Description = "", Default = false })

MeleeStats:OnChanged(function(Value)
    _G.Melee = Value
end)

spawn(function()
	while wait() do
		if _G.Melee then
			local args = {
				[1] = "AddPoint",
				[2] = "Melee",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

local DefenseStats = Tabs.Stats:AddToggle("DefenseStats", {Title = "Defense",Description = "", Default = false })

DefenseStats:OnChanged(function(Value)
    _G.Defense = Value
end)

spawn(function()
	while wait() do
		if _G.Defense then
			local args = {
				[1] = "AddPoint",
				[2] = "Defense",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

local SwordStats = Tabs.Stats:AddToggle("SwordStats", {Title = "Sword",Description = "", Default = false })

SwordStats:OnChanged(function(Value)
    _G.Sword = Value
end)

spawn(function()
	while wait() do
		if _G.Sword then
			local args = {
				[1] = "AddPoint",
				[2] = "Sword",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

local GunStats = Tabs.Stats:AddToggle("GunStats", {Title = "Gun",Description = "", Default = false })

GunStats:OnChanged(function(Value)
    _G.Gun = Value
end)

spawn(function()
	while wait() do
		if _G.Gun then
			local args = {
				[1] = "AddPoint",
				[2] = "Gun",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

local FruitStats = Tabs.Stats:AddToggle("FruitStats", {Title = "Devil Fruit",Description = "", Default = false })

FruitStats:OnChanged(function(Value)
    _G.Fruit = Value
end)

spawn(function()
	while wait() do
		if _G.Fruit then
			local args = {
				[1] = "AddPoint",
				[2] = "Demon Fruit",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

local Raid = Tabs.Raid:AddSection("[🏰] Dungeon")

local Chips = {"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Buddha","Sand","Phoenix","Dough"}

local DropdownRaid = Tabs.Raid:AddDropdown("DropdownRaid", {
    Title = "Select Chips Type",
    Description = "",
    Values = Chips,
    Multi = false,
    Default = 1,
})

DropdownRaid:OnChanged(function(Value)
    SelectChip = Value
end)

local ToggleBuy = Tabs.Raid:AddToggle("ToggleBuy", {Title = "Enabled Buy Chips", Description = "",Default = false })

ToggleBuy:OnChanged(function(Value)
    BuyChips = Value
end)

spawn(function()
    while wait() do
		if BuyChips then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = SelectChip
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
        end
    end
end)


local ToggleStart = Tabs.Raid:AddToggle("ToggleStart", {Title = "Automatic Start Dungeon",Description = "", Default = false })

ToggleStart:OnChanged(function(Value)
    StartRaid = Value
end)

spawn(function()
    while wait(.1) do
        pcall(function()
            if StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if NewWorld then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif ThirdWorld then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)

local ToggleKillAura = Tabs.Raid:AddToggle("ToggleKillAura", {Title = "Kill Aura",Description = "", Default = false })

ToggleKillAura:OnChanged(function(Value)
    KillAura = Value
end)

spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                        until not KillAura or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)


local ToggleNextIsland = Tabs.Raid:AddToggle("ToggleNextIsland", {Title = "Automatic Next Island",Description = "", Default = false })

ToggleNextIsland:OnChanged(function(Value)
    AutoNextIsland = Value
end)

spawn(function()
    while task.wait() do
        if AutoNextIsland then
            pcall(function()
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,70,100))
                    end
                end
            end)
        end
    end
end)

local ToggleAwake = Tabs.Raid:AddToggle("ToggleAwake", {Title = "Automatic Awakening",Description = "", Default = false })

ToggleAwake:OnChanged(function(Value)
    AwakeningFruits = Value
end)

spawn(function()
    while task.wait() do
        if AwakeningFruits then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end)
        end
    end
end)

local ToggleGetFruit = Tabs.Raid:AddToggle("ToggleGetFruit", {Title = "Allow Use In Inventory Fruits",Description = "", Default = false })

ToggleGetFruit:OnChanged(function(Value)
    UseFruit = Value
end)

spawn(function()
    while wait(.1) do
        pcall(function()
            if UseFruit then
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Rocket-Rocket"
                }               
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                                                
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Spin-Spin"
                }                
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Chop-Chop"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Spring-Spring"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Bomb-Bomb"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Smoke-Smoke"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Spike-Spike"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Flame-Flame"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Falcon-Falcon"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Ice-Ice"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Sand-Sand"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {      
                    [1] = "LoadFruit",
                    [2] = "Dark-Dark"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Ghost-Ghost"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Diamond-Diamond"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Light-Light"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Rubber-Rubber"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Barrier-Barrier"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end)
    end
end)


if NewWorld then
Tabs.Raid:AddButton({
    Title = "toTarget Dungeon",
    Description = "",
    Callback = function()
        ToTarget(CFrame.new(-6438.73535, 250.645355, -4501.50684))
    end
})
elseif ThirdWorld then
Tabs.Raid:AddButton({
    Title = "toTarget Dungeon",
    Description = "",
    Callback = function()
        ToTarget(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
    end
})
end

local Fruits = Tabs.Fruit:AddSection("[🍊] Fruits")

local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper = {}
ShopDevilSell = {}
for i,v in next,Remote_GetFruits do
    table.insert(Table_DevilFruitSniper,v.Name)
    if v.OnSale then 
        table.insert(ShopDevilSell,v.Name)
    end
end

local FruitType = Tabs.Fruit:AddDropdown("FruitType", {
    Title = "Select Fruits",
    Description = "",
    Values = Table_DevilFruitSniper,
    Multi = false,
    Default = 1,
})

FruitType:OnChanged(function(Value)
    _G.SelectFruit = Value
end)

local StartSniper = Tabs.Fruit:AddToggle("StartSniper", {Title = "Start Sniper",Description = "", Default = false })

StartSniper:OnChanged(function(Value)
    StartSniper = Value
end)

spawn(function()
    pcall(function()
        while wait(.1) do
            if StartSniper then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit","_G.SelectFruit",false)
            end 
        end
    end)
end)

local StoreFruits = Tabs.Fruit:AddToggle("StoreFruits", {Title = "Automatic Store Fruits",Description = "", Default = false })

StoreFruits:OnChanged(function(Value)
    KeepFruits = Value
end)

spawn(function()
    while task.wait() do
        if KeepFruits then
            pcall(function()
                if KeepFruits then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rocket-Rocket",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Falcon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Falcon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("alcon Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ghost-Ghost",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Buddha Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buddha",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Buddha Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spider-Spider",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Phoenix Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Phoenix",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Phoenix Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Pain-Pain",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Soul-Soul",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
                    end
                end
            end
        end)
    end
        wait(0.3)
    end
end)

local RandomFruits = Tabs.Fruit:AddToggle("RandomFruits", {Title = "Auto Random Fruits",Description = "", Default = false })

RandomFruits:OnChanged(function(Value)
    RandomFruits = Value
end)

spawn(function()
    pcall(function()
        while wait(.1) do
            if RandomFruits then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end 
        end
    end)
end)

local BringFruits = Tabs.Fruit:AddToggle("BringFruits", {Title = "Automatic Bring Fruit",Description = "", Default = false })

BringFruits:OnChanged(function(Value)
    BringFruits = Value
end)

local CollectFruits = Tabs.Fruit:AddToggle("CollectFruits", {Title = "Automatic Collect Fruits",Description = "", Default = false })

CollectFruits:OnChanged(function(Value)
    CollectFruits = Value
end)

spawn(function()
    while wait(.1) do
        if BringFruits then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                end
            end
        end
    end
end)

spawn(function()
    while wait(.1) do
        if CollectFruits then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    Tween(v.Handle.CFrame)
                end
            end
        end
    end
end)


local Player = Tabs.Player:AddSection("[🎶] Players")

local Playerslist = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end

local PlayerType = Tabs.Player:AddDropdown("PlayerType", {
    Title = "Select Players",
    Description = "",
    Values = Playerslist,
    Multi = false,
    Default = 1,
})

PlayerType:OnChanged(function(Value)
    Select_Player = Value
end)

Tabs.Player:AddButton({
    Title = "Refresh Player",
    Description = "",
    Callback = function()
        table.clear(Playerslist)
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            table.insert(Playerslist,v.Name)
        end
    end
})

local PlayerTP = Tabs.Player:AddToggle("PlayerTP", {Title = "Teleport Players", Description = "",Default = false })

PlayerTP:OnChanged(function(value)
    Player_Teleport = value
    CancelTween(Player_Teleport)
end)

spawn(function()
	while wait() do
		if Player_Teleport then
			pcall(function()
				if game.Players:FindFirstChild(Select_Player) then
					ToTarget(game.Players[Select_Player].Character.HumanoidRootPart.CFrame)
				end
			end)
		end
	end
end)

local SpectatePlayer = Tabs.Player:AddToggle("SpectatePlayer", {Title = "Spectate Players", Description = "", Default = false })

SpectatePlayer:OnChanged(function(value)
    SpectatePlayer = value
    local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
    local plr2 = game:GetService("Players"):FindFirstChild(Select_Player)
    repeat wait(.1)
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(Select_Player).Character.Humanoid
    until SpectatePlayer == false 
    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
end)

local EnabledPVP = Tabs.Player:AddToggle("EnabledPVP", {Title = "Enabled Pvp", Description = "",Default = false })

EnabledPVP:OnChanged(function(Value)
    EnabledPvp = Value
end)

spawn(function()
  pcall(function()
      while wait() do
          if EnabledPvp then
              if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
              end
          end
      end
  end)
end)

local Aimbot = Tabs.Player:AddSection("[🤠] Aimbot")

local SizeFov = Tabs.Player:AddSlider("SizeFov", {
    Title = "Size Fov ( % )",
    Description = "",
    Default = 100,
    Min = 0,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)
        _G.Select_Size_Fov = Value
    end
})

SizeFov:OnChanged(function(Value)
    Select_Fov = Value
end)


local ShowFov = Tabs.Player:AddToggle("ShowFov", {Title = "Show Fov",Description = "", Default = false })

ShowFov:OnChanged(function(value)
    ShowFov = value
end)


local Aimbot = Tabs.Player:AddToggle("Aimbot", {Title = "Aimbot Skill",Description = "", Default = false })

Aimbot:OnChanged(function(Value)
    AimbotSKill = Value
end)

local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()
spawn(function()
	while wait() do
		if AimbotFov then
			pcall(function()
				local MaxDist, Closest = math.huge
				for i,v in pairs(game:GetService("Players"):GetChildren()) do 
					local Head = v.Character:FindFirstChild("HumanoidRootPart")
					local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, Head.Position)
					local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
					local Dist = (TheirPos - MousePos).Magnitude
					if Dist < MaxDist and Dist <= Select_Fov and v.Name ~= game.Players.LocalPlayer.Name then
						MaxDist = Dist
						AimbotPlayer = v
					end
				end
			end)
		end
	end
end)
spawn(function()
	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if AimbotFov then
						args[2] = AimbotPlayer.Character.HumanoidRootPart.Position
						return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)
end)


local Circle = Drawing.new("Circle")
Circle.Color =  Color3.fromRGB(0, 244, 0)
Circle.Thickness = 1
Circle.Radius = 250
Circle.NumSides = 460
Circle.Filled = false
Circle.Transparency = 1

game:GetService("RunService").Stepped:Connect(function()
    Circle.Radius = Select_Fov
    Circle.Thickness = 1
    Circle.NumSides = 460
    Circle.Position = game:GetService('UserInputService'):GetMouseLocation()
    if ShowFov then
        Circle.Visible = true
    else
        Circle.Visible = false
    end
end)

local Teleport = Tabs.Island:AddSection("[🏝️] Teleport")

Tabs.Island:AddButton({
    Title = "Main",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})

Tabs.Island:AddButton({
    Title = "Dressrosa",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})

Tabs.Island:AddButton({
    Title = "Zou",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})

local Island = Tabs.Island:AddSection("[✈️] Teleport")

if OldWorld then
    IslandList = {
    "WindMill",
    "Marine",
    "Middle Town",
    "Jungle",
    "Pirate Village",
    "Desert",
    "Snow Island",
    "MarineFord",
    "Colosseum",
    "Sky Island 1",
    "Sky Island 2",
    "Sky Island 3",
    "Prison",
    "Magma Village",
    "Under Water Island",
    "Fountain City",
    "Shank Room",
    "Mob Island",
}

elseif NewWorld then
    IslandList = {
    "The Cafe",
    "Frist Spot",
    "Dark Area",
    "Flamingo Mansion",
    "Flamingo Room",
    "Green Zone",
    "Factory",
    "Colossuim",
    "Zombie Island",
    "Two Snow Mountain",
    "Punk Hazard",
    "Cursed Ship",
    "Ice Castle",
    "Forgotten Island",
    "Ussop Island",
    "Mini Sky Island",
}

elseif ThirdWorld then
    IslandList = {
    "Mansion",
    "Port Town",
    "Great Tree",
    "Castle On The Sea",
    "MiniSky", 
    "Hydra Island",
    "Floating Turtle",
    "Haunted Castle",
    "Ice Cream Island",
    "Peanut Island",
    "Cake Island",
    "Cocoa Island",
    "Candy Island",
    "Tiki Outpost",
    }
end

local IslandType = Tabs.Island:AddDropdown("IslandType",{
    Title = "Select Island",
    Description = "",
    Values = IslandList,
    Multi = false,
    Default = 1,
})

IslandType:OnChanged(function(Value)
    _G.SelectIsland = Value
end)

Tabs.Island:AddButton({
    Title = "Teleport Island",
    Description = "",
    Callback = function()
        if _G.SelectIsland == "WindMill" then
            ToTarget(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
        elseif _G.SelectIsland == "Marine" then
            ToTarget(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
        elseif _G.SelectIsland == "Middle Town" then
            ToTarget(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
        elseif _G.SelectIsland == "Jungle" then
            ToTarget(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
        elseif _G.SelectIsland == "Pirate Village" then
            ToTarget(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
        elseif _G.SelectIsland == "Desert" then
            ToTarget(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
        elseif _G.SelectIsland == "Snow Island" then
            ToTarget(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
        elseif _G.SelectIsland == "MarineFord" then
            ToTarget(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
        elseif _G.SelectIsland == "Colosseum" then
            ToTarget( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
        elseif _G.SelectIsland == "Sky Island 1" then
            ToTarget(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
        elseif _G.SelectIsland == "Sky Island 2" then  
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
        elseif _G.SelectIsland == "Sky Island 3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
        elseif _G.SelectIsland == "Prison" then
            ToTarget( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
        elseif _G.SelectIsland == "Magma Village" then
            ToTarget(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
        elseif _G.SelectIsland == "Under Water Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        elseif _G.SelectIsland == "Fountain City" then
            ToTarget(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
        elseif _G.SelectIsland == "Shank Room" then
            ToTarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
        elseif _G.SelectIsland == "Mob Island" then
            ToTarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
        elseif _G.SelectIsland == "The Cafe" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
            wait(0.5)
            ToTarget(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
        elseif _G.SelectIsland == "Frist Spot" then
            ToTarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
        elseif _G.SelectIsland == "Dark Area" then
            ToTarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
        elseif _G.SelectIsland == "Flamingo Mansion" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
        elseif _G.SelectIsland == "Flamingo Room" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.152034759521484, 905.48291015625))
        elseif _G.SelectIsland == "Green Zone" then
            ToTarget( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
        elseif _G.SelectIsland == "Factory" then
            ToTarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
        elseif _G.SelectIsland == "Colossuim" then
            ToTarget( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
        elseif _G.SelectIsland == "Zombie Island" then
            ToTarget(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
        elseif _G.SelectIsland == "Two Snow Mountain" then
            ToTarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
        elseif _G.SelectIsland == "Punk Hazard" then
            ToTarget(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
        elseif _G.SelectIsland == "Cursed Ship" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.40197753906, 125.05712890625, 32885.875))
        elseif _G.SelectIsland == "Ice Castle" then
            ToTarget(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
        elseif _G.SelectIsland == "Forgotten Island" then
            ToTarget(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
        elseif _G.SelectIsland == "Ussop Island" then
            ToTarget(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
        elseif _G.SelectIsland == "Mini Sky Island" then
            ToTarget(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
        elseif _G.SelectIsland == "Great Tree" then
            ToTarget(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
        elseif _G.SelectIsland == "Castle On The Sea" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
        elseif _G.SelectIsland == "MiniSky" then
            ToTarget(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
        elseif _G.SelectIsland == "Port Town" then
            ToTarget(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
        elseif _G.SelectIsland == "Hydra Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5753.5478515625, 610.7880859375, -282.33172607421875))
        elseif _G.SelectIsland == "Floating Turtle" then
            ToTarget(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
        elseif _G.SelectIsland == "Mansion" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12468.5380859375, 375.0094299316406, -7554.62548828125))
        elseif _G.SelectIsland == "Haunted Castle" then
            ToTarget(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
        elseif _G.SelectIsland == "Ice Cream Island" then
            ToTarget(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
        elseif _G.SelectIsland == "Peanut Island" then
            ToTarget(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
        elseif _G.SelectIsland == "Cake Island" then
            ToTarget(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
        elseif _G.SelectIsland == "Cocoa Island" then
            ToTarget(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
        elseif _G.SelectIsland == "Candy Island" then
            ToTarget(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
        elseif _G.SelectIsland == "Tiki Outpost" then
            ToTarget(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
        end
    end
})

Tabs.Island:AddButton({
    Title = "Stop Teleport",
    Description = "",
    Callback = function()
        ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
})

local HakiShop = Tabs.Shop:AddSection("[🎁] Haki Shop")

Tabs.Shop:AddButton({
	Title = "Buy Geppo Haki",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy Buso Haki",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy Soru Haki",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy Observation Haki",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
	end
})

local PlayerShop = Tabs.Shop:AddSection("[📋] Player Shop")

Tabs.Shop:AddButton({
	Title = "Reset Stats",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
	end
})

Tabs.Shop:AddButton({
	Title = "Reroll Race",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
	end
})

local Shop = Tabs.Shop:AddSection("[🧾] Fighting Style Shop")

Tabs.Shop:AddButton({
	Title = "Buy Black Leg",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy Electro",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy Fishman Karate",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy Dragon Claw",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy Superhuman",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy Death Step",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy Sharkman Karate",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy Electric Claw",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy Dragon Talon",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy God Human",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
	end
})

local Gun = Tabs.Shop:AddSection("[🖋️] Gun")

Tabs.Shop:AddButton({
	Title = "Buy Slingshot",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy Cannon",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy Kabucha",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
	end
})

local BaseItem = Tabs.Shop:AddSection("[🧾] Base Item")

local BaseItem = Tabs.Shop:AddToggle("BaseItem", {Title = "Buy Base Item",Description = "", Default = false })

BaseItem:OnChanged(function(Value)
    BuyBaseItem = Value
end)

spawn(function()
    while wait() do
        if BuyBaseItem then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
            end)
        end
    end
end)

local ChoosingTeam = Tabs.Miscellaneous:AddSection("[👮] Choosing Team")

Tabs.Miscellaneous:AddButton({
	Title = "Join Pirates Team",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
	end
})

Tabs.Miscellaneous:AddButton({
	Title = "Join Marines Team",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
	end
})

local Graphic = Tabs.Miscellaneous:AddSection("[👤] Graphic")

local Set3dRendering = Tabs.Miscellaneous:AddToggle("Set3dRendering", {Title = "Disable 3D Rendering",Description = "", Default = false })

Set3dRendering:OnChanged(function(Value)
    Set3dRendering = Value
    if Set3dRendering == true then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    elseif Set3dRendering == false then
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
end)

Tabs.Miscellaneous:AddButton({
	Title = "Low Quality Graphic",
	Description = "",
	Callback = function()
		local decalsyeeted = true 
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
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
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
                v.Enabled = false
            end
        end
	end
})

Tabs.Miscellaneous:AddButton({
	Title = "Remove Fog",
	Description = "",
	Callback = function()
		game:GetService("Lighting").LightingLayers:Destroy()
    	game:GetService("Lighting").Sky:Destroy()
    	game.Lighting.FogEnd = 9e9
	end
})

Tabs.Miscellaneous:AddButton({
	Title = "Remove Lava",
	Description = "",
	Callback = function()
		for i,v in pairs(game.Workspace:GetDescendants()) do
			if v.Name == "Lava" then   
				v:Destroy()
			end
		end
		for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
			if v.Name == "Lava" then   
				v:Destroy()
			end
		end
	end
})

local Games = Tabs.Miscellaneous:AddSection("[🎮] Games")

local Set3dRendering = Tabs.Miscellaneous:AddToggle("WaterNoDamaged", {Title = "Walk on Water",Description = "", Default = false })

Tabs.Miscellaneous:AddButton({
	Title = "Kaitun Screen Capture",
	Description = "",
	Callback = function()
		local cac = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
		local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
		local Items = {}
		local RaityLevel = {"Mythical","Legendary","Rare","Uncommon","Common"}
		local RaityColor =  {
			["Common"] = Color3.fromRGB(179, 179, 179),
			["Uncommon"] = Color3.fromRGB(92, 140, 211),
			["Rare"] =  Color3.fromRGB(140, 82, 255),
			["Legendary"] = Color3.fromRGB(213, 43, 228) ,
			["Mythical"] =  Color3.fromRGB(238, 47, 50)
		}
		function GetRaity(color)
			for k,v in pairs(RaityColor) do 
				if v==color then return k end
			end
		end

		for k,v in pairs(Inventory) do 
			Items[v.Name] = v
		end

		local total = #getupvalue(cac.UpdateRender,4)
		local rac = {}
		local allitem = {}
		local total2 = 0
		while total2<total do 
			local i = 0
			while i < 25000 and total2<total do 
				game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0,i)
				for k,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do 
					if v:IsA("Frame") and not rac[v.ItemName.Text] and v.ItemName.Visible==true then 
						local vaihuhu = GetRaity(v.Background.BackgroundColor3)
						if vaihuhu then
							print("Rac")
							if not allitem[vaihuhu] then 
								allitem[vaihuhu] = {}
							end
							table.insert(allitem[vaihuhu],v:Clone())
						end
						total2=total2+1
						rac[v.ItemName.Text] = true
					end
				end
				i=i+20
			end
			wait()
		end
		function GetXY(vec) 
			return vec*100
		end

		local tvk = Instance.new("UIListLayout")
		tvk.FillDirection = Enum.FillDirection.Vertical
		tvk.SortOrder = 2
		tvk.Padding = UDim.new(0,10)

		local Left = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat)
		Left.BackgroundTransparency = 1
		Left.Size = UDim2.new(.5,0,1,0) 
		tvk.Parent = Left

		local Right = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat)
		Right.BackgroundTransparency = 1
		Right.Size = UDim2.new(.5,0,1,0) 
		Right.Position = UDim2.new(.6,0,0,0)
		tvk:Clone().Parent = Right
		for k,v in pairs(allitem) do 
			local cac = Instance.new("Frame",Left)
			cac.BackgroundTransparency = 1
			cac.Size = UDim2.new(1,0,0,0) 
			cac.LayoutOrder = table.find(RaityLevel,k)

			local cac2 = Instance.new("Frame",Right)
			cac2.BackgroundTransparency = 1
			cac2.Size = UDim2.new(1,0,0,0) 
			cac2.LayoutOrder = table.find(RaityLevel,k)

			local tvk = Instance.new("UIGridLayout",cac)
			tvk.CellPadding = UDim2.new(.005,0,.005,0)
			tvk.CellSize =  UDim2.new(0,70,0,70)
			tvk.FillDirectionMaxCells = 100
			tvk.FillDirection = Enum.FillDirection.Horizontal

			local ccc = tvk:Clone()
			ccc.Parent = cac2
			for k,v in pairs(v) do 
				if Items[v.ItemName.Text] and Items[v.ItemName.Text].Mastery then 
					if v.ItemLine2.Text~="Accessory" then 
						local bucac = v.ItemName:Clone()
						bucac.BackgroundTransparency = 1
						bucac.TextSize = 10
						bucac.TextXAlignment  = 2
						bucac.TextYAlignment  = 2
						bucac.ZIndex  = 5
						bucac.Text = Items[v.ItemName.Text].Mastery
						bucac.Size = UDim2.new(.5,0,.5,0)
						bucac.Position = UDim2.new(.5,0,.5,0)
						bucac.Parent = v
					end
					v.Parent = cac
				elseif v.ItemLine2.Text == "Blox Fruit" then 
					v.Parent = cac2
				end
			end
			cac.AutomaticSize = 2
			cac2.AutomaticSize = 2
		end
		local ListHuhu = {
			["Superhuman"] = Vector2.new(3,2),
			["DeathStep"] = Vector2.new(4,3),
			["ElectricClaw"] = Vector2.new(2,0),
			["SharkmanKarate"] = Vector2.new(0,0),
			["DragonTalon"] = Vector2.new(1,5)
		}
		local MeleeG = Instance.new("Frame",Left)
		MeleeG.BackgroundTransparency = 1
		MeleeG.Size = UDim2.new(1,0,0,0) 
		MeleeG.LayoutOrder = table.find(RaityLevel,k)
		MeleeG.AutomaticSize=2
		MeleeG.LayoutOrder = 100
		local tvk = Instance.new("UIGridLayout",MeleeG)
		tvk.CellPadding = UDim2.new(.005,0,.005,0)
		tvk.CellSize =  UDim2.new(0,70,0,70)
		tvk.FillDirectionMaxCells = 100
		tvk.FillDirection = Enum.FillDirection.Horizontal

		local cac = {"Superhuman","ElectricClaw","DragonTalon","SharkmanKarate","DeathStep","GodHuman"}
		for k,v in pairs(cac) do
			if ListHuhu[v] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"..v,true) == 1 then 
				local huhu = Instance.new("ImageLabel",MeleeG)
				huhu.Image = "rbxassetid://9945562382"
				huhu.ImageRectSize = Vector2.new(100,100)
				huhu.ImageRectOffset = ListHuhu[v]*100
			end
		end
		function formatNumber(v)
			return tostring(v):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
		end
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0,800,0,500)
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0,800,0,550)

		local thieunang = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
		thieunang.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat
		thieunang.Position = UDim2.new(0,800,0.63,0)
		local n = formatNumber(game.Players.LocalPlayer.Data.Fragments.Value)
		thieunang.Text = " "..n
		print("Done")
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy()
		end)
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy()
		end)
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy()
		end)
		for k,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do 
			if v:IsA("ImageButton") then 
				v:Destroy()
			end
		end
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy()
		end)
	end
})

Tabs.Miscellaneous:AddButton({
	Title = "Destory Kaitun Screen",
	Description = "",
	Callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
	end
})

local InfiniteGeppo = Tabs.Miscellaneous:AddToggle("InfiniteGeppo", {Title = "Infinite Geppo",Description = "", Default = false })

InfiniteGeppo:OnChanged(function(Value)
    InfiniteGeppo = Value
end)

local InfiniteDash = Tabs.Miscellaneous:AddToggle("InfiniteDash", {Title = "Dash No Cooldown",Description = "", Default = false })

InfiniteDash:OnChanged(function(Value)
    InfiniteDash = Value
end)

local InfiniteSoru = Tabs.Miscellaneous:AddToggle("InfiniteSoru", {Title = "Soru No Cooldown",Description = "", Default = false })

InfiniteSoru:OnChanged(function(Value)
    InfiniteSoru = Value
end)

local InfinitiesEnergy = Tabs.Miscellaneous:AddToggle("InfinitiesEnergy", {Title = "Infinite Energy",Description = "", Default = false })

InfinitiesEnergy:OnChanged(function(Value)
    InfinitiesEnergy = Value
end)

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("Kirainc Hub")
SaveManager:SetFolder("KiraincHub/Blox-Fruits")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)

Fluent:Notify({
    Title = "Kirainc Hub",
    Content = "Loading Successfully",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()

ThirdLoad = true