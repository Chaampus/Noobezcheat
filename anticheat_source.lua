-- Decompiled w/ Synapse...
--
local l__LocalPlayer__1 = game.Players.LocalPlayer;
local v2 = l__LocalPlayer__1.Character or l__LocalPlayer__1.CharacterAdded:Wait();
local l__Humanoid__3 = v2:WaitForChild("Humanoid");
local l__Backpack__4 = l__LocalPlayer__1:WaitForChild("Backpack");
local l__CharValues__5 = v2:WaitForChild("CharValues");
local l__StaminaPercentValue__6 = l__CharValues__5:WaitForChild("StaminaPercentValue");
local l__CharIsRunning__7 = l__CharValues__5:WaitForChild("CharIsRunning");
local l__CheckRank__1 = script:WaitForChild("CheckRank");
local u2 = false;
delay(10, function()
	if l__CheckRank__1:InvokeServer("VIP") then
		print("OWO THE ANTI-CHEAT CAN'T KICK U I THINK, IF IT DOES, THEN IDK!!!!");
		return;
	end;
	u2 = true;
end);
if l__LocalPlayer__1.AccountAge < 7 then
	l__LocalPlayer__1:Kick("Try again join back in " .. 7 - l__LocalPlayer__1.AccountAge .. " days.");
end;
local u3 = { "IF THIS KEEP KICKING PEOPLE WHO DON'T EXPLOIT IM GOING TO- nothing C:", "WOWOWOWOW SLOW DOWN", "hello sonic :D", "SPEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEED", "STOP IT SLEND- i mean sonic. STOP IT SONIC!!!!!", "obby obby obby obby obby obby obby obby", "sorry :C", "WAAAAAAAAAAAAAAAAAAAAAAHOOOOOOOOOOOOOOOO" };
l__Humanoid__3.Changed:Connect(function()
	if l__CharIsRunning__7.Value == true then
		if l__Humanoid__3.WalkSpeed > 45 and u2 then
			if script:FindFirstChild("KickEventSendNotification") and script.KickEventSendNotification.ClassName == "RemoteEvent" then
				script.KickEventSendNotification:FireServer("High-Speed while Running");
			end;
			wait(0.1);
			l__LocalPlayer__1:Kick("[R=T] " .. u3[math.random(1, #u3)]);
		end;
	elseif l__Humanoid__3.WalkSpeed > 16 and u2 then
		if script:FindFirstChild("KickEventSendNotification") and script.KickEventSendNotification.ClassName == "RemoteEvent" then
			script.KickEventSendNotification:FireServer("High-Speed while Walking");
		end;
		wait(0.1);
		l__LocalPlayer__1:Kick("[R=F] " .. u3[math.random(1, #u3)]);
	end;
	if l__Humanoid__3.JumpPower > 50 and u2 then
		if script:FindFirstChild("KickEventSendNotification") and script.KickEventSendNotification.ClassName == "RemoteEvent" then
			script.KickEventSendNotification:FireServer("High-JumpPower");
		end;
		wait(0.1);
		l__LocalPlayer__1:Kick("[JP] are you mario? mario jumps");
	end;
	if l__Humanoid__3.Health > 150 and u2 then
		if script:FindFirstChild("KickEventSendNotification") and script.KickEventSendNotification.ClassName == "RemoteEvent" then
			script.KickEventSendNotification:FireServer("High-Health");
		end;
		wait(0.1);
		l__LocalPlayer__1:Kick("[HH] Did u use a gold vest?!");
	end;
end);
l__StaminaPercentValue__6.Changed:Connect(function()
	if l__StaminaPercentValue__6.Value > 100 and l__CharIsRunning__7.Value == true and u2 then
		if script:FindFirstChild("KickEventSendNotification") and script.KickEventSendNotification.ClassName == "RemoteEvent" then
			script.KickEventSendNotification:FireServer("High-Stamina");
		end;
		wait(0.1);
		l__LocalPlayer__1:Kick("[>S] testing. if it kick u without reason...... sorry :(");
	end;
end);
l__Backpack__4.ChildAdded:Connect(function(p1)
	if p1:IsA("HopperBin") and u2 then
		if script:FindFirstChild("KickEventSendNotification") and script.KickEventSendNotification.ClassName == "RemoteEvent" then
			script.KickEventSendNotification:FireServer("Btools-Exploit");
		end;
		wait(0.1);
		l__LocalPlayer__1:Kick("[BT] time to create houses!");
	end;
end);
v2.ChildRemoved:Connect(function(p2)
	if p2:IsA("Humanoid") and u2 then
		if script:FindFirstChild("KickEventSendNotification") and script.KickEventSendNotification.ClassName == "RemoteEvent" then
			script.KickEventSendNotification:FireServer("God-Exploit");
		end;
		wait(0.1);
		l__LocalPlayer__1:Kick("[G] I too would like to be inmortal, too bad you cant");
	end;
end);
local v8 = {
	BodyGyro = true, 
	BodyVelocity = true, 
	BodyPosition = true, 
	BodyForce = true
};
for v9, v10 in pairs(v2:GetChildren()) do
	if v10:IsA("BasePart") then
		v10.ChildAdded:Connect(function(p3)
			if v8[p3.ClassName] and u2 == true and not l__Backpack__4:FindFirstChild("Sword") and (not script.Parent:FindFirstChild("Sword") and u2) then
				if script:FindFirstChild("KickEventSendNotification") and script.KickEventSendNotification.ClassName == "RemoteEvent" then
					script.KickEventSendNotification:FireServer("Fly-Exploit");
				end;
				wait(0.1);
				l__LocalPlayer__1:Kick("[FL] Are you goku?!?!, I'm your fan");
			end;
		end);
	end;
end;
