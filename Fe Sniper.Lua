	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local FeSniper = Instance.new("ScreenGui")
	local FeSniper_2 = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local HatsNeeded = Instance.new("TextLabel")
	local Hats = Instance.new("TextLabel")
	local Hats_2 = Instance.new("TextLabel")
	local FeSniper_3 = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")

	--Properties:

	FeSniper.Name = "Fe Sniper"
	FeSniper.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	FeSniper.Enabled = false
	FeSniper.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	FeSniper.ResetOnSpawn = false

	FeSniper_2.Name = "Fe Sniper"
	FeSniper_2.Parent = FeSniper
	FeSniper_2.AnchorPoint = Vector2.new(0.00100000005, 0.00100000005)
	FeSniper_2.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	FeSniper_2.Position = UDim2.new(0.35033977, 0, 0.678553224, 0)
	FeSniper_2.Size = UDim2.new(0, 428, 0, 189)

	UICorner.CornerRadius = UDim.new(0.0500000007, 10)
	UICorner.Parent = FeSniper_2

	HatsNeeded.Name = "Hats Needed"
	HatsNeeded.Parent = FeSniper_2
	HatsNeeded.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HatsNeeded.BackgroundTransparency = 1.000
	HatsNeeded.BorderSizePixel = 0
	HatsNeeded.Position = UDim2.new(0.00403406005, 0, 0.292515755, 0)
	HatsNeeded.Size = UDim2.new(0, 427, 0, 45)
	HatsNeeded.Font = Enum.Font.SourceSans
	HatsNeeded.Text = "Hats Needed"
	HatsNeeded.TextColor3 = Color3.fromRGB(120, 120, 120)
	HatsNeeded.TextScaled = true
	HatsNeeded.TextSize = 14.000
	HatsNeeded.TextWrapped = true

	Hats.Name = "Hats"
	Hats.Parent = FeSniper_2
	Hats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hats.BackgroundTransparency = 1.000
	Hats.BorderSizePixel = 0
	Hats.Position = UDim2.new(-0.00117428508, 0, 0.495626688, 0)
	Hats.Size = UDim2.new(0, 429, 0, 45)
	Hats.Font = Enum.Font.SourceSans
	Hats.Text = "https://web.roblox.com/catalog/4506945409/Corrupt-Demonic-Greatsword"
	Hats.TextColor3 = Color3.fromRGB(120, 120, 120)
	Hats.TextScaled = true
	Hats.TextSize = 14.000
	Hats.TextWrapped = true

	Hats_2.Name = "Hats"
	Hats_2.Parent = FeSniper_2
	Hats_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hats_2.BackgroundTransparency = 1.000
	Hats_2.BorderSizePixel = 0
	Hats_2.Position = UDim2.new(-0.00117428508, 0, 0.688811302, 0)
	Hats_2.Size = UDim2.new(0, 429, 0, 45)
	Hats_2.Font = Enum.Font.SourceSans
	Hats_2.Text = "https://web.roblox.com/catalog/5063578607/Cyberpunk-Sniper"
	Hats_2.TextColor3 = Color3.fromRGB(120, 120, 120)
	Hats_2.TextScaled = true
	Hats_2.TextSize = 14.000
	Hats_2.TextWrapped = true

	FeSniper_3.Name = "Fe Sniper"
	FeSniper_3.Parent = FeSniper_2
	FeSniper_3.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
	FeSniper_3.Position = UDim2.new(0.227953911, 0, 0.0297620855, 0)
	FeSniper_3.Size = UDim2.new(0, 230, 0, 50)
	FeSniper_3.Font = Enum.Font.SourceSans
	FeSniper_3.Text = "Fe Soldier"
	FeSniper_3.TextColor3 = Color3.fromRGB(67, 67, 67)
	FeSniper_3.TextSize = 20.000

	UICorner_2.CornerRadius = UDim.new(0, 10)
	UICorner_2.Parent = FeSniper_3

	-- Scripts:

	local function CGQTJWR_fake_script() -- FeSniper_2.Smooth GUI Dragging 
		local script = Instance.new('LocalScript', FeSniper_2)

		local UserInputService = game:GetService("UserInputService")
		local runService = (game:GetService("RunService"));

		local gui = script.Parent

		local dragging
		local dragInput
		local dragStart
		local startPos

		function Lerp(a, b, m)
			return a + (b - a) * m
		end;

		local lastMousePos
		local lastGoalPos
		local DRAG_SPEED = (8); -- // The speed of the UI darg.
		function Update(dt)
			if not (startPos) then return end;
			if not (dragging) and (lastGoalPos) then
				gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
				return 
			end;

			local delta = (lastMousePos - UserInputService:GetMouseLocation())
			local xGoal = (startPos.X.Offset - delta.X);
			local yGoal = (startPos.Y.Offset - delta.Y);
			lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
		end;

		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position
				lastMousePos = UserInputService:GetMouseLocation()

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		runService.Heartbeat:Connect(Update)
	end
	coroutine.wrap(CGQTJWR_fake_script)()
	local function YAFQV_fake_script() -- FeSniper_3.Script 
		local script = Instance.new('Script', FeSniper_3)

		script.Parent.MouseButton1Down:connect(function()
	--[[ Hats needed below:
	https://web.roblox.com/catalog/5063578607/Cyberpunk-Sniper
	https://web.roblox.com/catalog/4506945409/Corrupt-Demonic-Greatsword
	]]--
			local character = game.Players.LocalPlayer.Character
			local mode = 1


			game:GetService('RunService').Heartbeat:Connect(function()
				for i,v in pairs(character:GetChildren()) do
					if v:IsA("BasePart") then
						v.Velocity = Vector3.new(30,0,0)
						v.CFrame = v.CFrame
					end
				end
			end)

			game:GetService('RunService').Heartbeat:Connect(function()
				for i,v in pairs(character.Humanoid:GetAccessories()) do 
					if not v.Handle:FindFirstChild("AccessoryWeld") then 
						v.Handle.Velocity = Vector3.new(0,35,0)
					end
				end
			end)

			sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
			sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999999999999)

			-- // Uses Mizt's bypass \\ --

			Bypass = "death"
			loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()

			e = Instance.new("BodyVelocity",game.Players.LocalPlayer.Character.HumanoidRootPart)
			e.Velocity = Vector3.new(0,-27.5,0)
			e.P = math.huge
			e.MaxForce = Vector3.new(0,3000,0)

			local playerss = workspace.non

			local IsDead = false
			local StateMover = true
			local bbv,bullet
			if Bypass == "death" then
				bullet = game.Players.LocalPlayer.Character["HumanoidRootPart"]
				bullet.Transparency = 0.5
				bullet.Massless = true
				if bullet:FindFirstChildOfClass("Attachment") then
					for _,v in pairs(bullet:GetChildren()) do
						if v:IsA("Attachment") then
							v:Destroy()
						end
					end
				end
				bbv = Instance.new("BodyPosition",bullet)
				bbv.Position = playerss["Right Arm"].CFrame.p
			end

			if Bypass == "death" then
				coroutine.wrap(function()
					while true do
						if not playerss or not playerss:FindFirstChildOfClass("Humanoid") or playerss:FindFirstChildOfClass("Humanoid").Health <= 0 then IsDead = true; return end
						if StateMover then
							bbv.Position = playerss["Torso"].CFrame.p
							bullet.Position = playerss["Torso"].CFrame.p
						end
						game:GetService("RunService").RenderStepped:wait()
					end
				end)()
			end

			bbav = Instance.new("BodyAngularVelocity",bullet)
			bbav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bbav.P = 100000000000000000000000000000
			bbav.AngularVelocity = Vector3.new(10000000000000000000000000000000,100000000000000000000000000,100000000000000000)

			gun = true
			shoot = false
			shoot0 = false
			shooting = false

			IT = Instance.new
			CF = CFrame.new
			VT = Vector3.new
			RAD = math.rad
			C3 = Color3.new
			UD2 = UDim2.new
			BRICKC = BrickColor.new
			ANGLES = CFrame.Angles
			EULER = CFrame.fromEulerAnglesXYZ
			COS = math.cos
			ACOS = math.acos
			SIN = math.sin
			ASIN = math.asin
			ABS = math.abs
			MRANDOM = math.random
			FLOOR = math.floor

			speed = 1
			sine = 1
			srv = game:GetService('RunService')

			reanim = playerss
			hum = reanim.Humanoid
			RJ = reanim.HumanoidRootPart.RootJoint
			RS = reanim.Torso['Right Shoulder']
			LS = reanim.Torso['Left Shoulder']
			RH = reanim.Torso['Right Hip']
			LH = reanim.Torso['Left Hip']
			Root = reanim.HumanoidRootPart
			NECK = reanim.Torso.Neck
			NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
			NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
			RJ.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
			RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
			RS.C1 = CF(-0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
			LS.C1 = CF(0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
			RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
			LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
			RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
			LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
			RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
			LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

			m = game.Players.LocalPlayer:GetMouse()

			m.Button1Down:Connect(function()
				if gun then
					shooting = true
					gun = false
					shoot = true
					shoot0 = false
					hum.WalkSpeed = 0
					wait(.3)
					StateMover = false
					gun = false
					shoot = false
					shoot0 = true
					wait(.3)
					StateMover = true
					shooting = false
					hum.WalkSpeed = 16
					gun = true
					shoot = false
					shoot0 = false
				end

				repeat wait() until shooting == true
				repeat
					game:GetService("RunService").Heartbeat:Wait()
					if m.Target ~= nil then
						bbv.Position = m.Hit.p
						bullet.Position = m.Hit.p
					end
				until shooting == false
			end)

			coroutine.wrap(function()
				while true do -- anim changer
					reanim['Sniper'].Handle.AccessoryWeld.C1 = CFrame.new(0,-3.2,1.8) * CFrame.Angles(math.rad(-50),math.rad(0),math.rad(180))
					reanim['MeshPartAccessory'].Handle.AccessoryWeld.C1 = CFrame.new(-.8,0,.4) * CFrame.Angles(math.rad(0),math.rad(-40),math.rad(0))
					if HumanDied then break end
					sine = sine + speed
					if Root.Velocity.y > 1 and gun then -- jump
						--jump clerp here
					elseif Root.Velocity.y < -1 and gun then -- fall
						--fall clerp here
					elseif Root.Velocity.Magnitude < 2 and gun and mode == 1 then -- idle
						reanim['Sniper'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
						reanim['Sniper'].Handle.AccessoryWeld.C0 = reanim['Sniper'].Handle.AccessoryWeld.C0:Lerp(CF(0.7+0*math.cos(sine/13),-2.7+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(-128+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1)
						NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-0+0*math.cos(sine/13)),RAD(14+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+.2*math.cos(sine/15),0+.1*math.cos(sine/13))*ANGLES(RAD(0+2*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),.3+.2*math.cos(sine/14.9),-.2+0*math.cos(sine/13))*ANGLES(RAD(81+0*math.cos(sine/13)),RAD(-11+0*math.cos(sine/13)),RAD(-35+0*math.cos(sine/13))),.4)
						LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),.3+.2*math.cos(sine/14.9),0+0*math.cos(sine/13))*ANGLES(RAD(59+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13)),RAD(59+0*math.cos(sine/13))),.2)
						RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-.2*math.cos(sine/15),-1+0*math.cos(sine/13))*ANGLES(RAD(-17+0*math.cos(sine/13)),RAD(-22+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13))),.2)
						LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-.2*math.cos(sine/15),-.35+0*math.cos(sine/13))*ANGLES(RAD(-15+0*math.cos(sine/13)),RAD(18+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.2)
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.Part1 = reanim['Torso']
						--reanim['MeshPartAccessory'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(90),RAD(0),RAD(0))
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)

					elseif Root.Velocity.Magnitude < 2 and shoot and mode == 1 then
						reanim['Sniper'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
						reanim['Sniper'].Handle.AccessoryWeld.C0 = reanim['Sniper'].Handle.AccessoryWeld.C0:Lerp(CF(0.7+0*math.cos(sine/13),-2.7+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(-128+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1)
						NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+.1*math.cos(sine/15),.2+.05*math.cos(sine/13))*ANGLES(RAD(0+2*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),.3+0*math.cos(sine/14.9),-.2+0*math.cos(sine/13))*ANGLES(RAD(81+0*math.cos(sine/13)),RAD(-11+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),.3+0*math.cos(sine/14.9),0+0*math.cos(sine/13))*ANGLES(RAD(81+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13)),RAD(59+0*math.cos(sine/13))),.2)
						RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-.1*math.cos(sine/15),-1+0*math.cos(sine/13))*ANGLES(RAD(-33+0*math.cos(sine/13)),RAD(-22+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13))),.2)
						LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-.1*math.cos(sine/15),-.35+0*math.cos(sine/13))*ANGLES(RAD(3+0*math.cos(sine/13)),RAD(18+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.2)
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.Part1 = reanim['Torso']
						--reanim['MeshPartAccessory'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
					elseif Root.Velocity.Magnitude < 2 and shoot0 and mode == 1 then
						reanim['Sniper'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
						reanim['Sniper'].Handle.AccessoryWeld.C0 = reanim['Sniper'].Handle.AccessoryWeld.C0:Lerp(CF(0.7+0*math.cos(sine/13),-2.7+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(-128+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1)
						NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+.1*math.cos(sine/15),.2+.05*math.cos(sine/13))*ANGLES(RAD(0+2*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),.4+0*math.cos(sine/14.9),-.2+0*math.cos(sine/13))*ANGLES(RAD(111+0*math.cos(sine/13)),RAD(-11+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),.3+0*math.cos(sine/14.9),0+0*math.cos(sine/13))*ANGLES(RAD(81+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13)),RAD(59+0*math.cos(sine/13))),.2)
						RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-.1*math.cos(sine/15),-1+0*math.cos(sine/13))*ANGLES(RAD(-33+0*math.cos(sine/13)),RAD(-22+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13))),.2)
						LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-.1*math.cos(sine/15),-.35+0*math.cos(sine/13))*ANGLES(RAD(3+0*math.cos(sine/13)),RAD(18+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.2)
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.Part1 = reanim['Torso']
						--reanim['MeshPartAccessory'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
					elseif Root.Velocity.Magnitude < 20 and gun and mode == 1 then -- walk
						reanim['Sniper'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
						reanim['Sniper'].Handle.AccessoryWeld.C0 = reanim['Sniper'].Handle.AccessoryWeld.C0:Lerp(CF(0.7+0*math.cos(sine/13),-2.7+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(-128+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1)
						NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-8+1*math.cos(sine/5)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+.1*math.cos(sine/5),0+0*math.cos(sine/13))*ANGLES(RAD(-7+1*math.cos(sine/5)),RAD(0+5*math.cos(sine/6)),RAD(0+0*math.cos(sine/13))),.15)
						RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0+.03*math.cos(sine/20),0+0*math.cos(sine/13))*ANGLES(RAD(94+1*math.cos(sine/15.5)),RAD(12+1*math.cos(sine/18.5)),RAD(-64+0*math.cos(sine/13))),.2)
						LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0+.03*math.cos(sine/20),-.5+0*math.cos(sine/13))*ANGLES(RAD(76+1*math.cos(sine/15.5)),RAD(5+1*math.cos(sine/18.5)),RAD(10+0*math.cos(sine/13))),.2)
						RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+.2*math.cos(sine/5.5),-.2+-.1*math.cos(sine/6))*ANGLES(RAD(-10+40*math.cos(sine/6)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.15)
						LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-.2*math.cos(sine/5.5),-.2+.1*math.cos(sine/6))*ANGLES(RAD(-10+-40*math.cos(sine/6)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.15)
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.Part1 = reanim['Torso']
						--reanim['MeshPartAccessory'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)

					elseif Root.Velocity.Magnitude < 2 and gun and mode == 2 then -- idle
						reanim['Sniper'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
						reanim['Sniper'].Handle.AccessoryWeld.C0 = reanim['Sniper'].Handle.AccessoryWeld.C0:Lerp(CF(0.7+0*math.cos(sine/13),-2.7+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(-128+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1)
						NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-0+0*math.cos(sine/13)),RAD(14+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+1*math.cos(sine/15),0+.1*math.cos(sine/13))*ANGLES(RAD(0+2*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),.3+.2*math.cos(sine/14.9),-.2+0*math.cos(sine/13))*ANGLES(RAD(149+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.4)
						LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),.3+.2*math.cos(sine/14.9),0+0*math.cos(sine/13))*ANGLES(RAD(-43+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13)),RAD(59+0*math.cos(sine/13))),.2)
						RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-.2*math.cos(sine/15),-1+0*math.cos(sine/13))*ANGLES(RAD(-17+0*math.cos(sine/13)),RAD(-22+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13))),.2)
						LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-.2*math.cos(sine/15),-.35+0*math.cos(sine/13))*ANGLES(RAD(-15+0*math.cos(sine/13)),RAD(18+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.2)
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.Part1 = reanim['Torso']
						--reanim['MeshPartAccessory'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)

					elseif Root.Velocity.Magnitude < 2 and shoot and mode == 2 then
						reanim['Sniper'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
						reanim['Sniper'].Handle.AccessoryWeld.C0 = reanim['Sniper'].Handle.AccessoryWeld.C0:Lerp(CF(0.7+0*math.cos(sine/13),-2.7+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(-128+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1)
						NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+1*math.cos(sine/15),.2+.05*math.cos(sine/13))*ANGLES(RAD(0+2*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),.3+0*math.cos(sine/14.9),-.2+0*math.cos(sine/13))*ANGLES(RAD(81+0*math.cos(sine/13)),RAD(-11+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),.3+0*math.cos(sine/14.9),0+0*math.cos(sine/13))*ANGLES(RAD(81+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13)),RAD(59+0*math.cos(sine/13))),.2)
						RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-.1*math.cos(sine/15),-1+0*math.cos(sine/13))*ANGLES(RAD(-33+0*math.cos(sine/13)),RAD(-22+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13))),.2)
						LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-.1*math.cos(sine/15),-.35+0*math.cos(sine/13))*ANGLES(RAD(3+0*math.cos(sine/13)),RAD(18+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.2)
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.Part1 = reanim['Torso']
						--reanim['MeshPartAccessory'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)

					elseif Root.Velocity.Magnitude < 2 and shoot0 and mode == 2 then
						reanim['Sniper'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
						reanim['Sniper'].Handle.AccessoryWeld.C0 = reanim['Sniper'].Handle.AccessoryWeld.C0:Lerp(CF(0.7+0*math.cos(sine/13),-2.7+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(-128+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1)
						NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+1*math.cos(sine/15),.2+.05*math.cos(sine/13))*ANGLES(RAD(0+2*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),.4+0*math.cos(sine/14.9),-.2+0*math.cos(sine/13))*ANGLES(RAD(111+0*math.cos(sine/13)),RAD(-11+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),.3+0*math.cos(sine/14.9),0+0*math.cos(sine/13))*ANGLES(RAD(81+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13)),RAD(59+0*math.cos(sine/13))),.2)
						RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-.1*math.cos(sine/15),-1+0*math.cos(sine/13))*ANGLES(RAD(-33+0*math.cos(sine/13)),RAD(-22+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13))),.2)
						LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-.1*math.cos(sine/15),-.35+0*math.cos(sine/13))*ANGLES(RAD(3+0*math.cos(sine/13)),RAD(18+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.2)
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.Part1 = reanim['Torso']
						--reanim['MeshPartAccessory'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)

					elseif Root.Velocity.Magnitude < 20 and gun and mode == 2 then -- walk
						playerss.Humanoid.WalkSpeed = 51

					elseif Root.Velocity.Magnitude > 20 and gun and mode == 2 then -- run
						reanim['Sniper'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
						reanim['Sniper'].Handle.AccessoryWeld.C0 = reanim['Sniper'].Handle.AccessoryWeld.C0:Lerp(CF(0.7+0*math.cos(sine/13),-2.7+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(-128+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1)
						NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-8+1*math.cos(sine/5)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.2)
						RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+.1*math.cos(sine/5),0+0*math.cos(sine/13))*ANGLES(RAD(-7+1*math.cos(sine/5)),RAD(0+5*math.cos(sine/6)),RAD(0+0*math.cos(sine/13))),.15)
						RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0+.03*math.cos(sine/20),0+0*math.cos(sine/13))*ANGLES(RAD(94+1*math.cos(sine/15.5)),RAD(12+1*math.cos(sine/18.5)),RAD(-64+0*math.cos(sine/13))),.2)
						LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),.3+.2*math.cos(sine/14.9),0+0*math.cos(sine/13))*ANGLES(RAD(-43+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13)),RAD(59+0*math.cos(sine/13))),.2)
						RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+.2*math.cos(sine/5.5),-.2+-.1*math.cos(sine/6))*ANGLES(RAD(-10+40*math.cos(sine/6)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.15)
						LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-.2*math.cos(sine/5.5),-.2+.1*math.cos(sine/6))*ANGLES(RAD(-10+-40*math.cos(sine/6)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.15)
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.Part1 = reanim['Torso']
						--reanim['MeshPartAccessory'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)


					elseif Root.Velocity.Magnitude < 2 and gun and mode == 3 then -- idle
						reanim['Sniper'].Handle.AccessoryWeld.Part1 = reanim['Torso']
						--reanim['Sniper'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['Sniper'].Handle.AccessoryWeld.C0 = reanim['Sniper'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)

						reanim['MeshPartAccessory'].Handle.AccessoryWeld.Part1 = reanim['Torso']
						--reanim['MeshPartAccessory'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)

						NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
						RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0.5+1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
						RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),-90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
						LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),-90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
						RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
						LH.C0 = LH.C0:Lerp(CF(0+0*math.cos(sine/13),-90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)


					elseif Root.Velocity.Magnitude < 20 and gun and mode == 3 then  --walk
						reanim['Sniper'].Handle.AccessoryWeld.Part1 = reanim['Torso']
						--reanim['Sniper'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['Sniper'].Handle.AccessoryWeld.C0 = reanim['Sniper'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)

						reanim['MeshPartAccessory'].Handle.AccessoryWeld.Part1 = reanim['Torso']
						--reanim['MeshPartAccessory'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)

						NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
						RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0.5+1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
						RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),-90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
						LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),-90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
						RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
						LH.C0 = LH.C0:Lerp(CF(0+0*math.cos(sine/13),-90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)


					elseif Root.Velocity.Magnitude < 2 and mode == 4 then --idle
						NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-267+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
						RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),1+.41*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-267+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
						RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-11+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13)),RAD(5+2*math.cos(sine/13))),.1)
						LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(3+0*math.cos(sine/13)),RAD(10+0*math.cos(sine/13)),RAD(-2+2.5*math.cos(sine/13))),.1)
						RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-360+0.3*math.cos(sine/13)),RAD(-6+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13))),.1)
						LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-8+-4*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-6+0*math.cos(sine/13))),.1)

						reanim['Sniper'].Handle.AccessoryWeld.Part1 = reanim['Torso']
						--reanim['Sniper'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['Sniper'].Handle.AccessoryWeld.C0 = reanim['Sniper'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)

						reanim['MeshPartAccessory'].Handle.AccessoryWeld.Part1 = reanim['Right Leg']
						--reanim['MeshPartAccessory'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(-0.7+0*math.cos(sine/13),0+0*math.cos(sine/13),1+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(183+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13))),.1)
					elseif Root.Velocity.Magnitude < 20 and mode == 4 then -- walk

						reanim.Humanoid.WalkSpeed = 51

					elseif Root.Velocity.Magnitude > 20 and mode == 4 then -- run
						NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
						RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),1+.41*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-267+0*math.cos(sine/13)),RAD(-13+0*math.cos(sine/13))),.1)
						RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-11+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13)),RAD(5+2*math.cos(sine/13))),.1)
						LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(3+0*math.cos(sine/13)),RAD(10+0*math.cos(sine/13)),RAD(-2+2.5*math.cos(sine/13))),.1)
						RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-360+0.3*math.cos(sine/13)),RAD(-6+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13))),.1)
						LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-8+-4*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-6+0*math.cos(sine/13))),.1)

						reanim['MeshPartAccessory'].Handle.AccessoryWeld.Part1 = reanim['Right Leg']
						--reanim['MeshPartAccessory'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(-0.7+0*math.cos(sine/13),0+0*math.cos(sine/13),1+0*math.cos(sine/13))*ANGLES(RAD(99+0*math.cos(sine/13)),RAD(183+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13))),.1)

						reanim['Sniper'].Handle.AccessoryWeld.Part1 = reanim['Torso']
						--reanim['Sniper'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
						reanim['Sniper'].Handle.AccessoryWeld.C0 = reanim['Sniper'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),90+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)

					end



					srv.RenderStepped:Wait()
				end
			end)()



			m.KeyDown:Connect(function(k)

				if k == "1" then
					mode = 1

					if playerss.Humanoid.WalkSpeed == 51 and mode == 1 then
						playerss.Humanoid.WalkSpeed = 16    

					end    

				end

				if k == "2" then
					mode = 2
				end

				if k == "3" then

					if playerss.Humanoid.WalkSpeed == 51 and mode == 1 then
						playerss.Humanoid.WalkSpeed = 16    

					end
					mode = 3 
				end  

				if k == "4" then
					mode = 4
				end    
			end)

			--Created using Nexo Animator
		end)
		-- frost22025
	end
	coroutine.wrap(YAFQV_fake_script)()
