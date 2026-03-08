

--تم فك التشفير بواسطة _NYZLINH
local L_1_ = {}
L_1_[2] = table["concat"]
do
	ply = game["Players"]
	plr = ply["LocalPlayer"]
	Root = plr["Character"]["HumanoidRootPart"]
	replicated = game:GetService("ReplicatedStorage")
	Lv = game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"]
	TeleportService = game:GetService("TeleportService")
	TW = game:GetService("TweenService")
	Lighting = game:GetService("Lighting")
	Enemies = workspace["Enemies"]
	vim1 = game:GetService("VirtualInputManager")
	vim2 = game:GetService("VirtualUser")
	TeamSelf = plr["Team"]
	RunSer = game:GetService("RunService")
	Stats = game:GetService("Stats")
	Energy = plr["Character"]["Energy"]["Value"]
	BringConnections = {}
	BossList = {}
	MaterialList = {}
	NPCList = {}
	shouldTween = false
	SoulGuitar = false
	KenTest = true
	debug = false
	Brazier1 = false
	Brazier2 = false
	Brazier3 = false
	Sec = .1
	ClickState = 0
	Num_self = 25
end
repeat
	local L_2_ = {}
	L_2_[2] = (plr["PlayerGui"]:WaitForChild("Main")):WaitForChild("Loading") and game:IsLoaded()
	wait()
until L_2_[2]
World1 = game["PlaceId"] == 2753915549 or game["PlaceId"] == 85211729168715
World2 = game["PlaceId"] == 4442272183 or game["PlaceId"] == 79091703265657
World3 = game["PlaceId"] == 7449423635 or game["PlaceId"] == 1.0011733112309e+14
Marines = function()
	replicated["Remotes"]["CommF_"]:InvokeServer("تعيين_الفريق", "البحرية")
end
Pirates = function()
	replicated["Remotes"]["CommF_"]:InvokeServer("تعيين_الفريق", "القراصنة")
end
if World1 then
	BossList = {
		"ملك الغوريلا";
		"بوبي",
		"المنشار";
		"اليتي",
		"زعيم العصابة";
		"نائب الأميرال",
		"خبير السيف",
		"الحارس";
		"كبير الحراس";
		"البجعة",
		"أميرال الحمم",
		"سيد رجل السمكة";
		"ويسبر",
		"إله الرعد",
		"السايبورغ";
		"أميرال الجليد",
		"الذقن الرمادية"
	}
elseif World2 then
	BossList = {
		"الماس",
		"جيريمي",
		"أوربيتوس";
		"دون سوان";
		"أميرال الدخان",
		"أميرال الجليد المستيقظ",
		"حارس المد",
		"الذقن الداكنة";
		"القبطان الملعون";
		"النظام"
	}
elseif World3 then
	BossList = {
		"الحجر",
		"زعيم الهيدرا",
		"أميرال كيلو";
		"القبطان الفيل";
		"القرصان الجميل";
		"ملكة الكعكة";
		"ملك العجين";
		"لونغما",
		"حاصد الأرواح";
		"الشكل الحقيقي لـ rip_indra";
		"طاغية السماء"
	}
end
if World1 then
	MaterialList = {
		L_1_[2]({
			"Leather + Scrap Meta";
			"l"
		}),
		"أجنحة الملاك",
		"خام الحمم",
		"ذيل السمكة"
	}
elseif World2 then
	MaterialList = {
		L_1_[2]({
			"Leather + Scrap Meta";
			"l"
		}),
		"المادة المشعة",
		"الإكتوبلازم",
		"القطرة الغامضة",
		"خام الحمم",
		"ناب مصاص الدماء"
	}
elseif World3 then
	MaterialList = {
		"خردة المعدن",
		"البريق الشيطاني";
		"الكاكاو المستدعى";
		"قشرة التنين",
		"البارود",
		"ذيل السمكة",
		"الناب الصغير"
	}
end
L_1_[15] = {
	"اللهب",
	"الجليد",
	"الزلزال",
	"النور";
	"الظلام",
	"الخيط",
	"الرعد",
	"الحمم",
	"إنسان: بوذا",
	"الرمال",
	"طائر: الفينيق",
	"العجين"
}
L_1_[138] = {
	"المتربص بالثلج";
	"محارب القطب";
	"المفتاح الخفي";
	"أميرال الجليد المستيقظ"
}
L_1_[24] = {
	["Mob"] = "القرصان الأسطوري",
	["Mob2"] = "الهيكل الملعون",
	"رسول الجحيم";
	["Mob3"] = "الهيكل الملعون";
	"حارس الجنة"
}
L_1_[26] = {
	"Part",
	"موقع الظهور";
	"التضاريس";
	"قطعة إسفينية",
	"قطعة شبكية"
}
L_1_[81] = {
	"قرصان البجعة";
	"جيريمي"
}
L_1_[126] = {
	"قرصان الغابة";
	"القبطان الفيل"
}
L_1_[110] = {
	"فاهيتا";
	"جيريمي",
	"الماس"
}
L_1_[12] = {
	"صياد الوحوش",
	"الفانوس",
	"الحارس";
	"اللواء الكبير",
	"القارب الصغير",
	"السفينة الصغيرة",
	"الحارس الساهر"
}
L_1_[122] = {
	"صانع البسكويت"
}
L_1_[95] = {
	"الهيكل المولود من جديد"
}
L_1_[22] = {
	["القرصان المليونير"] = CFrame["new"](-712.82727050781, 98.577049255371, 5711.9541015625);
	["المليارد بالمسدس"] = CFrame["new"](-723.43316650391, 147.42906188965, 5931.9931640625);
	["محارب طاقم التنين"] = CFrame["new"](7021.5043945312, 55.762702941895, -730.12908935547);
	["رامي طاقم التنين"] = CFrame["new"](6625, 378, 244);
	["ابنة الجزيرة"] = CFrame["new"](4692.7939453125, 797.97668457031, 858.84802246094),
	["المهاجم السام"] = CFrame["new"](4902, 670, 39),
	["كومودور البحرية"] = CFrame["new"](2401, 123, -7589);
	["الأميرال الخلفي للبحرية"] = CFrame["new"](3588, 229, -7085);
	["غازي رجل السمكة"] = CFrame["new"](-10941, 332, -8760);
	["قبطان رجل السمكة"] = CFrame["new"](-11035, 332, -9087);
	["قرصان الغابة"] = CFrame["new"](-13446, 413, -7760),
	["القرصان الأسطوري"] = CFrame["new"](-13510, 584, -6987);
	["قرصان الغابة الاستوائية"] = CFrame["new"](-11778, 426, -10592);
	["قرصان المسكيتير"] = CFrame["new"](-13282, 496, -9565);
	["الهيكل المولود من جديد"] = CFrame["new"](-8764, 142, 5963);
	["الزومبي الحي"] = CFrame["new"](-10227, 421, 6161);
	["الروح الشيطانية"] = CFrame["new"](-9579, 6, 6194),
	["المومياء الممسوسة"] = CFrame["new"](-9579, 6, 6194),
	["كشاف الفول السوداني"] = CFrame["new"](-1993, 187, -10103),
	["رئيس الفول السوداني"] = CFrame["new"](-2215, 159, -10474);
	["طاهي الآيس كريم"] = CFrame["new"](-877, 118, -11032),
	["قائد الآيس كريم"] = CFrame["new"](-877, 118, -11032),
	["صانع البسكويت"] = CFrame["new"](-2021, 38, -12028);
	["حارس الكعكة"] = CFrame["new"](-2024, 38, -12026),
	["طاقم الخبز"] = CFrame["new"](-1932, 38, -12848),
	["كبير الخبازين"] = CFrame["new"](-1932, 38, -12848);
	["محارب الكاكاو"] = CFrame["new"](95, 73, -12309);
	[L_1_[2]({
		"Chocolate Bar Battle";
		"r"
	})] = CFrame["new"](647, 42, -12401),
	["لص الحلويات"] = CFrame["new"](116, 36, -12478);
	["متمرد الحلوى"] = CFrame["new"](47, 61, -12889),
	["الشبح"] = CFrame["new"](5251, 5, 1111)
}
L_1_[64] = {
	["RFJobsRemoteFunction"] = replicated["Modules"]["Net"][L_1_[2]({
		"RF/JobsRemoteFunctio";
		"n"
	})];
	["RFCraft"] = ((replicated:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/Craft")
}
EquipWeapon = function(L_3_arg0)
	local L_4_ = {}
	L_4_[1] = L_3_arg0
	if not L_4_[1] then
		return
	end
	if plr["Backpack"]:FindFirstChild(L_4_[1]) then
		plr["Character"]["Humanoid"]:EquipTool(plr["Backpack"]:FindFirstChild(L_4_[1]))
	end
end
weaponSc = function(L_5_arg0)
	local L_6_ = {}
	L_6_[2] = L_5_arg0
	for L_7_forvar0, L_8_forvar1 in pairs(plr["Backpack"]:GetChildren()) do
		local L_9_ = {}
		L_9_[1], L_9_[3] = L_7_forvar0, L_8_forvar1
		if L_9_[3]:IsA("Tool") then
			if L_9_[3]["ToolTip"] == L_6_[2] then
				EquipWeapon(L_9_[3]["Name"])
			end
		end
	end
end
L_1_[4] = {}
L_1_[4]["__index"] = L_1_[4]
L_1_[4]["Alive"] = function(L_10_arg0)
	local L_11_ = {}
	L_11_[2] = L_10_arg0
	if not L_11_[2] then
		return
	end
	L_11_[3] = L_11_[2]:FindFirstChild("Humanoid")
	return L_11_[3] and L_11_[3]["Health"] > 0
end
L_1_[4]["Pos"] = function(L_12_arg0, L_13_arg1)
	local L_14_ = {}
	L_14_[1], L_14_[2] = L_12_arg0, L_13_arg1
	return (Root["Position"] - mode["Position"])["Magnitude"] <= L_14_[2]
end
L_1_[4]["Dist"] = function(L_15_arg0, L_16_arg1)
	local L_17_ = {}
	L_17_[1], L_17_[2] = L_15_arg0, L_16_arg1
	return (Root["Position"] - (L_17_[1]:FindFirstChild("HumanoidRootPart"))["Position"])["Magnitude"] <= L_17_[2]
end
L_1_[4]["DistH"] = function(L_18_arg0, L_19_arg1)
	local L_20_ = {}
	L_20_[2], L_20_[3] = L_18_arg0, L_19_arg1
	return (Root["Position"] - (L_20_[2]:FindFirstChild("HumanoidRootPart"))["Position"])["Magnitude"] > L_20_[3]
end
L_1_[4]["Kill"] = function(L_21_arg0, L_22_arg1)
	local L_23_ = {}
	L_23_[1], L_23_[3] = L_21_arg0, L_22_arg1
	if L_23_[1] and L_23_[3] then
		local L_24_ = {}
		if not L_23_[1]:GetAttribute("Locked") then
			L_23_[1]:SetAttribute("Locked", L_23_[1]["HumanoidRootPart"]["CFrame"])
		end
		PosMon = (L_23_[1]:GetAttribute("Locked"))["Position"]
		BringEnemy()
		EquipWeapon(_G["SelectWeapon"])
		L_24_[2] = game["Players"]["LocalPlayer"]["Character"]:FindFirstChildOfClass("Tool")
		L_24_[1] = L_24_[2]["ToolTip"]
		if L_24_[1] == "ثمرة بلوكس" then
			_tp((L_23_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 10, 0)) * CFrame["Angles"](0, math["rad"](90), 0))
		else
			_tp((L_23_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0)) * CFrame["Angles"](0, math["rad"](180), 0))
		end
		if RandomCFrame then
			wait(.5)
			_tp(L_23_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 25))
			wait(.5)
			_tp(L_23_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](25, 30, 0))
			wait(.5)
			_tp(L_23_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](-25, 30, 0))
			wait(.5)
			_tp(L_23_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 25))
			wait(.5)
			_tp(L_23_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](-25, 30, 0))
		end
	end
end
L_1_[4]["Kill2"] = function(L_25_arg0, L_26_arg1)
	local L_27_ = {}
	L_27_[1], L_27_[2] = L_25_arg0, L_26_arg1
	if L_27_[1] and L_27_[2] then
		local L_28_ = {}
		if not L_27_[1]:GetAttribute("Locked") then
			L_27_[1]:SetAttribute("Locked", L_27_[1]["HumanoidRootPart"]["CFrame"])
		end
		PosMon = (L_27_[1]:GetAttribute("Locked"))["Position"]
		BringEnemy()
		EquipWeapon(_G["SelectWeapon"])
		L_28_[1] = game["Players"]["LocalPlayer"]["Character"]:FindFirstChildOfClass("Tool")
		L_28_[3] = L_28_[1]["ToolTip"]
		if L_28_[3] == "ثمرة بلوكس" then
			_tp((L_27_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 10, 0)) * CFrame["Angles"](0, math["rad"](90), 0))
		else
			_tp((L_27_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 8)) * CFrame["Angles"](0, math["rad"](180), 0))
		end
		if RandomCFrame then
			wait(.1)
			_tp(L_27_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 25))
			wait(.1)
			_tp(L_27_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](25, 30, 0))
			wait(.1)
			_tp(L_27_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](-25, 30, 0))
			wait(.1)
			_tp(L_27_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 25))
			wait(.1)
			_tp(L_27_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](-25, 30, 0))
		end
	end
end
L_1_[4]["KillSea"] = function(L_29_arg0, L_30_arg1)
	local L_31_ = {}
	L_31_[2], L_31_[1] = L_29_arg0, L_30_arg1
	if L_31_[2] and L_31_[1] then
		local L_32_ = {}
		if not L_31_[2]:GetAttribute("Locked") then
			L_31_[2]:SetAttribute("Locked", L_31_[2]["HumanoidRootPart"]["CFrame"])
		end
		PosMon = (L_31_[2]:GetAttribute("Locked"))["Position"]
		BringEnemy()
		EquipWeapon(_G["SelectWeapon"])
		L_32_[1] = game["Players"]["LocalPlayer"]["Character"]:FindFirstChildOfClass("Tool")
		L_32_[2] = L_32_[1]["ToolTip"]
		if L_32_[2] == "ثمرة بلوكس" then
			_tp((L_31_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 10, 0)) * CFrame["Angles"](0, math["rad"](90), 0))
		else
			notween(L_31_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 50, 8))
			wait(.85)
			notween(L_31_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 400, 0))
			wait(1)
		end
	end
end
L_1_[4]["سيف"] = function(L_33_arg0, L_34_arg1)
	local L_35_ = {}
	L_35_[2], L_35_[3] = L_33_arg0, L_34_arg1
	if L_35_[2] and L_35_[3] then
		if not L_35_[2]:GetAttribute("Locked") then
			L_35_[2]:SetAttribute("Locked", L_35_[2]["HumanoidRootPart"]["CFrame"])
		end
		PosMon = (L_35_[2]:GetAttribute("Locked"))["Position"]
		BringEnemy()
		weaponSc("سيف")
		_tp(L_35_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0))
		if RandomCFrame then
			wait(.1)
			_tp(L_35_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 25))
			wait(.1)
			_tp(L_35_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](25, 30, 0))
			wait(.1)
			_tp(L_35_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](-25, 30, 0))
			wait(.1)
			_tp(L_35_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 25))
			wait(.1)
			_tp(L_35_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](-25, 30, 0))
		end
	end
end
L_1_[4]["Mas"] = function(L_36_arg0, L_37_arg1)
	local L_38_ = {}
	L_38_[2], L_38_[3] = L_36_arg0, L_37_arg1
	if L_38_[2] and L_38_[3] then
		if not L_38_[2]:GetAttribute("Locked") then
			L_38_[2]:SetAttribute("Locked", L_38_[2]["HumanoidRootPart"]["CFrame"])
		end
		PosMon = (L_38_[2]:GetAttribute("Locked"))["Position"]
		BringEnemy()
		if L_38_[2]["Humanoid"]["Health"] <= HealthM then
			_tp(L_38_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 20, 0))
			Useskills("ثمرة بلوكس", "Z")
			Useskills("ثمرة بلوكس", "X")
			Useskills("ثمرة بلوكس", "C")
		else
			weaponSc("يد")
			_tp(L_38_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0))
		end
	end
end
L_1_[4]["Masgun"] = function(L_39_arg0, L_40_arg1)
	local L_41_ = {}
	L_41_[3], L_41_[1] = L_39_arg0, L_40_arg1
	if L_41_[3] and L_41_[1] then
		if not L_41_[3]:GetAttribute("Locked") then
			L_41_[3]:SetAttribute("Locked", L_41_[3]["HumanoidRootPart"]["CFrame"])
		end
		PosMon = (L_41_[3]:GetAttribute("Locked"))["Position"]
		BringEnemy()
		if L_41_[3]["Humanoid"]["Health"] <= HealthM then
			_tp(L_41_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 35, 8))
			Useskills("مسدس", "Z")
			Useskills("مسدس", "X")
		else
			weaponSc("يد")
			_tp(L_41_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0))
		end
	end
end
statsSetings = function(L_42_arg0, L_43_arg1)
	local L_44_ = {}
	L_44_[3], L_44_[2] = L_42_arg0, L_43_arg1
	if L_44_[3] == "يد" then
		if plr["Data"]["Points"]["Value"] ~= 0 then
			replicated["Remotes"]["CommF_"]:InvokeServer("AddPoint", "يد", L_44_[2])
		end
	elseif L_44_[3] == "Defense" then
		if plr["Data"]["Points"]["Value"] ~= 0 then
			replicated["Remotes"]["CommF_"]:InvokeServer("AddPoint", "Defense", L_44_[2])
		end
	elseif L_44_[3] == "سيف" then
		if plr["Data"]["Points"]["Value"] ~= 0 then
			replicated["Remotes"]["CommF_"]:InvokeServer("AddPoint", "سيف", L_44_[2])
		end
	elseif L_44_[3] == "مسدس" then
		if plr["Data"]["Points"]["Value"] ~= 0 then
			replicated["Remotes"]["CommF_"]:InvokeServer("AddPoint", "مسدس", L_44_[2])
		end
	elseif L_44_[3] == "Devil" then
		if plr["Data"]["Points"]["Value"] ~= 0 then
			replicated["Remotes"]["CommF_"]:InvokeServer("AddPoint", "Demon Fruit", L_44_[2])
		end
	end
end
BringEnemy = function()
	local L_45_ = {}
	if not _B then
		return
	end
	if not PosMon then
		return
	end
	L_45_[4] = game["Players"]["LocalPlayer"]
	L_45_[5] = L_45_[4]["Character"] and L_45_[4]["Character"]:FindFirstChild("HumanoidRootPart")
	if not L_45_[5] then
		return
	end
	L_45_[9] = game:GetService("TweenService")
	L_45_[8] = _G["BringRange"]
	L_45_[7] = _G["SpeedB"]
	L_45_[6] = _G["MobM"]
	L_45_[1] = 0
	L_45_[2] = {}
	for L_46_forvar0, L_47_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
		local L_48_ = {}
		L_48_[4], L_48_[1] = L_46_forvar0, L_47_forvar1
		if L_45_[1] >= L_45_[6] then
			break
		end
		L_48_[6] = false
		for L_49_forvar0, L_50_forvar1 in ipairs(BossList or {}) do
			local L_51_ = {}
			L_51_[2], L_51_[1] = L_49_forvar0, L_50_forvar1
			if L_48_[1]["Name"] == L_51_[1] then
				L_48_[6] = true
				break
			end
		end
		if L_48_[6] then
			continue
		end
		L_48_[2] = L_48_[1]:FindFirstChild("Humanoid")
		L_48_[3] = L_48_[1]:FindFirstChild("HumanoidRootPart")
		if not(L_48_[2] and (L_48_[3] and L_48_[2]["Health"] > 0)) then
			continue
		end
		if (L_48_[3]["Position"] - L_45_[5]["Position"])["Magnitude"] <= L_45_[8] then
			local L_52_ = {}
			R_[1] += 1
			L_52_[2] = Vector3["zero"]
			L_52_[3] = 0
			for L_53_forvar0, L_54_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
				local L_55_ = {}
				L_55_[2], L_55_[5] = L_53_forvar0, L_54_forvar1
				L_55_[4] = L_55_[5]:FindFirstChild("Humanoid")
				L_55_[1] = L_55_[5]:FindFirstChild("HumanoidRootPart")
				if L_55_[4] and (L_55_[1] and (L_55_[4]["Health"] > 0 and L_55_[5]["Name"] == L_48_[1]["Name"])) then
					D_[2] += L_55_[1]["Position"]
					D_[3] += 1
				end
			end
			L_52_[1] = L_52_[3] > 0 and L_52_[2] / L_52_[3] or L_48_[3]["Position"]
			L_52_[4] = CFrame["new"](L_52_[1])
			L_52_[5] = (L_48_[3]["Position"] - L_52_[4]["Position"])["Magnitude"]
			if L_52_[5] > 3 then
				local L_56_ = {}
				L_56_[2] = TweenInfo["new"](L_52_[5] / L_45_[7], Enum["EasingStyle"]["Linear"]);
				(L_45_[9]:Create(L_48_[3], L_56_[2], {
					["CFrame"] = L_52_[4]
				})):Play()
			end
			L_48_[3]["CanCollide"] = false
			L_48_[3][L_1_[2]({
				"AssemblyLinearVeloci";
				"ty"
			})] = Vector3["zero"]
			L_48_[3][L_1_[2]({
				"AssemblyAngularVeloc";
				"ity"
			})] = Vector3["zero"]
			if L_48_[2]:FindFirstChild("Animator") then
				L_48_[2]["Animator"]:Destroy()
			end
			if not L_48_[3]:FindFirstChild("سرعة الجسم") then
				local L_57_ = {}
				L_57_[1] = Instance["new"]("سرعة الجسم")
				L_57_[1]["Name"] = "سرعة الجسم"
				L_57_[1]["MaxForce"] = Vector3["new"](1000000000, 1000000000, 1000000000)
				L_57_[1]["Velocity"] = Vector3["zero"]
				L_57_[1]["Parent"] = L_48_[3]
			end
			pcall(function()
				sethiddenproperty(L_45_[4], "SimulationRadius", math["huge"])
			end)
		end
	end
end
Useskills = function(L_58_arg0, L_59_arg1)
	local L_60_ = {}
	L_60_[3], L_60_[2] = L_58_arg0, L_59_arg1
	if L_60_[3] == "يد" then
		weaponSc("يد")
		if L_60_[2] == "Z" then
			vim1:SendKeyEvent(true, "Z", false, game)
			vim1:SendKeyEvent(false, "Z", false, game)
		elseif L_60_[2] == "X" then
			vim1:SendKeyEvent(true, "X", false, game)
			vim1:SendKeyEvent(false, "X", false, game)
		elseif L_60_[2] == "C" then
			vim1:SendKeyEvent(true, "C", false, game)
			vim1:SendKeyEvent(false, "C", false, game)
		end
	elseif L_60_[3] == "سيف" then
		weaponSc("سيف")
		if L_60_[2] == "Z" then
			vim1:SendKeyEvent(true, "Z", false, game)
			vim1:SendKeyEvent(false, "Z", false, game)
		elseif L_60_[2] == "X" then
			vim1:SendKeyEvent(true, "X", false, game)
			vim1:SendKeyEvent(false, "X", false, game)
		end
	elseif L_60_[3] == "ثمرة بلوكس" then
		weaponSc("ثمرة بلوكس")
		if L_60_[2] == "Z" then
			vim1:SendKeyEvent(true, "Z", false, game)
			vim1:SendKeyEvent(false, "Z", false, game)
		elseif L_60_[2] == "X" then
			vim1:SendKeyEvent(true, "X", false, game)
			vim1:SendKeyEvent(false, "X", false, game)
		elseif L_60_[2] == "C" then
			vim1:SendKeyEvent(true, "C", false, game)
			vim1:SendKeyEvent(false, "C", false, game)
		elseif L_60_[2] == "V" then
			vim1:SendKeyEvent(true, "V", false, game)
			vim1:SendKeyEvent(false, "V", false, game)
		end
	elseif L_60_[3] == "مسدس" then
		weaponSc("مسدس")
		if L_60_[2] == "Z" then
			vim1:SendKeyEvent(true, "Z", false, game)
			vim1:SendKeyEvent(false, "Z", false, game)
		elseif L_60_[2] == "X" then
			vim1:SendKeyEvent(true, "X", false, game)
			vim1:SendKeyEvent(false, "X", false, game)
		end
	end
	if L_60_[3] == "nil" and L_60_[2] == "Y" then
		vim1:SendKeyEvent(true, "Y", false, game)
		vim1:SendKeyEvent(false, "Y", false, game)
	end
end
L_1_[96] = getrawmetatable(game)
L_1_[123] = L_1_[96]["__namecall"]
setreadonly(L_1_[96], false)
L_1_[96]["__namecall"] = newcclosure(function(...)
	local L_61_ = {}
	L_61_[2] = getnamecallmethod()
	L_61_[1] = {
		...
	}
	if tostring(L_61_[2]) == "FireServer" then
		if tostring(L_61_[1][1]) == "RemoteEvent" then
			if tostring(L_61_[1][2]) ~= "true" and tostring(L_61_[1][2]) ~= "false" then
				if _G["FarmMastery_G"] and not SoulGuitar or _G["FarmMastery_Dev"] or _G["FarmBlazeEM"] or _G["Prehis_Skills"] or _G["SeaBeast1"] or _G["FishBoat"] or _G["PGB"] or _G["Leviathan1"] or _G["Complete_Trials"] or _G["AimMethod"] and ABmethod == "أيم لاعب" or _G["AimMethod"] and ABmethod == "الأقرب" then
					L_61_[1][2] = MousePos
					return L_1_[123](unpack(L_61_[1]))
				end
			end
		end
	end
	return L_1_[123](...)
end)
GetConnectionEnemies = function(L_62_arg0)
	local L_63_ = {}
	L_63_[1] = L_62_arg0
	for L_64_forvar0, L_65_forvar1 in pairs(replicated:GetChildren()) do
		local L_66_ = {}
		L_66_[2], L_66_[1] = L_64_forvar0, L_65_forvar1
		if L_66_[1]:IsA("Model") and ((typeof(L_63_[1]) == "table" and table["find"](L_63_[1], L_66_[1]["Name"]) or L_66_[1]["Name"] == L_63_[1]) and (L_66_[1]:FindFirstChild("Humanoid") and L_66_[1]["Humanoid"]["Health"] > 0)) then
			return L_66_[1]
		end
	end
	for L_67_forvar0, L_68_forvar1 in next, game["Workspace"]["Enemies"]:GetChildren() do
		local L_69_ = {}
		L_69_[2], L_69_[3] = L_67_forvar0, L_68_forvar1
		if L_69_[3]:IsA("Model") and ((typeof(L_63_[1]) == "table" and table["find"](L_63_[1], L_69_[3]["Name"]) or L_69_[3]["Name"] == L_63_[1]) and (L_69_[3]:FindFirstChild("Humanoid") and L_69_[3]["Humanoid"]["Health"] > 0)) then
			return L_69_[3]
		end
	end
end
LowCpu = function()
	local L_70_ = {}
	L_70_[4] = true
	L_70_[2] = game
	L_70_[3] = L_70_[2]["Workspace"]
	L_70_[6] = L_70_[2]["Lighting"]
	L_70_[5] = L_70_[3]["التضاريس"]
	L_70_[5]["WaterWaveSize"] = 0
	L_70_[5]["WaterWaveSpeed"] = 0
	L_70_[5]["WaterReflectance"] = 0
	L_70_[5]["WaterTransparency"] = 0
	L_70_[6]["GlobalShadows"] = false
	L_70_[6]["FogEnd"] = 9000000000
	L_70_[6]["Brightness"] = 0;
	(settings())["Rendering"]["QualityLevel"] = "Level01"
	for L_71_forvar0, L_72_forvar1 in pairs(L_70_[2]:GetDescendants()) do
		local L_73_ = {}
		L_73_[3], L_73_[2] = L_71_forvar0, L_72_forvar1
		if L_73_[2]:IsA("Part") or L_73_[2]:IsA("Union") or L_73_[2]:IsA("CornerWedgePart") or L_73_[2]:IsA("TrussPart") then
			L_73_[2]["Material"] = "Plastic"
			L_73_[2]["Reflectance"] = 0
		elseif L_73_[2]:IsA("Decal") or L_73_[2]:IsA("Texture") and L_70_[4] then
			L_73_[2]["Transparency"] = 1
		elseif L_73_[2]:IsA("ParticleEmitter") or L_73_[2]:IsA("Trail") then
			L_73_[2]["Lifetime"] = NumberRange["new"](0)
		elseif L_73_[2]:IsA("Explosion") then
			L_73_[2]["BlastPressure"] = 1
			L_73_[2]["BlastRadius"] = 1
		elseif L_73_[2]:IsA("Fire") or L_73_[2]:IsA("SpotLight") or L_73_[2]:IsA("Smoke") or L_73_[2]:IsA("Sparkles") then
			L_73_[2]["Enabled"] = false
		elseif L_73_[2]:IsA("قطعة شبكية") then
			L_73_[2]["Material"] = "Plastic"
			L_73_[2]["Reflectance"] = 0
			L_73_[2]["TextureID"] = 1.0385902758729e+16
		end
	end
	for L_74_forvar0, L_75_forvar1 in pairs(L_70_[6]:GetChildren()) do
		local L_76_ = {}
		L_76_[2], L_76_[1] = L_74_forvar0, L_75_forvar1
		if L_76_[1]:IsA("BlurEffect") or L_76_[1]:IsA("SunRaysEffect") or L_76_[1]:IsA(L_1_[2]({
			"ColorCorrectionEffec",
			"t"
		})) or L_76_[1]:IsA("BloomEffect") or L_76_[1]:IsA("DepthOfFieldEffect") then
			L_76_[1]["Enabled"] = false
		end
	end
end
CheckF = function()
	if GetBP("Dragon-Dragon") or GetBP("Gas-Gas") or GetBP("Yeti-Yeti") or GetBP("Kitsune-Kitsune") or GetBP("T-Rex-T-Rex") then
		return true
	end
end
CheckBoat = function()
	for L_77_forvar0, L_78_forvar1 in pairs(workspace["Boats"]:GetChildren()) do
		local L_79_ = {}
		L_79_[1], L_79_[3] = L_77_forvar0, L_78_forvar1
		if tostring(L_79_[3]["Owner"]["Value"]) == tostring(plr["Name"]) then
			return L_79_[3]
		end
	end
	return false
end
CheckEnemiesBoat = function()
	for L_80_forvar0, L_81_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
		local L_82_ = {}
		L_82_[1], L_82_[2] = L_80_forvar0, L_81_forvar1
		if L_82_[2]["Name"] == "FishBoat" and (L_82_[2]:FindFirstChild("Health"))["Value"] > 0 then
			return true
		end
	end
	return false
end
CheckPirateGrandBrigade = function()
	for L_83_forvar0, L_84_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
		local L_85_ = {}
		L_85_[2], L_85_[1] = L_83_forvar0, L_84_forvar1
		if (L_85_[1]["Name"] == "PirateGrandBrigade" or L_85_[1]["Name"] == "PirateBrigade") and (L_85_[1]:FindFirstChild("Health"))["Value"] > 0 then
			return true
		end
	end
	return false
end
CheckShark = function()
	for L_86_forvar0, L_87_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
		local L_88_ = {}
		L_88_[1], L_88_[3] = L_86_forvar0, L_87_forvar1
		if L_88_[3]["Name"] == "Shark" and L_1_[4]["Alive"](L_88_[3]) then
			return true
		end
	end
	return false
end
CheckTerrorShark = function()
	for L_89_forvar0, L_90_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
		local L_91_ = {}
		L_91_[3], L_91_[1] = L_89_forvar0, L_90_forvar1
		if L_91_[1]["Name"] == "Terrorshark" and L_1_[4]["Alive"](L_91_[1]) then
			return true
		end
	end
	return false
end
CheckPiranha = function()
	for L_92_forvar0, L_93_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
		local L_94_ = {}
		L_94_[3], L_94_[1] = L_92_forvar0, L_93_forvar1
		if L_94_[1]["Name"] == "البيرانا" and L_1_[4]["Alive"](L_94_[1]) then
			return true
		end
	end
	return false
end
CheckFishCrew = function()
	for L_95_forvar0, L_96_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
		local L_97_ = {}
		L_97_[3], L_97_[2] = L_95_forvar0, L_96_forvar1
		if (L_97_[2]["Name"] == "Fish Crew Member" or L_97_[2]["Name"] == "Haunted Crew Member") and L_1_[4]["Alive"](L_97_[2]) then
			return true
		end
	end
	return false
end
CheckHauntedCrew = function()
	for L_98_forvar0, L_99_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
		local L_100_ = {}
		L_100_[3], L_100_[2] = L_98_forvar0, L_99_forvar1
		if L_100_[2]["Name"] == "Haunted Crew Member" and L_1_[4]["Alive"](L_100_[2]) then
			return true
		end
	end
	return false
end
CheckSeaBeast = function()
	if workspace["SeaBeasts"]:FindFirstChild("SeaBeast1") then
		return true
	end
	return false
end
CheckLeviathan = function()
	if workspace["SeaBeasts"]:FindFirstChild("Leviathan") then
		return true
	end
	return false
end
UpdStFruit = function()
	for L_101_forvar0, L_102_forvar1 in next, plr["Backpack"]:GetChildren() do
		local L_103_ = {}
		L_103_[3], L_103_[1] = L_101_forvar0, L_102_forvar1
		StoreFruit = L_103_[1]:FindFirstChild("EatRemote", true)
		if StoreFruit then
			replicated["Remotes"]["CommF_"]:InvokeServer("StoreFruit", StoreFruit["Parent"]:GetAttribute("OriginalName"), plr["Backpack"]:FindFirstChild(L_103_[1]["Name"]))
		end
	end
end
collectFruits = function(L_104_arg0)
	local L_105_ = {}
	L_105_[1] = L_104_arg0
	if L_105_[1] then
		local L_106_ = {}
		L_106_[2] = plr["Character"]
		for L_107_forvar0, L_108_forvar1 in pairs(workspace:GetChildren()) do
			local L_109_ = {}
			L_109_[1], L_109_[2] = L_107_forvar0, L_108_forvar1
			if string["find"](L_109_[2]["Name"], "Fruit") then
				L_109_[2]["Handle"]["CFrame"] = L_106_[2]["HumanoidRootPart"]["CFrame"]
			end
		end
	end
end
Getmoon = function()
	if World1 then
		return Lighting["FantasySky"]["MoonTextureId"]
	elseif World2 then
		return Lighting["FantasySky"]["MoonTextureId"]
	elseif World3 then
		return Lighting["Sky"]["MoonTextureId"]
	end
end
DropFruits = function()
	for L_110_forvar0, L_111_forvar1 in next, plr["Backpack"]:GetChildren() do
		local L_112_ = {}
		L_112_[3], L_112_[2] = L_110_forvar0, L_111_forvar1
		if string["find"](L_112_[2]["Name"], "Fruit") then
			EquipWeapon(L_112_[2]["Name"])
			wait(.1)
			if plr["PlayerGui"]["Main"]["Dialogue"]["Visible"] == true then
				plr["PlayerGui"]["Main"]["Dialogue"]["Visible"] = false
			end
			EquipWeapon(L_112_[2]["Name"]);
			(plr["Character"]:FindFirstChild(L_112_[2]["Name"]))["EatRemote"]:InvokeServer("Drop")
		end
	end
	for L_113_forvar0, L_114_forvar1 in pairs(plr["Character"]:GetChildren()) do
		local L_115_ = {}
		L_115_[1], L_115_[2] = L_113_forvar0, L_114_forvar1
		if string["find"](L_115_[2]["Name"], "Fruit") then
			EquipWeapon(L_115_[2]["Name"])
			wait(.1)
			if plr["PlayerGui"]["Main"]["Dialogue"]["Visible"] == true then
				plr["PlayerGui"]["Main"]["Dialogue"]["Visible"] = false
			end
			EquipWeapon(L_115_[2]["Name"]);
			(plr["Character"]:FindFirstChild(L_115_[2]["Name"]))["EatRemote"]:InvokeServer("Drop")
		end
	end
end
GetBP = function(L_116_arg0)
	local L_117_ = {}
	L_117_[2] = L_116_arg0
	return plr["Backpack"]:FindFirstChild(L_117_[2]) or plr["Character"]:FindFirstChild(L_117_[2])
end
GetIn = function(L_118_arg0)
	local L_119_ = {}
	L_119_[1] = L_118_arg0
	for L_120_forvar0, L_121_forvar1 in pairs(replicated["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
		local L_122_ = {}
		L_122_[2], L_122_[3] = L_120_forvar0, L_121_forvar1
		if type(L_122_[3]) == "table" then
			if L_122_[3]["Name"] == L_119_[1] or plr["Character"]:FindFirstChild(L_119_[1]) or plr["Backpack"]:FindFirstChild(L_119_[1]) then
				return true
			end
		end
	end
	return false
end
GetM = function(L_123_arg0)
	local L_124_ = {}
	L_124_[1] = L_123_arg0
	for L_125_forvar0, L_126_forvar1 in pairs(replicated["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
		local L_127_ = {}
		L_127_[2], L_127_[3] = L_125_forvar0, L_126_forvar1
		if type(L_127_[3]) == "table" then
			if L_127_[3]["Type"] == "Material" then
				if L_127_[3]["Name"] == L_124_[1] then
					return L_127_[3]["Count"]
				end
			end
		end
	end
	return 0
end
GetWP = function(L_128_arg0)
	local L_129_ = {}
	L_129_[1] = L_128_arg0
	for L_130_forvar0, L_131_forvar1 in pairs(replicated["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
		local L_132_ = {}
		L_132_[2], L_132_[1] = L_130_forvar0, L_131_forvar1
		if type(L_132_[1]) == "table" then
			if L_132_[1]["Type"] == "سيف" then
				if L_132_[1]["Name"] == L_129_[1] or plr["Character"]:FindFirstChild(L_129_[1]) or plr["Backpack"]:FindFirstChild(L_129_[1]) then
					return true
				end
			end
		end
	end
	return false
end
getInfinity_Ability = function(L_133_arg0, L_134_arg1)
	local L_135_ = {}
	L_135_[2], L_135_[1] = L_133_arg0, L_134_arg1
	if not Root then
		return
	end
	if L_135_[2] == "Soru" and L_135_[1] then
		for L_136_forvar0, L_137_forvar1 in next, getgc() do
			local L_138_ = {}
			L_138_[1], L_138_[3] = L_136_forvar0, L_137_forvar1
			if plr["Character"]["Soru"] then
				if typeof(L_138_[3]) == "function" and (getfenv(L_138_[3]))["script"] == plr["Character"]["Soru"] then
					for L_139_forvar0, L_140_forvar1 in next, getupvalues(L_138_[3]) do
						local L_141_ = {}
						L_141_[3], L_141_[1] = L_139_forvar0, L_140_forvar1
						if typeof(L_141_[1]) == "table" then
							repeat
								wait(Sec)
								L_141_[1]["LastUse"] = 0
							until not L_135_[1] or plr["Character"]["Humanoid"]["Health"] <= 0
						end
					end
				end
			end
		end
	elseif L_135_[2] == "Energy" and L_135_[1] then
		plr["Character"]["Energy"]["Changed"]:connect(function()
			if L_135_[1] then
				plr["Character"]["Energy"]["Value"] = Energy
			end
		end)
	elseif L_135_[2] == "Observation" and L_135_[1] then
		local L_142_ = {}
		L_142_[2] = plr["VisionRadius"]
		L_142_[2]["Value"] = math["huge"]
	end
end
Hop = function()
	pcall(function()
		for L_143_forvar0 = math["random"](1, math["random"](40, 75)), 100, 1 do
			local L_144_ = {}
			L_144_[2] = L_143_forvar0
			L_144_[1] = replicated["__ServerBrowser"]:InvokeServer(L_144_[2])
			for L_145_forvar0, L_146_forvar1 in next, L_144_[1] do
				local L_147_ = {}
				L_147_[1], L_147_[3] = L_145_forvar0, L_146_forvar1
				if tonumber(L_147_[3]["Count"]) < 12 then
					TeleportService:TeleportToPlaceInstance(game["PlaceId"], L_147_[1])
				end
			end
		end
	end)
end
L_1_[36] = Instance["new"]("Part", workspace)
L_1_[36]["Size"] = Vector3["new"](1, 1, 1)
L_1_[36]["Name"] = "ريب اندرا"
L_1_[36]["Anchored"] = true
L_1_[36]["CanCollide"] = false
L_1_[36]["CanTouch"] = false
L_1_[36]["Transparency"] = 1
L_1_[34] = workspace:FindFirstChild(L_1_[36]["Name"])
if L_1_[34] and L_1_[34] ~= L_1_[36] then
	L_1_[34]:Destroy()
end
task["spawn"](function()
	while task["wait"]() do
		if L_1_[36] and L_1_[36]["Parent"] == workspace then
			if shouldTween then
				(getgenv())["OnFarm"] = true
			else
				(getgenv())["OnFarm"] = false
			end
		else
			(getgenv())["OnFarm"] = false
		end
	end
end)
task["spawn"](function()
	local L_148_ = {}
	L_148_[1] = game["Players"]["LocalPlayer"]
	repeat
		task["wait"]()
	until L_148_[1]["Character"] and L_148_[1]["Character"]["PrimaryPart"]
	L_1_[36]["CFrame"] = L_148_[1]["Character"]["PrimaryPart"]["CFrame"]
	while task["wait"]() do
		pcall(function()
			if (getgenv())["OnFarm"] then
				local L_149_ = {}
				if L_1_[36] and L_1_[36]["Parent"] == workspace then
					local L_150_ = {}
					L_150_[2] = L_148_[1]["Character"] and L_148_[1]["Character"]["PrimaryPart"]
					if L_150_[2] and (L_150_[2]["Position"] - L_1_[36]["Position"])["Magnitude"] <= 200 then
						L_150_[2]["CFrame"] = L_1_[36]["CFrame"]
					else
						L_1_[36]["CFrame"] = L_150_[2]["CFrame"]
					end
				end
				L_149_[2] = L_148_[1]["Character"]
				if L_149_[2] then
					for L_151_forvar0, L_152_forvar1 in pairs(L_149_[2]:GetChildren()) do
						local L_153_ = {}
						L_153_[2], L_153_[1] = L_151_forvar0, L_152_forvar1
						if L_153_[1]:IsA("BasePart") then
							L_153_[1]["CanCollide"] = false
						end
					end
				end
			else
				local L_154_ = {}
				L_154_[2] = L_148_[1]["Character"]
				if L_154_[2] then
					for L_155_forvar0, L_156_forvar1 in pairs(L_154_[2]:GetChildren()) do
						local L_157_ = {}
						L_157_[1], L_157_[3] = L_155_forvar0, L_156_forvar1
						if L_157_[3]:IsA("BasePart") then
							L_157_[3]["CanCollide"] = true
						end
					end
				end
			end
		end)
	end
end)
_tp = function(L_158_arg0)
	local L_159_ = {}
	L_159_[4] = L_158_arg0
	L_159_[3] = plr["Character"]
	if not L_159_[3] or not L_159_[3]:FindFirstChild("HumanoidRootPart") then
		return
	end
	L_159_[6] = L_159_[3]["HumanoidRootPart"]
	L_159_[2] = (L_159_[4]["Position"] - L_159_[6]["Position"])["Magnitude"]
	L_159_[7] = TweenInfo["new"](L_159_[2] / 300, Enum["EasingStyle"]["Linear"])
	L_159_[1] = (game:GetService("TweenService")):Create(L_1_[36], L_159_[7], {
		["CFrame"] = L_159_[4]
	})
	if plr["Character"]["Humanoid"]["Sit"] == true then
		L_1_[36]["CFrame"] = CFrame["new"](L_1_[36]["Position"]["X"], L_159_[4]["Y"], L_1_[36]["Position"]["Z"])
	end
	L_159_[1]:Play()
	task["spawn"](function()
		while L_159_[1]["PlaybackState"] == Enum["PlaybackState"]["Playing"] do
			if not shouldTween then
				L_159_[1]:Cancel()
				break
			end
			task["wait"](.1)
		end
	end)
end
TeleportToTarget = function(L_160_arg0)
	local L_161_ = {}
	L_161_[1] = L_160_arg0
	if (L_161_[1]["Position"] - plr["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 1000 then
		_tp(L_161_[1])
	else
		_tp(L_161_[1])
	end
end
notween = function(L_162_arg0)
	local L_163_ = {}
	L_163_[2] = L_162_arg0
	plr["Character"]["HumanoidRootPart"]["CFrame"] = L_163_[2]
end
function BTP(L_164_arg0)
	local L_165_ = {}
	L_165_[5] = L_164_arg0
	L_165_[8] = game["Players"]["LocalPlayer"]
	L_165_[2] = L_165_[8]["Character"]["HumanoidRootPart"]
	L_165_[1] = L_165_[8]["Character"]["Humanoid"]
	L_165_[7] = L_165_[8]["PlayerGui"]["Main"]
	L_165_[6] = L_165_[5]["Position"]
	L_165_[4] = L_165_[2]["Position"]
	repeat
		L_165_[1]["Health"] = 0
		L_165_[2]["CFrame"] = L_165_[5]
		L_165_[7]["Quest"]["Visible"] = false
		if (L_165_[2]["Position"] - L_165_[4])["Magnitude"] > 1 then
			L_165_[4] = L_165_[2]["Position"]
			L_165_[2]["CFrame"] = L_165_[5]
		end
		task["wait"](.5)
	until (L_165_[5]["Position"] - L_165_[2]["Position"])["Magnitude"] <= 2000
end
spawn(function()
	while task["wait"]() do
		pcall(function()
			if _G["SailBoat_Hydra"] or _G["WardenBoss"] or _G["AutoFactory"] or _G["HighestMirage"] or _G["HCM"] or _G["PGB"] or _G["Leviathan1"] or _G["UPGDrago"] or _G["Complete_Trials"] or _G["TpDrago_Prehis"] or _G["BuyDrago"] or _G["AutoFireFlowers"] or _G["DT_Uzoth"] or _G["AutoBerry"] or _G["Prefully"] or _G["Prehis_Find"] or _G["Prehis_Skills"] or _G["Prehis_DB"] or _G["Prehis_DE"] or _G["FarmBlazeEM"] or _G["Dojoo"] or _G["CollectPresent"] or _G["AutoLawKak"] or _G["TpLab"] or _G["AutoPhoenixF"] or _G["AutoFarmChest"] or _G["AutoHytHallow"] or _G["LongsWord"] or _G["BlackSpikey"] or _G["AutoHolyTorch"] or _G["TrainDrago"] or _G["AutoSaber"] or _G["FarmMastery_Dev"] or _G["CitizenQuest"] or _G["AutoEctoplasm"] or _G["KeysRen"] or _G["Auto_Rainbow_Haki"] or _G["obsFarm"] or _G["AutoBigmom"] or _G["Doughv2"] or _G["AuraBoss"] or _G["Raiding"] or _G["Auto_Cavender"] or _G["TpPly"] or _G["Bartilo_Quest"] or _G["Level"] or _G["FarmEliteHunt"] or _G["AutoZou"] or _G["AutoFarm_Bone"] or (getgenv())["AutoMaterial"] or _G["CraftVM"] or _G["FrozenTP"] or _G["TPDoor"] or _G["AcientOne"] or _G["AutoFarmNear"] or _G["AutoRaidCastle"] or _G["DarkBladev3"] or _G["AutoFarmRaid"] or _G["Auto_Cake_Prince"] or _G["Addealer"] or _G["TPNpc"] or _G["TwinHook"] or _G["FindMirage"] or _G["FarmChestM"] or _G["Shark"] or _G["TerrorShark"] or _G["البيرانا"] or _G["MobCrew"] or _G["SeaBeast1"] or _G["FishBoat"] or _G["AutoPole"] or _G["AutoPoleV2"] or _G["Auto_SuperHuman"] or _G["AutoDeathStep"] or _G["Auto_SharkMan_Karate"] or _G["Auto_Electric_Claw"] or _G["AutoDragonTalon"] or _G["Auto_Def_DarkCoat"] or _G["Auto_God_Human"] or _G["Auto_Tushita"] or _G["AutoMatSoul"] or _G["AutoKenVTWO"] or _G["AutoSerpentBow"] or _G["AutoFMon"] or _G["Auto_Soul_Guitar"] or _G["TPGEAR"] or _G["AutoSaw"] or _G["AutoTridentW2"] or _G["AutoEvoRace"] or _G["AutoGetQuestBounty"] or _G["MarinesCoat"] or _G["TravelDres"] or _G["Defeating"] or _G["DummyMan"] or _G["Auto_Yama"] or _G["Auto_SwanGG"] or _G["SwanCoat"] or _G["AutoEcBoss"] or _G["Auto_Mink"] or _G["Auto_Human"] or _G["Auto_Skypiea"] or _G["Auto_Fish"] or _G["CDK_TS"] or _G["CDK_YM"] or _G["CDK"] or _G["AutoFarmGodChalice"] or _G["AutoFistDarkness"] or _G["AutoMiror"] or _G["تلبورت"] or _G["AutoKilo"] or _G["AutoGetUsoap"] or _G["Praying"] or _G["TryLucky"] or _G["AutoColShad"] or _G["AutoUnHaki"] or _G["Auto_DonAcces"] or _G["AutoRipIngay"] or _G["DragoV3"] or _G["DragoV1"] or _G["SailBoats"] or NextIs or _G["FarmGodChalice"] or _G["IceBossRen"] or senth or senth2 or _G["Lvthan"] or _G["beasthunter"] or _G["DangerLV"] or _G["Relic123"] or _G["tweenKitsune"] or _G["Collect_Ember"] or _G["AutofindKitIs"] or _G["snaguine"] or _G["TwFruits"] or _G["tweenKitShrine"] or _G["Tp_LgS"] or _G["Tp_MasterA"] or _G["tweenShrine"] or _G["FarmMastery_G"] or _G["FarmMastery_S"] or _G["FarmBoss"] or _G["AutoFarmAllBoss"] or _G["AutoFishSlap"] or _G["FarmTyrant"] or _G["FarmPhaBinh"] or _G["AutoSpawnCP"] or _G["AutoBerryH"] or _G["AutoChestBP"] or _G["FarmEliteHop"] or _G["AutoHop_Dough"] or _G["AutoDoughKing"] or _G["AutoAttackDoughKing"] or _G["AutoChipFruit"] or _G["AutoChipBeli"] or _G["StartEvent"] or _G["AutoMysticIsland"] or _G["AutoPlayerHunter"] or _G["SafeMode"] or _G["AutoKillMob"] or _G["AutoStartPrehistoric"] or _G["AutoUnHaki"] or _G["AutoAttackRipIndra"] or _G["AutoFarmIsland"] or _G["AutoFarmDungeon"] or _G["AutoFarmCandy"] or _G["AutoTP_Gift"] or _G["AutoTPGift"] or _G["AutoTPAndCollect"] or _G["MasterAutoLevel"] or _G["MasterAutoCandy"] or _G["TPFloor1"] or _G["TPFloor2"] or _G["TPFloor3"] or _G["TPFloor4"] then
				shouldTween = true
				if not plr["Character"]["HumanoidRootPart"]:FindFirstChild("تجاوز الجسم") then
					local L_166_ = {}
					L_166_[1] = Instance["new"]("سرعة الجسم")
					L_166_[1]["Name"] = "تجاوز الجسم"
					L_166_[1]["Parent"] = plr["Character"]["HumanoidRootPart"]
					L_166_[1]["MaxForce"] = Vector3["new"](100000, 100000, 100000)
					L_166_[1]["Velocity"] = Vector3["new"](0, 0, 0)
				end
				if not plr["Character"]:FindFirstChild("تمييز") then
					local L_167_ = {}
					L_167_[1] = Instance["new"]("Highlight")
					L_167_[1]["Name"] = "تمييز"
					L_167_[1]["Enabled"] = true
					L_167_[1]["FillColor"] = Color3["fromRGB"](255, 165, 0)
					L_167_[1]["OutlineColor"] = Color3["fromRGB"](255, 0, 0)
					L_167_[1]["FillTransparency"] = .5
					L_167_[1]["OutlineTransparency"] = .2
					L_167_[1]["Parent"] = plr["Character"]
				end
				for L_168_forvar0, L_169_forvar1 in pairs(plr["Character"]:GetDescendants()) do
					local L_170_ = {}
					L_170_[2], L_170_[1] = L_168_forvar0, L_169_forvar1
					if L_170_[1]:IsA("BasePart") then
						L_170_[1]["CanCollide"] = false
					end
				end
			else
				shouldTween = false
				if plr["Character"]["HumanoidRootPart"]:FindFirstChild("تجاوز الجسم") then
					(plr["Character"]["HumanoidRootPart"]:FindFirstChild("تجاوز الجسم")):Destroy()
				end
				if plr["Character"]:FindFirstChild("تمييز") then
					(plr["Character"]:FindFirstChild("تمييز")):Destroy()
				end
			end
		end)
	end
end)
QuestB = function()
	if World1 then
		if _G["FindBoss"] == "ملك الغوريلا" then
			bMon = "ملك الغوريلا"
			Qname = "JungleQuest"
			Qdata = 3
			PosQBoss = CFrame["new"](-1601.6553955078, 36.85213470459, 153.38809204102)
			PosB = CFrame["new"](-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, .707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
		elseif _G["FindBoss"] == "بوبي" then
			bMon = "بوبي"
			Qname = "BuggyQuest1"
			Qdata = 3
			PosQBoss = CFrame["new"](-1140.1761474609, 4.752049446106, 3827.4057617188)
			PosB = CFrame["new"](-1087.3760986328, 46.949409484863, 4040.1462402344)
		elseif _G["FindBoss"] == "المنشار" then
			bMon = "المنشار"
			PosB = CFrame["new"](-784.89715576172, 72.427383422852, 1603.5822753906)
		elseif _G["FindBoss"] == "اليتي" then
			bMon = "اليتي"
			Qname = "SnowQuest"
			Qdata = 3
			PosQBoss = CFrame["new"](1386.8073730469, 87.272789001465, -1298.3576660156)
			PosB = CFrame["new"](1218.7956542969, 138.01184082031, -1488.0262451172)
		elseif _G["FindBoss"] == "زعيم العصابة" then
			bMon = "زعيم العصابة"
			PosB = CFrame["new"](-2844.7307128906, 7.4180502891541, 5356.6723632813)
		elseif _G["FindBoss"] == "نائب الأميرال" then
			bMon = "نائب الأميرال"
			Qname = "MarineQuest2"
			Qdata = 2
			PosQBoss = CFrame["new"](-5036.2465820313, 28.677835464478, 4324.56640625)
			PosB = CFrame["new"](-5006.5454101563, 88.032081604004, 4353.162109375)
		elseif _G["FindBoss"] == "خبير السيف" then
			bMon = "خبير السيف"
			PosB = CFrame["new"](-1458.89502, 29.8870335, -50.633564)
		elseif _G["FindBoss"] == "الحارس" then
			bMon = "الحارس"
			Qname = "ImpelQuest"
			Qdata = 1
			PosB = CFrame["new"](5278.04932, 2.15167475, 944.101929, .220546961, -4.49946401e-06, .975376427, -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, .220546961)
			PosQBoss = CFrame["new"](5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
		elseif _G["FindBoss"] == "كبير الحراس" then
			bMon = "كبير الحراس"
			Qname = "ImpelQuest"
			Qdata = 2
			PosB = CFrame["new"](5206.92578, .997753382, 814.976746, .342041343, -0.00062915677, .939684749, .00191645394, .999998152, -2.80422337e-05, -0.939682961, .00181045406, .342041939)
			PosQBoss = CFrame["new"](5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
		elseif _G["FindBoss"] == "البجعة" then
			bMon = "البجعة"
			Qname = "ImpelQuest"
			Qdata = 3
			PosB = CFrame["new"](5325.09619, 7.03906584, 719.570679, -0.309060812, 0, .951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
			PosQBoss = CFrame["new"](5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
		elseif _G["FindBoss"] == "أميرال الحمم" then
			bMon = "أميرال الحمم"
			Qname = "MagmaQuest"
			Qdata = 3
			PosQBoss = CFrame["new"](-5314.6220703125, 12.262420654297, 8517.279296875)
			PosB = CFrame["new"](-5765.8969726563, 82.92064666748, 8718.3046875)
		elseif _G["FindBoss"] == "سيد رجل السمكة" then
			bMon = "سيد رجل السمكة"
			Qname = "FishmanQuest"
			Qdata = 3
			PosQBoss = CFrame["new"](61122.65234375, 18.497442245483, 1569.3997802734)
			PosB = CFrame["new"](61260.15234375, 30.950881958008, 1193.4329833984)
		elseif _G["FindBoss"] == "ويسبر" then
			bMon = "ويسبر"
			Qname = "SkyExp1Quest"
			Qdata = 3
			PosQBoss = CFrame["new"](-7861.947265625, 5545.517578125, -379.85974121094)
			PosB = CFrame["new"](-7866.1333007813, 5576.4311523438, -546.74816894531)
		elseif _G["FindBoss"] == "إله الرعد" then
			bMon = "إله الرعد"
			Qname = "SkyExp2Quest"
			Qdata = 3
			PosQBoss = CFrame["new"](-7903.3828125, 5635.9897460938, -1410.923828125)
			PosB = CFrame["new"](-7994.984375, 5761.025390625, -2088.6479492188)
		elseif _G["FindBoss"] == "السايبورغ" then
			bMon = "السايبورغ"
			Qname = "FountainQuest"
			Qdata = 3
			PosQBoss = CFrame["new"](5258.2788085938, 38.526931762695, 4050.044921875)
			PosB = CFrame["new"](6094.0249023438, 73.770050048828, 3825.7348632813)
		elseif _G["FindBoss"] == "أميرال الجليد" then
			bMon = "أميرال الجليد"
			Qdata = nil
			PosQBoss = CFrame["new"](1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, .81913656, 0, -0.573599219)
			PosB = CFrame["new"](1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, .81913656, 0, -0.573599219)
		elseif _G["FindBoss"] == "الذقن الرمادية" then
			bMon = "الذقن الرمادية"
			Qdata = nil
			PosQBoss = CFrame["new"](-5081.3452148438, 85.221641540527, 4257.3588867188)
			PosB = CFrame["new"](-5081.3452148438, 85.221641540527, 4257.3588867188)
		end
	end
	if World2 then
		if _G["FindBoss"] == "الماس" then
			bMon = "الماس"
			Qname = "Area1Quest"
			Qdata = 3
			PosQBoss = CFrame["new"](-427.5666809082, 73.313781738281, 1835.4208984375)
			PosB = CFrame["new"](-1576.7166748047, 198.59265136719, 13.724286079407)
		elseif _G["FindBoss"] == "جيريمي" then
			bMon = "جيريمي"
			Qname = "Area2Quest"
			Qdata = 3
			PosQBoss = CFrame["new"](636.79943847656, 73.413787841797, 918.00415039063)
			PosB = CFrame["new"](2006.9261474609, 448.95666503906, 853.98284912109)
		elseif _G["FindBoss"] == "أوربيتوس" then
			bMon = "أوربيتوس"
			Qname = "MarineQuest3"
			Qdata = 3
			PosQBoss = CFrame["new"](-2441.986328125, 73.359344482422, -3217.5324707031)
			PosB = CFrame["new"](-2172.7399902344, 103.32216644287, -4015.025390625)
		elseif _G["FindBoss"] == "دون سوان" then
			bMon = "دون سوان"
			PosB = CFrame["new"](2286.2004394531, 15.177839279175, 863.8388671875)
		elseif _G["FindBoss"] == "أميرال الدخان" then
			bMon = "أميرال الدخان"
			Qname = "IceSideQuest"
			Qdata = 3
			PosQBoss = CFrame["new"](-5429.0473632813, 15.977565765381, -5297.9614257813)
			PosB = CFrame["new"](-5275.1987304688, 20.757257461548, -5260.6669921875)
		elseif _G["FindBoss"] == "أميرال الجليد المستيقظ" then
			bMon = "أميرال الجليد المستيقظ"
			Qname = "FrostQuest"
			Qdata = 3
			PosQBoss = CFrame["new"](5668.9780273438, 28.519989013672, -6483.3520507813)
			PosB = CFrame["new"](6403.5439453125, 340.29766845703, -6894.5595703125)
		elseif _G["FindBoss"] == "حارس المد" then
			bMon = "حارس المد"
			Qname = "ForgottenQuest"
			Qdata = 3
			PosQBoss = CFrame["new"](-3053.9814453125, 237.18954467773, -10145.0390625)
			PosB = CFrame["new"](-3795.6423339844, 105.88877105713, -11421.307617188)
		elseif _G["FindBoss"] == "الذقن الداكنة" then
			bMon = "الذقن الداكنة"
			Qdata = nil
			PosQBoss = CFrame["new"](3677.08203125, 62.751937866211, -3144.8332519531)
			PosB = CFrame["new"](3677.08203125, 62.751937866211, -3144.8332519531)
		elseif _G["FindBoss"] == "Cursed Captaim" then
			bMon = "القبطان الملعون"
			Qdata = nil
			PosQBoss = CFrame["new"](916.928589, 181.092773, 33422)
			PosB = CFrame["new"](916.928589, 181.092773, 33422)
		elseif _G["FindBoss"] == "النظام" then
			bMon = "النظام"
			Qdata = nil
			PosQBoss = CFrame["new"](-6217.2021484375, 28.047645568848, -5053.1357421875)
			PosB = CFrame["new"](-6217.2021484375, 28.047645568848, -5053.1357421875)
		end
	end
	if World3 then
		if _G["FindBoss"] == "الحجر" then
			bMon = "الحجر"
			Qname = "PiratePortQuest"
			Qdata = 3
			PosQBoss = CFrame["new"](-289.76705932617, 43.819011688232, 5579.9384765625)
			PosB = CFrame["new"](-1027.6512451172, 92.404174804688, 6578.8530273438)
		elseif _G["FindBoss"] == "زعيم الهيدرا" then
			bMon = "زعيم الهيدرا"
			Qname = "VenomCrewQuest"
			Qdata = 3
			PosQBoss = CFrame["new"](5211.021484375, 1004.3577885938, 758.18475341797)
			PosB = CFrame["new"](5821.8979492188, 1019.0950927734, -73.719230651855)
		elseif _G["FindBoss"] == "أميرال كيلو" then
			bMon = "أميرال كيلو"
			Qname = "MarineTreeIsland"
			Qdata = 3
			PosQBoss = CFrame["new"](2179.3010253906, 28.731239318848, -6739.9741210938)
			PosB = CFrame["new"](2764.2233886719, 432.46154785156, -7144.4580078125)
		elseif _G["FindBoss"] == "القبطان الفيل" then
			bMon = "القبطان الفيل"
			Qname = "DeepForestIsland"
			Qdata = 3
			PosQBoss = CFrame["new"](-13232.682617188, 332.40396118164, -7626.01171875)
			PosB = CFrame["new"](-13376.7578125, 433.28689575195, -8071.392578125)
		elseif _G["FindBoss"] == "القرصان الجميل" then
			bMon = "القرصان الجميل"
			Qname = "DeepForestIsland2"
			Qdata = 3
			PosQBoss = CFrame["new"](-12682.096679688, 390.88653564453, -9902.1240234375)
			PosB = CFrame["new"](5283.609375, 22.56223487854, -110.78285217285)
		elseif _G["FindBoss"] == "ملكة الكعكة" then
			bMon = "ملكة الكعكة"
			Qname = "IceCreamIslandQuest"
			Qdata = 3
			PosQBoss = CFrame["new"](-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, .642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
			PosB = CFrame["new"](-678.648804, 381.353943, -11114.2012, -0.908641815, .00149294338, .41757378, .00837114919, .999857843, .0146408929, -0.417492568, .0167988986, -0.90852499)
		elseif _G["FindBoss"] == "لونغما" then
			bMon = "لونغما"
			Qdata = nil
			PosQBoss = CFrame["new"](-10238.875976563, 389.7912902832, -9549.7939453125)
			PosB = CFrame["new"](-10238.875976563, 389.7912902832, -9549.7939453125)
		elseif _G["FindBoss"] == "حاصد الأرواح" then
			bMon = "حاصد الأرواح"
			Qdata = nil
			PosQBoss = CFrame["new"](-9524.7890625, 315.80429077148, 6655.7192382813)
			PosB = CFrame["new"](-9524.7890625, 315.80429077148, 6655.7192382813)
		end
	end
end
QuestBeta = function()
	local L_171_ = {}
	L_171_[1] = QuestB()
	return {
		[0] = _G["FindBoss"];
		[1] = bMon,
		[2] = Qdata,
		[3] = Qname;
		[4] = PosB,
		[5] = PosQBoss
	}
end
QuestCheck = function()
	local L_172_ = {}
	L_172_[2] = game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"]
	if World1 then
		if L_172_[2] == 1 or L_172_[2] <= 9 then
			if tostring(TeamSelf) == "البحرية" then
				Mon = "Trainee"
				Qname = "MarineQuest"
				Qdata = 1
				NameMon = "Trainee"
				PosM = CFrame["new"](-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, .667371571, -1.09201515e-07, -0.744724929)
				PosQ = CFrame["new"](-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, .667371571, -1.09201515e-07, -0.744724929)
			elseif tostring(TeamSelf) == "القراصنة" then
				Mon = "Bandit"
				Qdata = 1
				Qname = "BanditQuest1"
				NameMon = "Bandit"
				PosM = CFrame["new"](1045.9626464844, 27.002508163452, 1560.8203125)
				PosQ = CFrame["new"](1045.9626464844, 27.002508163452, 1560.8203125)
			end
		elseif L_172_[2] == 10 or L_172_[2] <= 14 then
			Mon = "Monkey"
			Qdata = 1
			Qname = "JungleQuest"
			NameMon = "Monkey"
			PosQ = CFrame["new"](-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, 0, -1, 0, 0)
			PosM = CFrame["new"](-1448.5180664062, 67.853012084961, 11.465796470642)
		elseif L_172_[2] == 15 or L_172_[2] <= 29 then
			Mon = "Gorilla"
			Qdata = 2
			Qname = "JungleQuest"
			NameMon = "Gorilla"
			PosQ = CFrame["new"](-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, 0, -1, 0, 0)
			PosM = CFrame["new"](-1129.8836669922, 40.46354675293, -525.42370605469)
		elseif L_172_[2] == 30 or L_172_[2] <= 39 then
			Mon = "Pirate"
			Qdata = 1
			Qname = "BuggyQuest1"
			NameMon = "Pirate"
			PosQ = CFrame["new"](-1141.07483, 4.10001802, 3831.5498, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627)
			PosM = CFrame["new"](-1103.5134277344, 13.752052307129, 3896.0910644531)
		elseif L_172_[2] == 40 or L_172_[2] <= 59 then
			Mon = "Brute"
			Qdata = 2
			Qname = "BuggyQuest1"
			NameMon = "Brute"
			PosQ = CFrame["new"](-1141.07483, 4.10001802, 3831.5498, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627)
			PosM = CFrame["new"](-1140.0837402344, 14.809885025024, 4322.9213867188)
		elseif L_172_[2] == 60 or L_172_[2] <= 74 then
			Mon = "Desert Bandit"
			Qdata = 1
			Qname = "DesertQuest"
			NameMon = "Desert Bandit"
			PosQ = CFrame["new"](894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693)
			PosM = CFrame["new"](924.7998046875, 6.4486746788025, 4481.5859375)
		elseif L_172_[2] == 75 or L_172_[2] <= 89 then
			Mon = "Desert Officer"
			Qdata = 2
			Qname = "DesertQuest"
			NameMon = "Desert Officer"
			PosQ = CFrame["new"](894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693)
			PosM = CFrame["new"](1608.2822265625, 8.6142244338989, 4371.0073242188)
		elseif L_172_[2] == 90 or L_172_[2] <= 99 then
			Mon = "Snow Bandit"
			Qdata = 1
			Qname = "SnowQuest"
			NameMon = "Snow Bandit"
			PosQ = CFrame["new"](1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
			PosM = CFrame["new"](1354.3479003906, 87.272773742676, -1393.9465332031)
		elseif L_172_[2] == 100 or L_172_[2] <= 119 then
			Mon = "Snowman"
			Qdata = 2
			Qname = "SnowQuest"
			NameMon = "Snowman"
			PosQ = CFrame["new"](1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
			PosM = CFrame["new"](6241.9951171875, 51.522083282471, -1243.9771728516)
		elseif L_172_[2] == 120 or L_172_[2] <= 149 then
			Mon = "Chief Petty Officer"
			Qdata = 1
			Qname = "MarineQuest2"
			NameMon = "Chief Petty Officer"
			PosQ = CFrame["new"](-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame["new"](-4881.2309570312, 22.652044296265, 4273.7524414062)
		elseif L_172_[2] == 150 or L_172_[2] <= 174 then
			Mon = "Sky Bandit"
			Qdata = 1
			Qname = "SkyQuest"
			NameMon = "Sky Bandit"
			PosQ = CFrame["new"](-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
			PosM = CFrame["new"](-4953.20703125, 295.74420166016, -2899.2290039062)
		elseif L_172_[2] == 175 or L_172_[2] <= 189 then
			Mon = "Dark Master"
			Qdata = 2
			Qname = "SkyQuest"
			NameMon = "Dark Master"
			PosQ = CFrame["new"](-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
			PosM = CFrame["new"](-5259.8447265625, 391.39767456055, -2229.0354003906)
		elseif L_172_[2] == 190 or L_172_[2] <= 209 then
			Mon = "Prisoner"
			Qdata = 1
			Qname = "PrisonerQuest"
			NameMon = "Prisoner"
			PosQ = CFrame["new"](5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, .995993316, -2.06384709e-09, -0.0894274712)
			PosM = CFrame["new"](5098.9736328125, -0.3204058110714, 474.23733520508)
		elseif L_172_[2] == 210 or L_172_[2] <= 249 then
			Mon = "Dangerous Prisoner"
			Qdata = 2
			Qname = "PrisonerQuest"
			NameMon = "Dangerous Prisoner"
			PosQ = CFrame["new"](5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, .995993316, -2.06384709e-09, -0.0894274712)
			PosM = CFrame["new"](5654.5634765625, 15.633401870728, 866.29919433594)
		elseif L_172_[2] == 250 or L_172_[2] <= 274 then
			Mon = "Toga Warrior"
			Qdata = 1
			Qname = "ColosseumQuest"
			NameMon = "Toga Warrior"
			PosQ = CFrame["new"](-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, .857167721, 0, -0.515037298)
			PosM = CFrame["new"](-1820.21484375, 51.683856964111, -2740.6650390625)
		elseif L_172_[2] == 275 or L_172_[2] <= 299 then
			Mon = "Gladiator"
			Qdata = 2
			Qname = "ColosseumQuest"
			NameMon = "Gladiator"
			PosQ = CFrame["new"](-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, .857167721, 0, -0.515037298)
			PosM = CFrame["new"](-1292.8381347656, 56.380882263184, -3339.0314941406)
		elseif L_172_[2] == 300 or L_172_[2] <= 324 then
			Boubty = false
			Mon = "Military Soldier"
			Qdata = 1
			Qname = "MagmaQuest"
			NameMon = "Military Soldier"
			PosQ = CFrame["new"](-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
			PosM = CFrame["new"](-5411.1645507812, 11.081554412842, 8454.29296875)
		elseif L_172_[2] == 325 or L_172_[2] <= 374 then
			Mon = "Military Spy"
			Qdata = 2
			Qname = "MagmaQuest"
			NameMon = "Military Spy"
			PosQ = CFrame["new"](-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
			PosM = CFrame["new"](-5802.8681640625, 86.262413024902, 8828.859375)
		elseif L_172_[2] == 375 or L_172_[2] <= 399 then
			Mon = "Fishman Warrior"
			Qdata = 1
			Qname = "FishmanQuest"
			NameMon = "Fishman Warrior"
			PosQ = CFrame["new"](61122.65234375, 18.497442245483, 1569.3997802734)
			PosM = CFrame["new"](60878.30078125, 18.482830047607, 1543.7574462891)
			if _G["Level"] and (PosQ["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 10000 then
				replicated["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](61163.8515625, 11.6796875, 1819.7841796875))
			end
		elseif L_172_[2] == 400 or L_172_[2] <= 449 then
			Mon = "Fishman Commando"
			Qdata = 2
			Qname = "FishmanQuest"
			NameMon = "Fishman Commando"
			PosQ = CFrame["new"](61122.65234375, 18.497442245483, 1569.3997802734)
			PosM = CFrame["new"](61922.6328125, 18.482830047607, 1493.9343261719)
			if _G["Level"] and (PosQ["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 10000 then
				replicated["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](61163.8515625, 11.6796875, 1819.7841796875))
			end
		elseif L_172_[2] == 450 or L_172_[2] <= 474 then
			Mon = "God's Guard"
			Qdata = 1
			Qname = "SkyExp1Quest"
			NameMon = "God's Guard"
			PosQ = CFrame["new"](-4721.88867, 843.874695, -1949.96643, .996191859, 0, -0.0871884301, 0, 1, 0, .0871884301, 0, .996191859)
			PosM = CFrame["new"](-4710.04296875, 845.27697753906, -1927.3079833984)
			if _G["Level"] and (PosQ["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 10000 then
				replicated["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-4607.82275, 872.54248, -1667.55688))
			end
		elseif L_172_[2] == 475 or L_172_[2] <= 524 then
			Mon = "Shanda"
			Qdata = 2
			Qname = "SkyExp1Quest"
			NameMon = "Shanda"
			PosQ = CFrame["new"](-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, .906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
			PosM = CFrame["new"](-7678.4897460938, 5566.4038085938, -497.21560668945)
			if _G["Level"] and (PosQ["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 10000 then
				replicated["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-7894.6176757813, 5547.1416015625, -380.29119873047))
			end
		elseif L_172_[2] == 525 or L_172_[2] <= 549 then
			Mon = "Royal Squad"
			Qdata = 1
			Qname = "SkyExp2Quest"
			NameMon = "Royal Squad"
			PosQ = CFrame["new"](-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame["new"](-7624.2524414062, 5658.1333007812, -1467.3542480469)
		elseif L_172_[2] == 550 or L_172_[2] <= 624 then
			Mon = "Royal Soldier"
			Qdata = 2
			Qname = "SkyExp2Quest"
			NameMon = "Royal Soldier"
			PosQ = CFrame["new"](-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame["new"](-7836.7534179688, 5645.6640625, -1790.6236572266)
		elseif L_172_[2] == 625 or L_172_[2] <= 649 then
			Mon = "Galley Pirate"
			Qdata = 1
			Qname = "FountainQuest"
			NameMon = "Galley Pirate"
			PosQ = CFrame["new"](5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381)
			PosM = CFrame["new"](5551.0219726562, 78.901351928711, 3930.4128417969)
		elseif L_172_[2] >= 650 then
			Mon = "Galley Captain"
			Qdata = 2
			Qname = "FountainQuest"
			NameMon = "Galley Captain"
			PosQ = CFrame["new"](5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381)
			PosM = CFrame["new"](5441.9516601562, 42.502059936523, 4950.09375)
		end
	elseif World2 then
		if L_172_[2] == 700 or L_172_[2] <= 724 then
			Mon = "Raider"
			Qdata = 1
			Qname = "Area1Quest"
			NameMon = "Raider"
			PosQ = CFrame["new"](-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985)
			PosM = CFrame["new"](-728.32672119141, 52.779319763184, 2345.7705078125)
		elseif L_172_[2] == 725 or L_172_[2] <= 774 then
			Mon = "Mercenary"
			Qdata = 2
			Qname = "Area1Quest"
			NameMon = "Mercenary"
			PosQ = CFrame["new"](-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985)
			PosM = CFrame["new"](-1004.3244018555, 80.158866882324, 1424.6193847656)
		elseif L_172_[2] == 775 or L_172_[2] <= 799 then
			Mon = "قرصان البجعة"
			Qdata = 1
			Qname = "Area2Quest"
			NameMon = "قرصان البجعة"
			PosQ = CFrame["new"](638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906)
			PosM = CFrame["new"](1068.6643066406, 137.61428833008, 1322.1060791016)
		elseif L_172_[2] == 800 or L_172_[2] <= 874 then
			Mon = "Factory Staff"
			Qname = "Area2Quest"
			Qdata = 2
			NameMon = "Factory Staff"
			PosQ = CFrame["new"](632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, .999488771, -1.07732087e-10, -0.0319722369)
			PosM = CFrame["new"](73.078674316406, 81.863441467285, -27.470672607422)
		elseif L_172_[2] == 875 or L_172_[2] <= 899 then
			Mon = "Marine Lieutenant"
			Qdata = 1
			Qname = "MarineQuest3"
			NameMon = "Marine Lieutenant"
			PosQ = CFrame["new"](-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
			PosM = CFrame["new"](-2821.3723144531, 75.897277832031, -3070.0891113281)
		elseif L_172_[2] == 900 or L_172_[2] <= 949 then
			Mon = "Marine Captain"
			Qdata = 2
			Qname = "MarineQuest3"
			NameMon = "Marine Captain"
			PosQ = CFrame["new"](-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
			PosM = CFrame["new"](-1861.2310791016, 80.176582336426, -3254.6975097656)
		elseif L_172_[2] == 950 or L_172_[2] <= 974 then
			Mon = "Zombie"
			Qdata = 1
			Qname = "ZombieQuest"
			NameMon = "Zombie"
			PosQ = CFrame["new"](-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146)
			PosM = CFrame["new"](-5657.7768554688, 78.969734191895, -928.68701171875)
		elseif L_172_[2] == 975 or L_172_[2] <= 999 then
			Mon = "Vampire"
			Qdata = 2
			Qname = "ZombieQuest"
			NameMon = "Vampire"
			PosQ = CFrame["new"](-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146)
			PosM = CFrame["new"](-6037.66796875, 32.184638977051, -1340.6597900391)
		elseif L_172_[2] == 1000 or L_172_[2] <= 1049 then
			Mon = "Snow Trooper"
			Qdata = 1
			Qname = "SnowMountainQuest"
			NameMon = "Snow Trooper"
			PosQ = CFrame["new"](609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
			PosM = CFrame["new"](549.14733886719, 427.38705444336, -5563.6987304688)
		elseif L_172_[2] == 1050 or L_172_[2] <= 1099 then
			Mon = "Winter Warrior"
			Qdata = 2
			Qname = "SnowMountainQuest"
			NameMon = "Winter Warrior"
			PosQ = CFrame["new"](609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
			PosM = CFrame["new"](1142.7451171875, 475.63980102539, -5199.4165039062)
		elseif L_172_[2] == 1100 or L_172_[2] <= 1124 then
			Mon = "Lab Subordinate"
			Qdata = 1
			Qname = "IceSideQuest"
			NameMon = "Lab Subordinate"
			PosQ = CFrame["new"](-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578)
			PosM = CFrame["new"](-5707.4716796875, 15.951709747314, -4513.3920898438)
		elseif L_172_[2] == 1125 or L_172_[2] <= 1174 then
			Mon = "Horned Warrior"
			Qdata = 2
			Qname = "IceSideQuest"
			NameMon = "Horned Warrior"
			PosQ = CFrame["new"](-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578)
			PosM = CFrame["new"](-6341.3666992188, 15.951770782471, -5723.162109375)
		elseif L_172_[2] == 1175 or L_172_[2] <= 1199 then
			Mon = "Magma Ninja"
			Qdata = 1
			Qname = "FireSideQuest"
			NameMon = "Magma Ninja"
			PosQ = CFrame["new"](-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			PosM = CFrame["new"](-5449.6728515625, 76.658744812012, -5808.2006835938)
		elseif L_172_[2] == 1200 or L_172_[2] <= 1249 then
			Mon = "Lava Pirate"
			Qdata = 2
			Qname = "FireSideQuest"
			NameMon = "Lava Pirate"
			PosQ = CFrame["new"](-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			PosM = CFrame["new"](-5213.3315429688, 49.737880706787, -4701.451171875)
		elseif L_172_[2] == 1250 or L_172_[2] <= 1274 then
			Mon = "Ship Deckhand"
			Qdata = 1
			Qname = "ShipQuest1"
			NameMon = "Ship Deckhand"
			PosQ = CFrame["new"](1037.80127, 125.092171, 32911.6016)
			PosM = CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375)
			if _G["Level"] and (PosQ["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 500 then
				replicated["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif L_172_[2] == 1275 or L_172_[2] <= 1299 then
			Mon = "Ship Engineer"
			Qdata = 2
			Qname = "ShipQuest1"
			NameMon = "Ship Engineer"
			PosQ = CFrame["new"](1037.80127, 125.092171, 32911.6016)
			PosM = CFrame["new"](919.47863769531, 43.544013977051, 32779.96875)
			if _G["Level"] and (PosQ["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 500 then
				replicated["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif L_172_[2] == 1300 or L_172_[2] <= 1324 then
			Mon = "Ship Steward"
			Qdata = 1
			Qname = "ShipQuest2"
			NameMon = "Ship Steward"
			PosQ = CFrame["new"](968.80957, 125.092171, 33244.125)
			PosM = CFrame["new"](919.43853759766, 129.55599975586, 33436.03515625)
			if _G["Level"] and (PosQ["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 500 then
				replicated["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif L_172_[2] == 1325 or L_172_[2] <= 1349 then
			Mon = "Ship Officer"
			Qdata = 2
			Qname = "ShipQuest2"
			NameMon = "Ship Officer"
			PosQ = CFrame["new"](968.80957, 125.092171, 33244.125)
			PosM = CFrame["new"](1036.0179443359, 181.4390411377, 33315.7265625)
			if _G["Level"] and (PosQ["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 500 then
				replicated["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif L_172_[2] == 1350 or L_172_[2] <= 1374 then
			Mon = "محارب القطب"
			Qdata = 1
			Qname = "FrostQuest"
			NameMon = "محارب القطب"
			PosQ = CFrame["new"](5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909)
			PosM = CFrame["new"](5966.24609375, 62.970020294189, -6179.3828125)
			if _G["Level"] and (PosQ["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 1000 then
				BTP(PosM)
			end
		elseif L_172_[2] == 1375 or L_172_[2] <= 1424 then
			Mon = "المتربص بالثلج"
			Qdata = 2
			Qname = "FrostQuest"
			NameMon = "المتربص بالثلج"
			PosQ = CFrame["new"](5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909)
			PosM = CFrame["new"](5407.0737304688, 69.194374084473, -6880.8803710938)
		elseif L_172_[2] == 1425 or L_172_[2] <= 1449 then
			Mon = "Sea Soldier"
			Qdata = 1
			Qname = "ForgottenQuest"
			NameMon = "Sea Soldier"
			PosQ = CFrame["new"](-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376)
			PosM = CFrame["new"](-3028.2236328125, 64.674514770508, -9775.4267578125)
		elseif L_172_[2] >= 1450 then
			Mon = "Water Fighter"
			Qdata = 2
			Qname = "ForgottenQuest"
			NameMon = "Water Fighter"
			PosQ = CFrame["new"](-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376)
			PosM = CFrame["new"](-3352.9013671875, 285.01556396484, -10534.841796875)
		end
	elseif World3 then
		if L_172_[2] == 1500 or L_172_[2] <= 1524 then
			Mon = "القرصان المليونير"
			Qdata = 1
			Qname = "PiratePortQuest"
			NameMon = "القرصان المليونير"
			PosQ = CFrame["new"](-712.82727050781, 98.577049255371, 5711.9541015625)
			PosM = CFrame["new"](-712.82727050781, 98.577049255371, 5711.9541015625)
		elseif L_172_[2] == 1525 or L_172_[2] <= 1574 then
			Mon = "المليارد بالمسدس"
			Qdata = 2
			Qname = "PiratePortQuest"
			NameMon = "المليارد بالمسدس"
			PosQ = CFrame["new"](-723.43316650391, 147.42906188965, 5931.9931640625)
			PosM = CFrame["new"](-723.43316650391, 147.42906188965, 5931.9931640625)
		elseif L_172_[2] == 1575 or L_172_[2] <= 1599 then
			Mon = "محارب طاقم التنين"
			Qdata = 1
			Qname = "DragonCrewQuest"
			NameMon = "محارب طاقم التنين"
			PosQ = CFrame["new"](6735.12061, 127.107239, -711.085754, -0.474887252, .0169004519, -0.879884422, -0.00234961393, .999787629, .020471612, .880043507, .0117890798, -0.474746734)
			PosM = CFrame["new"](6735.12061, 127.107239, -711.085754, -0.474887252, .0169004519, -0.879884422, -0.00234961393, .999787629, .020471612, .880043507, .0117890798, -0.474746734)
		elseif L_172_[2] == 1600 or L_172_[2] <= 1624 then
			Mon = "رامي طاقم التنين"
			Qname = "DragonCrewQuest"
			Qdata = 2
			NameMon = "رامي طاقم التنين"
			PosQ = CFrame["new"](6955.8974609375, 546.66589355469, 309.04013061523)
			PosM = CFrame["new"](6955.8974609375, 546.66589355469, 309.04013061523)
		elseif L_172_[2] == 1625 or L_172_[2] <= 1649 then
			Mon = "Hydra Enforcer"
			Qname = "VenomCrewQuest"
			Qdata = 1
			NameMon = "Hydra Enforcer"
			PosQ = CFrame["new"](4620.6157226562, 1002.2954711914, 399.08688354492)
			PosM = CFrame["new"](4620.6157226562, 1002.2954711914, 399.08688354492)
		elseif L_172_[2] == 1650 or L_172_[2] <= 1699 then
			Mon = "المهاجم السام"
			Qname = "VenomCrewQuest"
			Qdata = 2
			NameMon = "المهاجم السام"
			PosQ = CFrame["new"](4697.5918, 1100.65137, 946.401978, .579397917, -4.19689783e-10, .81504482, -1.49287818e-10, 1, 6.21053986e-10, -0.81504482, -4.81513662e-10, .579397917)
			PosM = CFrame["new"](4697.5918, 1100.65137, 946.401978, .579397917, -4.19689783e-10, .81504482, -1.49287818e-10, 1, 6.21053986e-10, -0.81504482, -4.81513662e-10, .579397917)
		elseif L_172_[2] == 1700 or L_172_[2] <= 1724 then
			Mon = "كومودور البحرية"
			Qdata = 1
			Qname = "MarineTreeIsland"
			NameMon = "كومودور البحرية"
			PosQ = CFrame["new"](2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, .258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
			PosM = CFrame["new"](2286.0078125, 73.133918762207, -7159.8090820312)
		elseif L_172_[2] == 1725 or L_172_[2] <= 1774 then
			Mon = "الأميرال الخلفي للبحرية"
			NameMon = "الأميرال الخلفي للبحرية"
			Qname = "MarineTreeIsland"
			Qdata = 2
			PosQ = CFrame["new"](2179.98828125, 28.731239318848, -6740.0551757813)
			PosM = CFrame["new"](3656.7736816406, 160.52406311035, -7001.5986328125)
		elseif L_172_[2] == 1775 or L_172_[2] <= 1799 then
			Mon = "غازي رجل السمكة"
			Qdata = 1
			Qname = "DeepForestIsland3"
			NameMon = "غازي رجل السمكة"
			PosQ = CFrame["new"](-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			PosM = CFrame["new"](-10407.526367188, 331.76263427734, -8368.5166015625)
		elseif L_172_[2] == 1800 or L_172_[2] <= 1824 then
			Mon = "قبطان رجل السمكة"
			Qdata = 2
			Qname = "DeepForestIsland3"
			NameMon = "قبطان رجل السمكة"
			PosQ = CFrame["new"](-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			PosM = CFrame["new"](-10994.701171875, 352.38140869141, -9002.1103515625)
		elseif L_172_[2] == 1825 or L_172_[2] <= 1849 then
			Mon = "قرصان الغابة"
			Qdata = 1
			Qname = "DeepForestIsland"
			NameMon = "قرصان الغابة"
			PosQ = CFrame["new"](-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
			PosM = CFrame["new"](-13274.478515625, 332.37814331055, -7769.5805664062)
		elseif L_172_[2] == 1850 or L_172_[2] <= 1899 then
			Mon = "القرصان الأسطوري"
			Qdata = 2
			Qname = "DeepForestIsland"
			NameMon = "القرصان الأسطوري"
			PosQ = CFrame["new"](-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
			PosM = CFrame["new"](-13680.607421875, 501.08154296875, -6991.189453125)
		elseif L_172_[2] == 1900 or L_172_[2] <= 1924 then
			Mon = "قرصان الغابة الاستوائية"
			Qdata = 1
			Qname = "DeepForestIsland2"
			NameMon = "قرصان الغابة الاستوائية"
			PosQ = CFrame["new"](-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			PosM = CFrame["new"](-12256.16015625, 331.73828125, -10485.836914062)
		elseif L_172_[2] == 1925 or L_172_[2] <= 1974 then
			Mon = "قرصان المسكيتير"
			Qdata = 2
			Qname = "DeepForestIsland2"
			NameMon = "قرصان المسكيتير"
			PosQ = CFrame["new"](-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			PosM = CFrame["new"](-13457.904296875, 391.54565429688, -9859.177734375)
		elseif L_172_[2] == 1975 or L_172_[2] <= 1999 then
			Mon = "الهيكل المولود من جديد"
			Qdata = 1
			Qname = "HauntedQuest1"
			NameMon = "الهيكل المولود من جديد"
			PosQ = CFrame["new"](-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
			PosM = CFrame["new"](-8763.7236328125, 165.72299194336, 6159.8618164062)
		elseif L_172_[2] == 2000 or L_172_[2] <= 2024 then
			Mon = "الزومبي الحي"
			Qdata = 2
			Qname = "HauntedQuest1"
			NameMon = "الزومبي الحي"
			PosQ = CFrame["new"](-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
			PosM = CFrame["new"](-10144.131835938, 138.6266784668, 5838.0888671875)
		elseif L_172_[2] == 2025 or L_172_[2] <= 2049 then
			Mon = "الروح الشيطانية"
			Qdata = 1
			Qname = "HauntedQuest2"
			NameMon = "الروح الشيطانية"
			PosQ = CFrame["new"](-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame["new"](-9505.8720703125, 172.10482788086, 6158.9931640625)
		elseif L_172_[2] == 2050 or L_172_[2] <= 2074 then
			Mon = "المومياء الممسوسة"
			Qdata = 2
			Qname = "HauntedQuest2"
			NameMon = "المومياء الممسوسة"
			PosQ = CFrame["new"](-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame["new"](-9582.0224609375, 6.2515273094177, 6205.478515625)
		elseif L_172_[2] == 2075 or L_172_[2] <= 2099 then
			Mon = "كشاف الفول السوداني"
			Qdata = 1
			Qname = "NutsIslandQuest"
			NameMon = "كشاف الفول السوداني"
			PosQ = CFrame["new"](-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame["new"](-2143.2419433594, 47.721984863281, -10029.995117188)
		elseif L_172_[2] == 2100 or L_172_[2] <= 2124 then
			Mon = "رئيس الفول السوداني"
			Qdata = 2
			Qname = "NutsIslandQuest"
			NameMon = "رئيس الفول السوداني"
			PosQ = CFrame["new"](-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame["new"](-1859.3540039062, 38.103168487549, -10422.4296875)
		elseif L_172_[2] == 2125 or L_172_[2] <= 2149 then
			Mon = "طاهي الآيس كريم"
			Qdata = 1
			Qname = "IceCreamIslandQuest"
			NameMon = "طاهي الآيس كريم"
			PosQ = CFrame["new"](-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame["new"](-872.24658203125, 65.81957244873, -10919.95703125)
		elseif L_172_[2] == 2150 or L_172_[2] <= 2199 then
			Mon = "قائد الآيس كريم"
			Qdata = 2
			Qname = "IceCreamIslandQuest"
			NameMon = "قائد الآيس كريم"
			PosQ = CFrame["new"](-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame["new"](-558.06103515625, 112.04895782471, -11290.774414062)
		elseif L_172_[2] == 2200 or L_172_[2] <= 2224 then
			Mon = "صانع البسكويت"
			Qdata = 1
			Qname = "CakeQuest1"
			NameMon = "صانع البسكويت"
			PosQ = CFrame["new"](-2021.32007, 37.7982254, -12028.7295, .957576931, -8.80302053e-08, .288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, .957576931)
			PosM = CFrame["new"](-2374.13671875, 37.798263549805, -12125.30859375)
		elseif L_172_[2] == 2225 or L_172_[2] <= 2249 then
			Mon = "حارس الكعكة"
			Qdata = 2
			Qname = "CakeQuest1"
			NameMon = "حارس الكعكة"
			PosQ = CFrame["new"](-2021.32007, 37.7982254, -12028.7295, .957576931, -8.80302053e-08, .288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, .957576931)
			PosM = CFrame["new"](-1598.3070068359, 43.773197174072, -12244.581054688)
		elseif L_172_[2] == 2250 or L_172_[2] <= 2274 then
			Mon = "طاقم الخبز"
			Qdata = 1
			Qname = "CakeQuest2"
			NameMon = "طاقم الخبز"
			PosQ = CFrame["new"](-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, .250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
			PosM = CFrame["new"](-1887.8099365234, 77.618507385254, -12998.350585938)
		elseif L_172_[2] == 2275 or L_172_[2] <= 2299 then
			Mon = "كبير الخبازين"
			Qdata = 2
			Qname = "CakeQuest2"
			NameMon = "كبير الخبازين"
			PosQ = CFrame["new"](-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, .250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
			PosM = CFrame["new"](-2216.1882324219, 82.884521484375, -12869.293945312)
		elseif L_172_[2] == 2300 or L_172_[2] <= 2324 then
			Mon = "محارب الكاكاو"
			Qdata = 1
			Qname = "ChocQuest1"
			NameMon = "محارب الكاكاو"
			PosQ = CFrame["new"](233.22836303711, 29.876001358032, -12201.233398438)
			PosM = CFrame["new"](-21.553283691406, 80.574996948242, -12352.387695313)
		elseif L_172_[2] == 2325 or L_172_[2] <= 2349 then
			Mon = L_1_[2]({
				"Chocolate Bar Battle";
				"r"
			})
			Qdata = 2
			Qname = "ChocQuest1"
			NameMon = L_1_[2]({
				"Chocolate Bar Battle",
				"r"
			})
			PosQ = CFrame["new"](233.22836303711, 29.876001358032, -12201.233398438)
			PosM = CFrame["new"](582.59057617188, 77.188095092773, -12463.162109375)
		elseif L_172_[2] == 2350 or L_172_[2] <= 2374 then
			Mon = "لص الحلويات"
			Qdata = 1
			Qname = "ChocQuest2"
			NameMon = "لص الحلويات"
			PosQ = CFrame["new"](150.50663757324, 30.693693161011, -12774.502929688)
			PosM = CFrame["new"](165.1884765625, 76.058853149414, -12600.836914062)
		elseif L_172_[2] == 2375 or L_172_[2] <= 2399 then
			Mon = "متمرد الحلوى"
			Qdata = 2
			Qname = "ChocQuest2"
			NameMon = "متمرد الحلوى"
			PosQ = CFrame["new"](150.50663757324, 30.693693161011, -12774.502929688)
			PosM = CFrame["new"](134.86563110352, 77.247680664062, -12876.547851562)
		elseif L_172_[2] == 2400 or L_172_[2] <= 2449 then
			Mon = "Candy Pirate"
			Qdata = 1
			Qname = "CandyQuest1"
			NameMon = "Candy Pirate"
			PosQ = CFrame["new"](-1150.0400390625, 20.378934860229, -14446.334960938)
			PosM = CFrame["new"](-1310.5003662109, 26.016523361206, -14562.404296875)
		elseif L_172_[2] == 2450 or L_172_[2] <= 2474 then
			Mon = "Isle Outlaw"
			Qdata = 1
			Qname = "TikiQuest1"
			NameMon = "Isle Outlaw"
			PosQ = CFrame["new"](-16548.8164, 55.6059914, -172.8125, .213092566, 0, -0.977032006, 0, 1, 0, .977032006, 0, .213092566)
			PosM = CFrame["new"](-16479.900390625, 226.6117401123, -300.31143188477)
		elseif L_172_[2] == 2475 or L_172_[2] <= 2499 then
			Mon = "Island Boy"
			Qdata = 2
			Qname = "TikiQuest1"
			NameMon = "Island Boy"
			PosQ = CFrame["new"](-16548.8164, 55.6059914, -172.8125, .213092566, 0, -0.977032006, 0, 1, 0, .977032006, 0, .213092566)
			PosM = CFrame["new"](-16849.396484375, 192.86505126953, -150.78532409668)
		elseif L_172_[2] == 2500 or L_172_[2] <= 2524 then
			Mon = "Sun-kissed Warrior"
			Qdata = 1
			Qname = "TikiQuest2"
			NameMon = "kissed Warrior"
			PosM = CFrame["new"](-16347, 64, 984)
			PosQ = CFrame["new"](-16538, 55, 1049)
		elseif L_172_[2] == 2525 or L_172_[2] <= 2550 then
			Mon = "Isle Champion"
			Qdata = 2
			Qname = "TikiQuest2"
			NameMon = "Isle Champion"
			PosQ = CFrame["new"](-16541.0215, 57.3082275, 1051.46118, .0410757065, 0, -0.999156058, 0, 1, 0, .999156058, 0, .0410757065)
			PosM = CFrame["new"](-16602.1015625, 130.38734436035, 1087.2456054688)
		elseif L_172_[2] >= 2551 and L_172_[2] <= 2574 then
			Mon = "Serpent Hunter"
			Qdata = 1
			Qname = "TikiQuest3"
			NameMon = "Serpent Hunter"
			PosQ = CFrame["new"](-16679.4785, 176.7473, 1474.3995)
			PosM = CFrame["new"](-16679.4785, 176.7473, 1474.3995)
		elseif L_172_[2] >= 2575 and L_172_[2] <= 2599 then
			Mon = "Skull Slayer"
			Qdata = 2
			Qname = "TikiQuest3"
			NameMon = "Skull Slayer"
			PosQ = CFrame["new"](-16759.5898, 71.2837, 1595.3399)
			PosM = CFrame["new"](-16759.5898, 71.2837, 1595.3399)
		elseif L_172_[2] >= 2600 and L_172_[2] <= 2624 then
			Mon = "Reef Bandit"
			Qdata = 1
			Qname = "SubmergedQuest1"
			NameMon = "Reef Bandit"
			PosQ = CFrame["new"](10882.264, -2086.322, 10034.226)
			PosM = CFrame["new"](10736.6191, -2087.8439, 9338.4882)
		elseif L_172_[2] >= 2625 and L_172_[2] <= 2649 then
			Mon = "Coral Pirate"
			Qdata = 2
			Qname = "SubmergedQuest1"
			NameMon = "Coral Pirate"
			PosQ = CFrame["new"](10882.264, -2086.322, 10034.226)
			PosM = CFrame["new"](10965.1025, -2158.8842, 9177.2597)
		elseif L_172_[2] >= 2650 and L_172_[2] <= 2674 then
			Mon = "Sea Chanter"
			Qdata = 1
			Qname = "SubmergedQuest2"
			NameMon = "Sea Chanter"
			PosQ = CFrame["new"](10882.264, -2086.322, 10034.226)
			PosM = CFrame["new"](10621.0342, -2087.844, 10102.0332)
		elseif L_172_[2] >= 2675 and L_172_[2] <= 2699 then
			Mon = "Ocean Prophet"
			Qdata = 2
			Qname = "SubmergedQuest2"
			NameMon = "Ocean Prophet"
			PosQ = CFrame["new"](10882.264, -2086.322, 10034.226)
			PosM = CFrame["new"](11056.1445, -2001.6717, 10117.4493)
		elseif L_172_[2] >= 2700 and L_172_[2] <= 2724 then
			Mon = "High Disciple"
			Qdata = 1
			Qname = "SubmergedQuest3"
			NameMon = "High Disciple"
			PosQ = CFrame["new"](9636.52441, -1992.19507, 9609.52832)
			PosM = CFrame["new"](9828.087890625, -1940.9089355469, 9693.0634765625)
		elseif L_172_[2] >= 2725 and L_172_[2] <= 2800 then
			Mon = "Grand Devotee"
			Qdata = 2
			Qname = "SubmergedQuest3"
			NameMon = "Grand Devotee"
			PosQ = CFrame["new"](9636.52441, -1992.19507, 9609.52832)
			PosM = CFrame["new"](9557.5849609375, -1928.0404052734, 9859.1826171875)
		end
	end
end
MaterialMon = function()
	local L_173_ = {}
	L_173_[2] = game["Players"]["LocalPlayer"]
	L_173_[1] = L_173_[2]["Character"] and L_173_[2]["Character"]:FindFirstChild("HumanoidRootPart")
	if not L_173_[1] then
		return
	end
	shouldRequestEntrance = function(L_174_arg0, L_175_arg1)
		local L_176_ = {}
		L_176_[4], L_176_[1] = L_174_arg0, L_175_arg1
		L_176_[2] = (L_173_[1]["Position"] - L_176_[4])["Magnitude"]
		if L_176_[2] >= L_176_[1] then
			replicated["Remotes"]["CommF_"]:InvokeServer("requestEntrance", L_176_[4])
		end
	end
	if World1 then
		if SelectMaterial == "أجنحة الملاك" then
			local L_177_ = {}
			MMon = {
				"Shanda",
				"Royal Squad",
				"Royal Soldier";
				"ويسبر",
				"إله الرعد"
			}
			MPos = CFrame["new"](-4698, 845, -1912)
			SP = "Default"
			L_177_[1] = Vector3["new"](-4607.82275, 872.54248, -1667.55688)
			shouldRequestEntrance(L_177_[1], 10000)
		elseif SelectMaterial == L_1_[2]({
			"Leather + Scrap Meta";
			"l"
		}) then
			MMon = {
				"Brute",
				"Pirate"
			}
			MPos = CFrame["new"](-1145, 15, 4350)
			SP = "Default"
		elseif SelectMaterial == "خام الحمم" then
			MMon = {
				"Military Soldier";
				"Military Spy";
				"أميرال الحمم"
			}
			MPos = CFrame["new"](-5815, 84, 8820)
			SP = "Default"
		elseif SelectMaterial == "ذيل السمكة" then
			local L_178_ = {}
			MMon = {
				"Fishman Warrior",
				"Fishman Commando";
				"سيد رجل السمكة"
			}
			MPos = CFrame["new"](61123, 19, 1569)
			SP = "Default"
			L_178_[1] = Vector3["new"](61163.8515625, 5.342342376709, 1819.7841796875)
			shouldRequestEntrance(L_178_[1], 17000)
		end
	elseif World2 then
		if SelectMaterial == L_1_[2]({
			"Leather + Scrap Meta";
			"l"
		}) then
			MMon = {
				"Marine Captain"
			}
			MPos = CFrame["new"](-2010.5059814453, 73.001159667969, -3326.6208496094)
			SP = "Default"
		elseif SelectMaterial == "خام الحمم" then
			MMon = {
				"Magma Ninja",
				"Lava Pirate"
			}
			MPos = CFrame["new"](-5428, 78, -5959)
			SP = "Default"
		elseif SelectMaterial == "الإكتوبلازم" then
			local L_179_ = {}
			MMon = {
				"Ship Deckhand",
				"Ship Engineer",
				"Ship Steward",
				"Ship Officer"
			}
			MPos = CFrame["new"](911.35827636719, 125.95812988281, 33159.5390625)
			SP = "Default"
			L_179_[1] = Vector3["new"](61163.8515625, 5.342342376709, 1819.7841796875)
			shouldRequestEntrance(L_179_[1], 18000)
		elseif SelectMaterial == "القطرة الغامضة" then
			MMon = {
				"Water Fighter"
			}
			MPos = CFrame["new"](-3385, 239, -10542)
			SP = "Default"
		elseif SelectMaterial == "المادة المشعة" then
			MMon = {
				"Factory Staff"
			}
			MPos = CFrame["new"](295, 73, -56)
			SP = "Default"
		elseif SelectMaterial == "ناب مصاص الدماء" then
			MMon = {
				"Vampire"
			}
			MPos = CFrame["new"](-6033, 7, -1317)
			SP = "Default"
		end
	elseif World3 then
		if SelectMaterial == "خردة المعدن" then
			MMon = {
				"قرصان الغابة الاستوائية",
				"قرصان الغابة"
			}
			MPos = CFrame["new"](-11975.78515625, 331.77340698242, -10620.030273438)
			SP = "Default"
		elseif SelectMaterial == "ذيل السمكة" then
			MMon = {
				"غازي رجل السمكة",
				"قبطان رجل السمكة"
			}
			MPos = CFrame["new"](-10993, 332, -8940)
			SP = "Default"
		elseif SelectMaterial == "الكاكاو المستدعى" then
			MMon = {
				L_1_[2]({
					"Chocolate Bar Battle",
					"r"
				}),
				"محارب الكاكاو"
			}
			MPos = CFrame["new"](620.63446044922, 78.936447143555, -12581.369140625)
			SP = "Default"
		elseif SelectMaterial == "قشرة التنين" then
			MMon = {
				"رامي طاقم التنين";
				"محارب طاقم التنين"
			}
			MPos = CFrame["new"](6594, 383, 139)
			SP = "Default"
		elseif SelectMaterial == "البارود" then
			MMon = {
				"المليارد بالمسدس"
			}
			MPos = CFrame["new"](-84.855690002441, 85.620613098145, 6132.0087890625)
			SP = "Default"
		elseif SelectMaterial == "الناب الصغير" then
			MMon = {
				"القرصان الأسطوري"
			}
			MPos = CFrame["new"](-13545, 470, -6917)
			SP = "Default"
		elseif SelectMaterial == "البريق الشيطاني" then
			MMon = {
				"الروح الشيطانية"
			}
			MPos = CFrame["new"](-9495.6806640625, 453.58624267578, 5977.3486328125)
			SP = "Default"
		end
	end
end
QuestNeta = function()
	local L_180_ = {}
	L_180_[2] = QuestCheck()
	return {
		[1] = Mon,
		[2] = Qdata;
		[3] = Qname,
		[4] = PosM;
		[5] = NameMon,
		[6] = PosQ
	}
end
L_1_[16] = (loadstring(game:HttpGet(L_1_[2]({
	"https://raw.githubus",
	"ercontent.com/TBoyRo";
	"blox727/Ui/refs/head";
	"s/main/UiRedzHub.lua"
}))))()
L_1_[38] = L_1_[16]:MakeWindow({
	["Title"] = "Nyther Hub | نايثر هوب";
	["SubTitle"] = "by dev axl,
	["SaveFolder"] = "redz library V5.json"
})
L_1_[87] = Instance["new"]("ScreenGui")
L_1_[87]["Name"] = "لوحة التحكم"
L_1_[87]["Parent"] = game["CoreGui"]
L_1_[41] = Instance["new"]("ImageButton")
L_1_[41]["Size"] = UDim2["new"](0, 50, 0, 50)
L_1_[41]["Position"] = UDim2["new"](.15, 0, .15, 0)
L_1_[41]["Image"] = L_1_[2]({
	"rbxassetid://7367578",
	"7844710"
})
L_1_[41][L_1_[2]({
	"BackgroundTransparen";
	"cy"
})] = 1
L_1_[41]["Parent"] = L_1_[87]
L_1_[82] = Instance["new"]("UICorner")
L_1_[82]["CornerRadius"] = UDim["new"](.5, 0)
L_1_[82]["Parent"] = L_1_[41]
L_1_[25] = Instance["new"]("UIStroke", L_1_[41])
L_1_[25]["Thickness"] = 2
L_1_[25]["ApplyStrokeMode"] = Enum["ApplyStrokeMode"]["Border"]
L_1_[76] = {
	Color3["fromRGB"](255, 0, 0),
	Color3["fromRGB"](255, 127, 0),
	Color3["fromRGB"](255, 255, 0);
	Color3["fromRGB"](0, 255, 0);
	Color3["fromRGB"](0, 255, 255);
	Color3["fromRGB"](0, 0, 255),
	Color3["fromRGB"](139, 0, 255)
}
task["spawn"](function()
	local L_181_ = {}
	L_181_[1] = 1
	while true do
		L_1_[25]["Color"] = L_1_[76][L_181_[1]]
		L_181_[1] = L_181_[1] % #L_1_[76] + 1
		task["wait"](.3)
	end
end)
L_1_[78] = false
L_1_[73] = function(L_182_arg0)
	local L_183_ = {}
	L_183_[3] = L_182_arg0
	L_183_[2] = L_183_[3]["Position"] - L_1_[33]
	L_1_[41]["Position"] = UDim2["new"](L_1_[92]["X"]["Scale"], L_1_[92]["X"]["Offset"] + L_183_[2]["X"], L_1_[92]["Y"]["Scale"], L_1_[92]["Y"]["Offset"] + L_183_[2]["Y"])
end
L_1_[41]["InputBegan"]:Connect(function(L_184_arg0)
	local L_185_ = {}
	L_185_[2] = L_184_arg0
	if L_185_[2]["UserInputType"] == Enum["UserInputType"]["MouseButton1"] or L_185_[2]["UserInputType"] == Enum["UserInputType"]["Touch"] then
		L_1_[78] = true
		L_1_[33] = L_185_[2]["Position"]
		L_1_[92] = L_1_[41]["Position"]
		L_185_[2]["Changed"]:Connect(function()
			if L_185_[2]["UserInputState"] == Enum["UserInputState"]["End"] then
				L_1_[78] = false
			end
		end)
	end
end)
L_1_[41]["InputChanged"]:Connect(function(L_186_arg0)
	local L_187_ = {}
	L_187_[1] = L_186_arg0
	if L_187_[1]["UserInputType"] == Enum["UserInputType"]["MouseMovement"] or L_187_[1]["UserInputType"] == Enum["UserInputType"]["Touch"] then
		L_1_[104] = L_187_[1]
	end
end);
(game:GetService("UserInputService"))["InputChanged"]:Connect(function(L_188_arg0)
	local L_189_ = {}
	L_189_[1] = L_188_arg0
	if L_1_[78] and L_189_[1] == L_1_[104] then
		L_1_[73](L_189_[1])
	end
end)
L_1_[108] = true
L_1_[41]["MouseButton1Click"]:Connect(function()
	L_1_[108] = not L_1_[108]
	L_1_[38]:Minimize(not L_1_[108])
end)
L_1_[93] = {
	["Info"] = L_1_[38]:MakeTab({
		["Title"] = "رئيسي ";
		["Icon"] = "Info"
	});
	["Main"] = L_1_[38]:MakeTab({
		["Title"] = "فارمات";
		["Icon"] = L_1_[2]({
			"rbxassetid://7733960";
			"981"
		})
	}),
	["Settings"] = L_1_[38]:MakeTab({
		["Title"] = "اعدادات",
		["Icon"] = L_1_[2]({
			"rbxassetid://7734053";
			"495"
		})
	});
	["Fish"] = L_1_[38]:MakeTab({
		["Title"] = "صيد سمك";
		["Icon"] = L_1_[2]({
			"rbxassetid://1276640";
			"59821666"
		})
	}),
	["Quests"] = L_1_[38]:MakeTab({
		["Title"] = "مهمات و ايتمات";
		["Icon"] = L_1_[2]({
			"rbxassetid://1307562",
			"2619"
		})
	}),
	["SeaEvent"] = L_1_[38]:MakeTab({
		["Title"] = "البحر";
		["Icon"] = "waves"
	});
	["Race"] = L_1_[38]:MakeTab({
		["Title"] = "ميراج و ريس",
		["Icon"] = L_1_[2]({
			"rbxassetid://1116288",
			"9532"
		})
	}),
	["Prehistoric"] = L_1_[38]:MakeTab({
		["Title"] = "جزيرة تنين";
		["Icon"] = "tent"
	}),
	["Esp"] = L_1_[38]:MakeTab({
		["Title"] = "ستاتس و كشف";
		["Icon"] = L_1_[2]({
			"rbxassetid://7040410";
			"130"
		})
	});
	["Raids"] = L_1_[38]:MakeTab({
		["Title"] = "رايدات و فواكهة";
		["Icon"] = L_1_[2]({
			"rbxassetid://1115598";
			"6081"
		})
	}),
	["Combat"] = L_1_[38]:MakeTab({
		["Title"] = "لاعب",
		["Icon"] = L_1_[2]({
			"rbxassetid://1307565",
			"1575"
		})
	}),
	["Travel"] = L_1_[38]:MakeTab({
		["Title"] = "تنقل";
		["Icon"] = "locate"
	});
	["Shop"] = L_1_[38]:MakeTab({
		["Title"] = "شوب";
		["Icon"] = L_1_[2]({
			"rbxassetid://6031265",
			"976"
		})
	}),
	["Misc"] = L_1_[38]:MakeTab({
		["Title"] = "متنوع",
		["Icon"] = L_1_[2]({
			"rbxassetid://1070978",
			"3577"
		})
	})
}
L_1_[93]["Info"]:AddSection("معلومات")
L_1_[93]["Info"]:AddDiscordInvite({
	["Name"] = "Gravity Hub",
	["Description"] = L_1_[2]({
		"Release Date [12/10/";
		"2025]"
	}),
	["Logo"] = L_1_[2]({
		"rbxassetid://7367578",
		"7844710"
	}),
	["Invite"] = L_1_[2]({
		"https://discord.gg/d",
		"vqDj9tum4"
	})
})
L_1_[93]["Info"]:AddSection("حالة سيرفر حاليا")
Time = L_1_[93]["Info"]:AddParagraph({
	["Title"] = "وقت ";
	["Content"] = ""
})
function UpdateOS()
	local L_190_ = {}
	L_190_[6] = os["date"]("*t")
	L_190_[4] = L_190_[6]["hour"] % 24
	L_190_[3] = L_190_[4] < 12 and "AM" or "PM"
	L_190_[8] = string["format"]("%02i:%02i:%02i %s", (L_190_[4] - 1) % 12 + 1, L_190_[6]["min"], L_190_[6]["sec"], L_190_[3])
	L_190_[11] = string["format"]("%02d/%02d/%04d", L_190_[6]["day"], L_190_[6]["month"], L_190_[6]["year"])
	L_190_[9] = game:GetService("LocalizationService")
	L_190_[1] = game:GetService("Players")
	L_190_[10] = L_190_[1]["LocalPlayer"]
	L_190_[12] = L_190_[10]["Name"]
	if not(getgenv())["countryRegionCode"] then
		L_190_[7], L_190_[2] = pcall(function()
			return L_190_[9]:GetCountryRegionForPlayerAsync(L_190_[10])
		end)
		if L_190_[7] then
			(getgenv())["countryRegionCode"] = L_190_[2]
		else
			(getgenv())["countryRegionCode"] = "Unknown"
		end
	else
		L_190_[2] = (getgenv())["countryRegionCode"]
	end
	Time:SetDesc(L_190_[11] .. (" - " .. (L_190_[8] .. (" [ " .. (L_190_[2] .. " ]")))))
end
spawn(function()
	while true do
		UpdateOS()
		wait(1)
	end
end)
Timmessss = L_1_[93]["Info"]:AddParagraph({
	["Title"] = "الوقت",
	["Content"] = ""
})
function UpdateTime()
	local L_191_ = {}
	L_191_[1] = math["floor"](workspace["DistributedGameTime"] + .5)
	L_191_[3] = math["floor"](L_191_[1] / 3600) % 24
	L_191_[2] = math["floor"](L_191_[1] / 60) % 60
	L_191_[4] = math["floor"](L_191_[1] / 1) % 60
	Timmessss:SetDesc(L_191_[3] .. (" Hour (h) " .. (L_191_[2] .. (" Minute (m) " .. (L_191_[4] .. " Second (s) ")))))
end
spawn(function()
	while true do
		UpdateTime()
		wait(1)
	end
end)
Miragecheck = L_1_[93]["Info"]:AddParagraph({
	["Title"] = "جزيرة ميراج";
	["Content"] = "الحالة: "
})
L_1_[77] = ""
spawn(function()
	pcall(function()
		while true do
			local L_192_ = {}
			wait(1)
			L_192_[3] = game["Workspace"]["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة ميراج") ~= nil
			L_192_[1] = L_192_[3] and "✅️" or "❌️"
			if L_192_[1] ~= L_1_[77] then
				Miragecheck:SetDesc("الحالة: " .. L_192_[1])
				L_1_[77] = L_192_[1]
			end
		end
	end)
end)
Kitsunecheck = L_1_[93]["Info"]:AddParagraph({
	["Title"] = "جزيرة كيتسوني",
	["Content"] = "الحالة: "
})
spawn(function()
	local L_193_ = {}
	L_193_[1] = ""
	while task["wait"](1) do
		local L_194_ = {}
		L_194_[2] = (game:GetService("Workspace"))["Map"]:FindFirstChild("KitsuneIsland") and "✅️" or "❌️"
		if L_194_[2] ~= L_193_[1] then
			Kitsunecheck:SetDesc("الحالة: " .. L_194_[2])
			L_193_[1] = L_194_[2]
		end
	end
end)
CPrehistoriccheck = L_1_[93]["Info"]:AddParagraph({
	["Title"] = "جزيرة ما قبل التاريخ",
	["Desc"] = "الحالة: "
})
task["spawn"](function()
	local L_195_ = {}
	L_195_[2] = ""
	while task["wait"](1) do
		local L_196_ = {}
		L_196_[1] = game["Workspace"]["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة ما قبل التاريخ") and "✅️" or "❌️"
		if L_196_[1] ~= L_195_[2] then
			CPrehistoriccheck:SetDesc("الحالة: " .. L_196_[1])
			L_195_[2] = L_196_[1]
		end
	end
end)
FrozenIsland = L_1_[93]["Info"]:AddParagraph({
	["Title"] = "البعد المجمد";
	["Content"] = "الحالة: "
})
spawn(function()
	local L_197_ = {}
	L_197_[2] = ""
	while wait(1) do
		local L_198_ = {}
		L_198_[2] = game["Workspace"]["_WorldOrigin"]["Locations"]:FindFirstChild("البعد المجمد") and "✅️" or "❌️"
		if L_198_[2] ~= L_197_[2] then
			FrozenIsland:SetDesc("الحالة: " .. L_198_[2])
			L_197_[2] = L_198_[2]
		end
	end
end)
MobCakePrince = L_1_[93]["Info"]:AddParagraph({
	["Title"] = "مقتول في البعد",
	["Content"] = ""
})
spawn(function()
	while wait(1) do
		local L_199_ = {}
		L_199_[2] = (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner")
		L_199_[3] = "Cake Prince: ✅️"
		if string["len"](L_199_[2]) >= 86 then
			local L_200_ = {}
			L_200_[1] = string["sub"](L_199_[2], 39, 41)
			L_199_[3] = "Kill: " .. L_200_[1]
		end
		MobCakePrince:SetDesc(L_199_[3])
	end
end)
CheckRip = L_1_[93]["Info"]:AddParagraph({
	["Title"] = "ريب اندرا";
	["Content"] = "الحالة: "
})
spawn(function()
	local L_201_ = {}
	L_201_[2] = ""
	while wait(1) do
		local L_202_ = {}
		L_202_[1] = (game:GetService("ReplicatedStorage")):FindFirstChild("الشكل الحقيقي لـ rip_indra") or (game:GetService("Workspace"))["Enemies"]:FindFirstChild("rip_indra") and "✅️" or "❌️"
		if L_202_[1] ~= L_201_[2] then
			CheckRip:SetDesc("الحالة: " .. L_202_[1])
			L_201_[2] = L_202_[1]
		end
	end
end)
CheckDoughKing = L_1_[93]["Info"]:AddParagraph({
	["Title"] = "ملك العجين";
	["Content"] = "الحالة: "
})
spawn(function()
	local L_203_ = {}
	L_203_[1] = ""
	while wait(1) do
		local L_204_ = {}
		L_204_[2] = (game:GetService("ReplicatedStorage")):FindFirstChild("ملك العجين") or (game:GetService("Workspace"))["Enemies"]:FindFirstChild("ملك العجين") and "✅️" or "❌️"
		if L_204_[2] ~= L_203_[1] then
			CheckDoughKing:SetDesc("الحالة: " .. L_204_[2])
			L_203_[1] = L_204_[2]
		end
	end
end)
EliteHunter = L_1_[93]["Info"]:AddParagraph({
	["Title"] = "صياد النخبة";
	["Content"] = "الحالة: "
})
spawn(function()
	local L_205_ = {}
	L_205_[1] = ""
	while wait(1) do
		local L_206_ = {}
		L_206_[3] = ((game:GetService("ReplicatedStorage")):FindFirstChild("Diablo") or (game:GetService("ReplicatedStorage")):FindFirstChild("Deandre") or (game:GetService("ReplicatedStorage")):FindFirstChild("Urban") or (game:GetService("Workspace"))["Enemies"]:FindFirstChild("Diablo") or (game:GetService("Workspace"))["Enemies"]:FindFirstChild("Deandre") or (game:GetService("Workspace"))["Enemies"]:FindFirstChild("Urban")) and "✅️" or "❌️"
		L_206_[1] = (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("EliteHunter", "Progress")
		if L_206_[3] ~= L_205_[1] then
			EliteHunter:SetDesc("الحالة: " .. (L_206_[3] .. (" | Killed: " .. L_206_[1])))
			L_205_[1] = L_206_[3]
		end
	end
end)
FM = L_1_[93]["Info"]:AddParagraph({
	["Title"] = "البدر الكامل",
	["Content"] = ""
})
task["spawn"](function()
	while task["wait"](1) do
		local L_207_ = {}
		L_207_[1] = (game:GetService("Lighting"))["Sky"]["MoonTextureId"]
		L_207_[3] = "Moon: 0/5"
		if L_207_[1] == L_1_[2]({
			"http://www.roblox.co";
			"m/asset/?id=97091494";
			"31"
		}) then
			L_207_[3] = "Moon: 5/5"
		elseif L_207_[1] == L_1_[2]({
			"http://www.roblox.co";
			"m/asset/?id=97091490";
			"52"
		}) then
			L_207_[3] = "Moon: 4/5"
		elseif L_207_[1] == L_1_[2]({
			"http://www.roblox.co";
			"m/asset/?id=97091437",
			"33"
		}) then
			L_207_[3] = "Moon: 3/5"
		elseif L_207_[1] == L_1_[2]({
			"http://www.roblox.co";
			"m/asset/?id=97091504",
			"01"
		}) then
			L_207_[3] = "Moon: 2/5"
		elseif L_207_[1] == L_1_[2]({
			"http://www.roblox.co",
			"m/asset/?id=97091496",
			"80"
		}) then
			L_207_[3] = "Moon: 1/5"
		end
		FM:SetDesc(L_207_[3])
	end
end)
LegendarySword = L_1_[93]["Info"]:AddParagraph({
	["Title"] = "السيف الأسطوري",
	["Content"] = "الحالة: "
})
spawn(function()
	local L_208_ = {}
	L_208_[1] = ""
	while wait(1) do
		local L_209_ = {}
		L_209_[1] = L_1_[2]({
			"Not Found Legend Swo",
			"rds"
		})
		if (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer", "1") then
			L_209_[1] = "Shisui"
		elseif (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer", "2") then
			L_209_[1] = "Wando"
		elseif (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer", "3") then
			L_209_[1] = "Saddi"
		end
		LegendarySword:SetDesc(L_209_[1])
	end
end)
StatusBone = L_1_[93]["Info"]:AddParagraph({
	["Title"] = "العظام";
	["Content"] = ""
})
spawn(function()
	while wait(1) do
		StatusBone:SetDesc("لديك: " .. (tostring((game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("Bones", "Check")) .. " Bones"))
	end
end)
L_1_[5] = replicated["Modules"]["Net"][L_1_[2]({
	"RF/SubmarineWorkerSp",
	"eak"
})]
WeaponDropdown = L_1_[93]["Main"]:AddDropdown({
	["Name"] = "اختر السلاح",
	["Options"] = {
		"يد";
		"سيف",
		"ثمرة بلوكس";
		"مسدس"
	},
	["Default"] = "يد";
	["Callback"] = function(L_210_arg0)
		local L_211_ = {}
		L_211_[1] = L_210_arg0
		_G["ChooseWP"] = L_211_[1]
	end
})
spawn(function()
	while task["wait"](.5) do
		pcall(function()
			if _G["ChooseWP"] == "يد" then
				for L_212_forvar0, L_213_forvar1 in pairs(plr["Backpack"]:GetChildren()) do
					local L_214_ = {}
					L_214_[3], L_214_[2] = L_212_forvar0, L_213_forvar1
					if L_214_[2]["ToolTip"] == "يد" then
						_G["SelectWeapon"] = L_214_[2]["Name"]
					end
				end
			elseif _G["ChooseWP"] == "سيف" then
				for L_215_forvar0, L_216_forvar1 in pairs(plr["Backpack"]:GetChildren()) do
					local L_217_ = {}
					L_217_[3], L_217_[2] = L_215_forvar0, L_216_forvar1
					if L_217_[2]["ToolTip"] == "سيف" then
						_G["SelectWeapon"] = L_217_[2]["Name"]
					end
				end
			elseif _G["ChooseWP"] == "مسدس" then
				for L_218_forvar0, L_219_forvar1 in pairs(plr["Backpack"]:GetChildren()) do
					local L_220_ = {}
					L_220_[2], L_220_[1] = L_218_forvar0, L_219_forvar1
					if L_220_[1]["ToolTip"] == "مسدس" then
						_G["SelectWeapon"] = L_220_[1]["Name"]
					end
				end
			elseif _G["ChooseWP"] == "ثمرة بلوكس" then
				for L_221_forvar0, L_222_forvar1 in pairs(plr["Backpack"]:GetChildren()) do
					local L_223_ = {}
					L_223_[1], L_223_[2] = L_221_forvar0, L_222_forvar1
					if L_223_[2]["ToolTip"] == "ثمرة بلوكس" then
						_G["SelectWeapon"] = L_223_[2]["Name"]
					end
				end
			end
		end)
	end
end)
AttackDropdown = L_1_[93]["Main"]:AddDropdown({
	["Name"] = "اختر التأخير السريع";
	["Options"] = {
		"Normal Attack",
		"هجوم سريع",
		"Super Fast Attack";
		"Gravity Attack"
	};
	["Default"] = "هجوم سريع",
	["Callback"] = function(L_224_arg0)
		local L_225_ = {}
		L_225_[2] = L_224_arg0
		_G[L_1_[2]({
			"FastAttackGravity_Mo",
			"de"
		})] = L_225_[2]
	end
})
L_1_[54] = {
	["Normal Attack"] = .25,
	["هجوم سريع"] = .15;
	["Super Fast Attack"] = .05,
	["Gravity Attack"] = .1
}
spawn(function()
	while task["wait"](.1) do
		pcall(function()
			if _G[L_1_[2]({
				"FastAttackGravity_Mo";
				"de"
			})] and L_1_[54][_G[L_1_[2]({
				"FastAttackGravity_Mo",
				"de"
			})]] then
				_G["Fast_Delay"] = L_1_[54][_G[L_1_[2]({
					"FastAttackGravity_Mo";
					"de"
				})]]
			end
		end)
	end
end)
L_1_[93]["Main"]:AddSection({
	"Farming"
})
FarmLevel = L_1_[93]["Main"]:AddToggle({
	["Name"] = "فارم لفل تلقائي",
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_226_arg0)
		local L_227_ = {}
		L_227_[2] = L_226_arg0
		_G["Level"] = L_227_[2]
		if not L_227_[2] then
			alreadyTeleported = false
			teleporting = false
		end
	end
})
L_1_[44] = false
L_1_[133] = false
L_1_[112] = function()
	local L_228_ = {}
	L_228_[3] = plr["Character"]
	if not L_228_[3] then
		return false
	end
	L_228_[4] = L_228_[3]:FindFirstChild("HumanoidRootPart")
	if not L_228_[4] then
		return false
	end
	L_228_[2] = Vector3["new"](11520.801757812, 0, 9829.513671875)
	L_228_[5] = Vector3["new"](L_228_[4]["Position"]["X"], 0, L_228_[4]["Position"]["Z"])
	return (L_228_[5] - L_228_[2])["Magnitude"] < 2000
end
task["spawn"](function()
	while task["wait"](Sec) do
		if _G["Level"] then
			pcall(function()
				local L_229_ = {}
				L_229_[5] = plr["Character"] or plr["CharacterAdded"]:Wait()
				L_229_[6] = L_229_[5]:WaitForChild("HumanoidRootPart")
				L_229_[7] = plr["Data"]["Level"]["Value"]
				L_229_[2] = L_1_[112]()
				L_229_[1] = plr["PlayerGui"]["Main"]["Quest"]
				L_229_[3] = L_229_[1]["Visible"] and L_229_[1]["Container"]["QuestTitle"]["Title"]["Text"] or ""
				if L_229_[7] >= 2600 and (not L_229_[2] and (not L_1_[133] and not L_1_[44])) then
					local L_230_ = {}
					L_1_[133] = true
					L_230_[1] = CFrame["new"](-16269.7041, 25.2288494, 1373.65955, .997390985, 1.47309942e-09, -0.0721890926, -4.00651912e-09, .99999994, -2.51183763e-09, .0721890852, 5.75363091e-10, .997390926)
					L_230_[3] = 0
					repeat
						task["wait"](Sec)
						_tp(L_230_[1])
						L_230_[3] = L_230_[3] + 1
					until not _G["Level"] or (L_229_[6]["Position"] - L_230_[1]["Position"])["Magnitude"] <= 8 or L_230_[3] > 20
					if not _G["Level"] then
						L_1_[133] = false
						return
					end
					task["wait"](1)
					pcall(function()
						local L_231_ = {}
						L_231_[2] = {
							L_1_[2]({
								"TravelToSubmergedIsl",
								"and"
							})
						};
						((game:GetService("ReplicatedStorage"))["Modules"]["Net"]:FindFirstChild(L_1_[2]({
							"RF/SubmarineWorkerSp",
							"eak"
						}))):InvokeServer(unpack(L_231_[2]))
					end)
					L_230_[4] = tick()
					repeat
						local L_232_ = {}
						task["wait"](.5)
						L_232_[1] = L_1_[112]()
						L_232_[2] = (L_229_[6]["Position"] - L_230_[1]["Position"])["Magnitude"] > 50
						if L_232_[1] or L_232_[2] then
							break
						end
					until not _G["Level"] or tick() - L_230_[4] > 15
					task["wait"](2)
					L_1_[44] = true
					L_1_[133] = false
				elseif L_229_[2] or L_229_[7] < 2600 then
					L_1_[44] = true
					L_1_[133] = false
					if L_229_[1]["Visible"] and not string["find"](L_229_[3], (QuestNeta())[5]) then
						replicated["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
						task["wait"](.2)
					end
					if not L_229_[1]["Visible"] then
						local L_233_ = {}
						L_233_[2] = (QuestNeta())[6]
						_tp(L_233_[2])
						task["wait"](2)
						if (L_229_[6]["Position"] - L_233_[2]["Position"])["Magnitude"] <= 10 then
							pcall(function()
								replicated["Remotes"]["CommF_"]:InvokeServer("StartQuest", (QuestNeta())[3], (QuestNeta())[2])
							end)
							task["wait"](1)
						end
					else
						local L_234_ = {}
						L_234_[3] = (QuestNeta())[1]
						L_234_[2] = false
						for L_235_forvar0, L_236_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
							local L_237_ = {}
							L_237_[3], L_237_[1] = L_235_forvar0, L_236_forvar1
							if L_1_[4]["Alive"](L_237_[1]) and L_237_[1]["Name"] == L_234_[3] then
								L_234_[2] = true
								repeat
									task["wait"](Sec)
									_tp(L_237_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 10, 0))
									L_1_[4]["Kill"](L_237_[1], _G["Level"])
								until not _G["Level"] or not L_237_[1]["Parent"] or L_237_[1]["Humanoid"]["Health"] <= 0 or not L_229_[1]["Visible"]
								break
							end
						end
						if not L_234_[2] then
							_tp((QuestNeta())[4])
						end
					end
				end
			end)
		else
			L_1_[133] = false
			L_1_[44] = false
		end
	end
end)
ClosetMons = L_1_[93]["Main"]:AddToggle({
	["Name"] = "فارم أقرب موب";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_238_arg0)
		local L_239_ = {}
		L_239_[2] = L_238_arg0
		_G["AutoFarmNear"] = L_239_[2]
	end
})
spawn(function()
	while wait() do
		pcall(function()
			if _G["AutoFarmNear"] then
				for L_240_forvar0, L_241_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
					local L_242_ = {}
					L_242_[3], L_242_[1] = L_240_forvar0, L_241_forvar1
					if L_242_[1]:FindFirstChild("Humanoid") or L_242_[1]:FindFirstChild("HumanoidRootPart") then
						if L_242_[1]["Humanoid"]["Health"] > 0 then
							repeat
								wait()
								L_1_[4]["Kill"](L_242_[1], _G["AutoFarmNear"])
							until not _G["AutoFarmNear"] or not L_242_[1]["Parent"] or L_242_[1]["Humanoid"]["Health"] <= 0
						end
					end
				end
			end
		end)
	end
end)
FactoryRaids = L_1_[93]["Main"]:AddToggle({
	["Name"] = "ريد فاكتوري تلقائي";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_243_arg0)
		local L_244_ = {}
		L_244_[2] = L_243_arg0
		_G["AutoFactory"] = L_244_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["AutoFactory"] then
				local L_245_ = {}
				L_245_[2] = GetConnectionEnemies("Core")
				if L_245_[2] then
					repeat
						wait()
						EquipWeapon(_G["SelectWeapon"])
						_tp(CFrame["new"](448.46756, 199.356781, -441.389252))
					until L_245_[2]["Humanoid"]["Health"] <= 0 or _G["AutoFactory"] == false
				else
					_tp(CFrame["new"](448.46756, 199.356781, -441.389252))
				end
			end
		end)
	end
end)
CastleRaids = L_1_[93]["Main"]:AddToggle({
	["Name"] = "ريد قراصنة تلقائي",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_246_arg0)
		local L_247_ = {}
		L_247_[1] = L_246_arg0
		_G["AutoRaidCastle"] = L_247_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["AutoRaidCastle"] then
			pcall(function()
				local L_248_ = {}
				L_248_[1] = CFrame["new"](-5496.17432, 313.768921, -2841.53027, .924894512, 7.37058015e-09, .380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, .924894512)
				if ((CFrame["new"](-5539.3115234375, 313.80053710938, -2972.3723144531))["Position"] - Root["Position"])["Magnitude"] <= 500 then
					for L_249_forvar0, L_250_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
						local L_251_ = {}
						L_251_[3], L_251_[2] = L_249_forvar0, L_250_forvar1
						if L_251_[2]:FindFirstChild("HumanoidRootPart") and (L_251_[2]:FindFirstChild("Humanoid") and L_251_[2]["Humanoid"]["Health"] > 0) then
							if L_251_[2]["Name"] then
								if (L_251_[2]["HumanoidRootPart"]["Position"] - Root["Position"])["Magnitude"] <= 2000 then
									repeat
										wait()
										L_1_[4]["Kill"](L_251_[2], _G["AutoRaidCastle"])
									until not _G["AutoRaidCastle"] or not L_251_[2]["Parent"] or L_251_[2]["Humanoid"]["Health"] <= 0 or not workspace["Enemies"]:FindFirstChild(L_251_[2]["Name"])
								end
							end
						end
					end
				else
					local L_252_ = {}
					L_252_[1] = {
						"Galley Pirate",
						"Galley Captain";
						"Raider";
						"Mercenary";
						"Vampire",
						"Zombie";
						"Snow Trooper";
						"Winter Warrior";
						"Lab Subordinate";
						"Horned Warrior",
						"Magma Ninja",
						"Lava Pirate",
						"Ship Deckhand",
						"Ship Engineer",
						"Ship Steward";
						"Ship Officer",
						"محارب القطب";
						"المتربص بالثلج",
						"Sea Soldier";
						"Water Fighter"
					}
					for L_253_forvar0 = 1, #L_252_[1], 1 do
						local L_254_ = {}
						L_254_[1] = L_253_forvar0
						if replicated:FindFirstChild(L_252_[1][L_254_[1]]) then
							for L_255_forvar0, L_256_forvar1 in pairs(replicated:GetChildren()) do
								local L_257_ = {}
								L_257_[1], L_257_[3] = L_255_forvar0, L_256_forvar1
								if table["find"](L_252_[1], L_257_[3]["Name"]) then
									_tp(L_248_[1])
								end
							end
						end
					end
				end
			end)
		end
	end
end)
Ecto = L_1_[93]["Main"]:AddToggle({
	["Name"] = "فارم إكتوبلازم تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_258_arg0)
		local L_259_ = {}
		L_259_[1] = L_258_arg0
		_G["AutoEctoplasm"] = L_259_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["AutoEctoplasm"] then
				local L_260_ = {}
				L_260_[3] = {
					"Ship Deckhand";
					"Ship Engineer";
					"Ship Steward",
					"Ship Officer";
					"محارب القطب"
				}
				L_260_[2] = GetConnectionEnemies(L_260_[3])
				if L_1_[4]["Alive"](L_260_[2]) then
					repeat
						wait()
						L_1_[4]["Kill"](L_260_[2], _G["AutoEctoplasm"])
					until not _G["AutoEctoplasm"] or not L_260_[2]["Parent"] or L_260_[2]["Humanoid"]["Health"] <= 0
				else
					replicated["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](923.21252441406, 126.9760055542, 32852.83203125))
				end
			end
		end)
	end
end)
L_1_[93]["Main"]:AddSection({
	"Christmas Multi"
})
L_1_[125] = function()
	local L_261_ = {}
	L_261_[1] = _G["SelectedGiftMap"]
	pcall(function()
		if plr["PlayerGui"]["Main"]["Quest"]["Visible"] then
			replicated["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
			task["wait"](.5)
		end
		if L_261_[1] == "GiftMap1" then
			local L_262_ = {}
			L_262_[2] = {
				[1] = "requestEntrance",
				[2] = Vector3["new"](3864.6879882812, 6.7369995117188, -1926.2139892578)
			};
			(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_262_[2]))
			task["wait"](2)
		elseif L_261_[1] == "GiftMap2" then
			task["spawn"](function()
				local L_263_ = {}
				L_263_[1] = (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]
				pcall(function()
					L_263_[1]:InvokeServer("SetLastSpawnPoint", "Ship")
				end)
				pcall(function()
					L_263_[1]:InvokeServer("requestEntrance", Vector3["new"](-6508.558, 89.035, -132.84))
				end)
			end)
			task["wait"](2)
		elseif L_261_[1] == "GiftMap3" then
			task["spawn"](function()
				local L_264_ = {}
				L_264_[1] = (game:GetService("Players"))["LocalPlayer"]
				L_264_[3] = L_264_[1]["Character"] and L_264_[1]["Character"]:FindFirstChild("HumanoidRootPart")
				if L_264_[3] then
					L_264_[3]["CFrame"] = CFrame["new"](28286.35546875, 14895.301757812, 102.62469482422)
				end
				if not(game:GetService("Workspace"))["Map"]:FindFirstChild("Temple of Time") and World3 then
					local L_265_ = {}
					L_265_[2] = (game:GetService("ReplicatedStorage")):FindFirstChild("MapStash")
					if L_265_[2] and L_265_[2]:FindFirstChild("Temple of Time") then
						pcall(function()
							L_265_[2]["Temple of Time"]["Parent"] = workspace["Map"]
						end)
					end
				end
				task["wait"](.5)
				_tp(CFrame["new"](28611.2988, 14896.1572, 105.400009, .608379722, 0, .793646157, 0, 1, 0, -0.793646157, 0, .608379722))
				task["wait"](1.5)
				pcall(function()
					local L_266_ = {}
					L_266_[2] = {
						[1] = "RaceV4Progress",
						[2] = "TeleportBack"
					};
					(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_266_[2]))
				end)
				_G["EntranceDone"] = true
			end)
			task["wait"](2)
		end
	end)
end
L_1_[136] = (game:GetService("Players"))["LocalPlayer"]
L_1_[18] = game:GetService("ReplicatedStorage")
L_1_[84] = false
L_1_[40] = false
L_1_[70] = false
_G["MasterAutoLevel"] = false
_G["MasterAutoCandy"] = false
_G["Level"] = false
_G["AutoFarmCandy"] = false
_G["AutoTPAndCollect"] = false
_G["EntranceDone"] = false
_G["IsProcessingRemote"] = false
_G["GiftWarnTime"] = 300
L_1_[139] = function()
	local L_267_ = {}
	L_267_[1] = 7200
	return L_267_[1] - os["time"]() % L_267_[1]
end
L_1_[124] = function()
	local L_268_ = {}
	L_268_[3] = L_1_[136]["Character"]
	if not L_268_[3] then
		return false
	end
	L_268_[2] = L_268_[3]:FindFirstChild("HumanoidRootPart")
	if not L_268_[2] then
		return false
	end
	L_268_[1] = Vector3["new"](11520.801757812, 0, 9829.513671875)
	L_268_[4] = Vector3["new"](L_268_[2]["Position"]["X"], 0, L_268_[2]["Position"]["Z"])
	return (L_268_[4] - L_268_[1])["Magnitude"] < 2000
end
L_1_[93]["Main"]:AddDropdown({
	["Name"] = L_1_[2]({
		"Select Time Stop Far",
		"m (Minutes)"
	});
	["Options"] = {
		"1",
		"2",
		"3",
		"4";
		"5",
		"6";
		"7";
		"8";
		"9";
		"10"
	},
	["Default"] = "5",
	["Callback"] = function(L_269_arg0)
		local L_270_ = {}
		L_270_[2] = L_269_arg0
		_G["GiftWarnTime"] = tonumber(L_270_[2]) * 60
	end
})
L_1_[93]["Main"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Farm Level + Co";
		"llect Gift"
	});
	["Description"] = L_1_[2]({
		"Select Time And Sele",
		"ct Island Gift"
	}),
	["Default"] = false,
	["Callback"] = function(L_271_arg0)
		local L_272_ = {}
		L_272_[1] = L_271_arg0
		_G["MasterAutoLevel"] = L_272_[1]
		if not L_272_[1] then
			_G["Level"] = false
			_G["AutoTPAndCollect"] = false
			_G["EntranceDone"] = false
			_G["IsProcessingRemote"] = false
			pcall(function()
				L_1_[18]["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
			end)
			L_1_[84] = false
			L_1_[40] = false
		end
	end
})
task["spawn"](function()
	local L_273_ = {}
	L_273_[2] = false
	while task["wait"](.5) do
		if _G["MasterAutoLevel"] then
			local L_274_ = {}
			L_274_[2] = L_1_[139]()
			L_274_[5] = _G["GiftWarnTime"] or 300
			L_274_[1] = workspace:FindFirstChild("_WorldOrigin")
			L_274_[4] = L_274_[1] and (L_274_[1]:FindFirstChild("Present") and L_274_[1]["Present"]:FindFirstChild("Box"))
			if L_274_[4] or L_274_[2] <= L_274_[5] then
				_G["Level"] = false
				_G["AutoTPAndCollect"] = true
				if not _G["EntranceDone"] and not _G["IsProcessingRemote"] then
					_G["IsProcessingRemote"] = true
					task["spawn"](function()
						pcall(function()
							L_1_[125]()
						end)
						_G["EntranceDone"] = true
						_G["IsProcessingRemote"] = false
					end)
				end
				if _G["EntranceDone"] then
					pcall(function()
						if L_274_[4] then
							local L_275_ = {}
							L_273_[2] = false
							_tp(L_274_[4]["CFrame"] * CFrame["new"](0, 3, 0))
							L_275_[1] = L_274_[4]:FindFirstChildWhichIsA("ProximityPrompt", true)
							if L_275_[1] then
								fireproximityprompt(L_275_[1])
							end
							keypress(Enum["KeyCode"]["E"])
							task["wait"](.1)
							keyrelease(Enum["KeyCode"]["E"])
						elseif _G["SelectedGiftMap"] and (GiftMaps[_G["SelectedGiftMap"]] and not L_273_[2]) then
							_tp(GiftMaps[_G["SelectedGiftMap"]]["CF"])
							L_273_[2] = true
						end
					end)
				end
			else
				if not _G["Level"] then
					_G["Level"] = true
					_G["AutoTPAndCollect"] = false
					_G["EntranceDone"] = false
					_G["IsProcessingRemote"] = false
					L_273_[2] = false
				end
			end
		end
	end
end)
L_1_[93]["Main"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Farm Candy + Co";
		"llect Gift"
	}),
	["Description"] = L_1_[2]({
		"Select Time And Sele";
		"ct Island Gift"
	});
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_276_arg0)
		local L_277_ = {}
		L_277_[1] = L_276_arg0
		_G["MasterAutoCandy"] = L_277_[1]
		if not L_277_[1] then
			_G["AutoFarmCandy"] = false
			_G["AutoTPAndCollect"] = false
			_G["EntranceDone"] = false
			_G["IsProcessingRemote"] = false
			L_1_[84] = false
			L_1_[40] = false
			pcall(function()
				L_1_[18]["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
			end)
		end
	end
})
task["spawn"](function()
	local L_278_ = {}
	L_278_[2] = false
	while task["wait"](.5) do
		if _G["MasterAutoCandy"] then
			local L_279_ = {}
			L_279_[2] = L_1_[139]()
			L_279_[5] = _G["GiftWarnTime"] or 300
			L_279_[1] = workspace:FindFirstChild("_WorldOrigin")
			L_279_[4] = L_279_[1] and (L_279_[1]:FindFirstChild("Present") and L_279_[1]["Present"]:FindFirstChild("Box"))
			if L_279_[4] or L_279_[2] <= L_279_[5] then
				if _G["AutoFarmCandy"] then
					_G["AutoFarmCandy"] = false
				end
				_G["AutoTPAndCollect"] = true
				if not _G["EntranceDone"] and not _G["IsProcessingRemote"] then
					_G["IsProcessingRemote"] = true
					task["spawn"](function()
						pcall(function()
							L_1_[125]()
						end)
						task["wait"](1)
						_G["EntranceDone"] = true
						_G["IsProcessingRemote"] = false
					end)
				end
				if _G["EntranceDone"] then
					pcall(function()
						if L_279_[4] then
							local L_280_ = {}
							L_278_[2] = false
							_tp(L_279_[4]["CFrame"] * CFrame["new"](0, 3, 0))
							L_280_[1] = L_279_[4]:FindFirstChildWhichIsA("ProximityPrompt", true)
							if L_280_[1] then
								fireproximityprompt(L_280_[1])
							end
							keypress(Enum["KeyCode"]["E"])
							task["wait"](.1)
							keyrelease(Enum["KeyCode"]["E"])
						elseif _G["SelectedGiftMap"] and (GiftMaps[_G["SelectedGiftMap"]] and not L_278_[2]) then
							_tp(GiftMaps[_G["SelectedGiftMap"]]["CF"])
							L_278_[2] = true
						end
					end)
				end
			else
				_G["AutoTPAndCollect"] = false
				_G["EntranceDone"] = false
				_G["IsProcessingRemote"] = false
				L_278_[2] = false
				if not _G["AutoFarmCandy"] then
					_G["AutoFarmCandy"] = true
				end
			end
		end
	end
end)
task["spawn"](function()
	while task["wait"](.1) do
		if _G["MasterAutoCandy"] and _G["AutoFarmCandy"] then
			pcall(function()
				local L_281_ = {}
				L_281_[3] = L_1_[136]["Character"] or L_1_[136]["CharacterAdded"]:Wait()
				L_281_[4] = L_281_[3]:WaitForChild("HumanoidRootPart")
				L_281_[1] = L_1_[136]["Data"]["Level"]["Value"]
				L_281_[5] = L_1_[124]()
				if L_281_[1] >= 2600 and (not L_281_[5] and (not L_1_[40] and not L_1_[84])) then
					local L_282_ = {}
					L_1_[40] = true
					L_282_[3] = CFrame["new"](-16269.7041, 25.2288494, 1373.65955)
					L_282_[1] = 0
					repeat
						task["wait"](.5)
						_tp(L_282_[3])
						L_282_[1] = L_282_[1] + 1
						if not _G["AutoFarmCandy"] or not _G["MasterAutoCandy"] then
							break
						end
					until (L_281_[4]["Position"] - L_282_[3]["Position"])["Magnitude"] <= 8 or L_282_[1] > 20
					if _G["AutoFarmCandy"] and _G["MasterAutoCandy"] then
						task["wait"](1)
						pcall(function()
							local L_283_ = {}
							L_283_[1] = {
								L_1_[2]({
									"TravelToSubmergedIsl";
									"and"
								})
							};
							(L_1_[18]["Modules"]["Net"]:FindFirstChild(L_1_[2]({
								"RF/SubmarineWorkerSp";
								"eak"
							}))):InvokeServer(unpack(L_283_[1]))
						end)
						task["wait"](2)
						L_1_[84] = true
					end
					L_1_[40] = false
				elseif L_281_[5] or L_281_[1] < 2600 then
					local L_284_ = {}
					L_1_[84] = true
					L_1_[40] = false
					L_284_[3] = nil
					L_284_[2] = 1000
					for L_285_forvar0, L_286_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
						local L_287_ = {}
						L_287_[1], L_287_[2] = L_285_forvar0, L_286_forvar1
						if L_287_[2]:FindFirstChild("Humanoid") and (L_287_[2]["Humanoid"]["Health"] > 0 and L_287_[2]:FindFirstChild("HumanoidRootPart")) then
							local L_288_ = {}
							L_288_[2] = (L_281_[4]["Position"] - L_287_[2]["HumanoidRootPart"]["Position"])["Magnitude"]
							if L_288_[2] < L_284_[2] then
								L_284_[2] = L_288_[2]
								L_284_[3] = L_287_[2]
							end
						end
					end
					if L_284_[3] then
						repeat
							task["wait"]()
							if not _G["AutoFarmCandy"] or not _G["MasterAutoCandy"] then
								break
							end
							_tp(L_284_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 10, 0))
							L_1_[4]["Kill"](L_284_[3], _G["AutoFarmCandy"])
						until not _G["AutoFarmCandy"] or not L_284_[3]["Parent"] or L_284_[3]["Humanoid"]["Health"] <= 0 or (L_281_[4]["Position"] - L_284_[3]["HumanoidRootPart"]["Position"])["Magnitude"] > 1100
					else
						local L_289_ = {}
						L_289_[2] = (QuestNeta())[4]
						if L_289_[2] and _G["AutoFarmCandy"] then
							_tp(L_289_[2])
						end
					end
				end
			end)
		else
			L_1_[40] = false
			L_1_[84] = false
		end
	end
end)
L_1_[93]["Main"]:AddSection({
	"Christmas Event"
})
Countdown = L_1_[93]["Main"]:AddParagraph({
	["Title"] = "هدايا الكريسماس";
	["Content"] = ""
})
L_1_[79] = 7200
L_1_[127] = function()
	local L_290_ = {}
	L_290_[1] = os["time"]()
	L_290_[3] = L_290_[1] % L_1_[79]
	return L_1_[79] - L_290_[3]
end
L_1_[135] = function()
	local L_291_ = {}
	L_291_[2] = L_1_[127]()
	if L_291_[2] <= 0 then
		Countdown:SetDesc("Ready!")
		return
	end
	L_291_[3] = math["floor"](L_291_[2] / 3600)
	L_291_[4] = math["floor"]((L_291_[2] % 3600) / 60)
	L_291_[1] = L_291_[2] % 60
	Countdown:SetDesc(string["format"]("%02d:%02d:%02d", L_291_[3], L_291_[4], L_291_[1]))
end
task["spawn"](function()
	while true do
		L_1_[135]()
		task["wait"](1)
	end
end)
L_1_[93]["Main"]:AddToggle({
	["Name"] = "فارم كاندي تلقائي",
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_292_arg0)
		local L_293_ = {}
		L_293_[1] = L_292_arg0
		_G["AutoFarmCandy"] = L_293_[1]
		if not L_293_[1] then
			L_1_[84] = false
			L_1_[40] = false
		end
	end
})
L_1_[109] = false
L_1_[107] = false
spawn(function()
	while wait(Sec) do
		if _G["AutoFarmCandy"] then
			pcall(function()
				local L_294_ = {}
				L_294_[1] = L_1_[136]["Character"] or L_1_[136]["CharacterAdded"]:Wait()
				L_294_[5] = L_294_[1]:WaitForChild("HumanoidRootPart")
				L_294_[2] = L_1_[136]["Data"]["Level"]["Value"]
				L_294_[4] = L_1_[124]()
				if L_294_[2] >= 2600 and (not L_294_[4] and (not L_1_[107] and not L_1_[109])) then
					local L_295_ = {}
					L_1_[107] = true
					L_295_[3] = CFrame["new"](-16269.7041, 25.2288494, 1373.65955, .997390985, 1.47309942e-09, -0.0721890926, -4.00651912e-09, .99999994, -2.51183763e-09, .0721890852, 5.75363091e-10, .997390926)
					L_295_[4] = 0
					repeat
						task["wait"](Sec)
						_tp(L_295_[3])
						L_295_[4] = L_295_[4] + 1
					until not _G["AutoFarmCandy"] or (L_294_[5]["Position"] - L_295_[3]["Position"])["Magnitude"] <= 8 or L_295_[4] > 20
					if not _G["AutoFarmCandy"] then
						L_1_[107] = false
						return
					end
					task["wait"](1)
					pcall(function()
						local L_296_ = {}
						L_296_[1] = {
							L_1_[2]({
								"TravelToSubmergedIsl";
								"and"
							})
						};
						((game:GetService("ReplicatedStorage"))["Modules"]["Net"]:FindFirstChild(L_1_[2]({
							"RF/SubmarineWorkerSp",
							"eak"
						}))):InvokeServer(unpack(L_296_[1]))
					end)
					L_295_[2] = tick()
					repeat
						local L_297_ = {}
						task["wait"](.5)
						L_297_[3] = L_1_[124]()
						L_297_[1] = (L_294_[5]["Position"] - L_295_[3]["Position"])["Magnitude"] > 50
						if L_297_[3] or L_297_[1] then
							break
						end
					until not _G["AutoFarmCandy"] or tick() - L_295_[2] > 15
					task["wait"](2)
					L_1_[109] = true
					L_1_[107] = false
				elseif L_294_[4] or L_294_[2] < 2600 then
					local L_298_ = {}
					L_1_[109] = true
					L_1_[107] = false
					L_298_[3] = nil
					L_298_[2] = 1000
					for L_299_forvar0, L_300_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
						local L_301_ = {}
						L_301_[2], L_301_[3] = L_299_forvar0, L_300_forvar1
						if L_301_[3]:FindFirstChild("Humanoid") and (L_301_[3]["Humanoid"]["Health"] > 0 and L_301_[3]:FindFirstChild("HumanoidRootPart")) then
							local L_302_ = {}
							L_302_[1] = (L_294_[5]["Position"] - L_301_[3]["HumanoidRootPart"]["Position"])["Magnitude"]
							if L_302_[1] < L_298_[2] then
								L_298_[2] = L_302_[1]
								L_298_[3] = L_301_[3]
							end
						end
					end
					if L_298_[3] then
						repeat
							task["wait"]()
							_tp(L_298_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 10, 0))
							L_1_[4]["Kill"](L_298_[3], _G["AutoFarmCandy"])
						until not _G["AutoFarmCandy"] or not L_298_[3]["Parent"] or L_298_[3]["Humanoid"]["Health"] <= 0 or (L_294_[5]["Position"] - L_298_[3]["HumanoidRootPart"]["Position"])["Magnitude"] > 1100
					else
						local L_303_ = {}
						L_303_[2] = (QuestNeta())[4]
						if L_303_[2] then
							_tp(L_303_[2])
						end
					end
				end
			end)
		end
	end
end)
L_1_[58] = CFrame["new"](521.277832, 9.30464935, -3339.21753, .563576221, 0, .82606405, 0, 1, 0, -0.82606405, 0, .563576221)
L_1_[28] = CFrame["new"](-5405.59082, 8.06555939, 1451.85144, -0.987686276, 0, .156449571, 0, 1, 0, -0.156449571, 0, -0.987686276)
L_1_[94] = CFrame["new"](-1093.90479, 59.8575134, -14520.4658, -1, 0, 0, 0, 1, 0, 0, 0, -1)
L_1_[6] = {
	["GiftMap1"] = L_1_[58],
	["GiftMap2"] = L_1_[28],
	["GiftMap3"] = L_1_[94]
}
L_1_[93]["Main"]:AddDropdown({
	["Name"] = "اختر جزيرة الهدية";
	["Options"] = {
		"GiftMap1",
		"GiftMap2",
		"GiftMap3"
	},
	["Callback"] = function(L_304_arg0)
		local L_305_ = {}
		L_305_[1] = L_304_arg0
		_G["SelectedGiftMap"] = L_305_[1]
	end
})
L_1_[93]["Main"]:AddToggle({
	["Name"] = L_1_[2]({
		"Teleport To Island G";
		"ift"
	});
	["Default"] = false;
	["Callback"] = function(L_306_arg0)
		local L_307_ = {}
		L_307_[2] = L_306_arg0
		_G["AutoTP_Gift"] = L_307_[2]
	end
})
task["spawn"](function()
	while task["wait"](1) do
		if _G["AutoTP_Gift"] and _G["SelectedGiftMap"] then
			local L_308_ = {}
			L_308_[1] = L_1_[6][_G["SelectedGiftMap"]]
			if L_308_[1] then
				_tp(L_308_[1])
			end
		end
	end
end)
L_1_[93]["Main"]:AddToggle({
	["Name"] = "تلبورت هدايا تلقائي",
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_309_arg0)
		local L_310_ = {}
		L_310_[1] = L_309_arg0
		_G["AutoTPGift"] = L_310_[1]
	end
})
L_1_[93]["Main"]:AddToggle({
	["Name"] = "جمع هدايا تلقائي",
	["Description"] = "Select Map",
	["Default"] = false;
	["Callback"] = function(L_311_arg0)
		local L_312_ = {}
		L_312_[1] = L_311_arg0
		_G["AutoTPAndCollect"] = L_312_[1]
	end
})
task["spawn"](function()
	local L_313_ = {}
	L_313_[2] = false
	while task["wait"](.3) do
		local L_314_ = {}
		if not _G["AutoTPAndCollect"] then
			L_313_[2] = false
			continue
		end
		L_314_[3] = game["Players"]["LocalPlayer"]
		L_314_[7] = L_314_[3]["Character"]
		L_314_[1] = L_314_[7] and L_314_[7]:FindFirstChild("HumanoidRootPart")
		if not L_314_[1] then
			continue
		end
		L_314_[5] = workspace:FindFirstChild("_WorldOrigin")
		if not L_314_[5] then
			continue
		end
		L_314_[2] = L_314_[5]:FindFirstChild("Present")
		L_314_[6] = L_314_[2] and L_314_[2]:FindFirstChild("Box")
		if L_314_[6] then
			L_313_[2] = false
			_tp(L_314_[6]["CFrame"] * CFrame["new"](0, 3, 0))
			task["wait"](.2)
			for L_315_forvar0 = 1, 3, 1 do
				keypress(Enum["KeyCode"]["E"])
				task["wait"](.1)
				keyrelease(Enum["KeyCode"]["E"])
			end
		elseif not L_313_[2] and _G["SelectedGiftMap"] then
			local L_316_ = {}
			L_316_[1] = L_1_[6][_G["SelectedGiftMap"]]
			if L_316_[1] then
				_tp(L_316_[1])
				L_313_[2] = true
			end
		end
	end
end)
L_1_[93]["Main"]:AddToggle({
	["Name"] = "غاتشا شتاء تلقائي";
	["Description"] = "100 Candy";
	["Default"] = false;
	["Callback"] = function(L_317_arg0)
		local L_318_ = {}
		L_318_[2] = L_317_arg0
		_G["AutoGachaCandy"] = L_318_[2]
	end
})
task["spawn"](function()
	while task["wait"](1) do
		if _G["AutoGachaCandy"] then
			pcall(function()
				local L_319_ = {}
				L_319_[1] = {
					[1] = "Cousin";
					[2] = "F2PXmasWeek2Gacha25"
				};
				(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_319_[1]))
			end)
		end
	end
end)
L_1_[93]["Main"]:AddToggle({
	["Name"] = "فتح هدايا تلقائي";
	["Default"] = false,
	["Callback"] = function(L_320_arg0)
		local L_321_ = {}
		L_321_[2] = L_320_arg0
		_G["AutoOpenGift"] = L_321_[2]
	end
})
task["spawn"](function()
	while task["wait"](.5) do
		if not _G["AutoOpenGift"] then
			continue
		end
		pcall(function()
			local L_322_ = {}
			L_322_[3] = (game:GetService("Players"))["LocalPlayer"]
			L_322_[1] = L_322_[3]["Character"]
			L_322_[2] = L_322_[3]["Backpack"]
			if not L_322_[1] or not L_322_[2] then
				return
			end
			for L_323_forvar0, L_324_forvar1 in pairs(L_322_[1]:GetChildren()) do
				local L_325_ = {}
				L_325_[1], L_325_[2] = L_323_forvar0, L_324_forvar1
				if L_325_[2]:IsA("Tool") and L_325_[2]["Name"]:find("Holiday Gift") then
					local L_326_ = {}
					L_326_[1] = L_325_[2]:FindFirstChild("ConsumeEvent")
					if L_326_[1] then
						L_326_[1]:InvokeServer("Use")
					end
					return
				end
			end
			for L_327_forvar0, L_328_forvar1 in pairs(L_322_[2]:GetChildren()) do
				local L_329_ = {}
				L_329_[2], L_329_[3] = L_327_forvar0, L_328_forvar1
				if L_329_[3]:IsA("Tool") and L_329_[3]["Name"]:find("Holiday Gift") then
					local L_330_ = {}
					L_329_[3]["Parent"] = L_322_[1]
					task["wait"](.15)
					L_330_[2] = L_329_[3]:FindFirstChild("ConsumeEvent")
					if L_330_[2] then
						L_330_[2]:InvokeServer("Use")
					end
					return
				end
			end
		end)
	end
end)
L_1_[93]["Main"]:AddDropdown({
	["Name"] = "اختر الهدية",
	["Options"] = {
		L_1_[2]({
			"Uncommon Holiday Gif",
			"t"
		});
		"Rare Holiday Gift";
		L_1_[2]({
			"Legendary Holiday Gi",
			"ft"
		});
		L_1_[2]({
			"Mythical Holiday Gif";
			"t"
		})
	};
	["Default"] = "";
	["Callback"] = function(L_331_arg0)
		local L_332_ = {}
		L_332_[1] = L_331_arg0
		_G["SelectedGift"] = L_332_[1]
	end
})
L_1_[93]["Main"]:AddToggle({
	["Name"] = "إخراج هدايا تلقائي";
	["Default"] = false,
	["Callback"] = function(L_333_arg0)
		local L_334_ = {}
		L_334_[2] = L_333_arg0
		_G["AutoUnStoreGift"] = L_334_[2]
	end
})
spawn(function()
	while task["wait"](1) do
		if _G["AutoUnStoreGift"] and _G["SelectedGift"] then
			pcall(function()
				local L_335_ = {}
				L_335_[1] = {
					[1] = "UnstoreHolidayGift",
					[2] = _G["SelectedGift"]
				};
				(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_335_[1]))
			end)
		end
	end
end)
AutoStoreGift = L_1_[93]["Main"]:AddToggle({
	["Name"] = "تخزين هدايا تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_336_arg0)
		local L_337_ = {}
		L_337_[2] = L_336_arg0
		_G["AutoStoreGift"] = L_337_[2]
	end
})
spawn(function()
	while wait() do
		if _G["AutoStoreGift"] then
			pcall(function()
				local L_338_ = {}
				L_338_[1] = {
					[1] = "StoreHolidayGift"
				};
				(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_338_[1]))
			end)
		end
	end
end)
L_1_[93]["Main"]:AddSection({
	"Christmas Shop"
})
L_1_[93]["Main"]:AddButton({
	["Name"] = "شراء 200 فراقمنت",
	["Description"] = "50 Candy",
	["Callback"] = function()
		pcall(function()
			local L_339_ = {}
			L_339_[1] = {
				[1] = "Candies";
				[2] = "Buy";
				[3] = 2;
				[4] = 1
			};
			(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_339_[1]))
		end)
	end
})
L_1_[93]["Main"]:AddButton({
	["Name"] = "شراء 500 فراقمنت",
	["Description"] = "100 Candy",
	["Callback"] = function()
		pcall(function()
			local L_340_ = {}
			L_340_[2] = {
				[1] = "Candies";
				[2] = "Buy";
				[3] = 2,
				[4] = 2
			};
			(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_340_[2]))
		end)
	end
})
L_1_[93]["Main"]:AddButton({
	["Name"] = L_1_[2]({
		"Buy x2 EXP ( 15 Minu",
		"tes )"
	});
	["Description"] = "75 Candy",
	["Callback"] = function()
		pcall(function()
			local L_341_ = {}
			L_341_[1] = {
				[1] = "Candies",
				[2] = "Buy";
				[3] = 1,
				[4] = 1
			};
			(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_341_[1]))
		end)
	end
})
L_1_[93]["Main"]:AddButton({
	["Name"] = "شراء استرداد ستاتس";
	["Description"] = "75 Candy",
	["Callback"] = function()
		pcall(function()
			local L_342_ = {}
			L_342_[1] = {
				[1] = "Candies";
				[2] = "Buy";
				[3] = 1,
				[4] = 2
			};
			(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_342_[1]))
		end)
	end
})
L_1_[93]["Main"]:AddButton({
	["Name"] = "شراء ريرول ريس",
	["Description"] = "100 Candy",
	["Callback"] = function()
		pcall(function()
			local L_343_ = {}
			L_343_[2] = {
				[1] = "Candies";
				[2] = "Buy";
				[3] = 1,
				[4] = 3
			};
			(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_343_[2]))
		end)
	end
})
L_1_[93]["Main"]:AddSection({
	"Christmas Items"
})
L_1_[93]["Main"]:AddButton({
	["Name"] = "شراء قبعة الإلف",
	["Description"] = "250 Candy";
	["Callback"] = function()
		pcall(function()
			local L_344_ = {}
			L_344_[1] = {
				[1] = "Candies";
				[2] = "Buy",
				[3] = 3;
				[4] = 1
			};
			(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_344_[1]))
		end)
	end
})
L_1_[93]["Main"]:AddButton({
	["Name"] = "شراء قبعة سانتا";
	["Description"] = "500 Candy",
	["Callback"] = function()
		pcall(function()
			local L_345_ = {}
			L_345_[2] = {
				[1] = "Candies",
				[2] = "Buy",
				[3] = 3,
				[4] = 2
			};
			(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_345_[2]))
		end)
	end
})
L_1_[93]["Main"]:AddButton({
	["Name"] = "شراء عربة الثلج",
	["Description"] = "1000 Candy",
	["Callback"] = function()
		pcall(function()
			local L_346_ = {}
			L_346_[2] = {
				[1] = "Candies";
				[2] = "Buy";
				[3] = 3,
				[4] = 3
			};
			(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_346_[2]))
		end)
	end
})
L_1_[93]["Main"]:AddSection({
	"Collect Chest"
})
ChestTW = L_1_[93]["Main"]:AddToggle({
	["Name"] = "فارم صندوق تلقائي",
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_347_arg0)
		local L_348_ = {}
		L_348_[2] = L_347_arg0
		_G["AutoFarmChest"] = L_348_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["AutoFarmChest"] then
			pcall(function()
				local L_349_ = {}
				L_349_[7] = game:GetService("CollectionService")
				L_349_[2] = game:GetService("Players")
				L_349_[5] = L_349_[2]["LocalPlayer"]
				L_349_[3] = L_349_[5]["Character"] or L_349_[5]["CharacterAdded"]:Wait()
				if not L_349_[3] then
					return
				end
				L_349_[9] = (L_349_[3]:GetPivot())["Position"]
				L_349_[8] = L_349_[7]:GetTagged("_ChestTagged")
				L_349_[4], L_349_[6] = math["huge"], nil
				for L_350_forvar0 = 1, #L_349_[8], 1 do
					local L_351_ = {}
					L_351_[1] = L_350_forvar0
					L_351_[2] = L_349_[8][L_351_[1]]
					L_351_[4] = ((L_351_[2]:GetPivot())["Position"] - L_349_[9])["Magnitude"]
					if not SelectedIsland or L_351_[2]:IsDescendantOf(SelectedIsland) then
						if not L_351_[2]:GetAttribute("IsDisabled") and L_351_[4] < L_349_[4] then
							L_349_[4] = L_351_[4]
							L_349_[6] = L_351_[2]
						end
					end
				end
				if L_349_[6] then
					_tp(L_349_[6]:GetPivot())
				end
			end)
		end
	end
end)
ChestBP = L_1_[93]["Main"]:AddToggle({
	["Name"] = "تجاوز الصندوق تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_352_arg0)
		local L_353_ = {}
		L_353_[1] = L_352_arg0
		_G["AutoChestBP"] = L_353_[1]
		if L_353_[1] then
			local L_354_ = {}
			L_354_[5] = (game:GetService("Players"))["LocalPlayer"]
			L_354_[1] = false
			L_354_[3] = {}
			L_354_[2] = true
			L_354_[8] = function()
				if not L_354_[5]["Character"] then
					L_354_[5]["CharacterAdded"]:Wait()
				end
				L_354_[5]["Character"]:WaitForChild("HumanoidRootPart")
				return L_354_[5]["Character"]
			end
			L_354_[6] = function()
				local L_355_ = {}
				if L_354_[2] then
					L_354_[2] = false
					for L_356_forvar0, L_357_forvar1 in pairs(game:GetDescendants()) do
						local L_358_ = {}
						L_358_[2], L_358_[3] = L_356_forvar0, L_357_forvar1
						if L_358_[3]["Name"]:find("Chest") and L_358_[3]["ClassName"] == "Part" then
							table["insert"](L_354_[3], L_358_[3])
						end
					end
				end
				L_355_[3] = {}
				for L_359_forvar0, L_360_forvar1 in pairs(L_354_[3]) do
					local L_361_ = {}
					L_361_[3], L_361_[2] = L_359_forvar0, L_360_forvar1
					if L_361_[2]:FindFirstChild("TouchInterest") then
						table["insert"](L_355_[3], L_361_[2])
					end
				end
				L_355_[2] = (L_354_[8]())["LowerTorso"]
				table["sort"](L_355_[3], function(L_362_arg0, L_363_arg1)
					local L_364_ = {}
					L_364_[1], L_364_[3] = L_362_arg0, L_363_arg1
					return (L_355_[2]["Position"] - L_364_[1]["Position"])["Magnitude"] < (L_355_[2]["Position"] - L_364_[3]["Position"])["Magnitude"]
				end)
				return L_355_[3]
			end
			L_354_[4] = function()
				if L_354_[1] then
					return
				end
				L_354_[1] = true
				task["spawn"](function()
					while _G["AutoChestBP"] and (L_354_[5]["Character"] and L_354_[5]["Character"]["Parent"]) do
						local L_365_ = {}
						L_365_[2] = L_354_[6]()
						if #L_365_[2] > 0 then
							local L_366_ = {}
							L_366_[2] = (L_354_[8]())["HumanoidRootPart"]
							L_366_[2]["CFrame"] = L_365_[2][1]["CFrame"]
						end
						task["wait"](.1)
					end
					L_354_[1] = false
				end)
			end
			L_354_[5]["CharacterAdded"]:Connect(function()
				L_354_[8]()
				task["wait"](.5)
				if _G["AutoChestBP"] then
					L_354_[4]()
				end
			end)
			L_354_[4]()
		end
	end
})
StopI = L_1_[93]["Main"]:AddToggle({
	["Name"] = "إيقاف الأيتمات";
	["Description"] = "",
	["Default"] = true,
	["Callback"] = function(L_367_arg0)
		local L_368_ = {}
		L_368_[1] = L_367_arg0
		_G["StopWhenChalice"] = L_368_[1]
	end
})
spawn(function()
	while wait(.2) do
		if _G["StopWhenChalice"] and (_G["AutoFarmChest"] or _G["AutoChestBP"]) then
			pcall(function()
				if GetBP("God's Chalice") or GetBP("Sweet Chalice") or GetBP("Fist of Darkness") then
					_G["AutoFarmChest"] = false
					_G["AutoChestBP"] = false
				end
			end)
		end
	end
end)
L_1_[93]["Main"]:AddSection({
	"Collect Berry"
})
Berry = L_1_[93]["Main"]:AddToggle({
	["Name"] = "فارم بيري تلقائي";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_369_arg0)
		local L_370_ = {}
		L_370_[2] = L_369_arg0
		_G["AutoBerry"] = L_370_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["AutoBerry"] then
			local L_371_ = {}
			L_371_[7] = game:GetService("CollectionService")
			L_371_[1] = game:GetService("Players")
			L_371_[3] = L_371_[1]["LocalPlayer"]
			L_371_[5] = L_371_[7]:GetTagged("BerryBush")
			L_371_[6], L_371_[4] = math["huge"]
			for L_372_forvar0 = 1, #L_371_[5], 1 do
				local L_373_ = {}
				L_373_[1] = L_372_forvar0
				L_373_[2] = L_371_[5][L_373_[1]]
				for L_374_forvar0, L_375_forvar1 in pairs(L_373_[2]:GetAttributes()) do
					local L_376_ = {}
					L_376_[1], L_376_[2] = L_374_forvar0, L_375_forvar1
					if not BerryArray or table["find"](BerryArray, L_376_[2]) then
						_tp(L_373_[2]["Parent"]:GetPivot())
						for L_377_forvar0 = 1, #L_371_[5], 1 do
							local L_378_ = {}
							L_378_[1] = L_377_forvar0
							L_378_[2] = L_371_[5][L_378_[1]]
							for L_379_forvar0, L_380_forvar1 in pairs(L_378_[2]:GetChildren()) do
								local L_381_ = {}
								L_381_[2], L_381_[1] = L_379_forvar0, L_380_forvar1
								if not BerryArray or table["find"](BerryArray, L_381_[1]) then
									_tp(L_381_[1]["WorldPivot"])
									fireproximityprompt(L_381_[1]["ProximityPrompt"], math["huge"])
								end
							end
						end
					end
				end
			end
		end
	end
end)
BerryH = L_1_[93]["Main"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Farm Berry + Ho",
		"p"
	}),
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_382_arg0)
		local L_383_ = {}
		L_383_[1] = L_382_arg0
		_G["AutoBerryH"] = L_383_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["AutoBerryH"] then
			local L_384_ = {}
			L_384_[5] = game:GetService("CollectionService")
			L_384_[1] = game:GetService("Players")
			L_384_[4] = L_384_[1]["LocalPlayer"]
			L_384_[3] = L_384_[5]:GetTagged("BerryBush")
			if #L_384_[3] == 0 then
				local L_385_ = {}
				L_385_[3] = game:GetService("TeleportService")
				L_385_[1] = {}
				L_385_[5], L_385_[2] = pcall(function()
					L_385_[1] = (game:GetService("HttpService")):JSONDecode(game:HttpGet(L_1_[2]({
						"https://games.roblox";
						".com/v1/games/"
					}) .. (game["PlaceId"] .. L_1_[2]({
						"/servers/Public?sort",
						"Order=Asc&limit=100"
					}))))
				end)
				if L_385_[5] and L_385_[1]["data"] then
					for L_386_forvar0, L_387_forvar1 in pairs(L_385_[1]["data"]) do
						local L_388_ = {}
						L_388_[2], L_388_[1] = L_386_forvar0, L_387_forvar1
						if L_388_[1]["playing"] < L_388_[1]["maxPlayers"] and L_388_[1]["id"] ~= game["JobId"] then
							L_385_[3]:TeleportToPlaceInstance(game["PlaceId"], L_388_[1]["id"], L_384_[4])
							break
						end
					end
				end
			else
				for L_389_forvar0 = 1, #L_384_[3], 1 do
					local L_390_ = {}
					L_390_[1] = L_389_forvar0
					L_390_[3] = L_384_[3][L_390_[1]]
					for L_391_forvar0, L_392_forvar1 in pairs(L_390_[3]:GetAttributes()) do
						local L_393_ = {}
						L_393_[3], L_393_[2] = L_391_forvar0, L_392_forvar1
						if not BerryArray or table["find"](BerryArray, L_393_[2]) then
							_tp(L_390_[3]["Parent"]:GetPivot())
							for L_394_forvar0 = 1, #L_384_[3], 1 do
								local L_395_ = {}
								L_395_[1] = L_394_forvar0
								L_395_[3] = L_384_[3][L_395_[1]]
								for L_396_forvar0, L_397_forvar1 in pairs(L_395_[3]:GetChildren()) do
									local L_398_ = {}
									L_398_[2], L_398_[3] = L_396_forvar0, L_397_forvar1
									if not BerryArray or table["find"](BerryArray, L_398_[3]["Name"]) then
										_tp(L_398_[3]["WorldPivot"])
										fireproximityprompt(L_398_[3]["ProximityPrompt"], math["huge"])
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)
L_1_[93]["Main"]:AddSection({
	"Farm Mob"
})
if World1 then
	L_1_[93]["Main"]:AddDropdown({
		["Name"] = "اختر الموب",
		["Default"] = false,
		["Options"] = {
			"Bandit";
			"Monkey";
			"Gorilla";
			"Pirate";
			"Brute";
			"Desert Bandit";
			"Desert Officer",
			"Snow Bandit";
			"Snowman";
			"Chief Petty Officer";
			"Sky Bandit",
			"Dark Master",
			"Toga Warrior";
			"Gladiator",
			"Military Soldier";
			"Military Spy",
			"Fishman Warrior";
			"Fishman Commando",
			"God's Guard";
			"Shanda",
			"Royal Squad";
			"Royal Soldier",
			"Galley Pirate";
			"Galley Captain"
		},
		["Callback"] = function(L_399_arg0)
			local L_400_ = {}
			L_400_[1] = L_399_arg0;
			(getgenv())["SelectMob"] = L_400_[1]
		end
	})
end
if World2 then
	L_1_[93]["Main"]:AddDropdown({
		["Name"] = "اختر الموب";
		["Default"] = false;
		["Options"] = {
			"Raider";
			"Mercenary";
			"قرصان البجعة";
			"Factory Staff",
			"Marine Lieutenant",
			"Marine Captain",
			"Zombie";
			"Vampire";
			"Snow Trooper",
			"Winter Warrior";
			"Lab Subordinate";
			"Horned Warrior",
			"Magma Ninja",
			"Lava Pirate";
			"Ship Deckhand";
			"Ship Engineer";
			"Ship Steward";
			"Ship Officer";
			"محارب القطب";
			"المتربص بالثلج";
			"Sea Soldier";
			"Water Fighter"
		};
		["Callback"] = function(L_401_arg0)
			local L_402_ = {}
			L_402_[2] = L_401_arg0;
			(getgenv())["SelectMob"] = L_402_[2]
		end
	})
end
if World3 then
	L_1_[93]["Main"]:AddDropdown({
		["Name"] = "اختر الموب",
		["Default"] = false,
		["Options"] = {
			"القرصان المليونير";
			"محارب طاقم التنين",
			"رامي طاقم التنين";
			"ابنة الجزيرة",
			"Giant Islander";
			"كومودور البحرية";
			"الأميرال الخلفي للبحرية",
			"غازي رجل السمكة",
			"قبطان رجل السمكة",
			"قرصان الغابة",
			"القرصان الأسطوري",
			"قرصان الغابة الاستوائية",
			"قرصان المسكيتير";
			"الهيكل المولود من جديد",
			"الزومبي الحي",
			"الروح الشيطانية";
			"المومياء الممسوسة";
			"كشاف الفول السوداني";
			"رئيس الفول السوداني",
			"طاهي الآيس كريم",
			"قائد الآيس كريم";
			"صانع البسكويت";
			"حارس الكعكة";
			"طاقم الخبز";
			"كبير الخبازين";
			"محارب الكاكاو",
			L_1_[2]({
				"Chocolate Bar Battle";
				"r"
			}),
			"لص الحلويات",
			"متمرد الحلوى",
			"Candy Pirate",
			"Snow Demon",
			"Isle Outlaw",
			"Island Boy",
			"Sun-kissed Warrior",
			"Isle Champion"
		};
		["Callback"] = function(L_403_arg0)
			local L_404_ = {}
			L_404_[1] = L_403_arg0;
			(getgenv())["SelectMob"] = L_404_[1]
		end
	})
end
L_1_[93]["Main"]:AddToggle({
	["Name"] = "قتل موب تلقائي";
	["Default"] = false,
	["Callback"] = function(L_405_arg0)
		local L_406_ = {}
		L_406_[2] = L_405_arg0
		_G["AutoKillMob"] = L_406_[2]
	end
})
spawn(function()
	while wait() do
		if _G["AutoKillMob"] then
			pcall(function()
				if (game:GetService("Workspace"))["Enemies"]:FindFirstChild((getgenv())["SelectMob"]) then
					for L_407_forvar0, L_408_forvar1 in pairs((game:GetService("Workspace"))["Enemies"]:GetChildren()) do
						local L_409_ = {}
						L_409_[3], L_409_[1] = L_407_forvar0, L_408_forvar1
						if L_409_[1]["Name"] == (getgenv())["SelectMob"] then
							if L_409_[1]:FindFirstChild("Humanoid") and (L_409_[1]:FindFirstChild("HumanoidRootPart") and L_409_[1]["Humanoid"]["Health"] > 0) then
								repeat
									(game:GetService("RunService"))["Heartbeat"]:Wait()
									L_1_[4]["Kill"](L_409_[1], _G["AutoKillMob"])
								until not _G["AutoKillMob"] or not L_409_[1]["Parent"] or L_409_[1]["Humanoid"]["Health"] <= 0
							end
						end
					end
				end
			end)
		end
	end
end)
L_1_[93]["Main"]:AddSection({
	"Farm All Island"
})
L_1_[65] = {
	["القراصنة"] = {
		["CFrame"] = CFrame["new"](-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, .667371571, -1.09201515e-07, -0.744724929),
		["Mobs"] = {
			"Bandit"
		}
	};
	["Marine"] = {
		["CFrame"] = CFrame["new"](-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, .667371571, -1.09201515e-07, -0.744724929),
		["Mobs"] = {
			"Trainee"
		}
	};
	["Jungle"] = {
		["CFrame"] = CFrame["new"](-1600, 36, 150);
		["Mobs"] = {
			"Monkey";
			"Gorilla"
		}
	};
	["Pirate Village"] = {
		["CFrame"] = CFrame["new"](-1100, 4, 3850),
		["Mobs"] = {
			"Pirate",
			"Brute"
		}
	};
	["Desert"] = {
		["CFrame"] = CFrame["new"](1090, 7, 4370);
		["Mobs"] = {
			"Desert Bandit";
			"Desert Officer"
		}
	};
	["Frozen Village"] = {
		["CFrame"] = CFrame["new"](1200, 28, -1500);
		["Mobs"] = {
			"Snow Bandit";
			"Snowman"
		}
	};
	["Marine Fortress"] = {
		["CFrame"] = CFrame["new"](-4500, 20, 4250),
		["Mobs"] = {
			"Chief Petty Officer"
		}
	};
	["Skylands Lower"] = {
		["CFrame"] = CFrame["new"](-5000, 700, -2500),
		["Mobs"] = {
			"Sky Bandit",
			"Dark Master"
		}
	};
	["Prison"] = {
		["CFrame"] = CFrame["new"](4875, 6, 735),
		["Mobs"] = {
			"Prisoner",
			"Dangerous Prisoner"
		}
	};
	["Colosseum"] = {
		["CFrame"] = CFrame["new"](-1500, 60, -290),
		["Mobs"] = {
			"Toga Warrior";
			"Gladiator"
		}
	},
	["Magma Village"] = {
		["CFrame"] = CFrame["new"](-5200, 8, 8400);
		["Mobs"] = {
			"Military Soldier";
			"Military Spy"
		}
	};
	["Underwater City"] = {
		["CFrame"] = CFrame["new"](61160, 5, 1819),
		["Mobs"] = {
			"Fishman Warrior";
			"Fishman Commando"
		}
	};
	["Skylands Upper"] = {
		["CFrame"] = CFrame["new"](-7880, 5545, -380);
		["Mobs"] = {
			"Shanda";
			"Royal Squad";
			"Royal Soldier"
		}
	}
}
L_1_[32] = {
	["Kingdom of Rose"] = {
		["CFrame"] = CFrame["new"](-321, 73, 297);
		["Mobs"] = {
			"Raider";
			"Mercenary",
			"قرصان البجعة";
			"Factory Staff"
		}
	},
	["Green Zone"] = {
		["CFrame"] = CFrame["new"](-2447, 73, -3211);
		["Mobs"] = {
			"Marine Lieutenant",
			"Marine Captain"
		}
	};
	["Graveyard Island"] = {
		["CFrame"] = CFrame["new"](-9515, 142, 5536);
		["Mobs"] = {
			"Zombie";
			"Vampire"
		}
	},
	["Snow Mountain"] = {
		["CFrame"] = CFrame["new"](561, 401, -5306),
		["Mobs"] = {
			"Snow Trooper";
			"Winter Warrior"
		}
	};
	["Hot and Cold (Cold)"] = {
		["CFrame"] = CFrame["new"](-6026, 15, -5062),
		["Mobs"] = {
			"Lab Subordinate",
			"Horned Warrior"
		}
	},
	["Hot and Cold (Hot)"] = {
		["CFrame"] = CFrame["new"](-5478, 15, -5240);
		["Mobs"] = {
			"Magma Ninja",
			"Lava Pirate"
		}
	},
	["Cursed Ship"] = {
		["CFrame"] = CFrame["new"](902, 126, 33071),
		["Mobs"] = {
			"Ship Deckhand",
			"Ship Engineer",
			"Ship Steward",
			"Ship Officer"
		}
	},
	["Ice Castle"] = {
		["CFrame"] = CFrame["new"](6137, 294, -6747);
		["Mobs"] = {
			"محارب القطب",
			"المتربص بالثلج"
		}
	};
	["Forgotten Island"] = {
		["CFrame"] = CFrame["new"](-3043, 238, -10191);
		["Mobs"] = {
			"Sea Soldier",
			"Water Fighter"
		}
	}
}
L_1_[98] = {
	["Port Town"] = {
		["CFrame"] = CFrame["new"](-290, 44, 5450);
		["Mobs"] = {
			"القرصان المليونير";
			"المليارد بالمسدس"
		}
	};
	["Hydra Island"] = {
		["CFrame"] = CFrame["new"](5228, 604, 345),
		["Mobs"] = {
			"محارب طاقم التنين";
			"رامي طاقم التنين";
			"ابنة الجزيرة";
			"Giant Islander",
			"Training Dummy"
		}
	};
	["Great Tree"] = {
		["CFrame"] = CFrame["new"](2682, 1682, -7190),
		["Mobs"] = {
			"كومودور البحرية",
			"الأميرال الخلفي للبحرية"
		}
	};
	["Floating Turtle"] = {
		["CFrame"] = CFrame["new"](-12000, 331, -8500),
		["Mobs"] = {
			"قرصان الغابة",
			"القرصان الأسطوري",
			"قرصان الغابة الاستوائية";
			"قرصان المسكيتير",
			"غازي رجل السمكة",
			"قبطان رجل السمكة"
		}
	},
	["Haunted Castle"] = {
		["CFrame"] = CFrame["new"](-9515, 142, 5536),
		["Mobs"] = {
			"الهيكل المولود من جديد";
			"الزومبي الحي";
			"الروح الشيطانية",
			"المومياء الممسوسة"
		}
	};
	["Sea of Treats"] = {
		["CFrame"] = CFrame["new"](-1145, 13, -14450),
		["Mobs"] = {
			"كشاف الفول السوداني";
			"رئيس الفول السوداني";
			"قائد الآيس كريم";
			"صانع البسكويت";
			"حارس الكعكة",
			"طاقم الخبز",
			"كبير الخبازين",
			"محارب الكاكاو";
			L_1_[2]({
				"Chocolate Bar Battle",
				"r"
			}),
			"لص الحلويات";
			"متمرد الحلوى"
		}
	};
	["Tiki Outpost"] = {
		["CFrame"] = CFrame["new"](-16200, 90, -17300);
		["Mobs"] = {
			"Isle Outlaw";
			"Island Boy",
			"Sun-kissed Warrior",
			"Isle Champion"
		}
	},
	["Submerged Island"] = {
		["CFrame"] = CFrame["new"](-3200, -10, -10000);
		["Mobs"] = {
			"Reef Bandit";
			"Coral Pirate",
			"Sea Chanter";
			"Ocean Prophet";
			"High Disciple",
			"Grand Devotee"
		}
	}
}
if World1 then
	L_1_[93]["Main"]:AddDropdown({
		["Name"] = "اختر الجزيرة",
		["Options"] = {
			"القراصنة",
			"Marine",
			"Jungle";
			"Pirate Village",
			"Desert";
			"Frozen Village";
			"Marine Fortress";
			"Skylands Lower",
			"Prison",
			"Colosseum",
			"Magma Village";
			"Underwater City",
			"Skylands Upper"
		};
		["Callback"] = function(L_410_arg0)
			local L_411_ = {}
			L_411_[1] = L_410_arg0
			_G["SelectIsland"] = L_411_[1]
		end
	})
end
if World2 then
	L_1_[93]["Main"]:AddDropdown({
		["Name"] = "اختر الجزيرة",
		["Options"] = {
			"Kingdom of Rose",
			"Green Zone",
			"Graveyard Island";
			"Snow Mountain";
			"Hot and Cold (Cold)",
			"Hot and Cold (Hot)",
			"Cursed Ship",
			"Ice Castle";
			"Forgotten Island"
		},
		["Callback"] = function(L_412_arg0)
			local L_413_ = {}
			L_413_[1] = L_412_arg0
			_G["SelectIsland"] = L_413_[1]
		end
	})
end
if World3 then
	L_1_[93]["Main"]:AddDropdown({
		["Name"] = "اختر الجزيرة";
		["Options"] = {
			"Port Town";
			"Hydra Island";
			"Great Tree";
			"Floating Turtle",
			"Haunted Castle";
			"Sea of Treats";
			"Tiki Outpost";
			"Submerged Island"
		},
		["Callback"] = function(L_414_arg0)
			local L_415_ = {}
			L_415_[2] = L_414_arg0
			_G["SelectIsland"] = L_415_[2]
		end
	})
end
if World1 then
	L_1_[60] = L_1_[65]
elseif World2 then
	L_1_[60] = L_1_[32]
elseif World3 then
	L_1_[60] = L_1_[98]
end
L_1_[93]["Main"]:AddToggle({
	["Name"] = "فارم كل الجزر",
	["Default"] = false;
	["Callback"] = function(L_416_arg0)
		local L_417_ = {}
		L_417_[1] = L_416_arg0
		_G["AutoFarmIsland"] = L_417_[1]
	end
})
task["spawn"](function()
	while task["wait"](.2) do
		local L_418_ = {}
		if not _G["AutoFarmIsland"] then
			continue
		end
		if not _G["SelectIsland"] then
			continue
		end
		if not L_1_[60] then
			continue
		end
		L_418_[1] = L_1_[60][_G["SelectIsland"]]
		if not L_418_[1] then
			continue
		end
		L_418_[3] = L_418_[1]["CFrame"]
		L_418_[2] = L_418_[1]["Mobs"]
		L_418_[5] = {}
		for L_419_forvar0, L_420_forvar1 in ipairs(L_418_[2]) do
			local L_421_ = {}
			L_421_[3], L_421_[1] = L_419_forvar0, L_420_forvar1
			L_418_[5][L_421_[1]] = true
		end
		L_418_[4] = false
		for L_422_forvar0, L_423_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
			local L_424_ = {}
			L_424_[3], L_424_[2] = L_422_forvar0, L_423_forvar1
			if L_418_[5][L_424_[2]["Name"]] and (L_424_[2]:FindFirstChild("Humanoid") and (L_424_[2]:FindFirstChild("HumanoidRootPart") and L_424_[2]["Humanoid"]["Health"] > 0)) then
				L_418_[4] = true
				repeat
					task["wait"]()
					_tp(L_424_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 10, 0))
					L_1_[4]["Kill"](L_424_[2], true)
				until not _G["AutoFarmIsland"] or not L_424_[2]["Parent"] or L_424_[2]["Humanoid"]["Health"] <= 0
			end
		end
		if not L_418_[4] then
			_tp(L_418_[3])
		end
	end
end)
L_1_[93]["Main"]:AddSection({
	"Farm Elite Hunter"
})
Process = L_1_[93]["Main"]:AddParagraph({
	["Title"] = "بروسيس إليت";
	["Content"] = ""
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			Process:SetDesc("Elite Procress :  " .. L_1_[18]["Remotes"]["CommF_"]:InvokeServer("EliteHunter", "Progress"))
		end)
	end
end)
EliteHunter = L_1_[93]["Main"]:AddParagraph({
	["Title"] = "سبون إليت";
	["Content"] = "الحالة: "
})
spawn(function()
	local L_425_ = {}
	L_425_[2] = ""
	while wait(1) do
		local L_426_ = {}
		L_426_[3] = ((game:GetService("ReplicatedStorage")):FindFirstChild("Diablo") or (game:GetService("ReplicatedStorage")):FindFirstChild("Deandre") or (game:GetService("ReplicatedStorage")):FindFirstChild("Urban") or (game:GetService("Workspace"))["Enemies"]:FindFirstChild("Diablo") or (game:GetService("Workspace"))["Enemies"]:FindFirstChild("Deandre") or (game:GetService("Workspace"))["Enemies"]:FindFirstChild("Urban")) and "✅️" or "❌️"
		L_426_[1] = (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("EliteHunter", "Progress")
		if L_426_[3] ~= L_425_[2] then
			EliteHunter:SetDesc("الحالة: " .. (L_426_[3] .. (" | Killed: " .. L_426_[1])))
			L_425_[2] = L_426_[3]
		end
	end
end)
EliteQ = L_1_[93]["Main"]:AddToggle({
	["Name"] = "فارم إليت تلقائي";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_427_arg0)
		local L_428_ = {}
		L_428_[1] = L_427_arg0
		_G["FarmEliteHunt"] = L_428_[1]
	end
})
spawn(function()
	while wait(1) do
		pcall(function()
			if _G["FarmEliteHunt"] then
				local L_429_ = {}
				L_429_[2] = L_1_[136]["PlayerGui"]["Main"]["Quest"]
				L_429_[3] = L_429_[2]["Container"]["QuestTitle"]["Title"]["Text"]
				if not L_429_[2]["Visible"] then
					local L_430_ = {}
					L_430_[2] = L_1_[18]["Remotes"]["CommF_"]:InvokeServer("EliteHunter")
					if L_430_[2] == nil or string["find"](L_430_[2], "Cooldown") then
						wait(10)
						return
					end
					task["wait"](1)
				else
					local L_431_ = {}
					L_431_[2] = nil
					for L_432_forvar0, L_433_forvar1 in pairs({
						"Diablo";
						"Urban",
						"Deandre"
					}) do
						local L_434_ = {}
						L_434_[2], L_434_[3] = L_432_forvar0, L_433_forvar1
						if string["find"](L_429_[3], L_434_[3]) then
							L_431_[2] = L_434_[3]
							break
						end
					end
					if L_431_[2] then
						local L_435_ = {}
						L_435_[2] = nil
						for L_436_forvar0, L_437_forvar1 in pairs(L_1_[18]:GetChildren()) do
							local L_438_ = {}
							L_438_[2], L_438_[3] = L_436_forvar0, L_437_forvar1
							if L_438_[3]["Name"] == L_431_[2] and L_438_[3]:FindFirstChild("HumanoidRootPart") then
								L_435_[2] = L_438_[3]
								break
							end
						end
						for L_439_forvar0, L_440_forvar1 in pairs(Enemies:GetChildren()) do
							local L_441_ = {}
							L_441_[1], L_441_[3] = L_439_forvar0, L_440_forvar1
							if L_441_[3]["Name"] == L_431_[2] and L_1_[4]["Alive"](L_441_[3]) then
								L_435_[2] = L_441_[3]
								break
							end
						end
						if L_435_[2] and L_435_[2]:FindFirstChild("HumanoidRootPart") then
							_tp(L_435_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0))
							repeat
								wait()
								L_1_[4]["Kill"](L_435_[2], _G["FarmEliteHunt"])
							until not _G["FarmEliteHunt"] or not L_435_[2]["Parent"] or L_435_[2]["Humanoid"]["Health"] <= 0 or not L_429_[2]["Visible"]
						else
							wait(5)
						end
					else
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
					end
				end
			end
		end)
	end
end)
EliteH = L_1_[93]["Main"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Farm Elite + Ho";
		"p"
	}),
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_442_arg0)
		local L_443_ = {}
		L_443_[2] = L_442_arg0
		_G["FarmEliteH"] = L_443_[2]
	end
})
L_1_[35] = function()
	local L_444_ = {}
	L_444_[5] = game:GetService("HttpService")
	L_444_[3] = game:GetService("TeleportService")
	L_444_[2] = L_1_[2]({
		"https://games.roblox",
		".com/v1/games/"
	})
	L_444_[1] = game["PlaceId"]
	L_444_[4] = {}
	L_444_[8] = ""
	L_444_[7] = false
	repeat
		local L_445_ = {}
		L_445_[3], L_445_[2] = pcall(function()
			return game:HttpGet(L_444_[2] .. (L_444_[1] .. (L_1_[2]({
				"/servers/Public?sort",
				"Order=Asc&limit=100&",
				"cursor="
			}) .. L_444_[8])))
		end)
		if L_445_[3] and L_445_[2] then
			local L_446_ = {}
			L_446_[2] = L_444_[5]:JSONDecode(L_445_[2])
			if L_446_[2]["data"] then
				for L_447_forvar0, L_448_forvar1 in pairs(L_446_[2]["data"]) do
					local L_449_ = {}
					L_449_[2], L_449_[1] = L_447_forvar0, L_448_forvar1
					if L_449_[1]["playing"] < L_449_[1]["maxPlayers"] and L_449_[1]["id"] ~= game["JobId"] then
						L_444_[7] = true
						L_444_[3]:TeleportToPlaceInstance(L_444_[1], L_449_[1]["id"])
						break
					end
				end
				L_444_[8] = L_446_[2]["nextPageCursor"] or ""
			end
		end
	until not L_444_[8] or L_444_[7]
end
spawn(function()
	while task["wait"](1) do
		pcall(function()
			if _G["FarmEliteH"] then
				local L_450_ = {}
				L_450_[2] = L_1_[136]["PlayerGui"]["Main"]["Quest"]
				L_450_[1] = L_450_[2]["Container"]["QuestTitle"]["Title"]["Text"]
				if not L_450_[2]["Visible"] then
					local L_451_ = {}
					L_451_[1] = L_1_[18]["Remotes"]["CommF_"]:InvokeServer("EliteHunter")
					if L_451_[1] == nil or string["find"](L_451_[1], "Cooldown") then
						L_1_[35]()
						return
					end
					task["wait"](1)
				else
					local L_452_ = {}
					L_452_[1] = nil
					for L_453_forvar0, L_454_forvar1 in pairs({
						"Diablo",
						"Urban",
						"Deandre"
					}) do
						local L_455_ = {}
						L_455_[3], L_455_[1] = L_453_forvar0, L_454_forvar1
						if string["find"](L_450_[1], L_455_[1]) then
							L_452_[1] = L_455_[1]
							break
						end
					end
					if L_452_[1] then
						local L_456_ = {}
						L_456_[1] = nil
						for L_457_forvar0, L_458_forvar1 in pairs(L_1_[18]:GetChildren()) do
							local L_459_ = {}
							L_459_[1], L_459_[2] = L_457_forvar0, L_458_forvar1
							if L_459_[2]["Name"] == L_452_[1] and L_459_[2]:FindFirstChild("HumanoidRootPart") then
								L_456_[1] = L_459_[2]
								break
							end
						end
						for L_460_forvar0, L_461_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
							local L_462_ = {}
							L_462_[3], L_462_[1] = L_460_forvar0, L_461_forvar1
							if L_462_[1]["Name"] == L_452_[1] and L_1_[4]["Alive"](L_462_[1]) then
								L_456_[1] = L_462_[1]
								break
							end
						end
						if L_456_[1] and L_456_[1]:FindFirstChild("HumanoidRootPart") then
							_tp(L_456_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0))
							repeat
								wait()
								L_1_[4]["Kill"](L_456_[1], _G["FarmEliteH"])
							until not _G["FarmEliteH"] or not L_456_[1]["Parent"] or L_456_[1]["Humanoid"]["Health"] <= 0 or not L_450_[2]["Visible"]
						else
							task["wait"](5)
							L_1_[35]()
						end
					else
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
						task["wait"](1)
						L_1_[35]()
					end
				end
			end
		end)
	end
end)
L_1_[93]["Main"]:AddSection({
	"Farm Rip Indra"
})
L_1_[93]["Main"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Attack Rip Indr",
		"a"
	}),
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_463_arg0)
		local L_464_ = {}
		L_464_[1] = L_463_arg0
		_G["AutoRipIngay"] = L_464_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["AutoRipIngay"] then
				local L_465_ = {}
				L_465_[2] = GetConnectionEnemies("rip_indra")
				if not GetWP("Dark Dagger") or not GetIn("Valkyrie") and L_465_[2] then
					repeat
						wait()
						L_1_[4]["Kill"](L_465_[2], _G["AutoRipIngay"])
					until not _G["AutoRipIngay"] or not L_465_[2]["Parent"] or L_465_[2]["Humanoid"]["Health"] <= 0
				else
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-5097.93164, 316.447021, -3142.66602, -0.405007899, -4.31682743e-08, .914313197, -1.90943332e-08, 1, 3.8755779e-08, -0.914313197, -1.76180437e-09, -0.405007899))
					wait(.1)
					_tp(CFrame["new"](-5344.822265625, 423.98541259766, -2725.0930175781))
				end
			end
		end)
	end
end)
L_1_[93]["Main"]:AddToggle({
	["Name"] = "هاكي مفتوح تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_466_arg0)
		local L_467_ = {}
		L_467_[1] = L_466_arg0
		_G["AutoUnHaki"] = L_467_[1]
	end
})
AuraSkin = function(L_468_arg0)
	local L_469_ = {}
	L_469_[2] = L_468_arg0
	L_469_[1] = {
		[1] = {
			["StorageName"] = L_469_[2];
			["Type"] = "AuraSkin",
			["Context"] = "Equip"
		}
	};
	(((L_1_[18]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer(unpack(L_469_[1]))
end
VaildColor = function(L_470_arg0)
	local L_471_ = {}
	L_471_[2] = L_470_arg0
	if L_471_[2] and L_471_[2]["BrickColor"] then
		return tostring(L_471_[2]["BrickColor"]) == "Lime green"
	end
end
HakiCalculate = function(L_472_arg0)
	local L_473_ = {}
	L_473_[1] = L_472_arg0
	L_473_[3] = {
		["Really red"] = "Pure Red",
		["Oyster"] = "Snow White";
		["Hot pink"] = "Winter Sky"
	}
	if L_473_[1] and L_473_[1]["BrickColor"] then
		return L_473_[3][tostring(L_473_[1]["BrickColor"])]
	end
end
spawn(function()
	while wait(Sec) do
		if _G["AutoUnHaki"] then
			pcall(function()
				local L_474_ = {}
				L_474_[2] = workspace["Map"]["Boat Castle"]:FindFirstChild("Summoner")
				if L_474_[2] and L_474_[2]:FindFirstChild("Circle") then
					for L_475_forvar0, L_476_forvar1 in pairs((L_474_[2]:FindFirstChild("Circle")):GetChildren()) do
						local L_477_ = {}
						L_477_[1], L_477_[2] = L_475_forvar0, L_476_forvar1
						if L_477_[2]["Name"] == "Part" then
							local L_478_ = {}
							L_478_[1] = L_477_[2]:FindFirstChild("Part")
							if VaildColor(L_478_[1]) == false then
								AuraSkin(HakiCalculate(L_477_[2]))
								repeat
									wait()
									_tp(L_477_[2]["CFrame"])
								until VaildColor(L_478_[1]) == true or not _G["AutoUnHaki"]
							end
						end
					end
				end
			end)
		end
	end
end)
L_1_[93]["Main"]:AddSection({
	"Farming Cake"
})
MobKilled = L_1_[93]["Main"]:AddParagraph({
	["Title"] = "أمير الكعكة:";
	["Content"] = ""
})
spawn(function()
	while wait(.2) do
		pcall(function()
			local L_479_ = {}
			L_479_[1] = string["match"](L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner"), "%d+")
			if L_479_[1] then
				MobKilled:SetDesc(" Killed : " .. 500 - L_479_[1])
			end
		end)
	end
end)
Cake = L_1_[93]["Main"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Farm Cake Princ",
		"e"
	}),
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_480_arg0)
		local L_481_ = {}
		L_481_[2] = L_480_arg0
		_G["Auto_Cake_Prince"] = L_481_[2]
	end
})
spawn(function()
	while task["wait"]() do
		if _G["Auto_Cake_Prince"] and not _G["AutoRaidCastle"] then
			pcall(function()
				local L_482_ = {}
				L_482_[4] = game["Players"]["LocalPlayer"]
				L_482_[6] = L_482_[4]["Character"] and L_482_[4]["Character"]:FindFirstChild("HumanoidRootPart")
				L_482_[3] = L_482_[4]["PlayerGui"]["Main"]["Quest"]
				L_482_[5] = workspace["Enemies"]
				L_482_[1] = workspace["Map"]:FindFirstChild("CakeLoaf")
				L_482_[7] = L_482_[1] and L_482_[1]:FindFirstChild("BigMirror")
				if not L_482_[6] then
					return
				end
				if _G["AcceptQuestC"] and (L_482_[3] and not L_482_[3]["Visible"]) then
					local L_483_ = {}
					L_483_[4] = CFrame["new"](-1927.92, 37.8, -12842.54)
					_tp(L_483_[4])
					while (L_483_[4]["Position"] - L_482_[6]["Position"])["Magnitude"] > 50 do
						task["wait"](.2)
					end
					L_483_[1] = math["random"](1, 4)
					L_483_[3] = {
						[1] = {
							"StartQuest",
							"CakeQuest2",
							2
						};
						[2] = {
							"StartQuest";
							"CakeQuest2";
							1
						};
						[3] = {
							"StartQuest";
							"CakeQuest1",
							1
						};
						[4] = {
							"StartQuest";
							"CakeQuest1";
							2
						}
					}
					pcall(function()
						game["ReplicatedStorage"]["Remotes"]["CommF_"]:InvokeServer(unpack(L_483_[3][L_483_[1]]))
					end)
				end
				if not L_482_[1] then
					_tp(CFrame["new"](-2077, 252, -12373))
					task["wait"](2)
					return
				end
				if L_482_[7] and (L_482_[7]["Other"]["Transparency"] == 0 or L_482_[5]:FindFirstChild("Cake Prince")) then
					local L_484_ = {}
					L_484_[1] = GetConnectionEnemies("Cake Prince")
					if L_484_[1] then
						repeat
							task["wait"]()
							L_1_[4]["Kill2"](L_484_[1], _G["Auto_Cake_Prince"])
						until not _G["Auto_Cake_Prince"] or not L_484_[1]["Parent"] or L_484_[1]["Humanoid"]["Health"] <= 0
					else
						_tp(CFrame["new"](-2151.82, 149.32, -12404.91))
					end
				else
					local L_485_ = {}
					L_485_[3] = {
						"صانع البسكويت",
						"حارس الكعكة",
						"طاقم الخبز";
						"كبير الخبازين"
					}
					L_485_[2] = GetConnectionEnemies(L_485_[3])
					if L_485_[2] then
						repeat
							task["wait"]()
							L_1_[4]["Kill"](L_485_[2], _G["Auto_Cake_Prince"])
						until not _G["Auto_Cake_Prince"] or not L_485_[2]["Parent"] or L_485_[2]["Humanoid"]["Health"] <= 0 or L_482_[7] and L_482_[7]["Other"]["Transparency"] == 0
					else
						_tp(CFrame["new"](-2077, 252, -12373))
					end
				end
			end)
		end
	end
end)
CakeQ = L_1_[93]["Main"]:AddToggle({
	["Name"] = "قبول المهمات";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_486_arg0)
		local L_487_ = {}
		L_487_[2] = L_486_arg0
		_G["AcceptQuestC"] = L_487_[2]
	end
})
CakeSM = L_1_[93]["Main"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Summon Cake Pri",
		"nce"
	}),
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_488_arg0)
		local L_489_ = {}
		L_489_[1] = L_488_arg0
		_G["AutoSpawnCP"] = L_489_[1]
	end
})
spawn(function()
	while task["wait"](2) do
		if _G["AutoSpawnCP"] then
			pcall(function()
				local L_490_ = {}
				L_490_[3] = game["ReplicatedStorage"]["Remotes"]["CommF_"]
				L_490_[4] = workspace["Enemies"]
				L_490_[1] = workspace["Map"]["CakeLoaf"]:FindFirstChild("BigMirror")
				if not L_490_[1] then
					return
				end
				if L_490_[4]:FindFirstChild("Cake Prince") then
					return
				end
				if L_490_[1]["Other"]["Transparency"] == 0 then
					return
				end
				L_490_[3]:InvokeServer("CakePrinceSpawner", true)
			end)
		end
	end
end)
L_1_[93]["Main"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Dough King [Ful";
		"ly]"
	}),
	["Default"] = false;
	["Callback"] = function(L_491_arg0)
		local L_492_ = {}
		L_492_[1] = L_491_arg0
		_G["AutoDoughKing"] = L_492_[1]
	end
})
spawn(function()
	while wait() do
		if _G["AutoDoughKing"] then
			pcall(function()
				if not workspace["Map"]["CakeLoaf"]:FindFirstChild("RedDoor") then
					if GetBP("Red Key") then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CakeScientist", "Check")
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Check")
					end
				elseif workspace["Map"]["CakeLoaf"]:FindFirstChild("RedDoor") then
					if GetBP("Red Key") then
						repeat
							task["wait"]()
							_tp(CFrame["new"](-2681.97998, 64.3921585, -12853.7363, .149007782, -1.87902192e-08, .98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, .149007782))
						until not(getgenv())["AutoDoughKing"] or (L_1_[136]["Character"]["HumanoidRootPart"]["CFrame"] - CFrame["new"](-2681.97998, 64.3921585, -12853.7363, .149007782, -1.87902192e-08, .98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, .149007782))["Magnitude"] <= 5
						EquipWeapon("Red Key")
					end
				elseif GetConnectionEnemies("ملك العجين") then
					local L_493_ = {}
					L_493_[1] = GetConnectionEnemies("ملك العجين")
					if L_493_[1] then
						repeat
							task["wait"]()
							L_1_[4]["Kill"](L_493_[1], _G["AutoDoughKing"])
						until not _G["AutoDoughKing"] or not L_493_[1]["Parent"] or L_493_[1]["Humanoid"]["Health"] <= 0
					else
						_tp(CFrame["new"](-1943.6765136719, 251.50956726074, -12337.880859375))
					end
				end
				if GetBP("Sweet Chalice") then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner", true)
					_G["AutoAttackDoughKing"] = true
				else
					_G["AutoAttackDoughKing"] = false
				end
				if GetBP("God's Chalice") and GetM("الكاكاو المستدعى") >= 10 then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("SweetChaliceNpc")
				end
				if not L_1_[136]["Backpack"]:FindFirstChild("God's Chalice") or L_1_[136]["Character"]:FindFirstChild("God's Chalice") then
					_G["FarmEliteHunt"] = true
				else
					_G["FarmEliteHunt"] = false
				end
				if GetM("الكاكاو المستدعى") <= 10 then
					local L_494_ = {}
					L_494_[2] = GetConnectionEnemies({
						"محارب الكاكاو";
						L_1_[2]({
							"Chocolate Bar Battle";
							"r"
						})
					})
					if L_494_[2] then
						repeat
							task["wait"]()
							L_1_[4]["Kill"](L_494_[2], _G["AutoDoughKing"])
						until _G["AutoDoughKing"] == false or not L_494_[2]["Parent"] or L_494_[2]["Humanoid"]["Health"] <= 0
					else
						_tp(CFrame["new"](402.71890258789, 81.060501098633, -12259.54296875))
					end
				end
			end)
		end
	end
end)
L_1_[93]["Main"]:AddToggle({
	["Name"] = "فارم ملك العجين",
	["Default"] = false;
	["Callback"] = function(L_495_arg0)
		local L_496_ = {}
		L_496_[2] = L_495_arg0
		_G["AutoAttackDoughKing"] = L_496_[2]
	end
})
spawn(function()
	while wait() do
		if _G["AutoAttackDoughKing"] then
			pcall(function()
				local L_497_ = {}
				L_497_[1] = GetConnectionEnemies("ملك العجين")
				if L_497_[1] then
					repeat
						task["wait"]()
						L_1_[4]["Kill"](L_497_[1], _G["AutoAttackDoughKing"])
					until not _G["AutoAttackDoughKing"] or not L_497_[1]["Parent"] or L_497_[1]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](-1943.6765, 251.5095, -12337.8809))
				end
			end)
		end
	end
end)
L_1_[93]["Main"]:AddToggle({
	["Name"] = L_1_[2]({
		"فارم ملك العجين";
		" + Hop"
	}),
	["Default"] = false,
	["Callback"] = function(L_498_arg0)
		local L_499_ = {}
		L_499_[2] = L_498_arg0
		_G["AutoHop_Dough"] = L_499_[2]
	end
})
L_1_[116] = function()
	pcall(function()
		local L_500_ = {}
		L_500_[3] = game:GetService("HttpService")
		L_500_[1] = {}
		L_500_[2] = game:HttpGet(L_1_[2]({
			"https://games.roblox",
			".com/v1/games/"
		}) .. (game["PlaceId"] .. L_1_[2]({
			"/servers/Public?sort";
			"Order=Asc&limit=100"
		})))
		L_500_[5] = L_500_[3]:JSONDecode(L_500_[2])
		for L_501_forvar0, L_502_forvar1 in pairs(L_500_[5]["data"]) do
			local L_503_ = {}
			L_503_[2], L_503_[3] = L_501_forvar0, L_502_forvar1
			if L_503_[3]["playing"] < L_503_[3]["maxPlayers"] then
				table["insert"](L_500_[1], L_503_[3]["id"])
			end
		end
		if #L_500_[1] > 0 then
			(game:GetService("TeleportService")):TeleportToPlaceInstance(game["PlaceId"], L_500_[1][math["random"](1, #L_500_[1])], game["Players"]["LocalPlayer"])
		end
	end)
end
spawn(function()
	while task["wait"]() do
		if _G["AutoHop_Dough"] then
			pcall(function()
				local L_504_ = {}
				L_504_[2] = GetConnectionEnemies("ملك العجين")
				if L_504_[2] then
					repeat
						task["wait"]()
						L_1_[4]["Kill"](L_504_[2], _G["AutoHop_Dough"])
					until not _G["AutoHop_Dough"] or not L_504_[2]["Parent"] or L_504_[2]["Humanoid"]["Health"] <= 0
				else
					local L_505_ = {}
					_tp(CFrame["new"](-1943.6765, 251.5095, -12337.8809))
					task["wait"](2)
					L_505_[1] = GetConnectionEnemies("ملك العجين")
					if not L_505_[1] and _G["AutoHop_Dough"] then
						L_1_[116]()
					end
				end
			end)
		end
	end
end)
L_1_[93]["Main"]:AddSection({
	"Unlocked Dungeon"
})
DouD = L_1_[93]["Main"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Unlock Dough du";
		"ngeon"
	}),
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_506_arg0)
		local L_507_ = {}
		L_507_[1] = L_506_arg0
		_G["Doughv2"] = L_507_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["Doughv2"] then
			pcall(function()
				if not workspace["Map"]["CakeLoaf"]:FindFirstChild("RedDoor") then
					if GetBP("Red Key") then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CakeScientist", "Check")
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Check")
					end
				elseif workspace["Map"]["CakeLoaf"]:FindFirstChild("RedDoor") then
					if GetBP("Red Key") then
						repeat
							wait()
							_tp(CFrame["new"](-2681.97998, 64.3921585, -12853.7363, .149007782, -1.87902192e-08, .98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, .149007782))
						until not _G["Doughv2"] or (L_1_[136]["Character"]["HumanoidRootPart"]["CFrame"] - CFrame["new"](-2681.97998, 64.3921585, -12853.7363, .149007782, -1.87902192e-08, .98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, .149007782))["Magnitude"] <= 5
						EquipWeapon("Red Key")
					end
				elseif GetConnectionEnemies("ملك العجين") then
					local L_508_ = {}
					L_508_[2] = GetConnectionEnemies("ملك العجين")
					if L_508_[2] then
						repeat
							wait()
							L_1_[4]["Kill"](L_508_[2], _G["Doughv2"])
						until not _G["Doughv2"] or not L_508_[2]["Parent"] or L_508_[2]["Humanoid"]["Health"] <= 0
					else
						_tp(CFrame["new"](-1943.6765136719, 251.50956726074, -12337.880859375))
					end
				end
				if GetBP("Sweet Chalice") then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner", true)
					_G["AutoMiror"] = true
				else
					_G["AutoMiror"] = false
				end
				if GetBP("God's Chalice") and GetM("الكاكاو المستدعى") >= 10 then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("SweetChaliceNpc")
				end
				if not L_1_[136]["Backpack"]:FindFirstChild("God's Chalice") or L_1_[136]["Character"]:FindFirstChild("God's Chalice") then
					_G["FarmEliteHunt"] = true
				else
					_G["FarmEliteHunt"] = false
				end
				if GetM("الكاكاو المستدعى") <= 10 then
					local L_509_ = {}
					L_509_[2] = {
						"محارب الكاكاو";
						L_1_[2]({
							"Chocolate Bar Battle";
							"r"
						})
					}
					L_509_[3] = GetConnectionEnemies(L_509_[2])
					if L_509_[3] then
						repeat
							wait()
							L_1_[4]["Kill"](L_509_[3], _G["Doughv2"])
						until _G["Doughv2"] == false or not L_509_[3]["Parent"] or L_509_[3]["Humanoid"]["Health"] <= 0
					else
						_tp(CFrame["new"](402.71890258789, 81.060501098633, -12259.54296875))
					end
				end
			end)
		end
	end
end)
PhoD = L_1_[93]["Main"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Unlock Phoenix ";
		"dungeon"
	});
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_510_arg0)
		local L_511_ = {}
		L_511_[2] = L_510_arg0
		_G["AutoPhoenixF"] = L_511_[2]
	end
})
spawn(function()
	while wait(.1) do
		if _G["AutoPhoenixF"] then
			pcall(function()
				if GetBP("Bird-Bird: Phoenix") then
					if L_1_[136]["Backpack"]:FindFirstChild(L_1_[136]["Data"]["DevilFruit"]["Value"]) then
						if (L_1_[136]["Backpack"]:FindFirstChild(L_1_[136]["Data"]["DevilFruit"]["Value"]))["Level"]["Value"] >= 400 then
							_tp(CFrame["new"](-2812.7670898438, 254.80346679688, -12595.560546875))
							if ((CFrame["new"](-2812.7670898438, 254.80346679688, -12595.560546875))["Position"] - L_1_[136]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10 then
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("SickScientist", "Check")
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("SickScientist", "Heal")
							end
						end
					elseif L_1_[136]["Character"]:FindFirstChild(L_1_[136]["Data"]["DevilFruit"]["Value"]) then
						if (L_1_[136]["Character"]:FindFirstChild(L_1_[136]["Data"]["DevilFruit"]["Value"]))["Level"]["Value"] >= 400 then
							_tp(CFrame["new"](-2812.7670898438, 254.80346679688, -12595.560546875))
							if ((CFrame["new"](-2812.7670898438, 254.80346679688, -12595.560546875))["Position"] - L_1_[136]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10 then
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("SickScientist", "Check")
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("SickScientist", "Heal")
							end
						end
					end
				end
			end)
		end
	end
end)
L_1_[93]["Main"]:AddSection({
	"Farming Bone"
})
CheckingBone = L_1_[93]["Main"]:AddParagraph({
	["Title"] = "العظام:",
	["Content"] = ""
})
spawn(function()
	while wait(.2) do
		pcall(function()
			CheckingBone:SetDesc(" Bones : " .. GetM("Bones"))
		end)
	end
end)
L_1_[93]["Main"]:AddToggle({
	["Name"] = "فارم عظام تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_512_arg0)
		local L_513_ = {}
		L_513_[1] = L_512_arg0
		_G["AutoFarm_Bone"] = L_513_[1]
	end
})
spawn(function()
	local L_514_ = {}
	L_514_[1] = game["Players"]["LocalPlayer"]
	L_514_[3] = {
		"الهيكل المولود من جديد";
		"الزومبي الحي",
		"الروح الشيطانية",
		"Possessed Mummy"
	}
	while wait(.5) do
		if not _G["AutoFarm_Bone"] then
			continue
		end
		pcall(function()
			local L_515_ = {}
			L_515_[3] = L_514_[1]["Character"]
			L_515_[5] = L_515_[3] and L_515_[3]:FindFirstChild("HumanoidRootPart")
			if not L_515_[5] then
				return
			end
			L_515_[1] = L_514_[1]["PlayerGui"]:FindFirstChild("Main") and L_514_[1]["PlayerGui"]["Main"]:FindFirstChild("Quest")
			L_515_[2] = GetConnectionEnemies(L_514_[3])
			if _G["AcceptQuestB"] and (L_515_[1] and not L_515_[1]["Visible"]) then
				local L_516_ = {}
				L_516_[1] = CFrame["new"](-9516.99316, 172.01718, 6078.46533)
				_tp(L_516_[1])
				repeat
					wait(2)
				until not _G["AutoFarm_Bone"] or (L_516_[1]["Position"] - L_515_[5]["Position"])["Magnitude"] <= 50
				if not _G["AutoFarm_Bone"] then
					return
				end
				L_516_[2] = {
					{
						"StartQuest";
						"HauntedQuest2";
						2
					};
					{
						"StartQuest",
						"HauntedQuest2";
						1
					};
					{
						"StartQuest";
						"HauntedQuest1";
						1
					},
					{
						"StartQuest",
						"HauntedQuest1",
						2
					}
				}
				game["ReplicatedStorage"]["Remotes"]["CommF_"]:InvokeServer(unpack(L_516_[2][math["random"](1, #L_516_[2])]))
			end
			if L_515_[2] then
				repeat
					wait()
					L_1_[4]["Kill"](L_515_[2], true)
				until not _G["AutoFarm_Bone"] or not L_515_[2]["Parent"] or L_515_[2]["Humanoid"]["Health"] <= 0
			else
				_tp(CFrame["new"](-9495.6806640625, 453.58624267578, 5977.3486328125))
			end
		end)
	end
end)
BoneQ = L_1_[93]["Main"]:AddToggle({
	["Name"] = "قبول المهمات",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_517_arg0)
		local L_518_ = {}
		L_518_[1] = L_517_arg0
		_G["AcceptQuestB"] = L_518_[1]
	end
})
L_1_[93]["Main"]:AddToggle({
	["Name"] = "حاصد الأرواح تلقائي",
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_519_arg0)
		local L_520_ = {}
		L_520_[2] = L_519_arg0
		_G["AutoHytHallow"] = L_520_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["AutoHytHallow"] then
			pcall(function()
				local L_521_ = {}
				L_521_[2] = GetConnectionEnemies("حاصد الأرواح")
				if L_521_[2] then
					repeat
						task["wait"]()
						L_1_[4]["Kill"](L_521_[2], _G["AutoHytHallow"])
					until L_521_[2]["Humanoid"]["Health"] <= 0 or _G["AutoHytHallow"] == false
				else
					if not GetBP("Hallow Essence") then
						repeat
							task["wait"](.1)
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Bones", "Buy", 1, 1)
						until _G["AutoHytHallow"] == false or GetBP("Hallow Essence")
					else
						repeat
							wait(.1)
							_tp(CFrame["new"](-8932.322265625, 146.83154296875, 6062.55078125))
						until _G["AutoHytHallow"] == false or L_1_[136]["Character"]["HumanoidRootPart"]["CFrame"] == CFrame["new"](-8932.322265625, 146.83154296875, 6062.55078125)
						EquipWeapon("Hallow Essence")
					end
				end
			end)
		end
	end
end)
RanBone = L_1_[93]["Main"]:AddToggle({
	["Name"] = "عظام عشوائية تلقائية",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_522_arg0)
		local L_523_ = {}
		L_523_[1] = L_522_arg0
		_G["Auto_Random_Bone"] = L_523_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_Random_Bone"] then
				repeat
					task["wait"]()
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Bones", "Buy", 1, 1)
				until not _G["Auto_Random_Bone"]
			end
		end)
	end
end)
Lucky = L_1_[93]["Main"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Try Luck Graves",
		"tone"
	}),
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_524_arg0)
		local L_525_ = {}
		L_525_[2] = L_524_arg0
		_G["TryLucky"] = L_525_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["TryLucky"] then
			local L_526_ = {}
			L_526_[1] = CFrame["new"](-8761.3154296875, 164.85829162598, 6161.1567382813)
			if L_1_[136]["Character"]["HumanoidRootPart"]["CFrame"] ~= L_526_[1] then
				_tp(CFrame["new"](-8761.3154296875, 164.85829162598, 6161.1567382813))
			elseif L_1_[136]["Character"]["HumanoidRootPart"]["CFrame"] == L_526_[1] then
				L_1_[18]["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent", 1)
			end
		end
	end
end)
Pray = L_1_[93]["Main"]:AddToggle({
	["Name"] = "الصلاة على القبر تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_527_arg0)
		local L_528_ = {}
		L_528_[2] = L_527_arg0
		_G["Praying"] = L_528_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["Praying"] then
			local L_529_ = {}
			L_529_[2] = CFrame["new"](-8761.3154296875, 164.85829162598, 6161.1567382813)
			if L_1_[136]["Character"]["HumanoidRootPart"]["CFrame"] ~= L_529_[2] then
				_tp(CFrame["new"](-8761.3154296875, 164.85829162598, 6161.1567382813))
			elseif L_1_[136]["Character"]["HumanoidRootPart"]["CFrame"] == L_529_[2] then
				L_1_[18]["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent", 2)
			end
		end
	end
end)
L_1_[93]["Main"]:AddSection({
	"طاغية السماء"
})
TyrantStatus = L_1_[93]["Main"]:AddParagraph({
	["Title"] = "سبون بوس",
	["Content"] = ""
})
spawn(function()
	pcall(function()
		while wait(1) do
			if workspace["Enemies"]:FindFirstChild("طاغية السماء") then
				TyrantStatus:SetDesc("✅")
			else
				TyrantStatus:SetDesc("❌")
			end
		end
	end)
end)
EyeStatus = L_1_[93]["Main"]:AddParagraph({
	["Title"] = "فحص حالة العيون",
	["Content"] = ""
})
function Check_Eye()
	local L_530_ = {}
	L_530_[4] = workspace["Map"]["TikiOutpost"]["IslandModel"]
	L_530_[1] = {
		L_530_[4]["Eye1"];
		L_530_[4]["Eye2"],
		L_530_[4]["IslandChunks"]["E"]["Eye3"];
		L_530_[4]["IslandChunks"]["E"]["Eye4"]
	}
	L_530_[3] = 0
	for L_531_forvar0, L_532_forvar1 in ipairs(L_530_[1]) do
		local L_533_ = {}
		L_533_[2], L_533_[3] = L_531_forvar0, L_532_forvar1
		if L_533_[3] and L_533_[3]["Transparency"] ~= 1 then
			R_[3] += 1
		end
	end
	L_530_[2] = L_530_[3] == 4
	return L_530_[3], L_530_[2]
end
task["spawn"](function()
	local L_534_ = {}
	L_534_[2] = false
	while task["wait"](1) do
		local L_535_ = {}
		L_535_[1], L_535_[2] = Check_Eye()
		EyeStatus:SetDesc("Eyes: " .. (L_535_[1] .. "/4"))
		if L_535_[2] and not L_534_[2] then
			L_534_[2] = true
		elseif not L_535_[2] then
			L_534_[2] = false
		end
	end
end)
FarmTyrant = L_1_[93]["Main"]:AddToggle({
	["Name"] = "فارم بوس تلقائي";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_536_arg0)
		local L_537_ = {}
		L_537_[2] = L_536_arg0
		_G["FarmTyrant"] = L_537_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["FarmTyrant"] then
			pcall(function()
				local L_538_ = {}
				if not L_1_[136]["Character"] then
					return
				end
				L_538_[3] = L_1_[136]["Character"]:FindFirstChild("HumanoidRootPart")
				if not L_538_[3] then
					return
				end
				L_538_[1] = Vector3["new"](-16268.287, 152.616, 1390.773)
				if (L_538_[3]["Position"] - L_538_[1])["Magnitude"] > 5 then
					_tp(CFrame["new"](L_538_[1]))
					repeat
						wait()
					until not _G["FarmTyrant"] or L_1_[136]["Character"] and (L_1_[136]["Character"]:FindFirstChild("HumanoidRootPart") and (L_1_[136]["Character"]["HumanoidRootPart"]["Position"] - L_538_[1])["Magnitude"] <= 5)
				end
				L_538_[4] = workspace["Enemies"]:FindFirstChild("طاغية السماء")
				if L_538_[4] and (L_538_[4]:FindFirstChild("Humanoid") and L_538_[4]["Humanoid"]["Health"] > 0) then
					repeat
						if not _G["FarmTyrant"] then
							break
						end
						if L_1_[4] and L_1_[4]["Kill"] then
							L_1_[4]["Kill"](L_538_[4], _G["FarmTyrant"])
						end
						wait()
					until not _G["FarmTyrant"] or not L_538_[4]["Parent"] or L_538_[4]["Humanoid"]["Health"] <= 0
					return
				end
				L_538_[5] = {
					"Serpent Hunter";
					"Skull Slayer",
					"Isle Champion";
					"Sun-kissed Warrior"
				}
				for L_539_forvar0, L_540_forvar1 in ipairs(L_538_[5]) do
					local L_541_ = {}
					L_541_[1], L_541_[2] = L_539_forvar0, L_540_forvar1
					if not _G["FarmTyrant"] then
						break
					end
					for L_542_forvar0, L_543_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
						local L_544_ = {}
						L_544_[2], L_544_[3] = L_542_forvar0, L_543_forvar1
						if not _G["FarmTyrant"] then
							break
						end
						if L_544_[3] and (L_544_[3]["Name"] == L_541_[2] and (L_544_[3]:FindFirstChild("HumanoidRootPart") and (L_544_[3]:FindFirstChild("Humanoid") and L_544_[3]["Humanoid"]["Health"] > 0))) then
							if (L_538_[3]["Position"] - L_544_[3]["HumanoidRootPart"]["Position"])["Magnitude"] > 5000 then
								local L_545_ = {}
								_tp(L_544_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0))
								L_545_[2] = tick()
								repeat
									wait()
									L_538_[3] = L_1_[136]["Character"] and L_1_[136]["Character"]:FindFirstChild("HumanoidRootPart")
								until not _G["FarmTyrant"] or not L_538_[3] or (L_538_[3]["Position"] - L_544_[3]["HumanoidRootPart"]["Position"])["Magnitude"] <= 6 or tick() - L_545_[2] > 8
							end
							repeat
								if not _G["FarmTyrant"] then
									break
								end
								if L_1_[4] and L_1_[4]["Kill"] then
									L_1_[4]["Kill"](L_544_[3], _G["FarmTyrant"])
								end
								wait()
							until not _G["FarmTyrant"] or not L_544_[3]["Parent"] or L_544_[3]["Humanoid"]["Health"] <= 0
						end
					end
				end
			end)
		end
	end
end)
FarmPhaBinh = L_1_[93]["Main"]:AddToggle({
	["Name"] = "استدعاء البوس تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_546_arg0)
		local L_547_ = {}
		L_547_[2] = L_546_arg0
		_G["FarmPhaBinh"] = L_547_[2]
	end
})
L_1_[100] = function(L_548_arg0)
	local L_549_ = {}
	L_549_[2] = L_548_arg0
	L_549_[1] = game:GetService("VirtualInputManager")
	L_549_[1]:SendKeyEvent(true, L_549_[2], false, game)
	wait(.05)
	L_549_[1]:SendKeyEvent(false, L_549_[2], false, game)
end
L_1_[3] = function(L_550_arg0)
	local L_551_ = {}
	L_551_[4] = L_550_arg0
	L_551_[2] = L_1_[136]["Character"]
	L_551_[3] = L_1_[136]["Backpack"]
	if not(L_551_[2] and (L_551_[2]:FindFirstChild("Humanoid") and L_551_[2]["Humanoid"]["Health"] > 0)) then
		return
	end
	for L_552_forvar0, L_553_forvar1 in pairs(L_551_[3]:GetChildren()) do
		local L_554_ = {}
		L_554_[3], L_554_[2] = L_552_forvar0, L_553_forvar1
		if L_554_[2]:IsA("Tool") and L_554_[2]["ToolTip"] == L_551_[4] then
			L_554_[2]["Parent"] = L_551_[2]
			wait(.12)
			for L_555_forvar0, L_556_forvar1 in ipairs({
				"Z",
				"X",
				"C",
				"V",
				"F"
			}) do
				local L_557_ = {}
				L_557_[1], L_557_[2] = L_555_forvar0, L_556_forvar1
				if not _G["FarmPhaBinh"] then
					break
				end
				pcall(function()
					L_1_[100](L_557_[2])
				end)
				wait(.12)
			end
			L_554_[2]["Parent"] = L_551_[3]
			break
		end
	end
end
L_1_[101] = {
	CFrame["new"](-16332.526367188, 158.07200622559, 1440.3249511719);
	CFrame["new"](-16288.609375, 158.16700744629, 1470.3680419922),
	CFrame["new"](-16245.412109375, 158.43699645996, 1463.3659667969);
	CFrame["new"](-16212.46875, 158.16700744629, 1466.3439941406),
	CFrame["new"](-16211.946289062, 158.07200622559, 1322.3979492188);
	CFrame["new"](-16260.921875, 154.92100524902, 1323.6159667969),
	CFrame["new"](-16297.059570312, 159.32299804688, 1317.2239990234);
	CFrame["new"](-16335.096679688, 159.33399963379, 1324.8859863281)
}
spawn(function()
	while wait(Sec) do
		if _G["FarmPhaBinh"] then
			pcall(function()
				if not(L_1_[136] and (L_1_[136]["Character"] and (L_1_[136]["Character"]:FindFirstChild("HumanoidRootPart") and (L_1_[136]["Character"]:FindFirstChild("Humanoid") and L_1_[136]["Character"]["Humanoid"]["Health"] > 0)))) then
					return
				end
				for L_558_forvar0, L_559_forvar1 in ipairs(L_1_[101]) do
					local L_560_ = {}
					L_560_[3], L_560_[5] = L_558_forvar0, L_559_forvar1
					if not _G["FarmPhaBinh"] then
						break
					end
					_tp(L_560_[5])
					L_560_[1] = false
					L_560_[2] = tick()
					while tick() - L_560_[2] < 12 and (not L_560_[1] and _G["FarmPhaBinh"]) do
						local L_561_ = {}
						L_561_[2] = L_1_[136]["Character"] and L_1_[136]["Character"]:FindFirstChild("HumanoidRootPart")
						if not L_561_[2] then
							break
						end
						L_561_[3] = (L_561_[2]["Position"] - L_560_[5]["Position"])["Magnitude"]
						if L_561_[3] <= 3 then
							L_560_[1] = true
							break
						end
						wait(.1)
					end
					if _G["FarmPhaBinh"] and L_560_[1] then
						L_1_[3]("يد")
						L_1_[3]("سيف")
						L_1_[3]("مسدس")
					end
				end
			end)
		end
	end
end)
L_1_[93]["Main"]:AddSection({
	"Farm Material"
})
Test = L_1_[93]["Main"]:AddDropdown({
	["Name"] = "اختر المادة";
	["Description"] = "",
	["Options"] = MaterialList;
	["Default"] = false;
	["Callback"] = function(L_562_arg0)
		local L_563_ = {}
		L_563_[2] = L_562_arg0;
		(getgenv())["SelectMaterial"] = L_563_[2]
	end
})
Toggle = L_1_[93]["Main"]:AddToggle({
	["Name"] = "مواد تلقائية";
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_564_arg0)
		local L_565_ = {}
		L_565_[1] = L_564_arg0;
		(getgenv())["AutoMaterial"] = L_565_[1]
	end
})
spawn(function()
	local L_566_ = {}
	L_566_[1] = function(L_567_arg0, L_568_arg1)
		local L_569_ = {}
		L_569_[3], L_569_[1] = L_567_arg0, L_568_arg1
		if L_569_[3]:FindFirstChild("Humanoid") and (L_569_[3]:FindFirstChild("HumanoidRootPart") and L_569_[3]["Humanoid"]["Health"] > 0) then
			if L_569_[3]["Name"] == L_569_[1] then
				repeat
					wait()
					L_1_[4]["Kill"](L_569_[3], (getgenv())["AutoMaterial"])
				until not(getgenv())["AutoMaterial"] or not L_569_[3]["Parent"] or L_569_[3]["Humanoid"]["Health"] <= 0
			end
		end
	end
	L_566_[2] = function()
		for L_570_forvar0, L_571_forvar1 in pairs((game:GetService("Workspace"))["_WorldOrigin"]["EnemySpawns"]:GetChildren()) do
			local L_572_ = {}
			L_572_[3], L_572_[2] = L_570_forvar0, L_571_forvar1
			for L_573_forvar0, L_574_forvar1 in ipairs(MMon) do
				local L_575_ = {}
				L_575_[3], L_575_[2] = L_573_forvar0, L_574_forvar1
				if string["find"](L_572_[2]["Name"], L_575_[2]) then
					if (game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"] - L_572_[2]["Position"])["Magnitude"] >= 10 then
						_tp(L_572_[2]["CFrame"] * Pos)
					end
				end
			end
		end
	end
	while wait() do
		if (getgenv())["AutoMaterial"] then
			pcall(function()
				if (getgenv())["SelectMaterial"] then
					MaterialMon((getgenv())["SelectMaterial"])
					_tp(MPos)
				end
				for L_576_forvar0, L_577_forvar1 in ipairs(MMon) do
					local L_578_ = {}
					L_578_[3], L_578_[1] = L_576_forvar0, L_577_forvar1
					for L_579_forvar0, L_580_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
						local L_581_ = {}
						L_581_[3], L_581_[2] = L_579_forvar0, L_580_forvar1
						L_566_[1](L_581_[2], L_578_[1])
					end
				end
				L_566_[2]()
			end)
		end
	end
end)
L_1_[93]["Main"]:AddSection({
	"Farm Boss"
})
BossDropdown = L_1_[93]["Main"]:AddDropdown({
	["Name"] = "اختر البوس";
	["Description"] = "";
	["Options"] = BossList,
	["Default"] = false;
	["Callback"] = function(L_582_arg0)
		local L_583_ = {}
		L_583_[1] = L_582_arg0
		_G["FindBoss"] = L_583_[1]
	end
})
FarmBoss = L_1_[93]["Main"]:AddToggle({
	["Name"] = "فارم بوس تلقائي";
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_584_arg0)
		local L_585_ = {}
		L_585_[1] = L_584_arg0
		_G["FarmBoss"] = L_585_[1]
		spawn(function()
			while wait(Sec) do
				if _G["FarmBoss"] then
					pcall(function()
						local L_586_ = {}
						L_586_[1] = (QuestBeta())[2] ~= nil and (QuestBeta())[3] ~= nil
						L_586_[2] = L_1_[136]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"]
						if _G["AcceptQuestBoss"] and L_586_[1] then
							if not string["find"](L_586_[2], (QuestBeta())[0]) then
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
							end
							if L_1_[136]["PlayerGui"]["Main"]["Quest"]["Visible"] == false then
								_tp((QuestBeta())[5])
								if (Root["Position"] - (QuestBeta())[5]["Position"])["Magnitude"] <= 5 then
									L_1_[18]["Remotes"]["CommF_"]:InvokeServer("StartQuest", (QuestBeta())[3], (QuestBeta())[2])
								end
							elseif L_1_[136]["PlayerGui"]["Main"]["Quest"]["Visible"] == true then
								if workspace["Enemies"]:FindFirstChild((QuestBeta())[1]) then
									for L_587_forvar0, L_588_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
										local L_589_ = {}
										L_589_[3], L_589_[1] = L_587_forvar0, L_588_forvar1
										if L_1_[4]["Alive"](L_589_[1]) and L_589_[1]["Name"] == (QuestBeta())[1] then
											if string["find"](L_586_[2], (QuestBeta())[0]) then
												repeat
													wait()
													L_1_[4]["Kill"](L_589_[1], _G["FarmBoss"])
												until not _G["FarmBoss"] or L_589_[1]["Humanoid"]["Health"] <= 0 or not L_589_[1]["Parent"] or L_1_[136]["PlayerGui"]["Main"]["Quest"]["Visible"] == false
											else
												L_1_[18]["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
											end
										end
									end
								else
									_tp((QuestBeta())[4])
									if L_1_[18]:FindFirstChild((QuestBeta())[1]) then
										_tp((L_1_[18]:FindFirstChild((QuestBeta())[1]))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0))
									end
								end
							end
						else
							if workspace["Enemies"]:FindFirstChild((QuestBeta())[1]) then
								for L_590_forvar0, L_591_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
									local L_592_ = {}
									L_592_[3], L_592_[1] = L_590_forvar0, L_591_forvar1
									if L_1_[4]["Alive"](L_592_[1]) and L_592_[1]["Name"] == (QuestBeta())[1] then
										repeat
											wait()
											L_1_[4]["Kill"](L_592_[1], _G["FarmBoss"])
										until not _G["FarmBoss"] or L_592_[1]["Humanoid"]["Health"] <= 0 or not L_592_[1]["Parent"]
									end
								end
							else
								_tp((QuestBeta())[4])
								if L_1_[18]:FindFirstChild((QuestBeta())[1]) then
									_tp((L_1_[18]:FindFirstChild((QuestBeta())[1]))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0))
								end
							end
						end
					end)
				end
			end
		end)
	end
})
BossQ = L_1_[93]["Main"]:AddToggle({
	["Name"] = "قبول المهمات";
	["Description"] = "",
	["Default"] = true;
	["Callback"] = function(L_593_arg0)
		local L_594_ = {}
		L_594_[2] = L_593_arg0
		_G["AcceptQuestBoss"] = L_594_[2]
	end
})
FarmAllBoss = L_1_[93]["Main"]:AddToggle({
	["Name"] = "فارم كل البوسات",
	["Default"] = false;
	["Callback"] = function(L_595_arg0)
		local L_596_ = {}
		L_596_[1] = L_595_arg0
		_G["AutoFarmAllBoss"] = L_596_[1]
	end
})
task["spawn"](function()
	while task["wait"](.3) do
		if _G["AutoFarmAllBoss"] then
			pcall(function()
				local L_597_ = {}
				L_597_[5] = game["Players"]["LocalPlayer"]
				if not L_597_[5]["Character"] or not L_597_[5]["Character"]:FindFirstChild("HumanoidRootPart") then
					return
				end
				L_597_[4] = L_597_[5]["Character"]["HumanoidRootPart"]
				L_597_[1], L_597_[2] = nil, math["huge"]
				for L_598_forvar0, L_599_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
					local L_600_ = {}
					L_600_[3], L_600_[1] = L_598_forvar0, L_599_forvar1
					if L_600_[1]:FindFirstChild("HumanoidRootPart") and (L_600_[1]:FindFirstChild("Humanoid") and L_600_[1]["Humanoid"]["Health"] > 0) then
						if table["find"](BossList, L_600_[1]["Name"]) then
							local L_601_ = {}
							L_601_[2] = (L_597_[4]["Position"] - L_600_[1]["HumanoidRootPart"]["Position"])["Magnitude"]
							if L_601_[2] < L_597_[2] then
								L_597_[1] = L_600_[1]
								L_597_[2] = L_601_[2]
							end
						end
					end
				end
				if L_597_[1] and L_597_[1]:FindFirstChild("HumanoidRootPart") then
					local L_602_ = {}
					L_602_[3] = L_597_[1]["HumanoidRootPart"]
					L_602_[2] = L_597_[1]["Humanoid"]
					repeat
						local L_603_ = {}
						task["wait"](.1)
						if not _G["AutoFarmAllBoss"] then
							break
						end
						L_603_[1] = L_602_[3]["CFrame"] * CFrame["new"](0, 5, 0)
						if (L_597_[4]["Position"] - L_603_[1]["Position"])["Magnitude"] > 100 then
							L_597_[5]["Character"]:PivotTo(L_603_[1])
						else
							_tp(L_603_[1])
						end
						if L_1_[4] and typeof(L_1_[4]["Kill"]) == "function" then
							L_1_[4]["Kill"](L_597_[1], true)
						end
					until not L_597_[1]["Parent"] or L_602_[2]["Health"] <= 0 or not _G["AutoFarmAllBoss"]
				end
			end)
		end
	end
end)
L_1_[93]["Main"]:AddSection({
	"Farming Mastery"
})
L_1_[17] = {
	"Cake",
	"العظام"
}
L_1_[74] = L_1_[93]["Main"]:AddDropdown({
	["Name"] = "اختر الجزيرة";
	["Description"] = "",
	["Options"] = L_1_[17],
	["Default"] = false;
	["Callback"] = function(L_604_arg0)
		local L_605_ = {}
		L_605_[1] = L_604_arg0
		SelectIsland = L_605_[1]
	end
})
L_1_[137] = L_1_[93]["Main"]:AddToggle({
	["Name"] = "ماستري فاكهة تلقائي";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_606_arg0)
		local L_607_ = {}
		L_607_[2] = L_606_arg0
		_G["FarmMastery_Dev"] = L_607_[2]
	end
})
spawn(function()
	RunSer["RenderStepped"]:Connect(function()
		pcall(function()
			if _G["FarmMastery_Dev"] or _G["FarmMastery_G"] or _G["FarmMastery_S"] then
				for L_608_forvar0, L_609_forvar1 in pairs(L_1_[136]["PlayerGui"]["Notifications"]:GetChildren()) do
					local L_610_ = {}
					L_610_[3], L_610_[1] = L_608_forvar0, L_609_forvar1
					if L_610_[1]["Name"] == "NotificationTemplate" then
						if string["find"](L_610_[1]["Text"], "Skill locked!") then
							L_610_[1]:Destroy()
						end
					end
				end
			end
		end)
	end)
end)
spawn(function()
	while wait(Sec) do
		if _G["FarmMastery_Dev"] then
			pcall(function()
				if SelectIsland == "Cake" then
					local L_611_ = {}
					L_611_[2] = GetConnectionEnemies(L_1_[122])
					if L_611_[2] then
						HealthM = (L_611_[2]["Humanoid"]["MaxHealth"] * 70) / 100
						repeat
							wait()
							MousePos = L_611_[2]["HumanoidRootPart"]["Position"]
							L_1_[4]["Mas"](L_611_[2], _G["FarmMastery_Dev"])
						until _G["FarmMastery_Dev"] == false or L_611_[2]["Humanoid"]["Health"] <= 0 or not L_611_[2]["Parent"]
					else
						_tp(CFrame["new"](-1943.6765136719, 251.50956726074, -12337.880859375))
					end
				elseif SelectIsland == "العظام" then
					local L_612_ = {}
					L_612_[1] = GetConnectionEnemies(L_1_[95])
					if L_612_[1] then
						HealthM = (L_612_[1]["Humanoid"]["MaxHealth"] * 70) / 100
						repeat
							wait()
							MousePos = L_612_[1]["HumanoidRootPart"]["Position"]
							L_1_[4]["Mas"](L_612_[1], _G["FarmMastery_Dev"])
						until _G["FarmMastery_Dev"] == false or L_612_[1]["Humanoid"]["Health"] <= 0 or not L_612_[1]["Parent"]
					else
						_tp(CFrame["new"](-9495.6806640625, 453.58624267578, 5977.3486328125))
					end
				end
			end)
		end
	end
end)
L_1_[46] = L_1_[93]["Main"]:AddToggle({
	["Name"] = "ماستري مسدس تلقائي",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_613_arg0)
		local L_614_ = {}
		L_614_[1] = L_613_arg0
		_G["FarmMastery_G"] = L_614_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["FarmMastery_G"] then
			pcall(function()
				if SelectIsland == "Cake" then
					local L_615_ = {}
					L_615_[2] = GetConnectionEnemies(L_1_[122])
					if L_615_[2] then
						HealthM = (L_615_[2]["Humanoid"]["MaxHealth"] * 70) / 100
						repeat
							local L_616_ = {}
							wait()
							MousePos = L_615_[2]["HumanoidRootPart"]["Position"]
							L_1_[4]["Masgun"](L_615_[2], _G["FarmMastery_G"])
							L_616_[2] = L_1_[18]:FindFirstChild("Modules")
							L_616_[1] = L_616_[2]:FindFirstChild("Net")
							L_616_[3] = L_616_[1]:FindFirstChild("RE/ShootGunEvent")
							if (L_1_[136]["Character"]:FindFirstChildOfClass("Tool"))["ToolTip"] ~= "مسدس" then
								return
							end
							if L_1_[136]["Character"]:FindFirstChildOfClass("Tool") and (L_1_[136]["Character"]:FindFirstChildOfClass("Tool"))["Name"] == "Skull Guitar" then
								SoulGuitar = true;
								(L_1_[136]["Character"]:FindFirstChildOfClass("Tool"))["RemoteEvent"]:FireServer("TAP", MousePos)
								if _G["FarmMastery_G"] then
									vim1:SendMouseButtonEvent(0, 0, 0, true, game, 1)
									wait(.05)
									vim1:SendMouseButtonEvent(0, 0, 0, false, game, 1)
									wait(.05)
								end
							elseif L_1_[136]["Character"]:FindFirstChildOfClass("Tool") and (L_1_[136]["Character"]:FindFirstChildOfClass("Tool"))["Name"] ~= "Skull Guitar" then
								SoulGuitar = false
								L_616_[3]:FireServer(MousePos, {
									L_615_[2]["HumanoidRootPart"]
								})
								if _G["FarmMastery_G"] then
									vim1:SendMouseButtonEvent(0, 0, 0, true, game, 1)
									wait(.05)
									vim1:SendMouseButtonEvent(0, 0, 0, false, game, 1)
									wait(.05)
								end
							end
						until _G["FarmMastery_G"] == false or L_615_[2]["Humanoid"]["Health"] <= 0 or not L_615_[2]["Parent"]
						SoulGuitar = false
					else
						_tp(CFrame["new"](-1943.6765136719, 251.50956726074, -12337.880859375))
					end
				elseif SelectIsland == "العظام" then
					local L_617_ = {}
					L_617_[2] = GetConnectionEnemies(L_1_[95])
					if L_617_[2] then
						HealthM = (L_617_[2]["Humanoid"]["MaxHealth"] * 70) / 100
						repeat
							local L_618_ = {}
							wait()
							MousePos = L_617_[2]["HumanoidRootPart"]["Position"]
							L_1_[4]["Masgun"](L_617_[2], _G["FarmMastery_G"])
							L_618_[2] = L_1_[18]:FindFirstChild("Modules")
							L_618_[4] = L_618_[2]:FindFirstChild("Net")
							L_618_[3] = L_618_[4]:FindFirstChild("RE/ShootGunEvent")
							if (L_1_[136]["Character"]:FindFirstChildOfClass("Tool"))["ToolTip"] ~= "مسدس" then
								return
							end
							if L_1_[136]["Character"]:FindFirstChildOfClass("Tool") and (L_1_[136]["Character"]:FindFirstChildOfClass("Tool"))["Name"] == "Skull Guitar" then
								SoulGuitar = true;
								(L_1_[136]["Character"]:FindFirstChildOfClass("Tool"))["RemoteEvent"]:FireServer("TAP", MousePos)
								if _G["FarmMastery_G"] then
									vim1:SendMouseButtonEvent(0, 0, 0, true, game, 1)
									wait(.05)
									vim1:SendMouseButtonEvent(0, 0, 0, false, game, 1)
									wait(.05)
								end
							elseif L_1_[136]["Character"]:FindFirstChildOfClass("Tool") and (L_1_[136]["Character"]:FindFirstChildOfClass("Tool"))["Name"] ~= "Skull Guitar" then
								SoulGuitar = false
								L_618_[3]:FireServer(MousePos, {
									L_617_[2]["HumanoidRootPart"]
								})
								if _G["FarmMastery_G"] then
									vim1:SendMouseButtonEvent(0, 0, 0, true, game, 1)
									wait(.05)
									vim1:SendMouseButtonEvent(0, 0, 0, false, game, 1)
									wait(.05)
								end
							end
						until _G["FarmMastery_G"] == false or L_617_[2]["Humanoid"]["Health"] <= 0 or not L_617_[2]["Parent"]
						SoulGuitar = false
					else
						_tp(CFrame["new"](-9495.6806640625, 453.58624267578, 5977.3486328125))
					end
				end
			end)
		end
	end
end)
L_1_[29] = L_1_[93]["Main"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Mastery All Swo",
		"rd"
	}),
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_619_arg0)
		local L_620_ = {}
		L_620_[2] = L_619_arg0
		_G["FarmMastery_S"] = L_620_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["FarmMastery_S"] then
				if SelectIsland == "Cake" then
					for L_621_forvar0, L_622_forvar1 in next, L_1_[18]["Remotes"]["CommF_"]:InvokeServer("getInventory") do
						local L_623_ = {}
						L_623_[3], L_623_[2] = L_621_forvar0, L_622_forvar1
						if type(L_623_[2]) == "table" then
							if L_623_[2]["Type"] == "سيف" then
								SwordName = L_623_[2]["Name"]
								if tonumber(L_623_[2]["Mastery"]) >= 1 or tonumber(L_623_[2]["Mastery"]) <= 599 then
									local L_624_ = {}
									L_624_[2] = GetConnectionEnemies(L_1_[122])
									if GetBP(SwordName) then
										if L_624_[2] then
											repeat
												wait()
												L_1_[4]["سيف"](L_624_[2], _G["FarmMastery_S"])
											until _G["FarmMastery_S"] == false or not L_624_[2]["Parent"] or L_624_[2]["Humanoid"]["Health"] <= 0
										else
											_tp(CFrame["new"](-1943.6765136719, 251.50956726074, -12337.880859375))
										end
									else
										L_1_[18]["Remotes"]["CommF_"]:InvokeServer("LoadItem", SwordName)
									end
								elseif tonumber(L_623_[2]["Mastery"]) >= 600 then
									if GetBP(SwordName) then
										return nil
									else
										L_1_[18]["Remotes"]["CommF_"]:InvokeServer("LoadItem", SwordName)
									end
								end
								break
							end
						end
					end
				elseif SelectIsland == "العظام" then
					for L_625_forvar0, L_626_forvar1 in next, L_1_[18]["Remotes"]["CommF_"]:InvokeServer("getInventory") do
						local L_627_ = {}
						L_627_[2], L_627_[1] = L_625_forvar0, L_626_forvar1
						if type(L_627_[1]) == "table" then
							if L_627_[1]["Type"] == "سيف" then
								SwordName = L_627_[1]["Name"]
								if tonumber(L_627_[1]["Mastery"]) >= 1 or tonumber(L_627_[1]["Mastery"]) <= 599 then
									local L_628_ = {}
									L_628_[2] = GetConnectionEnemies(L_1_[95])
									if GetBP(SwordName) then
										if L_628_[2] then
											repeat
												wait()
												L_1_[4]["سيف"](L_628_[2], _G["FarmMastery_S"])
											until _G["FarmMastery_S"] == false or not L_628_[2]["Parent"] or L_628_[2]["Humanoid"]["Health"] <= 0
										else
											_tp(CFrame["new"](-9495.6806640625, 453.58624267578, 5977.3486328125))
										end
									else
										L_1_[18]["Remotes"]["CommF_"]:InvokeServer("LoadItem", SwordName)
									end
								elseif tonumber(L_627_[1]["Mastery"]) >= 600 then
									if GetBP(SwordName) then
										return nil
									else
										L_1_[18]["Remotes"]["CommF_"]:InvokeServer("LoadItem", SwordName)
									end
								end
								break
							end
						end
					end
				end
			end
		end)
	end
end)
L_1_[93]["Settings"]:AddSection({
	"Settings / Configure"
})
Initialize = L_1_[93]["Settings"]:AddToggle({
	["Name"] = "هجوم سريع",
	["Description"] = "",
	["Default"] = true,
	["Callback"] = function(L_629_arg0)
		local L_630_ = {}
		L_630_[2] = L_629_arg0
		_G["الضرب المتواصل"] = L_630_[2]
	end
})
Bringmob = L_1_[93]["Settings"]:AddToggle({
	["Name"] = "سحب الموبات";
	["Description"] = "",
	["Default"] = true,
	["Callback"] = function(L_631_arg0)
		local L_632_ = {}
		L_632_[2] = L_631_arg0
		_B = L_632_[2]
	end
})
L_1_[93]["Settings"]:AddDropdown({
	["Name"] = "نمط سحب الموب";
	["Description"] = "Adjust Range";
	["Default"] = "350";
	["Options"] = {
		"250";
		"300";
		"350",
		"400";
		"450";
		"500"
	},
	["Callback"] = function(L_633_arg0)
		local L_634_ = {}
		L_634_[2] = L_633_arg0
		_G["BringRange"] = tonumber(L_634_[2])
	end
})
L_1_[93]["Settings"]:AddDropdown({
	["Name"] = "سرعة سحب الموب";
	["Description"] = "Adjust Speed";
	["Default"] = "300";
	["Options"] = {
		"250";
		"300",
		"350";
		"400";
		"450";
		"500"
	},
	["Callback"] = function(L_635_arg0)
		local L_636_ = {}
		L_636_[2] = L_635_arg0
		_G["SpeedB"] = tonumber(L_636_[2])
	end
})
L_1_[93]["Settings"]:AddDropdown({
	["Name"] = "أقصى سحب للموب",
	["Description"] = "Adjust Mob";
	["Default"] = "6",
	["Options"] = {
		"2";
		"3";
		"4";
		"5";
		"6"
	};
	["Callback"] = function(L_637_arg0)
		local L_638_ = {}
		L_638_[1] = L_637_arg0
		_G["MobM"] = tonumber(L_638_[1])
	end
})
L_1_[93]["Settings"]:AddToggle({
	["Name"] = "هوب سيرفر تلقائي",
	["Default"] = false;
	["Callback"] = function(L_639_arg0)
		local L_640_ = {}
		L_640_[2] = L_639_arg0
		_G["AutoHopServer"] = L_640_[2]
		if not L_640_[2] then
			_G["HopTimer"] = nil
		end
	end
})
Spawn(function()
	while Wait(1) do
		if _G["AutoHopServer"] then
			pcall(function()
				if not _G["HopTimer"] then
					_G["HopTimer"] = tick()
				end
				if tick() - _G["HopTimer"] >= _G["HopDelay"] then
					_G["HopTimer"] = tick()
					if syn and syn["queue_on_teleport"] then
						syn["queue_on_teleport"](L_1_[2]({
							"loadstring(game:Http",
							"Get('https://pastefy",
							".app/iiFOhcot/raw'))",
							"()"
						}))
					end;
					(game:GetService("TeleportService")):Teleport(game["PlaceId"], game["Players"]["LocalPlayer"])
				end
			end)
		end
	end
end)
L_1_[93]["Settings"]:AddSlider({
	["Name"] = "تأخير الهوب (دقائق)";
	["Min"] = 5,
	["Max"] = 120;
	["Default"] = 30;
	["Increment"] = 1;
	["Callback"] = function(L_641_arg0)
		local L_642_ = {}
		L_642_[1] = L_641_arg0
		_G["HopDelay"] = L_642_[1] * 60
	end
})
L_1_[93]["Settings"]:AddToggle({
	["Name"] = "تعيين نقطة سبون تلقائي";
	["Default"] = false,
	["Callback"] = function(L_643_arg0)
		local L_644_ = {}
		L_644_[1] = L_643_arg0;
		(getgenv())["Set"] = L_644_[1]
		if L_644_[1] then
			pcall(function()
				(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("SetSpawnPoint")
			end)
		end
	end
})
BusuAura = L_1_[93]["Settings"]:AddToggle({
	["Name"] = "تشغيل بوسو تلقائي",
	["Description"] = "",
	["Default"] = true;
	["Callback"] = function(L_645_arg0)
		local L_646_ = {}
		L_646_[1] = L_645_arg0
		Boud = L_646_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if Boud then
				local L_647_ = {}
				L_647_[2] = {
					"HasBuso",
					"Buso"
				}
				if not L_1_[136]["Character"]:FindFirstChild(L_647_[2][1]) then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer(L_647_[2][2])
				end
			end
		end)
	end
end)
L_1_[93]["Settings"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Haki Observatio",
		"n"
	}),
	["Default"] = false;
	["Callback"] = function(L_648_arg0)
		local L_649_ = {}
		L_649_[2] = L_648_arg0;
		(getgenv())["Observation"] = L_649_[2]
	end
})
spawn(function()
	while wait() do
		if (getgenv())["Observation"] then
			pcall(function()
				(game:GetService("ReplicatedStorage"))["Remotes"]["CommE"]:FireServer("Ken", true)
			end)
		end
	end
end)
RaceV3Aura = L_1_[93]["Settings"]:AddToggle({
	["Name"] = "تشغيل ريس V3 تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Flag"] = "AutoTurnonRaceV3";
	["Callback"] = function(L_650_arg0)
		local L_651_ = {}
		L_651_[1] = L_650_arg0
		_G["RaceClickAutov3"] = L_651_[1]
	end
})
spawn(function()
	while wait(.2) do
		pcall(function()
			if _G["RaceClickAutov3"] then
				repeat
					L_1_[18]["Remotes"]["CommE"]:FireServer("ActivateAbility")
					wait(30)
				until not _G["RaceClickAutov3"]
			end
		end)
	end
end)
RaceV4Aura = L_1_[93]["Settings"]:AddToggle({
	["Name"] = "تشغيل ريس V4 تلقائي",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_652_arg0)
		local L_653_ = {}
		L_653_[2] = L_652_arg0
		_G["RaceClickAutov4"] = L_653_[2]
	end
})
spawn(function()
	while wait(.2) do
		pcall(function()
			if _G["RaceClickAutov4"] then
				if L_1_[136]["Character"]:FindFirstChild("RaceEnergy") then
					if (L_1_[136]["Character"]:FindFirstChild("RaceEnergy"))["Value"] == 1 then
						Useskills("nil", "Y")
					end
				end
			end
		end)
	end
end)
L_1_[45] = game["Players"]["LocalPlayer"];
(getgenv())["WalkSpeedValue"] = 30
_G["WalkSpeedEnabled"] = false
L_1_[19] = function(L_654_arg0)
	local L_655_ = {}
	L_655_[1] = L_654_arg0
	if L_655_[1] then
		L_655_[1]["WalkSpeed"] = (getgenv())["WalkSpeedValue"];
		(L_655_[1]:GetPropertyChangedSignal("WalkSpeed")):Connect(function()
			if _G["WalkSpeedEnabled"] and L_655_[1]["WalkSpeed"] ~= (getgenv())["WalkSpeedValue"] then
				L_655_[1]["WalkSpeed"] = (getgenv())["WalkSpeedValue"]
			end
		end)
	end
end
L_1_[93]["Settings"]:AddToggle({
	["Name"] = "سرعة تلقائية";
	["Default"] = false,
	["Callback"] = function(L_656_arg0)
		local L_657_ = {}
		L_657_[2] = L_656_arg0
		_G["WalkSpeedEnabled"] = L_657_[2]
		L_657_[1] = L_1_[45]["Character"] and L_1_[45]["Character"]:FindFirstChild("Humanoid")
		if L_657_[2] and L_657_[1] then
			L_1_[19](L_657_[1])
		end
	end
})
L_1_[93]["Settings"]:AddSlider({
	["Name"] = "قيمة السرعة";
	["Min"] = 26,
	["Max"] = 300,
	["Default"] = (getgenv())["WalkSpeedValue"];
	["Callback"] = function(L_658_arg0)
		local L_659_ = {}
		L_659_[3] = L_658_arg0;
		(getgenv())["WalkSpeedValue"] = L_659_[3]
		L_659_[1] = L_1_[45]["Character"] and L_1_[45]["Character"]:FindFirstChild("Humanoid")
		if _G["WalkSpeedEnabled"] and L_659_[1] then
			L_659_[1]["WalkSpeed"] = L_659_[3]
		end
	end
})
L_1_[45]["CharacterAdded"]:Connect(function(L_660_arg0)
	local L_661_ = {}
	L_661_[2] = L_660_arg0
	L_661_[3] = L_661_[2]:WaitForChild("Humanoid", 5)
	if _G["WalkSpeedEnabled"] then
		L_1_[19](L_661_[3])
	end
end)
if L_1_[45]["Character"] then
	local L_662_ = {}
	L_662_[2] = L_1_[45]["Character"]:FindFirstChild("Humanoid")
	if _G["WalkSpeedEnabled"] then
		L_1_[19](L_662_[2])
	end
end
L_1_[93]["Settings"]:AddToggle({
	["Name"] = "قفز تلقائي";
	["Default"] = false;
	["Callback"] = function(L_663_arg0)
		local L_664_ = {}
		L_664_[2] = L_663_arg0
		_G["JumpEnabled"] = L_664_[2]
		if L_664_[2] and L_1_[45]["Character"] then
			local L_665_ = {}
			L_665_[1] = L_1_[45]["Character"]:FindFirstChild("Humanoid")
			if L_665_[1] then
				L_665_[1]["JumpPower"] = (getgenv())["JumpValue"]
			end
		end
	end
})
L_1_[93]["Settings"]:AddSlider({
	["Name"] = "قيمة القفز",
	["Min"] = 50;
	["Max"] = 500,
	["Default"] = (getgenv())["JumpValue"],
	["Callback"] = function(L_666_arg0)
		local L_667_ = {}
		L_667_[1] = L_666_arg0;
		(getgenv())["JumpValue"] = L_667_[1]
		if _G["JumpEnabled"] and L_1_[45]["Character"] then
			local L_668_ = {}
			L_668_[2] = L_1_[45]["Character"]:FindFirstChild("Humanoid")
			if L_668_[2] then
				L_668_[2]["JumpPower"] = L_667_[1]
			end
		end
	end
})
RandomAround = L_1_[93]["Settings"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Turn on Spin Po";
		"sition"
	});
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_669_arg0)
		local L_670_ = {}
		L_670_[1] = L_669_arg0
		RandomCFrame = L_670_[1]
	end
})
Byp = L_1_[93]["Settings"]:AddToggle({
	["Name"] = L_1_[2]({
		"Turn on Bypass Telep";
		"ort"
	}),
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_671_arg0)
		local L_672_ = {}
		L_672_[1] = L_671_arg0
		_G["تجاوز"] = L_672_[1]
	end
})
SafeModes = L_1_[93]["Settings"]:AddToggle({
	["Name"] = "وضع الذعر";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_673_arg0)
		local L_674_ = {}
		L_674_[1] = L_673_arg0
		_G["Safemode"] = L_674_[1]
	end
})
spawn(function()
	while task["wait"](Sec) do
		pcall(function()
			if _G["Safemode"] then
				local L_675_ = {}
				L_675_[1] = (L_1_[45]["Character"]["Humanoid"]["Health"] / L_1_[45]["Character"]["Humanoid"]["MaxHealth"]) * 100
				if L_675_[1] < Num_self then
					shouldTween = true
					_tp(Root["CFrame"] * CFrame["new"](0, 500, 0))
				else
					shouldTween = false
				end
			end
		end)
	end
end)
DisableHitVFX = L_1_[93]["Settings"]:AddToggle({
	["Name"] = "إزالة مؤثرات الضرب";
	["Description"] = L_1_[2]({
		"Removes slash and sw";
		"ord visual effects f";
		"or better visibility"
	});
	["Default"] = false,
	["Callback"] = function(L_676_arg0)
		local L_677_ = {}
		L_677_[2] = L_676_arg0
		_G["DestroyHit"] = L_677_[2]
	end
})
L_1_[1] = {
	"SlashHit";
	"CurvedRing";
	"SwordSlash";
	"SlashTail"
}
task["spawn"](function()
	while task["wait"](Sec) do
		if _G["DestroyHit"] then
			pcall(function()
				for L_678_forvar0, L_679_forvar1 in pairs(workspace["_WorldOrigin"]:GetChildren()) do
					local L_680_ = {}
					L_680_[1], L_680_[2] = L_678_forvar0, L_679_forvar1
					if table["find"](L_1_[1], L_680_[2]["Name"]) then
						L_680_[2]:Destroy()
					end
				end
			end)
		end
	end
end)
RmvVFX = L_1_[93]["Settings"]:AddToggle({
	["Name"] = L_1_[2]({
		"Remove Death & Respa",
		"wned VFX"
	});
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_681_arg0)
		local L_682_ = {}
		L_682_[2] = L_681_arg0
		RDeath = L_682_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if RDeath then
				if L_1_[18]["Effect"]["Container"]:FindFirstChild("Death") then
					L_1_[18]["Effect"]["Container"]["Death"]:Destroy()
				end
				if L_1_[18]["Effect"]["Container"]:FindFirstChild("Respawn") then
					L_1_[18]["Effect"]["Container"]["Respawn"]:Destroy()
				end
			end
		end)
	end
end)
DisblesNotify = L_1_[93]["Settings"]:AddToggle({
	["Name"] = "إخفاء الإشعارات";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_683_arg0)
		local L_684_ = {}
		L_684_[2] = L_683_arg0
		RemoveDamage = L_684_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if RemoveDamage then
				L_1_[18]["Assets"]["GUI"]["DamageCounter"]["Enabled"] = false
				L_1_[45]["PlayerGui"]["Notifications"]["Enabled"] = false
			else
				L_1_[18]["Assets"]["GUI"]["DamageCounter"]["Enabled"] = true
				L_1_[45]["PlayerGui"]["Notifications"]["Enabled"] = true
			end
		end)
	end
end)
L_1_[93]["Settings"]:AddToggle({
	["Name"] = "مضاد لـ AFK",
	["Default"] = true;
	["Callback"] = function(L_685_arg0)
		local L_686_ = {}
		L_686_[1] = L_685_arg0
		if L_686_[1] then
			local L_687_ = {}
			L_687_[1] = game:GetService("VirtualUser")
			repeat
				wait()
			until game:IsLoaded();
			(game:GetService("Players"))["LocalPlayer"]["Idled"]:Connect(function()
				L_687_[1]:Button2Down(Vector2["new"](0, 0), workspace["CurrentCamera"]["CFrame"])
				wait(1)
				L_687_[1]:Button2Up(Vector2["new"](0, 0), workspace["CurrentCamera"]["CFrame"])
			end)
		end
	end
})
L_1_[93]["Settings"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Anti - Admin Jo";
		"in Server"
	}),
	["Description"] = "";
	["Default"] = true,
	["Callback"] = function(L_688_arg0)
		local L_689_ = {}
		L_689_[1] = L_688_arg0;
		(getgenv())["HopServerAdmin"] = L_689_[1]
	end
})
spawn(function()
	while wait() do
		pcall(function()
			if (getgenv())["HopServerAdmin"] then
				for L_690_forvar0, L_691_forvar1 in pairs(game["Players"]:GetPlayers()) do
					local L_692_ = {}
					L_692_[2], L_692_[3] = L_690_forvar0, L_691_forvar1
					L_692_[4] = {
						"red_game43",
						"rip_indra",
						"Axiore";
						"Polkster";
						"wenlocktoad";
						"Daigrock";
						"toilamvidamme";
						"oofficialnoobie",
						"Uzoth";
						"Azarth";
						"arlthmetic",
						"Death_King",
						"Lunoven",
						"TheGreateAced",
						"rip_fud",
						"drip_mama";
						"layandikit12",
						"Hingoi"
					}
					if table["find"](L_692_[4], L_692_[3]["Name"]) then
						Hop()
					end
				end
			end
		end)
	end
end)
L_1_[93]["Settings"]:AddToggle({
	["Name"] = "نو كليب";
	["Default"] = false,
	["Callback"] = function(L_693_arg0)
		local L_694_ = {}
		L_694_[1] = L_693_arg0;
		(getgenv())["NoClip"] = L_694_[1]
	end
})
spawn(function()
	pcall(function()
		(game:GetService("RunService"))["Stepped"]:Connect(function()
			if (getgenv())["NoClip"] then
				for L_695_forvar0, L_696_forvar1 in pairs(game["Players"]["LocalPlayer"]["Character"]:GetDescendants()) do
					local L_697_ = {}
					L_697_[1], L_697_[2] = L_695_forvar0, L_696_forvar1
					if L_697_[2]:IsA("BasePart") or L_697_[2]:IsA("Part") then
						L_697_[2]["CanCollide"] = false
					end
				end
			end
		end)
	end)
end)
L_1_[93]["Esp"]:AddSection({
	"تطوير الستاتس"
})
StatusSelect = L_1_[93]["Esp"]:AddSlider({
	["Name"] = "قيمة الستاتس",
	["Description"] = "",
	["Default"] = 10,
	["Min"] = 0,
	["Max"] = 1000,
	["Rounding"] = 1,
	["Callback"] = function(L_698_arg0)
		local L_699_ = {}
		L_699_[2] = L_698_arg0
		pSats = L_699_[2]
	end
})
StatsUpg = L_1_[93]["Esp"]:AddToggle({
	["Name"] = "يد تلقائي",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_700_arg0)
		local L_701_ = {}
		L_701_[2] = L_700_arg0
		_G["Auto_Melee"] = L_701_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_Melee"] then
				statsSetings("يد", pSats)
			end
		end)
	end
end)
StatsUpg = L_1_[93]["Esp"]:AddToggle({
	["Name"] = "سيف تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_702_arg0)
		local L_703_ = {}
		L_703_[2] = L_702_arg0
		_G["Auto_Sword"] = L_703_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_Sword"] then
				statsSetings("سيف", pSats)
			end
		end)
	end
end)
StatsUpg = L_1_[93]["Esp"]:AddToggle({
	["Name"] = "مسدس تلقائي",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_704_arg0)
		local L_705_ = {}
		L_705_[1] = L_704_arg0
		_G["Auto_Gun"] = L_705_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_Gun"] then
				statsSetings("مسدس", pSats)
			end
		end)
	end
end)
StatsUpg = L_1_[93]["Esp"]:AddToggle({
	["Name"] = "فاكهة تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_706_arg0)
		local L_707_ = {}
		L_707_[2] = L_706_arg0
		_G["Auto_DevilFruit"] = L_707_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_DevilFruit"] then
				statsSetings("Devil", pSats)
			end
		end)
	end
end)
StatsUpg = L_1_[93]["Esp"]:AddToggle({
	["Name"] = "دفاع تلقائي",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_708_arg0)
		local L_709_ = {}
		L_709_[1] = L_708_arg0
		_G["Auto_Defense"] = L_709_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_Defense"] then
				statsSetings("Defense", pSats)
			end
		end)
	end
end)
L_1_[93]["Fish"]:AddSection({
	"Fishing"
})
L_1_[93]["Fish"]:AddDropdown({
	["Name"] = "اختر الصنارة";
	["Description"] = "",
	["Options"] = {
		"Fishing Rod";
		"Gold Rod";
		"Shark Rod",
		"Shell Rod",
		"Treasure Rod"
	},
	["Default"] = "Fishing Rod";
	["Callback"] = function(L_710_arg0)
		local L_711_ = {}
		L_711_[2] = L_710_arg0
		_G["SelectedRod"] = L_711_[2]
	end
})
BaitDropdown = L_1_[93]["Fish"]:AddDropdown({
	["Name"] = "اختر الطعم",
	["Description"] = "";
	["Options"] = {
		"Basic Bait";
		"Kelp Bait",
		"Good Bait";
		"Abyssal Bait",
		"Frozen Bait";
		"Epic Bait",
		"Carnivore Bait"
	};
	["Default"] = "Basic Bait";
	["Callback"] = function(L_712_arg0)
		local L_713_ = {}
		L_713_[2] = L_712_arg0
		_G["SelectedBait"] = L_713_[2]
		if _G["AutoBuyBait"] then
			pcall(function()
				L_1_[64]["RFCraft"]:InvokeServer("Craft", _G["SelectedBait"], {})
			end)
		end
	end
})
BuyBaitToggle = L_1_[93]["Fish"]:AddToggle({
	["Name"] = "شراء طعم تلقائي",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_714_arg0)
		local L_715_ = {}
		L_715_[1] = L_714_arg0
		_G["AutoBuyBait"] = L_715_[1]
		if L_715_[1] then
			pcall(function()
				L_1_[64]["RFCraft"]:InvokeServer("Craft", _G["SelectedBait"], {})
			end)
		end
	end
})
task["spawn"](function()
	while task["wait"](2) do
		if _G["AutoBuyBait"] and _G["SelectedBait"] then
			pcall(function()
				L_1_[64]["RFCraft"]:InvokeServer("Craft", _G["SelectedBait"], {})
			end)
		end
	end
end)
FishingToggle = L_1_[93]["Fish"]:AddToggle({
	["Name"] = "صيد تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_716_arg0)
		local L_717_ = {}
		L_717_[2] = L_716_arg0
		_G["AutoFishing"] = L_717_[2]
	end
})
L_1_[59] = game:GetService("Players")
L_1_[57] = L_1_[59]["LocalPlayer"]
L_1_[80] = game:GetService("Workspace")
L_1_[56] = game:GetService("ReplicatedStorage")
L_1_[13] = L_1_[56]:WaitForChild("FishReplicated")
L_1_[27] = L_1_[13]:WaitForChild("FishingRequest")
L_1_[111] = require(L_1_[13]["FishingClient"]["Config"])
L_1_[7] = require(L_1_[56]["Util"][L_1_[2]({
	"GetWaterHeightAtLoca";
	"tion"
})])
L_1_[21] = L_1_[111]["Rod"]["MaxLaunchDistance"]
task["spawn"](function()
	while task["wait"](.5) do
		if _G["AutoFishing"] then
			pcall(function()
				local L_718_ = {}
				L_718_[3] = L_1_[57]["Character"] or L_1_[57]["CharacterAdded"]:Wait()
				L_718_[2] = L_718_[3]:FindFirstChild("HumanoidRootPart")
				if not L_718_[2] then
					return
				end
				L_718_[1] = L_718_[3]:FindFirstChildOfClass("Tool")
				if _G["SelectedRod"] and (not L_718_[1] or L_718_[1]["Name"] ~= _G["SelectedRod"]) then
					local L_719_ = {}
					L_719_[2] = L_1_[57]["Backpack"]:FindFirstChild(_G["SelectedRod"])
					if L_719_[2] then
						L_718_[3]["Humanoid"]:EquipTool(L_719_[2])
						L_718_[1] = L_719_[2]
					end
				end
				if L_718_[1] then
					local L_720_ = {}
					L_720_[3] = L_1_[7](L_718_[2]["Position"])
					L_720_[5], L_720_[6] = L_1_[80]:FindPartOnRayWithIgnoreList(Ray["new"](L_718_[3]["Head"]["Position"], L_718_[2]["CFrame"]["LookVector"] * L_1_[21]), {
						L_718_[3];
						L_1_[80]["Characters"];
						L_1_[80]["Enemies"]
					})
					L_720_[7] = L_720_[6] and Vector3["new"](L_720_[6]["X"], math["max"](L_720_[6]["Y"], L_720_[3]), L_720_[6]["Z"])
					L_720_[4] = L_718_[1]:GetAttribute("State")
					L_720_[1] = L_718_[1]:GetAttribute("ServerState")
					if L_720_[7] and (L_720_[4] == "ReeledIn" or L_720_[1] == "ReeledIn") then
						L_1_[27]:InvokeServer("StartCasting")
						task["wait"]()
						L_1_[27]:InvokeServer("CastLineAtLocation", L_720_[7], 100, true)
					elseif L_720_[1] == "Biting" then
						L_1_[27]:InvokeServer("Catching", true)
						task["wait"](.1)
						L_1_[27]:InvokeServer("Catch", 1)
					end
				end
			end)
		end
	end
end)
FishingQ = L_1_[93]["Fish"]:AddToggle({
	["Name"] = "مهمة صيد تلقائية",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_721_arg0)
		local L_722_ = {}
		L_722_[2] = L_721_arg0
		_G["AutoFishingQuest"] = L_722_[2]
	end
})
L_1_[62] = game:GetService("Players")
L_1_[68] = L_1_[62]["LocalPlayer"]
L_1_[14] = game:GetService("ReplicatedStorage")
L_1_[72] = L_1_[14]["Modules"]["Net"]:WaitForChild(L_1_[2]({
	"RF/JobsRemoteFunctio";
	"n"
}))
L_1_[31] = function()
	local L_723_ = {}
	L_723_[2] = L_1_[68]["PlayerGui"]:FindFirstChild("Quest") or L_1_[68]["PlayerGui"]:FindFirstChild("QuestGui")
	if L_723_[2] and (L_723_[2]:FindFirstChild("Container") and L_723_[2]["Container"]:FindFirstChild("QuestTitle")) then
		return true
	end
	return false
end
task["spawn"](function()
	while task["wait"](1) do
		if _G["AutoFishingQuest"] then
			pcall(function()
				if not L_1_[31]() then
					L_1_[72]:InvokeServer("FishingNPC", "Angler", "AskQuest")
				end
			end)
		end
	end
end)
QuestToggle = L_1_[93]["Fish"]:AddToggle({
	["Name"] = "إكمال مهمة تلقائي";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_724_arg0)
		local L_725_ = {}
		L_725_[2] = L_724_arg0
		_G["AutoQuestComplete"] = L_725_[2]
		if L_725_[2] then
			pcall(function()
				L_1_[64]["RFJobsRemoteFunction"]:InvokeServer("FishingNPC", "FinishQuest")
			end)
		end
	end
})
task["spawn"](function()
	while task["wait"](5) do
		if _G["AutoQuestComplete"] then
			pcall(function()
				L_1_[64]["RFJobsRemoteFunction"]:InvokeServer("FishingNPC", "FinishQuest")
			end)
		end
	end
end)
SellFishToggle = L_1_[93]["Fish"]:AddToggle({
	["Name"] = "بيع سمك تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_726_arg0)
		local L_727_ = {}
		L_727_[2] = L_726_arg0
		_G["AutoSellFish"] = L_727_[2]
		if L_727_[2] then
			pcall(function()
				L_1_[64]["RFJobsRemoteFunction"]:InvokeServer("FishingNPC", "SellFish")
			end)
		end
	end
})
task["spawn"](function()
	while task["wait"](5) do
		if _G["AutoSellFish"] then
			pcall(function()
				L_1_[64]["RFJobsRemoteFunction"]:InvokeServer("FishingNPC", "SellFish")
			end)
		end
	end
end)
SpamSkillZ = L_1_[93]["Fish"]:AddToggle({
	["Name"] = "سبام مهارة Z تلقائي";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_728_arg0)
		local L_729_ = {}
		L_729_[1] = L_728_arg0
		_G["AutoSkillZ"] = L_729_[1]
	end
})
L_1_[132] = game:GetService("ReplicatedStorage")
L_1_[97] = L_1_[132]["Modules"]["Net"]:WaitForChild("RF/JobToolAbilities")
task["spawn"](function()
	while task["wait"](.5) do
		if _G["AutoSkillZ"] then
			pcall(function()
				L_1_[97]:InvokeServer("Z", true)
			end)
		end
	end
end)
TravelDress = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "مهمة بحر 2 تلقائية";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_730_arg0)
		local L_731_ = {}
		L_731_[2] = L_730_arg0
		_G["TravelDres"] = L_731_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["TravelDres"] then
				if L_1_[45]["Data"]["Level"]["Value"] >= 700 then
					if workspace["Map"]["الجليد"]["Door"]["CanCollide"] == true and workspace["Map"]["الجليد"]["Door"]["Transparency"] == 0 then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer(L_1_[2]({
							"DressrosaQuestProgre";
							"ss"
						}), "Detective")
						EquipWeapon("Key")
						repeat
							wait()
							_tp(CFrame["new"](1347.7124, 37.3751602, -1325.6488))
						until not _G["TravelDres"] or Root["Position"] == (CFrame["new"](1347.7124, 37.3751602, -1325.6488))["Position"]
					elseif workspace["Map"]["الجليد"]["Door"]["CanCollide"] == false and workspace["Map"]["الجليد"]["Door"]["Transparency"] == 1 then
						if Enemies:FindFirstChild("أميرال الجليد") then
							for L_732_forvar0, L_733_forvar1 in pairs(Enemies:GetChildren()) do
								local L_734_ = {}
								L_734_[1], L_734_[2] = L_732_forvar0, L_733_forvar1
								if L_734_[2]["Name"] == "أميرال الجليد" and L_1_[4]["Alive"](L_734_[2]) then
									repeat
										task["wait"]()
										L_1_[4]["Kill"](L_734_[2], _G["TravelDres"])
									until _G["TravelDres"] == false or L_734_[2]["Humanoid"]["Health"] <= 0
									L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
								end
							end
						else
							_tp(CFrame["new"](1347.7124, 37.3751602, -1325.6488))
						end
					else
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
					end
				end
			end
		end)
	end
end)
Zou = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "مهمة بحر 3 تلقائية";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_735_arg0)
		local L_736_ = {}
		L_736_[2] = L_735_arg0
		_G["AutoZou"] = L_736_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["AutoZou"] then
				if L_1_[45]["Data"]["Level"]["Value"] >= 1500 then
					if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
						if (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("GetUnlockables"))["FlamingoAccess"] ~= nil then
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("F_", "TravelZou")
							if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
								local L_737_ = {}
								L_737_[2] = GetConnectionEnemies("rip_indra")
								if L_737_[2] then
									repeat
										wait()
										L_1_[4]["Kill"](L_737_[2], _G["AutoZou"])
									until not _G["AutoZou"] or not L_737_[2]["Parent"] or L_737_[2]["Humanoid"]["Health"] <= 0
									Check = 2
									repeat
										wait()
										L_1_[18]["Remotes"]["CommF_"]:InvokeServer("F_", "TravelZou")
									until Check == 1
								else
									L_1_[18]["Remotes"]["CommF_"]:InvokeServer("F_", "ZQuestProgress", "Check")
									wait(.1)
									L_1_[18]["Remotes"]["CommF_"]:InvokeServer("F_", "ZQuestProgress", "Begin")
								end
							elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("F_", "TravelZou")
							else
								local L_738_ = {}
								L_738_[1] = GetConnectionEnemies("دون سوان")
								if L_738_[1] then
									repeat
										wait()
										L_1_[4]["Kill"](L_738_[1], _G["AutoZou"])
									until not _G["AutoZou"] or not L_738_[1]["Parent"] or L_738_[1]["Humanoid"]["Health"] <= 0
								else
									repeat
										wait()
										_tp(CFrame["new"](2288.802, 15.1870775, 863.034607))
									until not _G["AutoZou"] or Root["Position"] == (CFrame["new"](2288.802, 15.1870775, 863.034607))["Position"]
									if Root["CFrame"] == CFrame["new"](2288.802, 15.1870775, 863.034607) then
										notween(CFrame["new"](2288.802, 15.1870775, 863.034607))
									end
								end
							end
						else
							if (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("GetUnlockables"))["FlamingoAccess"] == nil then
								TabelDevilFruitStore = {}
								TabelDevilFruitOpen = {}
								for L_739_forvar0, L_740_forvar1 in pairs(L_1_[18]["Remotes"]["CommF_"]:InvokeServer("getInventoryFruits")) do
									local L_741_ = {}
									L_741_[1], L_741_[2] = L_739_forvar0, L_740_forvar1
									for L_742_forvar0, L_743_forvar1 in pairs(L_741_[2]) do
										local L_744_ = {}
										L_744_[3], L_744_[2] = L_742_forvar0, L_743_forvar1
										if L_744_[3] == "Name" then
											table["insert"](TabelDevilFruitStore, L_744_[2])
										end
									end
								end
								for L_745_forvar0, L_746_forvar1 in next, (game["ReplicatedStorage"]:WaitForChild("Remotes"))["CommF_"]:InvokeServer("GetFruits") do
									local L_747_ = {}
									L_747_[3], L_747_[1] = L_745_forvar0, L_746_forvar1
									if L_747_[1]["Price"] >= 1000000 then
										table["insert"](TabelDevilFruitOpen, L_747_[1]["Name"])
									end
								end
								for L_748_forvar0, L_749_forvar1 in pairs(TabelDevilFruitOpen) do
									local L_750_ = {}
									L_750_[3], L_750_[1] = L_748_forvar0, L_749_forvar1
									for L_751_forvar0, L_752_forvar1 in pairs(TabelDevilFruitStore) do
										local L_753_ = {}
										L_753_[2], L_753_[3] = L_751_forvar0, L_752_forvar1
										if L_750_[1] == L_753_[3] and (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("GetUnlockables"))["FlamingoAccess"] == nil then
											if not L_1_[45]["Backpack"]:FindFirstChild(L_753_[3]) then
												L_1_[18]["Remotes"]["CommF_"]:InvokeServer("F_", "LoadFruit", L_753_[3])
											else
												L_1_[18]["Remotes"]["CommF_"]:InvokeServer("F_", "TalkTrevor", "1")
												L_1_[18]["Remotes"]["CommF_"]:InvokeServer("F_", "TalkTrevor", "2")
												L_1_[18]["Remotes"]["CommF_"]:InvokeServer("F_", "TalkTrevor", "3")
											end
										end
									end
								end
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("F_", "TalkTrevor", "1")
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("F_", "TalkTrevor", "2")
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("F_", "TalkTrevor", "3")
							end
						end
					else
						if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
							if string["find"](L_1_[45]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "Swan Pirates") and (string["find"](L_1_[45]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "50") and L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == true) then
								local L_754_ = {}
								L_754_[1] = GetConnectionEnemies("قرصان البجعة")
								if L_754_[1] then
									pcall(function()
										repeat
											wait()
											L_1_[4]["Kill"](L_754_[1], _G["AutoZou"])
										until not L_754_[1]["Parent"] or L_754_[1]["Humanoid"]["Health"] <= 0 or _G["AutoZou"] == false or L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == false
									end)
								else
									_tp(CFrame["new"](1057.92761, 137.614319, 1242.08069))
								end
							else
								_tp(CFrame["new"](-456.28952, 73.0200958, 299.895966))
							end
						elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
							local L_755_ = {}
							L_755_[2] = GetConnectionEnemies("جيريمي")
							if L_755_[2] then
								repeat
									wait()
									L_1_[4]["Kill"](L_755_[2], _G["AutoZou"])
								until not L_755_[2]["Parent"] or L_755_[2]["Humanoid"]["Health"] <= 0 or _G["AutoZou"] == false
							else
								_tp(CFrame["new"](2099.88159, 448.931, 648.997375))
							end
						elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
							repeat
								wait()
								_tp(CFrame["new"](-1836, 11, 1714))
							until not _G["AutoZou"] or Root["Position"] == (CFrame["new"](-1836, 11, 1714))["Position"]
							if Root["CFrame"] == CFrame["new"](-1836, 11, 1714) then
								notween(CFrame["new"](-1836, 11, 1714))
							end
							notween(CFrame["new"](-1850.49329, 13.1789551, 1750.89685))
							wait(.1)
							notween(CFrame["new"](-1858.87305, 19.3777466, 1712.01807))
							wait(.1)
							notween(CFrame["new"](-1803.94324, 16.5789185, 1750.89685))
							wait(.1)
							notween(CFrame["new"](-1858.55835, 16.8604317, 1724.79541))
							wait(.1)
							notween(CFrame["new"](-1869.54224, 15.987854, 1681.00659))
							wait(.1)
							notween(CFrame["new"](-1800.0979, 16.4978027, 1684.52368))
							wait(.1)
							notween(CFrame["new"](-1819.26343, 14.795166, 1717.90625))
							wait(.1)
							notween(CFrame["new"](-1813.51843, 14.8604736, 1724.79541))
						end
					end
				end
			end
		end)
	end
end)
L_1_[93]["Quests"]:AddSection({
	"Tushita + Yama"
})
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "سيف توشيتا تلقائي",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_756_arg0)
		local L_757_ = {}
		L_757_[2] = L_756_arg0
		_G["Auto_Tushita"] = L_757_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_Tushita"] then
				if workspace["Map"]["Turtle"]:FindFirstChild("TushitaGate") then
					if not GetBP("Holy Torch") then
						_tp(CFrame["new"](5148.03613, 162.352493, 910.548218))
						wait(.7)
					else
						EquipWeapon("Holy Torch")
						task["wait"](1)
						repeat
							task["wait"]()
							_tp(CFrame["new"](-10752, 417, -9366))
						until not _G["Auto_Tushita"] or ((CFrame["new"](-10752, 417, -9366))["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10
						wait(.7)
						repeat
							task["wait"]()
							_tp(CFrame["new"](-11672, 334, -9474))
						until not _G["Auto_Tushita"] or ((CFrame["new"](-11672, 334, -9474))["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10
						wait(.7)
						repeat
							task["wait"]()
							_tp(CFrame["new"](-12132, 521, -10655))
						until not _G["Auto_Tushita"] or ((CFrame["new"](-12132, 521, -10655))["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10
						wait(.7)
						repeat
							task["wait"]()
							_tp(CFrame["new"](-13336, 486, -6985))
						until not _G["Auto_Tushita"] or ((CFrame["new"](-13336, 486, -6985))["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10
						wait(.7)
						repeat
							task["wait"]()
							_tp(CFrame["new"](-13489, 332, -7925))
						until not _G["Auto_Tushita"] or ((CFrame["new"](-13489, 332, -7925))["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10
					end
				else
					local L_758_ = {}
					L_758_[1] = GetConnectionEnemies("لونغما")
					if L_758_[1] then
						repeat
							task["wait"]()
							L_1_[4]["Kill"](L_758_[1], _G["Auto_Tushita"])
						until L_758_[1]["Humanoid"]["Health"] <= 0 or not _G["Auto_Tushita"] or not L_758_[1]["Parent"]
					else
						if L_1_[18]:FindFirstChild("لونغما") then
							_tp((L_1_[18]:FindFirstChild("لونغما"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0))
						end
					end
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "سيف ياما تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_759_arg0)
		local L_760_ = {}
		L_760_[2] = L_759_arg0
		_G["Auto_Yama"] = L_760_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_Yama"] then
				if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("EliteHunter", "Progress") < 30 then
					_G["FarmEliteHunt"] = true
				elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("EliteHunter", "Progress") > 30 then
					_G["FarmEliteHunt"] = false
					if (workspace["Map"]["Waterfall"]["SealedKatana"]["Handle"]["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 20 then
						local L_761_ = {}
						_tp(workspace["Map"]["Waterfall"]["SealedKatana"]["Handle"]["CFrame"])
						L_761_[1] = GetConnectionEnemies("الشبح")
						if L_761_[1] then
							repeat
								wait()
								L_1_[4]["Kill"](L_761_[1], _G["Auto_Yama"])
							until L_761_[1]["Humanoid"]["Health"] <= 0 or not L_761_[1]["Parent"] or not _G["Auto_Yama"]
							fireclickdetector(workspace["Map"]["Waterfall"]["SealedKatana"]["Handle"]["ClickDetector"])
						end
					end
				end
			end
		end)
	end
end)
L_1_[93]["Quests"]:AddSection({
	"Skull Guitars / Misc"
})
CheckSoul = L_1_[93]["Quests"]:AddParagraph({
	["Title"] = L_1_[2]({
		" Skull Guitar Quests",
		" "
	}),
	["Content"] = ""
})
spawn(function()
	while wait(.2) do
		pcall(function()
			if Quest1 == true then
				CheckSoul:SetDesc(L_1_[2]({
					" Quest Number : Ques";
					"t1"
				}))
			elseif Quest2 == true then
				CheckSoul:SetDesc(L_1_[2]({
					" Quest Number : Ques";
					"t2"
				}))
			elseif Quest3 == true then
				CheckSoul:SetDesc(L_1_[2]({
					" Quest Number : Ques",
					"t3"
				}))
			elseif Quest4 == true then
				CheckSoul:SetDesc(L_1_[2]({
					" Quest Number : Ques",
					"t4"
				}))
			elseif GetWP("Skull Guitar") then
				CheckSoul:SetDesc(L_1_[2]({
					" Quest Number : Coll";
					"ect!!"
				}))
			else
				CheckSoul:SetDesc(L_1_[2]({
					" Quest Number : No Q";
					"uest!!"
				}))
			end
		end)
	end
end)
L_1_[93]["Quests"]:AddToggle({
	["Name"] = "غيتار الجمجمة تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_762_arg0)
		local L_763_ = {}
		L_763_[2] = L_762_arg0
		_G["Auto_Soul_Guitar"] = L_763_[2]
	end
})
task["spawn"](function()
	while wait() do
		if _G["Auto_Soul_Guitar"] then
			pcall(function()
				local L_764_ = {}
				L_764_[2] = GetConnectionEnemies("الزومبي الحي")
				if L_764_[2] then
					L_764_[2]["HumanoidRootPart"]["CFrame"] = CFrame["new"](-10138.397460938, 138.65246582031, 5902.8920898438)
					L_764_[2]["Head"]["CanCollide"] = false
					L_764_[2]["Humanoid"]["Sit"] = false
					L_764_[2]["HumanoidRootPart"]["CanCollide"] = false
					L_764_[2]["Humanoid"]["JumpPower"] = 0
					L_764_[2]["Humanoid"]["WalkSpeed"] = 0
					if L_764_[2]["Humanoid"]:FindFirstChild("Animator") then
						(L_764_[2]["Humanoid"]:FindFirstChild("Animator")):Destroy()
					end
				end
			end)
		end
	end
end)
function getT(L_765_arg0)
	local L_766_ = {}
	L_766_[3] = L_765_arg0
	if L_766_[3] == 1 then
		L_766_[2] = workspace["Map"]["Haunted Castle"]["Tablet"]["Segment1"]["Line"]["Rotation"]
	elseif L_766_[3] == 3 then
		L_766_[2] = workspace["Map"]["Haunted Castle"]["Tablet"]["Segment3"]["Line"]["Rotation"]
	elseif L_766_[3] == 4 then
		L_766_[2] = workspace["Map"]["Haunted Castle"]["Tablet"]["Segment4"]["Line"]["Rotation"]
	elseif L_766_[3] == 7 then
		L_766_[2] = workspace["Map"]["Haunted Castle"]["Tablet"]["Segment7"]["Line"]["Rotation"]
	elseif L_766_[3] == 10 then
		L_766_[2] = workspace["Map"]["Haunted Castle"]["Tablet"]["Segment10"]["Line"]["Rotation"]
	end
	if L_766_[2] then
		return L_766_[2]["Z"]
	end
end
function getRT(L_767_arg0)
	local L_768_ = {}
	L_768_[1] = L_767_arg0
	L_768_[2] = workspace["Map"]["Haunted Castle"]["Trophies"]["Quest"]
	for L_769_forvar0, L_770_forvar1 in pairs(L_768_[2]:GetChildren()) do
		local L_771_ = {}
		L_771_[3], L_771_[1] = L_769_forvar0, L_770_forvar1
		if L_768_[1] == 1 and (L_771_[1]["Name"] == "Trophy1" and L_771_[1]:FindFirstChild("Handle")) then
			L_768_[4] = L_771_[1]["Handle"]["Rotation"]
		elseif L_768_[1] == 2 and (L_771_[1]["Name"] == "Trophy2" and L_771_[1]:FindFirstChild("Handle")) then
			L_768_[4] = L_771_[1]["Handle"]["Rotation"]
		elseif L_768_[1] == 3 and (L_771_[1]["Name"] == "Trophy3" and L_771_[1]:FindFirstChild("Handle")) then
			L_768_[4] = L_771_[1]["Handle"]["Rotation"]
		elseif L_768_[1] == 4 and (L_771_[1]["Name"] == "Trophy4" and L_771_[1]:FindFirstChild("Handle")) then
			L_768_[4] = L_771_[1]["Handle"]["Rotation"]
		elseif L_768_[1] == 5 and (L_771_[1]["Name"] == "Trophy5" and L_771_[1]:FindFirstChild("Handle")) then
			L_768_[4] = L_771_[1]["Handle"]["Rotation"]
		end
		if L_768_[4] then
			return L_768_[4]["Z"]
		end
	end
end
GetFirePlacard = function(L_772_arg0, L_773_arg1)
	local L_774_ = {}
	L_774_[3], L_774_[1] = L_772_arg0, L_773_arg1
	if tostring(workspace["Map"]["Haunted Castle"]["Placard" .. L_774_[3]][L_774_[1]]["Indicator"]["BrickColor"]) ~= "Pearl" then
		fireclickdetector(workspace["Map"]["Haunted Castle"]["Placard" .. L_774_[3]][L_774_[1]]["ClickDetector"])
	end
end
spawn(function()
	repeat
		task["wait"]()
	until _G["Auto_Soul_Guitar"]
	while wait(Sec) do
		pcall(function()
			if _G["Auto_Soul_Guitar"] then
				if World3 then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent", 2)
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent", 2, true)
					if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check") == nil then
						_tp(CFrame["new"](-8655.0166015625, 141.31669616699, 6160.0224609375))
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent", 2)
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent", 2, true)
					elseif (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check"))["Swamp"] == false then
						local L_775_ = {}
						Quest1 = true
						Quest2 = false
						Quest3 = false
						Quest4 = false
						L_775_[1] = GetConnectionEnemies("الزومبي الحي")
						if L_775_[1] then
							repeat
								task["wait"]()
								L_1_[4]["Kill"](L_775_[1], _G["Auto_Soul_Guitar"])
							until not _G["Auto_Soul_Guitar"] or L_775_[1]["Humanoid"]["Health"] <= 0 or not L_775_[1]["Parent"] or workspace["Map"]["Haunted Castle"]["SwampWater"]["Color"] ~= Color3["fromRGB"](117, 0, 0)
						else
							_tp(CFrame["new"](-10170.727539062, 138.65246582031, 5934.2651367188))
						end
					elseif (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check"))["Gravestones"] == false then
						Quest1 = false
						Quest2 = true
						Quest3 = false
						Quest4 = false
						GetFirePlacard("7", "Left")
						GetFirePlacard("6", "Left")
						GetFirePlacard("5", "Left")
						GetFirePlacard("4", "Right")
						GetFirePlacard("3", "Left")
						GetFirePlacard("2", "Right")
						GetFirePlacard("1", "Right")
					elseif (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check"))["الشبح"] == false then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "الشبح")
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "الشبح", true)
					elseif (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check"))["Trophies"] == false then
						Quest1 = false
						Quest2 = false
						Quest3 = true
						Quest4 = false
						_tp(CFrame["new"](-9532.8232421875, 6.471667766571, 6078.068359375))
						repeat
							local L_776_ = {}
							wait()
							L_776_[3] = getRT(1)
							L_776_[2] = getT(1)
							if L_776_[3] and L_776_[2] then
								fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment1"]:FindFirstChild("ClickDetector"))
							end
						until L_776_[3] == L_776_[2]
						repeat
							local L_777_ = {}
							wait()
							L_777_[3] = getRT(2)
							L_777_[2] = getT(3)
							if L_777_[3] and L_777_[2] then
								fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment3"]:FindFirstChild("ClickDetector"))
							end
						until L_777_[3] == L_777_[2]
						repeat
							local L_778_ = {}
							wait()
							L_778_[3] = getRT(3)
							L_778_[2] = getT(4)
							if L_778_[3] and L_778_[2] then
								fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment4"]:FindFirstChild("ClickDetector"))
							end
						until L_778_[3] == L_778_[2]
						repeat
							local L_779_ = {}
							wait()
							L_779_[1] = getRT(4)
							L_779_[3] = getT(7)
							if L_779_[1] and L_779_[3] then
								fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment7"]:FindFirstChild("ClickDetector"))
							end
						until L_779_[1] == L_779_[3]
						repeat
							local L_780_ = {}
							wait()
							L_780_[3] = getRT(5)
							L_780_[1] = getT(10)
							if L_780_[3] and L_780_[1] then
								fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment10"]:FindFirstChild("ClickDetector"))
							end
						until L_780_[3] == L_780_[1]
						repeat
							wait()
							fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment2"]:FindFirstChild("ClickDetector"))
							fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment5"]:FindFirstChild("ClickDetector"))
							fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment6"]:FindFirstChild("ClickDetector"))
							fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment8"]:FindFirstChild("ClickDetector"))
							fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment9"]:FindFirstChild("ClickDetector"))
						until workspace["Map"]["Haunted Castle"]["Tablet"]["Segment2"]["Line"]["Rotation"]["Z"] == 0 or workspace["Map"]["Haunted Castle"]["Tablet"]["Segment5"]["Line"]["Rotation"]["Z"] == 0 or workspace["Map"]["Haunted Castle"]["Tablet"]["Segment6"]["Line"]["Rotation"]["Z"] == 0 or workspace["Map"]["Haunted Castle"]["Tablet"]["Segment8"]["Line"]["Rotation"]["Z"] == 0 or workspace["Map"]["Haunted Castle"]["Tablet"]["Segment9"]["Line"]["Rotation"]["Z"] == 0
					elseif (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check"))["Pipes"] == false then
						Quest1 = false
						Quest2 = false
						Quest3 = false
						Quest4 = true
						_tp(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part3"]["CFrame"])
						fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part3"]["ClickDetector"])
						_tp(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part4"]["CFrame"])
						fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part4"]["ClickDetector"])
						fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part4"]["ClickDetector"])
						fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part4"]["ClickDetector"])
						_tp(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part6"]["CFrame"])
						fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part6"]["ClickDetector"])
						fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part6"]["ClickDetector"])
						_tp(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part8"]["CFrame"])
						fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part8"]["ClickDetector"])
						_tp(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part10"]["CFrame"])
						fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part10"]["ClickDetector"])
						fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part10"]["ClickDetector"])
						fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part10"]["ClickDetector"])
					end
				end
			end
		end)
	end
end)
L_1_[93]["Quests"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Farm Material S";
		"kull Guitar"
	}),
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_781_arg0)
		local L_782_ = {}
		L_782_[1] = L_781_arg0
		_G["AutoMatSoul"] = L_782_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["AutoMatSoul"] and GetWP("Skull Guitar") == false then
				if GetM("Bones") >= 500 and (GetM("الإكتوبلازم") >= 250 and GetM("Dark Fragment") >= 1) then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("soulGuitarBuy", true)
				else
					if GetM("الإكتوبلازم") <= 250 then
						if _G["AutoMatSoul"] and World2 then
							local L_783_ = {}
							L_783_[1] = {
								"Ship Deckhand",
								"Ship Engineer",
								"Ship Steward",
								"Ship Officer",
								"محارب القطب"
							}
							L_783_[3] = GetConnectionEnemies(L_783_[1])
							if L_783_[3] then
								repeat
									task["wait"]()
									L_1_[4]["Kill"](L_783_[3], _G["AutoMatSoul"])
								until not _G["AutoMatSoul"] or not L_783_[3]["Parent"] or L_783_[3]["Humanoid"]["Health"] <= 0
							else
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](923.21252441406, 126.9760055542, 32852.83203125))
							end
						else
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
						end
					elseif GetM("Dark Fragment") < 1 then
						if _G["AutoMatSoul"] and World2 then
							local L_784_ = {}
							L_784_[1] = GetConnectionEnemies("الذقن الداكنة")
							if L_784_[1] then
								repeat
									task["wait"]()
									L_1_[4]["Kill"](L_784_[1], _G["AutoMatSoul"])
								until _G["AutoMatSoul"] or L_784_[1]["Humanoid"]["Health"] <= 0
							else
								_tp(CFrame["new"](3798.4575195313, 13.826690673828, -3399.806640625))
							end
						else
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
						end
						if not GetConnectionEnemies("الذقن الداكنة") then
							Hop()
						end
					elseif GetM("Bones") <= 500 then
						if _G["AutoMatSoul"] and World3 then
							local L_785_ = {}
							L_785_[2] = {
								"الهيكل المولود من جديد",
								"الزومبي الحي";
								"الروح الشيطانية";
								"المومياء الممسوسة"
							}
							L_785_[3] = GetConnectionEnemies(L_785_[2])
							if L_785_[3] then
								repeat
									task["wait"]()
									L_1_[4]["Kill"](L_785_[3], _G["AutoMatSoul"])
								until not _G["AutoMatSoul"] or L_785_[3]["Humanoid"]["Health"] <= 0 or not L_785_[3]["Parent"] or L_785_[3]["Humanoid"]["Health"] <= 0
							else
								_tp(CFrame["new"](-9504.8564453125, 172.14292907715, 6057.259765625))
							end
						else
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TravelZou")
						end
					end
				end
			end
		end)
	end
end)
L_1_[93]["Quests"]:AddSection({
	"Cursed Dual Katana"
})
CheckCDK = L_1_[93]["Quests"]:AddParagraph({
	["Title"] = L_1_[2]({
		" Number Cursed dual ";
		"katana quests "
	}),
	["Content"] = "Quest Numbers :"
})
spawn(function()
	while wait(.2) do
		if QuestYama_1 == true then
			CheckCDK:SetDesc(L_1_[2]({
				" Quest Numbers : yam",
				"a quest 1"
			}))
		elseif QuestYama_2 == true then
			CheckCDK:SetDesc(L_1_[2]({
				" Quest Numbers : yam",
				"a quest 2"
			}))
		elseif QuestYama_3 == true then
			CheckCDK:SetDesc(L_1_[2]({
				" Quest Numbers : yam",
				"a quest 3"
			}))
		elseif QuestTushita_1 == true then
			CheckCDK:SetDesc(L_1_[2]({
				" Quest Numbers : tus",
				"hita quest 1"
			}))
		elseif QuestTushita_2 == true then
			CheckCDK:SetDesc(L_1_[2]({
				" Quest Numbers : tus",
				"hita quest 2"
			}))
		elseif QuestTushita_1 == true then
			CheckCDK:SetDesc(L_1_[2]({
				" Quest Numbers: tush",
				"ita quest 2"
			}))
		elseif GetWP("Cursed Dual Katana") then
			CheckCDK:SetDesc(L_1_[2]({
				" Quest Numbers: CDK ";
				"done!!"
			}))
		end
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Get CDK [ Last ";
		"Quest ]"
	}),
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_786_arg0)
		local L_787_ = {}
		L_787_[1] = L_786_arg0
		_G["CDK"] = L_787_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["CDK"] then
				local L_788_ = {}
				L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress", "Good")
				L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress", "Evil")
				L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "StartTrial", "Boss")
				L_788_[1] = GetConnectionEnemies("Cursed Skeleton Boss")
				if L_788_[1] then
					repeat
						wait()
						if L_1_[45]["Character"]:FindFirstChild("Yama") or L_1_[45]["Backpack"]:FindFirstChild("Yama") then
							EquipWeapon("Yama")
						elseif L_1_[45]["Character"]:FindFirstChild("Tushita") or L_1_[45]["Backpack"]:FindFirstChild("Tushita") then
							EquipWeapon("Tushita")
						end
						_tp(L_788_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 20, 0))
					until not _G["CDK"] or not L_788_[1]["Parent"] or L_788_[1]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](-12318.193359375, 601.95184326172, -6538.662109375))
					wait(.5)
					_tp(workspace["Map"]["Turtle"]["Cursed"]["BossDoor"]["CFrame"])
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "ياما CDK تلقائي",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_789_arg0)
		local L_790_ = {}
		L_790_[2] = L_789_arg0
		_G["CDK_YM"] = L_790_[2]
	end
})
spawn(function()
	while wait() do
		pcall(function()
			if _G["CDK_YM"] then
				if tostring(L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "OpenDoor")
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "OpenDoor", true)
				else
					if (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Finished"] == nil then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "StartTrial", "Evil")
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "StartTrial", "Evil")
					elseif (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Finished"] == false then
						if tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Evil"]) == -3 then
							QuestYama_1 = true
							QuestYama_2 = false
							QuestYama_3 = false
							repeat
								task["wait"]()
								if not workspace["Enemies"]:FindFirstChild("قرصان الغابة") then
									_tp(CFrame["new"](-13223.521484375, 428.19381713867, -7766.0678710938))
								else
									local L_791_ = {}
									L_791_[2] = GetConnectionEnemies("قرصان الغابة")
									if L_791_[2] then
										_tp((workspace["Enemies"]:FindFirstChild("قرصان الغابة"))["HumanoidRootPart"]["CFrame"])
									end
								end
							until tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Evil"]) == 1 or not _G["CDK_YM"]
						elseif tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Evil"]) == -4 then
							QuestYama_1 = false
							QuestYama_2 = true
							QuestYama_3 = false
							for L_792_forvar0, L_793_forvar1 in pairs((game:GetService("Players"))["LocalPlayer"]["QuestHaze"]:GetChildren()) do
								local L_794_ = {}
								L_794_[2], L_794_[1] = L_792_forvar0, L_793_forvar1
								for L_795_forvar0, L_796_forvar1 in pairs(L_1_[22]) do
									local L_797_ = {}
									L_797_[1], L_797_[2] = L_795_forvar0, L_796_forvar1
									if string["find"](L_797_[1], L_794_[1]["Name"]) and L_794_[1]["Value"] > 0 then
										if (L_797_[2]["Position"] - Root["Position"])["Magnitude"] <= 1000 and workspace["Enemies"]:FindFirstChild(L_797_[1]) then
											for L_798_forvar0, L_799_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
												local L_800_ = {}
												L_800_[1], L_800_[2] = L_798_forvar0, L_799_forvar1
												if L_800_[2]:FindFirstChild("HumanoidRootPart") and (L_800_[2]:FindFirstChild("Humanoid") and ((L_800_[2]:FindFirstChild("Humanoid"))["Health"] > 0 and L_800_[2]:FindFirstChild("HazeESP"))) then
													repeat
														wait()
														L_1_[4]["Kill"](L_800_[2], _G["CDK_YM"])
													until not _G["CDK_YM"] or tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Evil"]) == 2 or not L_800_[2]:FindFirstChild("HazeESP") or L_800_[2]["Humanoid"]["Health"] <= 0
												end
											end
										else
											_tp(L_797_[2])
										end
									end
								end
							end
						elseif tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Evil"]) == -5 then
							QuestYama_1 = false
							QuestYama_2 = false
							QuestYama_3 = true
							if workspace["Map"]:FindFirstChild("HellDimension") then
								if (Root["Position"] - workspace["Map"]["HellDimension"]["Spawn"]["Position"])["Magnitude"] <= 1000 then
									for L_801_forvar0, L_802_forvar1 in pairs(workspace["Map"]["HellDimension"]["Exit"]:GetChildren()) do
										local L_803_ = {}
										L_803_[1], L_803_[2] = L_801_forvar0, L_802_forvar1
										if tonumber(L_803_[1]) == 2 then
											repeat
												task["wait"]()
												Root["CFrame"] = workspace["Map"]["HellDimension"]["Exit"]["CFrame"]
											until not _G["CDK_YM"] or tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Evil"]) == 3
										end
									end
									EquipWeapon(_G["SelectWeapon"])
									if tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Evil"]) ~= 3 then
										repeat
											task["wait"]()
											repeat
												task["wait"]()
												_tp(workspace["Map"]["HellDimension"]["Torch1"]["Particles"]["CFrame"])
												for L_804_forvar0, L_805_forvar1 in pairs(workspace["Map"]["HellDimension"]:GetDescendants()) do
													local L_806_ = {}
													L_806_[3], L_806_[1] = L_804_forvar0, L_805_forvar1
													if L_806_[1]:IsA("ProximityPrompt") then
														fireproximityprompt(L_806_[1])
													end
												end
											until (workspace["Map"]["HellDimension"]["Torch1"]["Particles"]["Position"] - Root["Position"])["Magnitude"] < 5
											wait(2)
											_G["T1Yama"] = true
										until not _G["CDK_YM"] or _G["T1Yama"] or tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Evil"]) == 3
										repeat
											task["wait"]()
											repeat
												task["wait"]()
												_tp(workspace["Map"]["HellDimension"]["Torch2"]["Particles"]["CFrame"])
												for L_807_forvar0, L_808_forvar1 in pairs(workspace["Map"]["HellDimension"]:GetDescendants()) do
													local L_809_ = {}
													L_809_[1], L_809_[2] = L_807_forvar0, L_808_forvar1
													if L_809_[2]:IsA("ProximityPrompt") then
														fireproximityprompt(L_809_[2])
													end
												end
											until (workspace["Map"]["HellDimension"]["Torch2"]["Particles"]["Position"] - Root["Position"])["Magnitude"] < 5
											wait(2)
											_G["T2Yama"] = true
										until _G["T2Yama"] or _G["CDK_YM"] == false or tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Evil"]) == 3
										repeat
											wait()
											repeat
												task["wait"]()
												_tp(workspace["Map"]["HellDimension"]["Torch3"]["Particles"]["CFrame"])
												for L_810_forvar0, L_811_forvar1 in pairs(workspace["Map"]["HellDimension"]:GetDescendants()) do
													local L_812_ = {}
													L_812_[1], L_812_[2] = L_810_forvar0, L_811_forvar1
													if L_812_[2]:IsA("ProximityPrompt") then
														fireproximityprompt(L_812_[2])
													end
												end
											until (workspace["Map"]["HellDimension"]["Torch3"]["Particles"]["Position"] - Root["Position"])["Magnitude"] < 5
											wait(2)
											_G["T3Yama"] = true
										until _G["T3Yama"] or _G["CDK_YM"] == false or tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Evil"]) == 3
									end
									for L_813_forvar0, L_814_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
										local L_815_ = {}
										L_815_[1], L_815_[3] = L_813_forvar0, L_814_forvar1
										if ((L_815_[3]:FindFirstChild("HumanoidRootPart"))["Position"] - workspace["Map"]["HellDimension"]["Spawn"]["Position"])["Magnitude"] <= 300 then
											if L_815_[3]:FindFirstChild("HumanoidRootPart") and (L_815_[3]:FindFirstChild("Humanoid") and (L_815_[3]:FindFirstChild("Humanoid"))["Health"] > 0) then
												repeat
													task["wait"]()
													L_1_[4]["Kill"](L_815_[3], _G["CDK_YM"])
												until not _G["CDK_YM"] or L_815_[3]["Humanoid"]["Health"] <= 0 or not L_815_[3]["Parent"] or tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Evil"]) == 3
											end
										end
									end
								end
							end
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
			if _G["CDK_YM"] then
				if tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Evil"]) == -5 then
					if not workspace["Map"]:FindFirstChild("HellDimension") or (Root["Position"] - workspace["Map"]["HellDimension"]["Spawn"]["Position"])["Magnitude"] > 1000 then
						local L_816_ = {}
						L_816_[2] = GetConnectionEnemies("حاصد الأرواح")
						if L_816_[2] then
							repeat
								task["wait"]()
								_tp(L_816_[2]["HumanoidRootPart"]["CFrame"])
							until L_816_[2]["Humanoid"]["Health"] <= 0 or not _G["CDK_YM"] or not L_816_[2]["Parent"] or tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Evil"]) == 3 or workspace["Map"]:FindFirstChild("HellDimension") and (Root["Position"] - workspace["Map"]["HellDimension"]["Spawn"]["Position"])["Magnitude"] <= 1000
						elseif L_1_[45]["Backpack"]:FindFirstChild("Hallow Essence") or L_1_[45]["Character"]:FindFirstChild("Hallow Essence") then
							repeat
								_tp(CFrame["new"](-8932.322265625, 146.83154296875, 6062.55078125))
								task["wait"]()
							until ((CFrame["new"](-8932.322265625, 146.83154296875, 6062.55078125))["Position"] - Root["Position"])["Magnitude"] <= 8
							EquipWeapon("Hallow Essence")
						elseif L_1_[18]:FindFirstChild("حاصد الأرواح") and (L_1_[18]:FindFirstChild("حاصد الأرواح"))["Humanoid"]["Health"] > 0 then
							_tp((L_1_[18]:FindFirstChild("حاصد الأرواح"))["HumanoidRootPart"]["CFrame"])
						else
							if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Bones", "Check") < 50 and (not workspace["Enemies"]:FindFirstChild("حاصد الأرواح") and (not L_1_[18]:FindFirstChild("حاصد الأرواح") and not workspace["Map"]:FindFirstChild("HellDimension"))) then
								if workspace["Enemies"]:FindFirstChild("الهيكل المولود من جديد") or workspace["Enemies"]:FindFirstChild("الزومبي الحي") or workspace["Enemies"]:FindFirstChild("Domenic Soul") or workspace["Enemies"]:FindFirstChild("المومياء الممسوسة") then
									for L_817_forvar0, L_818_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
										local L_819_ = {}
										L_819_[3], L_819_[1] = L_817_forvar0, L_818_forvar1
										if L_819_[1]["Name"] == "الهيكل المولود من جديد" or L_819_[1]["Name"] == "الزومبي الحي" or L_819_[1]["Name"] == "الروح الشيطانية" or L_819_[1]["Name"] == "المومياء الممسوسة" then
											if L_819_[1]:FindFirstChild("HumanoidRootPart") and (L_819_[1]:FindFirstChild("Humanoid") and (L_819_[1]:FindFirstChild("Humanoid"))["Health"] > 0) then
												repeat
													task["wait"]()
													L_1_[4]["Kill"](L_819_[1], _G["CDK_YM"])
												until not _G["CDK_YM"] or L_819_[1]["Humanoid"]["Health"] <= 0 or not L_819_[1]["Parent"]
											end
										end
									end
								else
									_tp(CFrame["new"](-9515.2255859375, 164.00622558594, 5785.3833007812))
								end
							else
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Bones", "Buy", 1, 1)
							end
						end
					end
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "توشيتا CDK تلقائي";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_820_arg0)
		local L_821_ = {}
		L_821_[1] = L_820_arg0
		_G["CDK_TS"] = L_821_[1]
	end
})
spawn(function()
	while wait() do
		pcall(function()
			if _G["CDK_TS"] then
				if tostring(L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then
					wait(.7)
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "OpenDoor")
					wait(.3)
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "OpenDoor", true)
				else
					if (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Finished"] == nil then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "StartTrial", "Good")
					elseif (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Finished"] == false then
						if tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Good"]) == -3 then
							QuestTushita_1 = true
							QuestTushita_2 = false
							QuestTushita_3 = false
							repeat
								wait()
								_tp(CFrame["new"](-4602.5107421875, 16.446542739868, -2880.998046875))
							until ((CFrame["new"](-4602.5107421875, 16.446542739868, -2880.998046875))["Position"] - (game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 or not _G["CDK_TS"] or tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Good"]) == 1
							if ((CFrame["new"](-4602.5107421875, 16.446542739868, -2880.998046875))["Position"] - (game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10 then
								wait(.7)
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", workspace["NPCs"]:FindFirstChild("Luxury Boat Dealer"), "Check")
								wait(.5)
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", workspace["NPCs"]:FindFirstChild("Luxury Boat Dealer"))
							end
							wait(1)
							repeat
								wait()
								_tp(CFrame["new"](4001.1853027344, 10.089399337769, -2654.86328125))
							until ((CFrame["new"](4001.1853027344, 10.089399337769, -2654.86328125))["Position"] - (game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 or not _G["CDK_TS"] or tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Good"]) == 1
							if ((CFrame["new"](4001.1853027344, 10.089399337769, -2654.86328125))["Position"] - (game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10 then
								wait(.7)
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", workspace["NPCs"]:FindFirstChild("Luxury Boat Dealer"), "Check")
								wait(.5)
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", workspace["NPCs"]:FindFirstChild("Luxury Boat Dealer"))
							end
							wait(1)
							repeat
								wait()
								_tp(CFrame["new"](-9530.763671875, 7.2452087402344, -8375.5087890625))
							until ((CFrame["new"](-9530.763671875, 7.2452087402344, -8375.5087890625))["Position"] - (game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 or not _G["CDK_TS"] or tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Good"]) == 1
							if ((CFrame["new"](-9530.763671875, 7.2452087402344, -8375.5087890625))["Position"] - (game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10 then
								wait(.7)
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", workspace["NPCs"]:FindFirstChild("Luxury Boat Dealer"), "Check")
								wait(.5)
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", workspace["NPCs"]:FindFirstChild("Luxury Boat Dealer"))
							end
							wait(1)
						elseif tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Good"]) == -4 then
							QuestTushita_1 = false
							QuestTushita_2 = true
							QuestTushita_3 = false
							repeat
								wait()
								_G["AutoRaidCastle"] = true
							until not _G["CDK_TS"] or tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Good"]) == 2
							_G["AutoRaidCastle"] = false
						elseif tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Good"]) == -5 then
							QuestTushita_1 = false
							QuestTushita_2 = false
							QuestTushita_3 = true
							if workspace["Enemies"]:FindFirstChild("ملكة الكعكة") then
								for L_822_forvar0, L_823_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
									local L_824_ = {}
									L_824_[1], L_824_[3] = L_822_forvar0, L_823_forvar1
									if L_824_[3]["Name"] == "ملكة الكعكة" then
										if L_824_[3]:FindFirstChild("Humanoid") and (L_824_[3]:FindFirstChild("HumanoidRootPart") and L_824_[3]["Humanoid"]["Health"] > 0) then
											repeat
												wait()
												L_1_[4]["Kill"](L_824_[3], _G["CDK_TS"])
											until not _G["CDK_TS"] or not L_824_[3]["Parent"] or L_824_[3]["Humanoid"]["Health"] <= 0 or tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Good"]) == 3
										end
									end
								end
							elseif L_1_[18]:FindFirstChild("ملكة الكعكة") and (L_1_[18]:FindFirstChild("ملكة الكعكة"))["Humanoid"]["Health"] > 0 then
								_tp((L_1_[18]:FindFirstChild("ملكة الكعكة"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0))
							else
								if (game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"] - workspace["Map"]["HeavenlyDimension"]["Spawn"]["Position"])["Magnitude"] <= 1000 then
									for L_825_forvar0, L_826_forvar1 in pairs(workspace["Map"]["HeavenlyDimension"]["Exit"]:GetChildren()) do
										local L_827_ = {}
										L_827_[3], L_827_[2] = L_825_forvar0, L_826_forvar1
										Ex = L_827_[3]
									end
									if Ex == 2 then
										repeat
											wait()
											game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["Map"]["HeavenlyDimension"]["Exit"]["CFrame"]
										until not _G["CDK_TS"] or tonumber((L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress"))["Good"]) == 3
									end
									repeat
										wait()
										repeat
											wait()
											_tp(CFrame["new"](-22529.6171875, 5275.7739257812, 3873.5712890625))
											for L_828_forvar0, L_829_forvar1 in pairs(workspace["Map"]["HeavenlyDimension"]:GetDescendants()) do
												local L_830_ = {}
												L_830_[1], L_830_[2] = L_828_forvar0, L_829_forvar1
												if L_830_[2]:IsA("ProximityPrompt") then
													fireproximityprompt(L_830_[2])
												end
											end
										until ((CFrame["new"](-22529.6171875, 5275.7739257812, 3873.5712890625))["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] < 5
										wait(2)
										_G["DoneT1"] = true
									until not _G["CDK_TS"] or _G["DoneT1"]
									repeat
										wait()
										repeat
											wait()
											_tp(CFrame["new"](-22637.291015625, 5281.365234375, 3749.2885742188))
											for L_831_forvar0, L_832_forvar1 in pairs(workspace["Map"]["HeavenlyDimension"]:GetDescendants()) do
												local L_833_ = {}
												L_833_[2], L_833_[1] = L_831_forvar0, L_832_forvar1
												if L_833_[1]:IsA("ProximityPrompt") then
													fireproximityprompt(L_833_[1])
												end
											end
										until ((CFrame["new"](-22637.291015625, 5281.365234375, 3749.2885742188))["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] < 5
										wait(2)
										_G["DoneT2"] = true
									until _G["DoneT2"] or _G["CDK_TS"] == false
									repeat
										wait()
										repeat
											task["wait"]()
											_tp(CFrame["new"](-22791.14453125, 5277.1655273438, 3764.5700683594))
											for L_834_forvar0, L_835_forvar1 in pairs(workspace["Map"]["HeavenlyDimension"]:GetDescendants()) do
												local L_836_ = {}
												L_836_[2], L_836_[3] = L_834_forvar0, L_835_forvar1
												if L_836_[3]:IsA("ProximityPrompt") then
													fireproximityprompt(L_836_[3])
												end
											end
										until ((CFrame["new"](-22791.14453125, 5277.1655273438, 3764.5700683594))["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] < 5
										wait(2)
										_G["DoneT3"] = true
									until _G["DoneT3"] or _G["CDK_TS"] == false
									for L_837_forvar0, L_838_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
										local L_839_ = {}
										L_839_[2], L_839_[1] = L_837_forvar0, L_838_forvar1
										if ((L_839_[1]:FindFirstChild("HumanoidRootPart"))["Position"] - (CFrame["new"](-22695.7012, 5270.93652, 3814.42847, .11794927, 3.32185834e-08, .99301964, -8.73070718e-08, 1, -2.30819008e-08, -0.99301964, -8.3975138e-08, .11794927))["Position"])["Magnitude"] <= 300 then
											if L_839_[1]:FindFirstChild("HumanoidRootPart") and (L_839_[1]:FindFirstChild("Humanoid") and (L_839_[1]:FindFirstChild("Humanoid"))["Health"] > 0) then
												repeat
													wait()
													L_1_[4]["Kill"](L_839_[1], _G["CDK_TS"])
												until not _G["CDK_TS"] or L_839_[1]["Humanoid"]["Health"] <= 0 or not L_839_[1]["Parent"]
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end)
	end
end)
L_1_[93]["Quests"]:AddSection({
	L_1_[2]({
		"True Triple Katana S";
		"word"
	})
})
L_1_[93]["Quests"]:AddButton({
	["Name"] = "شراء سيف أسطوري";
	["Description"] = "",
	["Callback"] = function()
		L_1_[18]["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer", "1")
		L_1_[18]["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer", "2")
		L_1_[18]["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer", "3")
	end
})
L_1_[93]["Quests"]:AddButton({
	["Name"] = L_1_[2]({
		"Buy True Triple Kata";
		"na Sword"
	}),
	["Description"] = "";
	["Callback"] = function()
		L_1_[18]["Remotes"]["CommF_"]:InvokeServer("MysteriousMan", "2")
	end
})
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = L_1_[2]({
		"Tween to Legendary S";
		"word Dealer"
	});
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_840_arg0)
		local L_841_ = {}
		L_841_[1] = L_840_arg0
		_G["Tp_LgS"] = L_841_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["Tp_LgS"] then
			pcall(function()
				for L_842_forvar0, L_843_forvar1 in pairs(L_1_[18]["NPCs"]:GetChildren()) do
					local L_844_ = {}
					L_844_[2], L_844_[1] = L_842_forvar0, L_843_forvar1
					if L_844_[1]["Name"] == L_1_[2]({
						"Legendary Sword Deal",
						"er "
					}) then
						_tp(L_844_[1]["HumanoidRootPart"]["CFrame"])
					end
				end
			end)
		end
	end
end)
L_1_[93]["Quests"]:AddSection({
	"Pole / God Enal's"
})
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "بولار V1 تلقائي";
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_845_arg0)
		local L_846_ = {}
		L_846_[1] = L_845_arg0
		_G["AutoPole"] = L_846_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["AutoPole"] then
			pcall(function()
				local L_847_ = {}
				L_847_[2] = GetConnectionEnemies("إله الرعد")
				if L_847_[2] then
					repeat
						task["wait"]()
						L_1_[4]["Kill"](L_847_[2], _G["AutoPole"])
					until not _G["AutoPole"] or not L_847_[2]["Parent"] or L_847_[2]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](-7994.984375, 5761.025390625, -2088.6479492188))
				end
			end)
		end
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "بولار V2 تلقائي [بيتا]";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_848_arg0)
		local L_849_ = {}
		L_849_[1] = L_848_arg0
		_G["AutoPoleV2"] = L_849_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["AutoPoleV2"] then
				if not GetBP("Pole (1st Form)") then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("LoadItem", "Pole (1st Form)")
				end
				if not GetBP("Pole (2nd Form)") then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("LoadItem", "Pole (2nd Form)")
				end
				if GetBP("Pole (1st Form)") and (GetBP("Pole (1st Form)"))["Level"]["Value"] <= 179 then
					_G["Level"] = true
				elseif GetBP("Pole (1st Form)") and (GetBP("Pole (1st Form)"))["Level"]["Value"] >= 180 then
					_G["Level"] = false
				end
				if not GetBP("Rumble Fruit") then
					return
				end
				if (GetBP("Rumble Fruit"))["AwakenedMoves"]:FindFirstChild("Z") and ((GetBP("Rumble Fruit"))["AwakenedMoves"]:FindFirstChild("X") and ((GetBP("Rumble Fruit"))["AwakenedMoves"]:FindFirstChild("C") and ((GetBP("Rumble Fruit"))["AwakenedMoves"]:FindFirstChild("V") and (GetBP("Rumble Fruit"))["AwakenedMoves"]:FindFirstChild("F")))) then
					_G["SelectChip"] = nil
					_G["Raiding"] = false
					_G["Auto_Awakener"] = false
					if L_1_[45]["Data"]["Fragments"]["Value"] >= 5000 then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("إله الرعد", "Talk")
						wait(Sec)
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("إله الرعد", "Sure")
					end
				elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Awakener", "Check") == nil or L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Awakener", "Check") == 0 then
					local L_850_ = {}
					_G["SelectChip"] = "الرعد"
					L_850_[1] = L_1_[18]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", _G["SelectChip"])
					if L_850_[1] then
						L_850_[1]:Stop()
					end
					_G["Raiding"] = true
					_G["Auto_Awakener"] = true
				end
			end
		end)
	end
end)
L_1_[93]["Quests"]:AddToggle({
	["Name"] = "سيف المنشار تلقائي";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_851_arg0)
		local L_852_ = {}
		L_852_[1] = L_851_arg0
		_G["AutoSaw"] = L_852_[1]
	end
})
spawn(function()
	while wait(.2) do
		pcall(function()
			if _G["AutoSaw"] then
				local L_853_ = {}
				L_853_[2] = GetConnectionEnemies("المنشار")
				if L_853_[2] then
					repeat
						task["wait"]()
						L_1_[4]["Kill"](L_853_[2], _G["AutoSaw"])
					until _G["AutoSaw"] == false or L_853_[2]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](-784.89715576172, 72.427383422852, 1603.5822753906))
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "سيف السابر تلقائي";
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_854_arg0)
		local L_855_ = {}
		L_855_[1] = L_854_arg0
		_G["AutoSaber"] = L_855_[1]
	end
})
spawn(function()
	while wait(.2) do
		pcall(function()
			if _G["AutoSaber"] and (L_1_[45]["Data"]["Level"]["Value"] >= 200 and (not L_1_[45]["Backpack"]:FindFirstChild("Saber") and not L_1_[45]["Character"]:FindFirstChild("Saber"))) then
				if workspace["Map"]["Jungle"]["Final"]["Part"]["Transparency"] == 0 then
					if workspace["Map"]["Jungle"]["QuestPlates"]["Door"]["Transparency"] == 0 then
						if ((CFrame["new"](-1612.55884, 36.9774132, 148.719543, .37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, .928667724, -4.39869794e-08, .37091279))["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 100 then
							_tp(L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"])
							wait(.5)
							L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["Map"]["Jungle"]["QuestPlates"]["Plate1"]["Button"]["CFrame"]
							wait(.5)
							L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["Map"]["Jungle"]["QuestPlates"]["Plate2"]["Button"]["CFrame"]
							wait(.5)
							L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["Map"]["Jungle"]["QuestPlates"]["Plate3"]["Button"]["CFrame"]
							wait(.5)
							L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["Map"]["Jungle"]["QuestPlates"]["Plate4"]["Button"]["CFrame"]
							wait(.5)
							L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["Map"]["Jungle"]["QuestPlates"]["Plate5"]["Button"]["CFrame"]
							wait(.5)
						else
							_tp(CFrame["new"](-1612.55884, 36.9774132, 148.719543, .37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, .928667724, -4.39869794e-08, .37091279))
						end
					else
						if workspace["Map"]["Desert"]["Burn"]["Part"]["Transparency"] == 0 then
							if L_1_[45]["Backpack"]:FindFirstChild("Torch") or L_1_[45]["Character"]:FindFirstChild("Torch") then
								EquipWeapon("Torch")
								firetouchinterest(L_1_[45]["Character"]["Torch"]["Handle"], workspace["Map"]["Desert"]["Burn"]["Fire"], 0)
								firetouchinterest(L_1_[45]["Character"]["Torch"]["Handle"], workspace["Map"]["Desert"]["Burn"]["Fire"], 1)
								_tp(CFrame["new"](1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, .761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
							else
								_tp(CFrame["new"](-1610.00757, 11.5049858, 164.001587, .984807551, -0.167722285, -0.0449818149, .17364943, .951244235, .254912198, 3.42372805e-05, -0.258850515, .965917408))
							end
						else
							if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "GetCup")
								wait(.5)
								EquipWeapon("Cup")
								wait(.5)
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "FillCup", L_1_[45]["Character"]["Cup"])
								wait(Sec)
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "SickMan")
							else
								if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "RichSon") == nil then
									L_1_[18]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "RichSon")
								elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "RichSon") == 0 then
									if workspace["Enemies"]:FindFirstChild("زعيم العصابة") or L_1_[18]:FindFirstChild("زعيم العصابة") then
										_tp(CFrame["new"](-2967.59521, -4.91089821, 5328.70703, .342208564, -0.0227849055, .939347804, .0251603816, .999569714, .0150796166, -0.939287126, .0184739735, .342634559))
										for L_856_forvar0, L_857_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
											local L_858_ = {}
											L_858_[2], L_858_[3] = L_856_forvar0, L_857_forvar1
											if L_858_[3]["Name"] == "زعيم العصابة" and L_1_[4]["Alive"](L_858_[3]) then
												repeat
													task["wait"]()
													L_1_[4]["Kill"](L_858_[3], _G["AutoSaber"])
												until L_858_[3]["Humanoid"]["Health"] <= 0 or _G["AutoSaber"] == false
											end
										end
									end
								elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "RichSon") == 1 then
									L_1_[18]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "RichSon")
									EquipWeapon("Relic")
									_tp(CFrame["new"](-1404.91504, 29.9773273, 3.80598116, .876514494, 5.66906877e-09, .481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, .876514494))
								end
							end
						end
					end
				else
					if workspace["Enemies"]:FindFirstChild("خبير السيف") or L_1_[18]:FindFirstChild("خبير السيف") then
						for L_859_forvar0, L_860_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
							local L_861_ = {}
							L_861_[2], L_861_[1] = L_859_forvar0, L_860_forvar1
							if L_861_[1]["Name"] == "خبير السيف" and L_1_[4]["Alive"](L_861_[1]) then
								repeat
									task["wait"]()
									L_1_[4]["Kill"](L_861_[1], _G["AutoSaber"])
								until L_861_[1]["Humanoid"]["Health"] <= 0 or _G["AutoSaber"] == false
								if L_861_[1]["Humanoid"]["Health"] <= 0 then
									L_1_[18]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "PlaceRelic")
								end
							end
						end
					else
						_tp(CFrame["new"](-1401.85046, 29.9773273, 8.81916237, .85820812, 8.76083845e-08, .513301849, -8.55007443e-08, 1, -2.77243419e-08, -0.513301849, -2.00944328e-08, .85820812))
					end
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "سايبورغ تلقائي";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_862_arg0)
		local L_863_ = {}
		L_863_[1] = L_862_arg0
		_G["AutoColShad"] = L_863_[1]
	end
})
spawn(function()
	while wait(.2) do
		if _G["AutoColShad"] then
			pcall(function()
				local L_864_ = {}
				L_864_[2] = GetConnectionEnemies("السايبورغ")
				if L_864_[2] then
					repeat
						task["wait"]()
						L_1_[4]["Kill"](L_864_[2], _G["AutoColShad"])
					until _G["AutoColShad"] == false or not L_864_[2]["Parent"] or L_864_[2]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](6094.0249023438, 73.770050048828, 3825.7348632813))
				end
			end)
		end
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "قبعة يوسوب تلقائي",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_865_arg0)
		local L_866_ = {}
		L_866_[2] = L_865_arg0
		_G["AutoGetUsoap"] = L_866_[2]
	end
})
spawn(function()
	while task["wait"](Sec) do
		pcall(function()
			if _G["AutoGetUsoap"] then
				for L_867_forvar0, L_868_forvar1 in pairs(workspace["Characters"]:GetChildren()) do
					local L_869_ = {}
					L_869_[3], L_869_[2] = L_867_forvar0, L_868_forvar1
					if L_869_[2]["Name"] ~= L_1_[45]["Name"] then
						if L_869_[2]["Humanoid"]["Health"] > 0 and (L_869_[2]:FindFirstChild("HumanoidRootPart") and (L_869_[2]["Parent"] and (Root["Position"] - L_869_[2]["HumanoidRootPart"]["Position"])["Magnitude"] <= 230)) then
							repeat
								task["wait"]()
								EquipWeapon(_G["SelectWeapon"])
								_tp(L_869_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](1, 1, 2))
							until _G["AutoGetUsoap"] == false or L_869_[2]["Humanoid"]["Health"] <= 0 or not L_869_[2]["Parent"] or not L_869_[2]:FindFirstChild("HumanoidRootPart") or not L_869_[2]:FindFirstChild("Humanoid")
						end
					end
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "بيسينتو V2 تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_870_arg0)
		local L_871_ = {}
		L_871_[1] = L_870_arg0
		_G["الذقن الرمادية"] = L_871_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["الذقن الرمادية"] then
			pcall(function()
				if not GetWP("Bisento") then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Bisento")
				elseif GetWP("Bisento") then
					local L_872_ = {}
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("LoadItem", "Bisento")
					L_872_[1] = GetConnectionEnemies("الذقن الرمادية")
					if L_872_[1] then
						repeat
							wait()
							L_1_[4]["Kill"](L_872_[1], _G["الذقن الرمادية"])
						until _G["الذقن الرمادية"] == false or not L_872_[1]["Parent"] or L_872_[1]["Humanoid"]["Health"] <= 0
					else
						_tp(CFrame["new"](-5023.3833007812, 28.652032852173, 4332.3818359375))
					end
				end
			end)
		end
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "سيف الحارس تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_873_arg0)
		local L_874_ = {}
		L_874_[1] = L_873_arg0
		_G["WardenBoss"] = L_874_[1]
	end
})
spawn(function()
	while wait(.1) do
		if _G["WardenBoss"] then
			pcall(function()
				local L_875_ = {}
				L_875_[2] = GetConnectionEnemies("كبير الحراس")
				if L_875_[2] then
					repeat
						wait()
						L_1_[4]["Kill"](L_875_[2], _G["WardenBoss"])
					until _G["WardenBoss"] == false or not L_875_[2]["Parent"] or L_875_[2]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](5206.92578, .997753382, 814.976746, .342041343, -0.00062915677, .939684749, .00191645394, .999998152, -2.80422337e-05, -0.939682961, .00181045406, .342041939))
				end
			end)
		end
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "معطف البحرية تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_876_arg0)
		local L_877_ = {}
		L_877_[1] = L_876_arg0
		_G["MarinesCoat"] = L_877_[1]
	end
})
spawn(function()
	while wait(.1) do
		if _G["MarinesCoat"] then
			pcall(function()
				local L_878_ = {}
				L_878_[2] = GetConnectionEnemies("نائب الأميرال")
				if L_878_[2] then
					repeat
						wait()
						L_1_[4]["Kill"](L_878_[2], _G["MarinesCoat"])
					until _G["MarinesCoat"] == false or not L_878_[2]["Parent"] or L_878_[2]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](-5006.5454101563, 88.032081604004, 4353.162109375))
				end
			end)
		end
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "معطف البجعة تلقائي";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_879_arg0)
		local L_880_ = {}
		L_880_[1] = L_879_arg0
		_G["SwanCoat"] = L_880_[1]
	end
})
spawn(function()
	while wait(.1) do
		if _G["SwanCoat"] then
			pcall(function()
				local L_881_ = {}
				L_881_[2] = GetConnectionEnemies("البجعة")
				if L_881_[2] then
					repeat
						wait()
						L_1_[4]["Kill"](L_881_[2], _G["SwanCoat"])
					until _G["SwanCoat"] == false or not L_881_[2]["Parent"] or L_881_[2]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](5325.09619, 7.03906584, 719.570679, -0.309060812, 0, .951042235, 0, 1, 0, -0.951042235, 0, -0.309060812))
				end
			end)
		end
	end
end)
L_1_[93]["Quests"]:AddSection({
	"Rengoku Sword"
})
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "سيف رينغوكو تلقائي";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_882_arg0)
		local L_883_ = {}
		L_883_[2] = L_882_arg0
		_G["IceBossRen"] = L_883_[2]
	end
})
spawn(function()
	pcall(function()
		while wait(.1) do
			if _G["IceBossRen"] then
				local L_884_ = {}
				L_884_[1] = GetConnectionEnemies("أميرال الجليد المستيقظ")
				if L_884_[1] then
					repeat
						task["wait"]()
						L_1_[4]["Kill"](L_884_[1], _G["IceBossRen"])
					until _G["IceBossRen"] == false or not L_884_[1]["Parent"] or L_884_[1]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](5668.9780273438, 28.519989013672, -6483.3520507813))
				end
			end
		end
	end)
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "مفتاح رينغوكو تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_885_arg0)
		local L_886_ = {}
		L_886_[1] = L_885_arg0
		_G["KeysRen"] = L_886_[1]
	end
})
spawn(function()
	while wait(.1) do
		pcall(function()
			if _G["KeysRen"] then
				if L_1_[45]["Backpack"]:FindFirstChild(L_1_[138][3]) or L_1_[45]["Character"]:FindFirstChild(L_1_[138][3]) then
					EquipWeapon(L_1_[138][3])
					wait(.1)
					_tp(CFrame["new"](6571.1201171875, 299.23028564453, -6967.841796875))
				else
					local L_887_ = {}
					L_887_[1] = GetConnectionEnemies(L_1_[138])
					if L_887_[1] then
						repeat
							task["wait"]()
							L_1_[4]["Kill"](L_887_[1], _G["KeysRen"])
						until L_1_[45]["Backpack"]:FindFirstChild(L_1_[138][3]) or _G["KeysRen"] == false or not L_887_[1]["Parent"] or L_887_[1]["Humanoid"]["Health"] <= 0
					else
						_tp(CFrame["new"](5439.716796875, 84.420944213867, -6715.1635742188))
					end
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "ثلاثي التنين تلقائي";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_888_arg0)
		local L_889_ = {}
		L_889_[2] = L_888_arg0
		_G["AutoTridentW2"] = L_889_[2]
	end
})
spawn(function()
	while wait(.1) do
		pcall(function()
			if _G["AutoTridentW2"] then
				local L_890_ = {}
				L_890_[2] = GetConnectionEnemies("حارس المد")
				if L_890_[2] then
					repeat
						task["wait"]()
						L_1_[4]["Kill"](L_890_[2], _G["AutoTridentW2"])
					until _G["AutoTridentW2"] == false or not L_890_[2]["Parent"] or L_890_[2]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](-3795.6423339844, 105.88877105713, -11421.307617188))
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "سيف طويل تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_891_arg0)
		local L_892_ = {}
		L_892_[1] = L_891_arg0
		_G["LongsWord"] = L_892_[1]
	end
})
spawn(function()
	while wait(.1) do
		pcall(function()
			if _G["LongsWord"] then
				local L_893_ = {}
				L_893_[2] = GetConnectionEnemies("الماس")
				if L_893_[2] then
					repeat
						task["wait"]()
						L_1_[4]["Kill"](L_893_[2], _G["LongsWord"])
					until _G["LongsWord"] == false or not L_893_[2]["Parent"] or L_893_[2]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](-1576.7166748047, 198.59265136719, 13.724286079407))
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "الشوكي الأسود تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_894_arg0)
		local L_895_ = {}
		L_895_[1] = L_894_arg0
		_G["BlackSpikey"] = L_895_[1]
	end
})
spawn(function()
	while wait(.1) do
		if _G["BlackSpikey"] then
			pcall(function()
				local L_896_ = {}
				L_896_[1] = GetConnectionEnemies("جيريمي")
				if L_896_[1] then
					repeat
						wait()
						L_1_[4]["Kill"](L_896_[1], _G["BlackSpikey"])
					until _G["BlackSpikey"] == false or not L_896_[1]["Parent"] or L_896_[1]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](2006.9261474609, 448.95666503906, 853.98284912109))
				end
			end)
		end
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "الشفرة المظلمة V3 تلقائي",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_897_arg0)
		local L_898_ = {}
		L_898_[2] = L_897_arg0
		_G["DarkBladev3"] = L_898_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["DarkBladev3"] and World2 then
				if not GetBP("Dark Blade") then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("LoadItem", "Dark Blade")
				end
				if GetBP("Fist of Darkness") > 1 then
					if not workspace["Enemies"]:FindFirstChild("الذقن الداكنة") then
						_tp(CFrame["new"](3677.08203125, 62.751937866211, -3144.8332519531))
					elseif GetConnectionEnemies("الذقن الداكنة") and GetBP("Fist of Darkness") >= 1 then
						repeat
							wait()
							_tp(CFrame["new"](-5719.3637695312, 48.505905151367, -782.97595214844))
						until not _G["DarkBladev3"] or Root["Position"] == (CFrame["new"](-5719.3637695312, 48.505905151367, -782.97595214844))["Position"]
						fireclickdetector(workspace["Map"]["GraveIsland"]["Mountain"]["Rocks"]["Button"]["ClickDetector"])
					end
				else
					_G["AutoFarmChest"] = true
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "شفرة منتصف الليل تلقائي";
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_899_arg0)
		local L_900_ = {}
		L_900_[1] = L_899_arg0
		_G["AutoEcBoss"] = L_900_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["AutoEcBoss"] then
				if GetM("الإكتوبلازم") >= 99 then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("الإكتوبلازم", "Buy", 3)
				elseif GetM("الإكتوبلازم") <= 99 then
					local L_901_ = {}
					L_901_[1] = GetConnectionEnemies("القبطان الملعون")
					if L_901_[1] then
						repeat
							wait()
							L_1_[4]["Kill"](L_901_[1], _G["AutoEcBoss"])
						until not _G["AutoEcBoss"] or not L_901_[1]["Parent"] or L_901_[1]["Humanoid"]["Health"] <= 0
					else
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](923.21252441406, 126.9760055542, 32852.83203125))
						wait(.5)
						_tp(CFrame["new"](916.928589, 181.092773, 33422))
					end
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "الذقن الداكنة تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_902_arg0)
		local L_903_ = {}
		L_903_[1] = L_902_arg0
		_G["Auto_Def_DarkCoat"] = L_903_[1]
	end
})
spawn(function()
	while wait(.1) do
		if _G["Auto_Def_DarkCoat"] then
			pcall(function()
				if GetBP("Fist of Darkness") and not workspace["Enemies"]:FindFirstChild("الذقن الداكنة") then
					_tp(CFrame["new"](3677.08203125, 62.751937866211, -3144.8332519531))
				elseif GetConnectionEnemies("الذقن الداكنة") then
					local L_904_ = {}
					L_904_[1] = GetConnectionEnemies("الذقن الداكنة")
					if L_904_[1] then
						repeat
							wait()
							L_1_[4]["Kill"](L_904_[1], _G["Auto_Def_DarkCoat"])
						until _G["Auto_Def_DarkCoat"] == false or not L_904_[1]["Parent"] or L_904_[1]["Humanoid"]["Helath"] <= 0
					end
				elseif not GetBP("Fist of Darkness") and not GetConnectionEnemies("الذقن الداكنة") then
					repeat
						wait(.1)
						_G["AutoFarmChest"] = true
					until not _G["Auto_Def_DarkCoat"] or GetBP("Fist of Darkness") or GetConnectionEnemies("الذقن الداكنة")
					_G["AutoFarmChest"] = false
				end
			end)
		end
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Unlocked DonSwa",
		"n"
	});
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_905_arg0)
		local L_906_ = {}
		L_906_[1] = L_905_arg0
		_G["Auto_DonAcces"] = L_906_[1]
	end
})
spawn(function()
	while wait(.1) do
		if _G["Auto_DonAcces"] then
			pcall(function()
				if (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("GetUnlockables"))["FlamingoAccess"] == nil and L_1_[45]["Data"]["Level"]["Value"] >= 1500 then
					FruitPrice = {}
					FruitStore = {}
					for L_907_forvar0, L_908_forvar1 in next, (L_1_[18]:WaitForChild("Remotes"))["CommF_"]:InvokeServer("GetFruits") do
						local L_909_ = {}
						L_909_[1], L_909_[3] = L_907_forvar0, L_908_forvar1
						if L_909_[3]["Price"] >= 1000000 then
							table["insert"](FruitPrice, L_909_[3]["Name"])
						end
					end
					for L_910_forvar0, L_911_forvar1 in pairs(L_1_[18]["Remotes"]["CommF_"]:InvokeServer("getInventoryFruits")) do
						local L_912_ = {}
						L_912_[2], L_912_[1] = L_910_forvar0, L_911_forvar1
						for L_913_forvar0, L_914_forvar1 in pairs(L_912_[1]) do
							local L_915_ = {}
							L_915_[2], L_915_[1] = L_913_forvar0, L_914_forvar1
							if L_915_[2] == "Name" then
								table["insert"](FruitStore, L_915_[1])
							end
						end
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Cousin", "Buy")
						for L_916_forvar0, L_917_forvar1 in pairs(FruitPrice) do
							local L_918_ = {}
							L_918_[2], L_918_[3] = L_916_forvar0, L_917_forvar1
							for L_919_forvar0, L_920_forvar1 in pairs(FruitStore) do
								local L_921_ = {}
								L_921_[3], L_921_[2] = L_919_forvar0, L_920_forvar1
								if L_918_[3] == L_921_[2] and (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("GetUnlockables"))["FlamingoAccess"] == nil then
									_G["StoreF"] = false
									if not L_1_[45]["Backpack"]:FindFirstChild(FruitStore) then
										L_1_[18]["Remotes"]["CommF_"]:InvokeServer("LoadFruit", tostring(L_918_[3]))
									else
										L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1")
										L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "2")
										L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "3")
									end
								end
							end
						end
						if (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("GetUnlockables"))["FlamingoAccess"] ~= nil then
							_G["StoreF"] = true
							_G["Auto_DonAcces"] = false
						end
					end
				end
			end)
		end
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "نظارات البجعة تلقائي",
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_922_arg0)
		local L_923_ = {}
		L_923_[1] = L_922_arg0
		_G["Auto_SwanGG"] = L_923_[1]
	end
})
spawn(function()
	while wait(.2) do
		if _G["Auto_SwanGG"] then
			pcall(function()
				local L_924_ = {}
				L_924_[2] = GetConnectionEnemies("دون سوان")
				if L_924_[2] then
					repeat
						wait()
						L_1_[4]["Kill"](L_924_[2], _G["Auto_SwanGG"])
					until _G["Auto_SwanGG"] == false or not L_924_[2]["Parent"] or L_924_[2]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](2286.2004394531, 15.177839279175, 863.8388671875))
				end
			end)
		end
	end
end)
L_1_[93]["Quests"]:AddSection({
	L_1_[2]({
		"Cavender + Twin Hook";
		"s + Bigmom"
	})
})
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "بيغ موم تلقائي",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_925_arg0)
		local L_926_ = {}
		L_926_[1] = L_925_arg0
		_G["AutoBigmom"] = L_926_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["AutoBigmom"] then
			pcall(function()
				local L_927_ = {}
				L_927_[2] = GetConnectionEnemies("ملكة الكعكة")
				if L_927_[2] then
					repeat
						task["wait"]()
						L_1_[4]["Kill"](L_927_[2], _G["AutoBigmom"])
					until not _G["AutoBigmom"] or not L_927_[2]["Parent"] or L_927_[2]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](-709.31329345703, 381.6005859375, -11011.396484375))
				end
			end)
		end
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Canvendish Swor";
		"d"
	});
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_928_arg0)
		local L_929_ = {}
		L_929_[1] = L_928_arg0
		_G["Auto_Cavender"] = L_929_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_Cavender"] then
				local L_930_ = {}
				L_930_[1] = GetConnectionEnemies("القرصان الجميل")
				if L_930_[1] then
					repeat
						wait()
						L_1_[4]["Kill"](L_930_[1], _G["Auto_Cavender"])
					until not _G["Auto_Cavender"] or L_930_[1]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](5283.609375, 22.56223487854, -110.78285217285))
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "خطافات مزدوجة تلقائي",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_931_arg0)
		local L_932_ = {}
		L_932_[2] = L_931_arg0
		_G["TwinHook"] = L_932_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["TwinHook"] then
				local L_933_ = {}
				L_933_[1] = GetConnectionEnemies("القبطان الفيل")
				if L_933_[1] then
					repeat
						wait()
						L_1_[4]["Kill"](L_933_[1], _G["TwinHook"])
					until not _G["TwinHook"] or L_933_[1]["Humanoid"]["Health"] <= 0
				else
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-12471.169921875, 374.94024658203, -7551.677734375))
					wait(.2)
					_tp(CFrame["new"](-13376.7578125, 433.28689575195, -8071.392578125))
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "قوس الأفعى تلقائي",
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_934_arg0)
		local L_935_ = {}
		L_935_[1] = L_934_arg0
		_G["AutoSerpentBow"] = L_935_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["AutoSerpentBow"] then
			local L_936_ = {}
			L_936_[1] = GetConnectionEnemies("زعيم الهيدرا")
			if L_936_[1] then
				repeat
					wait()
					L_1_[4]["Kill"](L_936_[1], _G["AutoSerpentBow"])
				until not _G["AutoSerpentBow"] or not L_936_[1]["Parent"] or L_936_[1]["Humanoid"]["Health"] <= 0
			else
				_tp(CFrame["new"](5821.8979492188, 1019.0950927734, -73.719230651855))
			end
		end
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "إكسسوار ليي تلقائي";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_937_arg0)
		local L_938_ = {}
		L_938_[2] = L_937_arg0
		_G["AutoKilo"] = L_938_[2]
	end
})
spawn(function()
	while wait(.2) do
		if _G["AutoKilo"] then
			pcall(function()
				local L_939_ = {}
				L_939_[1] = GetConnectionEnemies("أميرال كيلو")
				if L_939_[1] then
					repeat
						task["wait"]()
						L_1_[4]["Kill"](L_939_[1], _G["AutoKilo"])
					until not _G["AutoKilo"] or not L_939_[1]["Parent"] or L_939_[1]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](2764.2233886719, 432.46154785156, -7144.4580078125))
				end
			end)
		end
	end
end)
L_1_[93]["Quests"]:AddSection({
	"Buso/Aura Colours"
})
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Teleport Barist";
		"a Cousin"
	});
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_940_arg0)
		local L_941_ = {}
		L_941_[2] = L_940_arg0
		_G["Tp_MasterA"] = L_941_[2]
	end
})
spawn(function()
	while wait() do
		if _G["Tp_MasterA"] then
			pcall(function()
				for L_942_forvar0, L_943_forvar1 in pairs(L_1_[18]["NPCs"]:GetChildren()) do
					local L_944_ = {}
					L_944_[2], L_944_[1] = L_942_forvar0, L_943_forvar1
					if L_944_[1]["Name"] == "Barista Cousin" then
						_tp(L_944_[1]["HumanoidRootPart"]["CFrame"])
					end
				end
			end)
		end
	end
end)
L_1_[93]["Quests"]:AddButton({
	["Name"] = "شراء ألوان بوسو",
	["Description"] = "",
	["Callback"] = function()
		L_1_[18]["Remotes"]["CommF_"]:InvokeServer("ColorsDealer", "2")
	end
})
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "ألوان قوس قزح تلقائي",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_945_arg0)
		local L_946_ = {}
		L_946_[2] = L_945_arg0
		_G["Auto_Rainbow_Haki"] = L_946_[2]
	end
})
spawn(function()
	pcall(function()
		while wait(Sec) do
			if _G["Auto_Rainbow_Haki"] then
				if L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == false then
					if _G["GetQFast"] then
						if L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == false then
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("HornedMan", "Bet")
						end
					else
						Rainbow1 = CFrame["new"](-11892.0703125, 930.57672119141, -8760.1591796875)
						if L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] ~= Rainbow1 then
							_tp(Rainbow1)
						elseif L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] == Rainbow1 then
							wait(1)
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("HornedMan", "Bet")
						end
					end
				elseif L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == true and string["find"](L_1_[45]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "الحجر") then
					local L_947_ = {}
					L_947_[1] = GetConnectionEnemies("الحجر")
					if L_947_[1] then
						repeat
							wait()
							L_1_[4]["Kill"](L_947_[1], _G["Auto_Rainbow_Haki"])
						until _G["Auto_Rainbow_Haki"] == false or L_947_[1]["Humanoid"]["Health"] <= 0 or not L_947_[1]["Parent"] or L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == false
					else
						_tp(CFrame["new"](-1086.11621, 38.8425903, 6768.71436, .0231462717, -0.592676699, .805107772, 2.03251839e-05, .805323839, .592835128, -0.999732077, -0.0137055516, .0186523199))
					end
				elseif L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == true and string["find"](L_1_[45]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "زعيم الهيدرا") then
					local L_948_ = {}
					L_948_[2] = GetConnectionEnemies("زعيم الهيدرا")
					if L_948_[2] then
						repeat
							task["wait"]()
							L_1_[4]["Kill"](L_948_[2], _G["Auto_Rainbow_Haki"])
						until _G["Auto_Rainbow_Haki"] == false or L_948_[2]["Humanoid"]["Health"] <= 0 or not L_948_[2]["Parent"] or L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == false
					else
						local L_949_ = {}
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](5643.4526367188, 1013.0858154297, -340.51025390625))
						L_949_[2] = Vector3["new"](5643.4526367188, 1013.0858154297, -340.51025390625)
						L_949_[1] = CFrame["new"](5821.8979492188, 1019.0950927734, -73.719230651855)
						if L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"]["Position"] == L_949_[2] then
							_tp(L_949_[1])
						end
					end
				elseif L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == true and string["find"](L_1_[45]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "أميرال كيلو") then
					local L_950_ = {}
					L_950_[2] = GetConnectionEnemies("أميرال كيلو")
					if L_950_[2] then
						repeat
							task["wait"]()
							L_1_[4]["Kill"](L_950_[2], _G["Auto_Rainbow_Haki"])
						until _G["Auto_Rainbow_Haki"] == false or L_950_[2]["Humanoid"]["Health"] <= 0 or not L_950_[2]["Parent"] or L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == false
					else
						_tp(CFrame["new"](2877.61743, 423.558685, -7207.31006, -0.989591599, 0, -0.143904909, 0, 1.00000012, 0, .143904924, 0, -0.989591479))
					end
				elseif L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == true and string["find"](L_1_[45]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "القبطان الفيل") then
					local L_951_ = {}
					L_951_[2] = GetConnectionEnemies("القبطان الفيل")
					if L_951_[2] then
						repeat
							task["wait"]()
							L_1_[4]["Kill"](L_951_[2], _G["Auto_Rainbow_Haki"])
						until _G["Auto_Rainbow_Haki"] == false or L_951_[2]["Humanoid"]["Health"] <= 0 or not L_951_[2]["Parent"] or L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == false
					else
						local L_952_ = {}
						L_952_[3] = Vector3["new"](-12471.169921875, 374.94024658203, -7551.677734375)
						L_952_[1] = CFrame["new"](-13376.7578125, 433.28689575195, -8071.392578125)
						if L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"]["Position"] ~= L_952_[3] then
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-12471.169921875, 374.94024658203, -7551.677734375))
						elseif L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"]["Position"] == L_952_[3] then
							_tp(L_952_[1])
						end
					end
				elseif L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == true and string["find"](L_1_[45]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "القرصان الجميل") then
					local L_953_ = {}
					L_953_[2] = GetConnectionEnemies("القبطان الفيل")
					if L_953_[2] then
						repeat
							task["wait"]()
							L_1_[4]["Kill"](L_953_[2], _G["Auto_Rainbow_Haki"])
						until _G["Auto_Rainbow_Haki"] == false or L_953_[2]["Humanoid"]["Health"] <= 0 or not L_953_[2]["Parent"] or L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == false
					else
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](5314.5463867188, 22.562219619751, -127.06755065918))
					end
				end
			end
		end
	end)
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = L_1_[2]({
		"Accept Rainbow Quest",
		" Faster"
	}),
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_954_arg0)
		local L_955_ = {}
		L_955_[1] = L_954_arg0
		_G["GetQFast"] = L_955_[1]
	end
})
L_1_[93]["Quests"]:AddSection({
	L_1_[2]({
		"Instinct / Observati";
		"on"
	})
})
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Farm Observatio",
		"n"
	}),
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_956_arg0)
		local L_957_ = {}
		L_957_[1] = L_956_arg0
		_G["obsFarm"] = L_957_[1]
	end
})
spawn(function()
	while wait(.2) do
		pcall(function()
			if _G["obsFarm"] then
				L_1_[18]["Remotes"]["CommE"]:FireServer("Ken", true)
				if L_1_[45]:GetAttribute("KenDodgesLeft") == 0 then
					KenTest = false
				elseif L_1_[45]:GetAttribute("KenDodgesLeft") > 0 then
					L_1_[18]["Remotes"]["CommE"]:FireServer("Ken", true)
					KenTest = true
				end
			end
		end)
	end
end)
spawn(function()
	while wait(.2) do
		pcall(function()
			if _G["obsFarm"] then
				if World1 then
					if workspace["Enemies"]:FindFirstChild("Galley Captain") then
						if KenTest then
							repeat
								wait()
								L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = (workspace["Enemies"]:FindFirstChild("Galley Captain"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](3, 0, 0)
							until _G["obsFarm"] == false or KenTest == false
						else
							repeat
								wait()
								L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = (workspace["Enemies"]:FindFirstChild("Galley Captain"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 50, 0)
							until _G["obsFarm"] == false or KenTest
						end
					else
						_tp(CFrame["new"](5533.29785, 88.1079102, 4852.3916))
					end
				elseif World2 then
					if workspace["Enemies"]:FindFirstChild("Lava Pirate") then
						if KenTest then
							repeat
								wait()
								L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = (workspace["Enemies"]:FindFirstChild("Lava Pirate"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](3, 0, 0)
							until _G["obsFarm"] == false or KenTest == false
						else
							repeat
								wait()
								L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = (workspace["Enemies"]:FindFirstChild("Lava Pirate"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 50, 0)
							until _G["obsFarm"] == false or KenTest
						end
					else
						_tp(CFrame["new"](-5478.39209, 15.9775667, -5246.9126))
					end
				elseif World3 then
					if workspace["Enemies"]:FindFirstChild("المهاجم السام") then
						if KenTest then
							repeat
								wait()
								_tp((workspace["Enemies"]:FindFirstChild("المهاجم السام"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](3, 0, 0))
							until _G["obsFarm"] == false or KenTest == false
						else
							repeat
								wait()
								_tp((workspace["Enemies"]:FindFirstChild("المهاجم السام"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 50, 0))
							until _G["obsFarm"] == false or KenTest
						end
					else
						_tp(CFrame["new"](4530.3540039063, 656.75695800781, -131.60952758789))
					end
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "أوبسيرفيشن V2 تلقائي";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_958_arg0)
		local L_959_ = {}
		L_959_[2] = L_958_arg0
		_G["AutoKenVTWO"] = L_959_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["AutoKenVTWO"] then
			pcall(function()
				local L_960_ = {}
				L_960_[1] = CFrame["new"](-12444.78515625, 332.40396118164, -7673.1806640625)
				L_960_[5] = "Kuy"
				L_960_[3] = CFrame["new"](-10920.125, 624.20275878906, -10266.995117188)
				L_960_[2] = CFrame["new"](-13277.568359375, 370.34185791016, -7821.1572265625)
				L_960_[4] = CFrame["new"](-13493.12890625, 318.89553833008, -8373.7919921875)
				if L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == true and string["find"](L_1_[45]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], L_1_[2]({
					"Defeat 50 Forest Pir";
					"ates"
				})) then
					local L_961_ = {}
					L_961_[1] = GetConnectionEnemies("قرصان الغابة")
					if L_961_[1] then
						repeat
							wait()
							L_1_[4]["Kill"](L_961_[1], _G["AutoKenVTWO"])
						until not _G["AutoKenVTWO"] or L_961_[1]["Humanoid"]["Health"] <= 0 or L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == false
					else
						_tp(L_960_[2])
					end
				elseif L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == true then
					local L_962_ = {}
					L_962_[1] = GetConnectionEnemies("القبطان الفيل")
					if L_962_[1] then
						repeat
							wait()
							L_1_[4]["Kill"](L_962_[1], _G["AutoKenVTWO"])
						until not _G["AutoKenVTWO"] or L_962_[1]["Humanoid"]["Health"] <= 0 or L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == false
					else
						_tp(L_960_[4])
					end
				elseif L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == false then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CitizenQuestProgress", "Citizen")
					wait(.1)
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("StartQuest", "CitizenQuest", 1)
				end
				if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CitizenQuestProgress", "Citizen") == 2 then
					_tp(CFrame["new"](-12513.51953125, 340.11373901367, -9873.048828125))
				end
				if not L_1_[45]["Backpack"]:FindFirstChild("Fruit Bowl") or not L_1_[45]["Character"]:FindFirstChild("Fruit Bowl") then
					if not GetBP("Fruit Bowl") then
						if not GetBP("Apple") then
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-12471.169921875, 374.94024658203, -7551.677734375))
							for L_963_forvar0, L_964_forvar1 in pairs(workspace:GetDescendants()) do
								local L_965_ = {}
								L_965_[2], L_965_[3] = L_963_forvar0, L_964_forvar1
								if L_965_[3]["Name"] == "Apple" then
									L_965_[3]["Handle"]["CFrame"] = L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 1, 10)
									wait()
									firetouchinterest(L_1_[45]["Character"]["HumanoidRootPart"], L_965_[3]["Handle"], 0)
									wait()
								end
							end
						elseif not GetBP("Banana") then
							_tp(CFrame["new"](2286.0078125, 73.133918762207, -7159.8090820312))
							for L_966_forvar0, L_967_forvar1 in pairs(workspace:GetDescendants()) do
								local L_968_ = {}
								L_968_[2], L_968_[3] = L_966_forvar0, L_967_forvar1
								if L_968_[3]["Name"] == "Banana" then
									L_968_[3]["Handle"]["CFrame"] = L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 1, 10)
									wait()
									firetouchinterest(L_1_[45]["Character"]["HumanoidRootPart"], L_968_[3]["Handle"], 0)
									wait()
								end
							end
						elseif not GetBP("Pineapple") then
							_tp(CFrame["new"](-712.82727050781, 98.577049255371, 5711.9541015625))
							for L_969_forvar0, L_970_forvar1 in pairs(workspace:GetDescendants()) do
								local L_971_ = {}
								L_971_[1], L_971_[2] = L_969_forvar0, L_970_forvar1
								if L_971_[2]["Name"] == "Pineapple" then
									L_971_[2]["Handle"]["CFrame"] = L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 1, 10)
									wait()
									firetouchinterest(L_1_[45]["Character"]["HumanoidRootPart"], L_971_[2]["Handle"], 0)
									wait()
								end
							end
						end
					end
					if L_1_[45]["Backpack"]:FindFirstChild("Banana") and (L_1_[45]["Backpack"]:FindFirstChild("Apple") and L_1_[45]["Backpack"]:FindFirstChild("Pineapple")) or L_1_[45]:FindFirstChild("Banana") and (L_1_[45]:FindFirstChild("Apple") and L_1_[45]:FindFirstChild("Pineapple")) then
						repeat
							wait()
							_tp(L_960_[1])
						until _G["AutoKenVTWO"] or L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] == L_960_[1]
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CitizenQuestProgress", "Citizen")
					end
					if L_1_[45]["Backpack"]:FindFirstChild("Fruit Bowl") or L_1_[45]["Character"]:FindFirstChild("Fruit Bowl") then
						if L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] ~= L_960_[3] then
							_tp(L_960_[3])
						elseif L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] == L_960_[3] then
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("KenTalk2", "Start")
							wait(.1)
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("KenTalk2", "Buy")
						end
					end
				end
			end)
		end
	end
end)
Bartilo = L_1_[93]["Quests"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Done Bartilo Qu";
		"est"
	});
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_972_arg0)
		local L_973_ = {}
		L_973_[2] = L_972_arg0
		_G["Bartilo_Quest"] = L_973_[2]
	end
})
spawn(function()
	while wait(.1) do
		pcall(function()
			if _G["Bartilo_Quest"] and Lv >= 850 then
				local L_974_ = {}
				L_974_[2] = L_1_[45]["PlayerGui"]["Main"]["Quest"]
				if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
					_G["Level"] = false
					if L_974_[2]["Visible"] == true then
						local L_975_ = {}
						L_975_[1] = GetConnectionEnemies("قرصان البجعة")
						if L_975_[1] then
							local L_976_ = {}
							L_976_[2] = GetConnectionEnemies(L_1_[81])
							if L_976_[2] then
								repeat
									task["wait"]()
									if not string["find"](L_1_[45]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "قرصان البجعة") then
										L_1_[18]["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
									else
										L_1_[4]["Kill"](L_976_[2], _G["Bartilo_Quest"])
									end
								until _G["Bartilo_Quest"] == false or not L_976_[2]["Parent"] or L_976_[2]["Humanoid"]["Health"] <= 0 or L_974_[2]["Visible"] == false or not L_976_[2]:FindFirstChild("HumanoidRootPart")
							end
						else
							_tp(CFrame["nee"](970.369446, 142.653198, 1217.3667, .162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, .986777723, -2.50063148e-09, .162079468))
						end
					else
						repeat
							wait()
							_tp(CFrame["new"](-461.533203, 72.3478546, 300.311096, .050853312, 0, -0.998706102, 0, 1, 0, .998706102, 0, .050853312))
						until ((CFrame["new"](-461.533203, 72.3478546, 300.311096, .050853312, 0, -0.998706102, 0, 1, 0, .998706102, 0, .050853312))["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 20 or _G["Bartilo_Quest"] == false
						if ((CFrame["new"](-461.533203, 72.3478546, 300.311096, .050853312, 0, -0.998706102, 0, 1, 0, .998706102, 0, .050853312))["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 1 then
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("StartQuest", "BartiloQuest", 1)
						end
					end
				elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
					local L_977_ = {}
					_G["Level"] = false
					L_977_[2] = GetConnectionEnemies("جيريمي")
					if L_977_[2] then
						repeat
							task["wait"]()
							L_1_[4]["Kill"](L_977_[2], _G["Bartilo_Quest"])
						until _G["Bartilo_Quest"] == false or not L_977_[2]["Parent"] or L_977_[2]["Humanoid"]["Health"] <= 0 or L_974_[2]["Visible"] == false or not L_977_[2]:FindFirstChild("HumanoidRootPart")
					else
						_tp(CFrame["new"](2158.97412, 449.056244, 705.411682, -0.754199564, -4.17389057e-09, -0.656645238, -4.47752875e-08, 1, 4.50709301e-08, .656645238, 6.3393955e-08, -0.754199564))
					end
				elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
					repeat
						wait()
						_tp(CFrame["new"](-1830.83972, 10.5578213, 1680.60229, .979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, .199054286, -1.13962431e-08, .979988456))
					until ((CFrame["new"](-1830.83972, 10.5578213, 1680.60229, .979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, .199054286, -1.13962431e-08, .979988456))["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 1 or _G["Bartilo_Quest"] == false
					wait(.5)
					L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate1"]["CFrame"]
					wait(.5)
					L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate2"]["CFrame"]
					wait(.5)
					L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate3"]["CFrame"]
					wait(.5)
					L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate4"]["CFrame"]
					wait(.5)
					L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate5"]["CFrame"]
					wait(.5)
					L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate6"]["CFrame"]
					wait(.5)
					L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate7"]["CFrame"]
					wait(.5)
					L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate8"]["CFrame"]
					wait(2.5)
				end
			end
		end)
	end
end)
CitizenQ = L_1_[93]["Quests"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Done Citizen Qu";
		"est"
	});
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_978_arg0)
		local L_979_ = {}
		L_979_[1] = L_978_arg0
		_G["CitizenQuest"] = L_979_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["CitizenQuest"] then
				if Lv >= 1800 and (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CitizenQuestProgress"))["KilledBandits"] == false then
					if string["find"](L_1_[45]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "قرصان الغابة") and (string["find"](L_1_[45]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "50") and L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == true) then
						local L_980_ = {}
						L_980_[1] = GetConnectionEnemies("قرصان الغابة")
						if L_980_[1] then
							repeat
								task["wait"]()
								L_1_[4]["Kill"](L_980_[1], _G["CitizenQuest"])
							until _G["CitizenQuest"] == false or not L_980_[1]["Parent"] or L_980_[1]["Humanoid"]["Health"] <= 0 or L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == false
						else
							_tp(CFrame["new"](-13206.452148438, 425.89199829102, -7964.5537109375))
						end
					else
						_tp(CFrame["new"](-12443.8671875, 332.40396118164, -7675.4892578125))
						if (Vector3["new"](-12443.8671875, 332.40396118164, -7675.4892578125) - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 30 then
							wait(1.5)
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("StartQuest", "CitizenQuest", 1)
						end
					end
				elseif Lv >= 1800 and (L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CitizenQuestProgress"))["KilledBoss"] == false then
					local L_981_ = {}
					L_981_[2] = GetConnectionEnemies("القبطان الفيل")
					if L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] and (string["find"](L_1_[45]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "القبطان الفيل") and L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == true) then
						if L_981_[2] then
							repeat
								task["wait"]()
								L_1_[4]["Kill"](L_981_[2], _G["CitizenQuest"])
							until _G["CitizenQuest"] == false or L_981_[2]["Humanoid"]["Health"] <= 0 or not L_981_[2]["Parent"] or L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == false
						else
							_tp(CFrame["new"](-13374.889648438, 421.27752685547, -8225.208984375))
						end
					else
						_tp(CFrame["new"](-12443.8671875, 332.40396118164, -7675.4892578125))
						if ((CFrame["new"](-12443.8671875, 332.40396118164, -7675.4892578125))["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 4 then
							wait(1.5)
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CitizenQuestProgress", "Citizen")
						end
					end
				elseif Lv >= 1800 and L_1_[18]["Remotes"]["CommF_"]:InvokeServer("CitizenQuestProgress", "Citizen") == 2 then
					_tp(CFrame["new"](-12512.138671875, 340.39279174805, -9872.8203125))
				end
			end
		end)
	end
end)
Q = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "دمية تدريب تلقائي";
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_982_arg0)
		local L_983_ = {}
		L_983_[2] = L_982_arg0
		_G["DummyMan"] = L_983_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["DummyMan"] then
			pcall(function()
				if L_1_[45]["PlayerGui"]["Main"]["Quest"]["Visible"] == false then
					local L_984_ = {}
					L_984_[2] = {
						[1] = "ArenaTrainer"
					};
					((L_1_[18]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(L_984_[2]))
				else
					local L_985_ = {}
					L_985_[2] = GetConnectionEnemies("Training Dummy")
					if L_985_[2] then
						repeat
							wait()
							L_1_[4]["Kill"](L_985_[2], _G["DummyMan"])
						until not _G["DummyMan"] or not L_985_[2]["Parent"] or L_985_[2]["Humanoid"]["Health"] <= 0
					else
						_tp(CFrame["new"](3688.0051269531, 12.746943473816, 170.20953369141))
					end
				end
			end)
		end
	end
end)
L_1_[93]["Quests"]:AddSection({
	L_1_[2]({
		"Fighting Melee Style",
		"s"
	})
})
SuperHuman = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "سوبر هيومن تلقائي";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_986_arg0)
		local L_987_ = {}
		L_987_[2] = L_986_arg0
		_G["Auto_SuperHuman"] = L_987_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_SuperHuman"] then
				local L_988_ = {}
				L_988_[2] = L_1_[45]["Data"]["Beli"]["Value"]
				L_988_[1] = L_1_[45]["Data"]["Fragments"]["Value"]
				if L_1_[45]:FindFirstChild("WeaponAssetCache") then
					if not GetBP("Superhuman") then
						if not GetBP("Black Leg") then
							if L_988_[2] >= 150000 then
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyBlackLeg")
							end
						elseif GetBP("Black Leg") and (GetBP("Black Leg"))["Level"]["Value"] < 299 then
							_G["Level"] = true
						elseif GetBP("Black Leg") and (GetBP("Black Leg"))["Level"]["Value"] >= 300 then
							_G["Level"] = false
						end
						if not GetBP("Electro") then
							if L_988_[2] >= 500000 then
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyElectro")
							end
						elseif GetBP("Electro") and (GetBP("Electro"))["Level"]["Value"] < 299 then
							_G["Level"] = true
						elseif GetBP("Electro") and (GetBP("Electro"))["Level"]["Value"] >= 300 then
							_G["Level"] = false
						end
						if not GetBP("Fishman Karate") then
							if L_988_[2] >= 750000 then
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyFishmanKarate")
							end
						elseif GetBP("Fishman Karate") and (GetBP("Fishman Karate"))["Level"]["Value"] < 299 then
							_G["Level"] = true
						elseif GetBP("Fishman Karate") and (GetBP("Fishman Karate"))["Level"]["Value"] >= 300 then
							_G["Level"] = false
						end
						if not GetBP("Dragon Claw") then
							if L_988_[1] >= 1500 then
								L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward", "DragonClaw", "2")
							end
						elseif GetBP("Dragon Claw") and (GetBP("Dragon Claw"))["Level"]["Value"] < 299 then
							_G["Level"] = true
						elseif GetBP("Dragon Claw") and (GetBP("Dragon Claw"))["Level"]["Value"] >= 300 then
							_G["Level"] = false
						end
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuySuperhuman")
					end
				end
			end
		end)
	end
end)
DeathStep = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "ديث ستيب تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_989_arg0)
		local L_990_ = {}
		L_990_[1] = L_989_arg0
		_G["AutoDeathStep"] = L_990_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["AutoDeathStep"] then
			pcall(function()
				if L_1_[45]:FindFirstChild("WeaponAssetCache") then
					if not GetBP("Death Step") then
						if not GetBP("Black Leg") then
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyBlackLeg")
						end
						if GetBP("Black Leg") and (GetBP("Black Leg"))["Level"]["Value"] >= 400 then
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep")
							_G["Level"] = false
						elseif GetBP("Black Leg") and (GetBP("Black Leg"))["Level"]["Value"] < 399 then
							_G["Level"] = true
						end
						if GetBP("Black Leg") or (GetBP("Black Leg"))["Level"]["Value"] >= 400 then
							if workspace["Map"]["IceCastle"]["Hall"]["LibraryDoor"]["PhoeyuDoor"]["Transparency"] == 0 then
								if GetBP("Library Key") then
									repeat
										wait()
										_tp(CFrame["new"](6371.2001953125, 296.63433837891, -6841.1811523438))
									until not _G["AutoDeathStep"] or Root["Position"] == (CFrame["new"](6371.2001953125, 296.63433837891, -6841.1811523438))["Position"]
									if Root["CFrame"] == CFrame["new"](6371.2001953125, 296.63433837891, -6841.1811523438) then
										L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep")
									end
								elseif not GetBP("Library Key") then
									local L_991_ = {}
									L_991_[1] = GetConnectionEnemies("أميرال الجليد المستيقظ")
									if L_991_[1] then
										repeat
											wait()
											L_1_[4]["Kill"](L_991_[1], _G["AutoDeathStep"])
										until not L_991_[1]["Parent"] or L_991_[1]["Humanoid"]["Health"] <= 0 or _G["AutoDeathStep"] == false or GetBP("Library Key") or GetBP("Death Step")
									else
										_tp(CFrame["new"](5668.9780273438, 28.519989013672, -6483.3520507813))
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
SharkManV2 = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "كاراتيه رجل القرش تلقائي",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_992_arg0)
		local L_993_ = {}
		L_993_[2] = L_992_arg0
		_G["Auto_SharkMan_Karate"] = L_993_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["Auto_SharkMan_Karate"] then
			pcall(function()
				if L_1_[45]:FindFirstChild("WeaponAssetCache") then
					if not GetBP("Sharkman Karate") then
						if not GetBP("Fishman Karate") then
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyFishmanKarate")
						end
						if GetBP("Fishman Karate") and (GetBP("Fishman Karate"))["Level"]["Value"] >= 400 then
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate")
							_G["Level"] = false
						elseif GetBP("Fishman Karate") and (GetBP("Fishman Karate"))["Level"]["Value"] < 399 then
							_G["Level"] = true
						end
						if GetBP("Fishman Karate") or (GetBP("Fishman Karate"))["Level"]["Value"] >= 400 then
							if GetBP("Water Key") then
								if string["find"](L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate"), "keys") then
									if GetBP("Water Key") then
										repeat
											wait()
											_tp(CFrame["new"](-2604.6958, 239.432526, -10315.1982, .0425701365, 0, -0.999093413, 0, 1, 0, .999093413, 0, .0425701365))
										until not _G["Auto_SharkMan_Karate"] or Root["Position"] == (CFrame["new"](-2604.6958, 239.432526, -10315.1982, .0425701365, 0, -0.999093413, 0, 1, 0, .999093413, 0, .0425701365))["Position"]
										L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate")
									end
								end
							elseif not GetBP("Water Key") then
								local L_994_ = {}
								L_994_[2] = GetConnectionEnemies("حارس المد")
								if L_994_[2] then
									repeat
										wait()
										L_1_[4]["Kill"](L_994_[2], _G["Auto_SharkMan_Karate"])
									until not L_994_[2]["Parent"] or L_994_[2]["Humanoid"]["Health"] <= 0 or _G["Auto_SharkMan_Karate"] == false or GetBP("Water Key") or GetBP("Sharkman Karate")
								else
									_tp(CFrame["new"](-3053.9814453125, 237.18954467773, -10145.0390625))
								end
							end
						end
					end
				end
			end)
		end
	end
end)
ElectricClaw = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "مخلب كهربائي تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_995_arg0)
		local L_996_ = {}
		L_996_[2] = L_995_arg0
		_G["Auto_Electric_Claw"] = L_996_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["Auto_Electric_Claw"] then
			pcall(function()
				if L_1_[45]:FindFirstChild("WeaponAssetCache") then
					if not GetBP("Electro") then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyElectro")
					end
					if GetBP("Electro") and (GetBP("Electro"))["Level"]["Value"] >= 400 then
						if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw", "Start") == nil then
							notween(CFrame["new"](-12548, 337, -7481))
						end
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw")
					elseif GetBP("Electro") and (GetBP("Electro"))["Level"]["Value"] < 400 then
						repeat
							_G["AutoFarm_Bone"] = true
							wait()
						until not _G["Auto_Electric_Claw"] or GetBP("Electric Claw")
						_G["AutoFarm_Bone"] = false
					end
				end
			end)
		end
	end
end)
DragonTalon = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "تالون التنين تلقائي";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_997_arg0)
		local L_998_ = {}
		L_998_[1] = L_997_arg0
		_G["AutoDragonTalon"] = L_998_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["AutoDragonTalon"] then
			pcall(function()
				if L_1_[45]:FindFirstChild("WeaponAssetCache") then
					if not GetBP("Dragon Claw") then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward", "DragonClaw", "2")
					end
					if GetBP("Dragon Claw") and (GetBP("Dragon Claw"))["Level"]["Value"] >= 400 then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Bones", "Buy", 1, 1)
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
					elseif GetBP("Dragon Claw") and (GetBP("Dragon Claw"))["Level"]["Value"] < 400 then
						repeat
							_G["AutoFarm_Bone"] = true
							wait()
						until not _G["AutoDragonTalon"] or GetBP("Dragon Talon")
						_G["AutoFarm_Bone"] = false
					end
				end
			end)
		end
	end
end)
Godhuman = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "إنسان إله تلقائي",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_999_arg0)
		local L_1000_ = {}
		L_1000_[2] = L_999_arg0
		_G["Auto_God_Human"] = L_1000_[2]
	end
})
spawn(function()
	while wait() do
		pcall(function()
			if _G["Auto_God_Human"] then
				if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman", true) == L_1_[2]({
					"Bring me 20 Fish Tai";
					"ls, 20 Magma Ore, 10",
					" Dragon Scales and 1",
					"0 Mystic Droplets."
				}) then
					if GetM("قشرة التنين") == false or GetM("قشرة التنين") < 10 then
						if World3 then
							Lv = 1575
							_G["Level"] = true
						else
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TravelZou")
						end
					elseif GetM("ذيل السمكة") == false or GetM("ذيل السمكة") < 20 then
						if World3 then
							Lv = 1775
							_G["Level"] = true
						else
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TravelZou")
						end
					elseif GetM("القطرة الغامضة") == false or GetM("القطرة الغامضة") < 10 then
						if World2 then
							Lv = 1425
							_G["Level"] = true
						else
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
						end
					elseif GetM("خام الحمم") == false or GetM("خام الحمم") < 20 then
						if World2 then
							Lv = 1175
							_G["Level"] = true
						else
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
						end
					end
				elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman", true) == 3 then
					return nil
				else
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman")
				end
			end
		end)
	end
end)
SanguineArt = L_1_[93]["Quests"]:AddToggle({
	["Name"] = "سانغوين آرت تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1001_arg0)
		local L_1002_ = {}
		L_1002_[1] = L_1001_arg0
		_G["Snaguine"] = L_1002_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["Snaguine"] then
			pcall(function()
				if not GetBP("Sanguine Art") then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Sanguine Art")
				end
				if not GetBP("Sanguine Art") then
					if GetM("Leviathan Heart") >= 1 then
						print("Completed!!")
					else
						if World3 then
							_G["DangerSc"] = "Lv Infinite"
							_G["SailBoats"] = true
						else
							_G["SailBoats"] = false
						end
					end
					if GetM("ناب مصاص الدماء") <= 19 then
						if World2 then
							local L_1003_ = {}
							L_1003_[1] = GetConnectionEnemies("Vampire")
							if L_1003_[1] then
								repeat
									task["wait"]()
									L_1_[4]["Kill"](L_1003_[1], _G["Snaguine"])
								until not _G["Snaguine"] or L_1003_[1]["Humanoid"]["Health"] <= 0 or not L_1003_[1]["Parent"]
							else
								_tp(CFrame["new"](-6041.2924804688, 6.4027109146118, -1304.6333007812))
							end
						else
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
						end
					end
					if GetM("ناب مصاص الدماء") >= 20 and GetM("البريق الشيطاني") <= 19 then
						if World3 then
							local L_1004_ = {}
							L_1004_[1] = GetConnectionEnemies("الروح الشيطانية")
							if L_1004_[1] then
								repeat
									task["wait"]()
									L_1_[4]["Kill"](L_1004_[1], _G["Snaguine"])
								until not _G["Snaguine"] or L_1004_[1]["Humanoid"]["Health"] <= 0 or not L_1004_[1]["Parent"]
							else
								_tp(CFrame["new"](-9495.6806640625, 453.58624267578, 5977.3486328125))
							end
						else
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TravelZou")
						end
					end
					if GetM("ناب مصاص الدماء") >= 20 and (GetM("البريق الشيطاني") >= 20 and GetM("Dark Fragment") <= 1) then
						if World2 then
							local L_1005_ = {}
							L_1005_[2] = GetConnectionEnemies("الذقن الداكنة")
							if L_1005_[2] then
								repeat
									task["wait"]()
									L_1_[4]["Kill"](black, _G["Snaguine"])
								until _G["Snaguine"] or black["Humanoid"]["Health"] <= 0 or not black["Parent"]
							else
								_tp(CFrame["new"](3798.4575195313, 13.826690673828, -3399.806640625))
							end
						else
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
						end
					end
				else
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuySanguineArt")
				end
			end)
		end
	end
end)
L_1_[93]["Race"]:AddSection({
	L_1_[2]({
		"Mystic Island / Full";
		" Moon"
	})
})
FullMOOn = L_1_[93]["Race"]:AddParagraph({
	["Title"] = "حالة البدر الكامل";
	["Content"] = ""
})
Ismirage = L_1_[93]["Race"]:AddParagraph({
	["Title"] = L_1_[2]({
		" Mirage Island Statu",
		"s "
	});
	["Content"] = ""
})
spawn(function()
	while wait(.2) do
		if workspace["Map"]:FindFirstChild("MysticIsland") or workspace["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة ميراج") then
			Ismirage:SetDesc(L_1_[2]({
				" Mirage Island : Tru",
				"e"
			}))
		else
			Ismirage:SetDesc(L_1_[2]({
				" Mirage Island : Fal";
				"se"
			}))
		end
	end
end)
spawn(function()
	while wait(.2) do
		pcall(function()
			moon8 = L_1_[2]({
				"http://www.roblox.co";
				"m/asset/?id=97091504",
				"01"
			})
			moon7 = L_1_[2]({
				"http://www.roblox.co",
				"m/asset/?id=97091500";
				"86"
			})
			moon6 = L_1_[2]({
				"http://www.roblox.co";
				"m/asset/?id=97091496",
				"80"
			})
			moon5 = L_1_[2]({
				"http://www.roblox.co",
				"m/asset/?id=97091494",
				"31"
			})
			moon4 = L_1_[2]({
				"http://www.roblox.co",
				"m/asset/?id=97091490";
				"52"
			})
			moon3 = L_1_[2]({
				"http://www.roblox.co";
				"m/asset/?id=97091437";
				"33"
			})
			moon2 = L_1_[2]({
				"http://www.roblox.co",
				"m/asset/?id=97091395",
				"97"
			})
			moon1 = L_1_[2]({
				"http://www.roblox.co";
				"m/asset/?id=97091358",
				"95"
			})
			moon = Getmoon()
			if moon == moon1 then
				FullMOOn:SetDesc("Moon : 0 / 8")
			elseif moon == moon2 then
				FullMOOn:SetDesc("Moon : 1 / 8")
			elseif moon == moon3 then
				FullMOOn:SetDesc("Moon : 2 / 8")
			elseif moon == moon4 then
				FullMOOn:SetDesc(L_1_[2]({
					"Moon : 3 / 8 [ Next ",
					"Night ]"
				}))
			elseif moon == moon5 then
				FullMOOn:SetDesc(L_1_[2]({
					"Moon : 4 / 8 [ Full ",
					"Moon ]"
				}))
			elseif moon == moon6 then
				FullMOOn:SetDesc(L_1_[2]({
					"Moon : 5 / 8 [ Last ";
					"Night ]"
				}))
			elseif moon == moon7 then
				FullMOOn:SetDesc("Moon : 6 / 8")
			elseif moon == moon8 then
				FullMOOn:SetDesc("Moon : 7 / 8")
			end
		end)
	end
end)
L_1_[93]["Race"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Find Mirage Isl";
		"and"
	}),
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1006_arg0)
		local L_1007_ = {}
		L_1007_[1] = L_1006_arg0
		_G["FindMirage"] = L_1007_[1]
	end
})
spawn(function()
	while wait() do
		if _G["FindMirage"] then
			pcall(function()
				if not workspace["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة ميراج", true) then
					local L_1008_ = {}
					L_1008_[1] = CheckBoat()
					if not L_1008_[1] then
						local L_1009_ = {}
						L_1009_[1] = CFrame["new"](-16927.451, 9.086, 433.864)
						TeleportToTarget(L_1009_[1])
						if (L_1009_[1]["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10 then
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyBoat", _G["SelectedBoat"])
						end
					else
						if L_1_[45]["Character"]["Humanoid"]["Sit"] == false then
							local L_1010_ = {}
							L_1010_[2] = L_1008_[1]["VehicleSeat"]["CFrame"] * CFrame["new"](0, 1, 0)
							_tp(L_1010_[2])
						else
							repeat
								local L_1011_ = {}
								wait()
								L_1011_[1] = CFrame["new"](-10000000, 31, 37016.25)
								if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
									_tp(CFrame["new"](-10000000, 150, 37016.25))
								else
									_tp(CFrame["new"](-10000000, 31, 37016.25))
								end
							until not _G["FindMirage"] or (L_1011_[1]["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10 or workspace["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة ميراج") or L_1_[45]["Character"]["Humanoid"]["Sit"] == false
							L_1_[45]["Character"]["Humanoid"]["Sit"] = false
						end
					end
				else
					_tp(workspace["Map"]["MysticIsland"]["Center"]["CFrame"] * CFrame["new"](0, 300, 0))
				end
			end)
		end
	end
end)
L_1_[93]["Race"]:AddToggle({
	["Name"] = "كشف جزيرة ميراج",
	["Description"] = "";
	["Value"] = false,
	["Callback"] = function(L_1012_arg0)
		local L_1013_ = {}
		L_1013_[2] = L_1012_arg0
		MirageIslandESP = L_1013_[2]
		if MirageIslandESP then
			task["spawn"](function()
				while MirageIslandESP do
					UpdateIslandMirageESP()
					task["wait"](1)
				end
			end)
		else
			UpdateIslandMirageESP()
		end
	end
})
L_1_[93]["Race"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Tween To Mirage";
		" Island"
	}),
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1014_arg0)
		local L_1015_ = {}
		L_1015_[1] = L_1014_arg0
		_G["AutoMysticIsland"] = L_1015_[1]
	end
})
spawn(function()
	while task["wait"](.1) do
		pcall(function()
			if _G["AutoMysticIsland"] then
				for L_1016_forvar0, L_1017_forvar1 in pairs((game:GetService("Workspace"))["_WorldOrigin"]["Locations"]:GetChildren()) do
					local L_1018_ = {}
					L_1018_[2], L_1018_[1] = L_1016_forvar0, L_1017_forvar1
					if L_1018_[1]["Name"] == "جزيرة ميراج" then
						topos(L_1018_[1]["CFrame"] * CFrame["new"](0, 333, 0))
					end
				end
			end
		end)
	end
end)
L_1_[93]["Race"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Tween To Highes",
		"t Point"
	});
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1019_arg0)
		local L_1020_ = {}
		L_1020_[2] = L_1019_arg0
		_G["HighestMirage"] = L_1020_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["HighestMirage"] then
			pcall(function()
				if workspace["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة ميراج", true) then
					_tp(workspace["Map"]["MysticIsland"]["Center"]["CFrame"] * CFrame["new"](0, 400, 0))
				end
			end)
		end
	end
end)
L_1_[93]["Race"]:AddToggle({
	["Name"] = "جمع معدات تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1021_arg0)
		local L_1022_ = {}
		L_1022_[2] = L_1021_arg0
		_G["TPGEAR"] = L_1022_[2]
	end
})
spawn(function()
	pcall(function()
		while wait(.1) do
			if _G["TPGEAR"] then
				for L_1023_forvar0, L_1024_forvar1 in pairs((workspace["Map"]:FindFirstChild("MysticIsland")):GetChildren()) do
					local L_1025_ = {}
					L_1025_[2], L_1025_[1] = L_1023_forvar0, L_1024_forvar1
					if L_1025_[1]["Name"] == "Part" then
						if L_1025_[1]["ClassName"] == "قطعة شبكية" then
							_tp(L_1025_[1]["CFrame"])
						end
					end
				end
			end
		end
	end)
end)
L_1_[93]["Race"]:AddToggle({
	["Name"] = L_1_[2]({
		"Change Transparency ";
		"can see"
	}),
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1026_arg0)
		local L_1027_ = {}
		L_1027_[1] = L_1026_arg0
		_G["can"] = L_1027_[1]
	end
})
spawn(function()
	pcall(function()
		while wait(Sec) do
			if _G["can"] then
				for L_1028_forvar0, L_1029_forvar1 in pairs((workspace["Map"]:FindFirstChild("MysticIsland")):GetChildren()) do
					local L_1030_ = {}
					L_1030_[3], L_1030_[2] = L_1028_forvar0, L_1029_forvar1
					if L_1030_[2]["Name"] == "Part" then
						if L_1030_[2]["ClassName"] == "قطعة شبكية" then
							L_1030_[2]["Transparency"] = 0
						else
							L_1030_[2]["Transparency"] = 1
						end
					end
				end
			end
		end
	end)
end)
L_1_[93]["Race"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Tween Advanced ";
		"Fruit Dealer"
	}),
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1031_arg0)
		local L_1032_ = {}
		L_1032_[1] = L_1031_arg0
		_G["Addealer"] = L_1032_[1]
	end
})
spawn(function()
	while wait() do
		if _G["Addealer"] then
			pcall(function()
				for L_1033_forvar0, L_1034_forvar1 in pairs(L_1_[18]["NPCs"]:GetChildren()) do
					local L_1035_ = {}
					L_1035_[3], L_1035_[1] = L_1033_forvar0, L_1034_forvar1
					if L_1035_[1]["Name"] == L_1_[2]({
						"Advanced Fruit Deale";
						"r"
					}) then
						_tp(L_1035_[1]["HumanoidRootPart"]["CFrame"])
					end
				end
			end)
		end
	end
end)
L_1_[93]["Race"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Collect Mirage ";
		"Chest"
	});
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1036_arg0)
		local L_1037_ = {}
		L_1037_[2] = L_1036_arg0
		_G["FarmChestM"] = L_1037_[2]
	end
})
spawn(function()
	while wait(.2) do
		if _G["FarmChestM"] then
			pcall(function()
				if workspace["Map"]["MysticIsland"]["Chests"]:FindFirstChild("DiamondChest") or workspace["Map"]["MysticIsland"]["Chests"]:FindFirstChild("FragChest") then
					local L_1038_ = {}
					L_1038_[1] = game:GetService("CollectionService")
					L_1038_[4] = game:GetService("Players")
					L_1038_[5] = L_1038_[4]["LocalPlayer"]
					L_1038_[3] = L_1038_[5]["Character"] or L_1038_[5]["CharacterAdded"]:Wait()
					if not L_1038_[3] then
						return
					end
					L_1038_[7] = (L_1038_[3]:GetPivot())["Position"]
					L_1038_[8] = L_1038_[1]:GetTagged("_ChestTagged")
					L_1038_[9], L_1038_[6] = math["huge"], nil
					for L_1039_forvar0 = 1, #L_1038_[8], 1 do
						local L_1040_ = {}
						L_1040_[3] = L_1039_forvar0
						L_1040_[4] = L_1038_[8][L_1040_[3]]
						L_1040_[2] = ((L_1040_[4]:GetPivot())["Position"] - L_1038_[7])["Magnitude"]
						if not SelectedIsland or L_1040_[4]:IsDescendantOf(SelectedIsland) then
							if not L_1040_[4]:GetAttribute("IsDisabled") and L_1040_[2] < L_1038_[9] then
								L_1038_[9] = L_1040_[2]
								L_1038_[6] = L_1040_[4]
							end
						end
					end
					if L_1038_[6] then
						_tp(L_1038_[6]:GetPivot())
					end
				end
			end)
		end
	end
end)
L_1_[93]["Race"]:AddButton({
	["Name"] = "الحديث مع الحجر",
	["Description"] = "";
	["Callback"] = function()
		((L_1_[18]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("RaceV4Progress", "Begin");
		((L_1_[18]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("RaceV4Progress", "Check");
		((L_1_[18]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("RaceV4Progress", "تلبورت");
		((L_1_[18]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("RaceV4Progress", "Continue")
	end
})
L_1_[93]["Race"]:AddToggle({
	["Name"] = "النظر للقمر تلقائي";
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1041_arg0)
		local L_1042_ = {}
		L_1042_[2] = L_1041_arg0
		LookM = L_1042_[2]
	end
})
function MoveCamtoMoon()
	workspace["CurrentCamera"]["CFrame"] = CFrame["new"](workspace["CurrentCamera"]["CFrame"]["Position"], Lighting:GetMoonDirection() + workspace["CurrentCamera"]["CFrame"]["Position"])
	L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](L_1_[45]["Character"]["HumanoidRootPart"]["Position"], Lighting:GetMoonDirection() + L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"]["Position"])
end
task["spawn"](function()
	while task["wait"]() do
		if LookM then
			MoveCamtoMoon()
			wait(.1)
			L_1_[18]["Remotes"]["CommE"]:FireServer("ActivateAbility")
		end
	end
end)
L_1_[93]["Race"]:AddToggle({
	["Name"] = "النظر للقمر + V3 تلقائي";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1043_arg0)
		local L_1044_ = {}
		L_1044_[1] = L_1043_arg0
		LookMV3 = L_1044_[1]
	end
})
function MoveCamtoMoon()
	local L_1045_ = {}
	L_1045_[2] = Lighting:GetMoonDirection()
	workspace["CurrentCamera"]["CFrame"] = CFrame["new"](workspace["CurrentCamera"]["CFrame"]["Position"], workspace["CurrentCamera"]["CFrame"]["Position"] + L_1045_[2])
	L_1_[45]["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](L_1_[45]["Character"]["HumanoidRootPart"]["Position"], L_1_[45]["Character"]["HumanoidRootPart"]["Position"] + L_1045_[2])
end
task["spawn"](function()
	while task["wait"](.1) do
		if LookMV3 then
			MoveCamtoMoon()
			L_1_[18]["Remotes"]["CommE"]:FireServer("ActivateAbility")
			UIS:SendKeyEvent(true, "T", false, game)
			wait(.5)
			UIS:SendKeyEvent(false, "T", false, game)
		end
	end
end)
L_1_[93]["Race"]:AddSection({
	L_1_[2]({
		"Upgrade Races V2 And";
		" V3"
	})
})
RaceMink = L_1_[93]["Race"]:AddToggle({
	["Name"] = "ترقية مينك تلقائي",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1046_arg0)
		local L_1047_ = {}
		L_1047_[2] = L_1046_arg0
		_G["Auto_Mink"] = L_1047_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_Mink"] then
				if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") ~= 2 then
					if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 0 then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "2")
					elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 1 then
						if not L_1_[45]["Backpack"]:FindFirstChild("Flower 1") and not L_1_[45]["Character"]:FindFirstChild("Flower 1") then
							_tp(workspace["Flower1"]["CFrame"])
						elseif not L_1_[45]["Backpack"]:FindFirstChild("Flower 2") and not L_1_[45]["Character"]:FindFirstChild("Flower 2") then
							_tp(workspace["Flower2"]["CFrame"])
						elseif not L_1_[45]["Backpack"]:FindFirstChild("Flower 3") and not L_1_[45]["Character"]:FindFirstChild("Flower 3") then
							local L_1048_ = {}
							L_1048_[2] = GetConnectionEnemies("قرصان البجعة")
							if L_1048_[2] then
								repeat
									wait()
									L_1_[4]["Kill"](L_1048_[2], _G["Auto_Mink"])
								until GetBP("Flower 3") or not L_1048_[2]["Parent"] or L_1048_[2]["Humanoid"]["Health"] <= 0 or _G["Auto_Mink"] == false
							else
								_tp(CFrame["new"](980.09851074219, 121.33129882812, 1287.2093505859))
							end
						end
					elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 2 then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "3")
					end
				elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 0 then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "2")
				elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 1 then
					_G["AutoFarmChest"] = true
				else
					_G["AutoFarmChest"] = false
				end
			end
		end)
	end
end)
RaceHuman = L_1_[93]["Race"]:AddToggle({
	["Name"] = "ترقية إنساني تلقائي",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1049_arg0)
		local L_1050_ = {}
		L_1050_[1] = L_1049_arg0
		_G["Auto_Human"] = L_1050_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_Human"] then
				if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") ~= -2 then
					if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 0 then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "2")
					elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 1 then
						if not L_1_[45]["Backpack"]:FindFirstChild("Flower 1") and not L_1_[45]["Character"]:FindFirstChild("Flower 1") then
							_tp(workspace["Flower1"]["CFrame"])
						elseif not L_1_[45]["Backpack"]:FindFirstChild("Flower 2") and not L_1_[45]["Character"]:FindFirstChild("Flower 2") then
							_tp(workspace["Flower2"]["CFrame"])
						elseif not L_1_[45]["Backpack"]:FindFirstChild("Flower 3") and not L_1_[45]["Character"]:FindFirstChild("Flower 3") then
							local L_1051_ = {}
							L_1051_[1] = GetConnectionEnemies("قرصان البجعة")
							if L_1051_[1] then
								repeat
									wait()
									L_1_[4]["Kill"](L_1051_[1], _G["Auto_Human"])
								until L_1_[45]["Backpack"]:FindFirstChild("Flower 3") or not L_1051_[1]["Parent"] or L_1051_[1]["Humanoid"]["Health"] <= 0 or _G["Auto_Human"] == false
							else
								_tp(CFrame["new"](980.09851074219, 121.33129882812, 1287.2093505859))
							end
						end
					elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 2 then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "3")
					end
				elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 0 then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "2")
				elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 1 then
					local L_1052_ = {}
					L_1052_[1] = GetConnectionEnemies(L_1_[110][1])
					if L_1052_[1] then
						repeat
							wait()
							L_1_[4]["Kill"](L_1052_[1], _G["Auto_Human"])
						until L_1052_[1]["Humanoid"]["Health"] <= 0 or not L_1052_[1]["Parent"] or not _G["Auto_Human"]
					else
						_tp(CFrame["new"](-2172.7399902344, 103.32216644287, -4015.025390625))
					end
					L_1052_[4] = GetConnectionEnemies(L_1_[110][2])
					if L_1052_[4] then
						repeat
							wait()
							L_1_[4]["Kill"](L_1052_[4], _G["Auto_Human"])
						until L_1052_[4]["Humanoid"]["Health"] <= 0 or not L_1052_[4]["Parent"] or not _G["Auto_Human"]
					else
						_tp(CFrame["new"](2006.9261474609, 448.95666503906, 853.98284912109))
					end
					L_1052_[3] = GetConnectionEnemies(L_1_[110][3])
					if L_1052_[3] then
						repeat
							wait()
							L_1_[4]["Kill"](L_1052_[3], _G["Auto_Human"])
						until L_1052_[3]["Humanoid"]["Health"] <= 0 or not L_1052_[3]["Parent"] or not _G["Auto_Human"]
					else
						_tp(CFrame["new"](-1576.7166748047, 198.59265136719, 13.724286079407))
					end
				end
			end
		end)
	end
end)
RaceSky = L_1_[93]["Race"]:AddToggle({
	["Name"] = "ترقية الملاك تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1053_arg0)
		local L_1054_ = {}
		L_1054_[2] = L_1053_arg0
		_G["Auto_Skypiea"] = L_1054_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_Skypiea"] then
				if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") ~= -2 then
					if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 0 then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "2")
					elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 1 then
						if not L_1_[45]["Backpack"]:FindFirstChild("Flower 1") and not L_1_[45]["Character"]:FindFirstChild("Flower 1") then
							_tp(workspace["Flower1"]["CFrame"])
						elseif not L_1_[45]["Backpack"]:FindFirstChild("Flower 2") and not L_1_[45]["Character"]:FindFirstChild("Flower 2") then
							_tp(workspace["Flower2"]["CFrame"])
						elseif not L_1_[45]["Backpack"]:FindFirstChild("Flower 3") and not L_1_[45]["Character"]:FindFirstChild("Flower 3") then
							local L_1055_ = {}
							L_1055_[1] = GetConnectionEnemies("قرصان البجعة")
							if L_1055_[1] then
								repeat
									wait()
									L_1_[4]["Kill"](L_1055_[1], _G["Auto_Skypiea"])
								until L_1_[45]["Backpack"]:FindFirstChild("Flower 3") or not L_1055_[1]["Parent"] or L_1055_[1]["Humanoid"]["Health"] <= 0 or _G["Auto_Skypiea"] == false
							else
								_tp(CFrame["new"](980.09851074219, 121.33129882812, 1287.2093505859))
							end
						end
					elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 2 then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "3")
					end
				elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 0 then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "2")
				elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 1 then
					for L_1056_forvar0, L_1057_forvar1 in pairs(game["Players"]:GetChildren()) do
						local L_1058_ = {}
						L_1058_[3], L_1058_[1] = L_1056_forvar0, L_1057_forvar1
						if L_1058_[1]["Name"] ~= L_1_[45]["Name"] and tostring(L_1058_[1]["Data"]["Race"]["Value"]) == "Skypiea" then
							repeat
								task["wait"]()
								_tp((L_1058_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 8, 0)) * CFrame["Angles"](math["rad"](-45), 0, 0))
							until L_1058_[1]["Humanoid"]["Health"] <= 0 or _G["Auto_Skypiea"] == false
						end
					end
				end
			end
		end)
	end
end)
RaceFish = L_1_[93]["Race"]:AddToggle({
	["Name"] = "ترقية رجل السمكة تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1059_arg0)
		local L_1060_ = {}
		L_1060_[2] = L_1059_arg0
		_G["Auto_Fish"] = L_1060_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_Fish"] then
				if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") ~= -2 then
					if L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 0 then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "2")
					elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 1 then
						if not L_1_[45]["Backpack"]:FindFirstChild("Flower 1") and not L_1_[45]["Character"]:FindFirstChild("Flower 1") then
							_tp(workspace["Flower1"]["CFrame"])
						elseif not L_1_[45]["Backpack"]:FindFirstChild("Flower 2") and not L_1_[45]["Character"]:FindFirstChild("Flower 2") then
							_tp(workspace["Flower2"]["CFrame"])
						elseif not L_1_[45]["Backpack"]:FindFirstChild("Flower 3") and not L_1_[45]["Character"]:FindFirstChild("Flower 3") then
							local L_1061_ = {}
							L_1061_[1] = GetConnectionEnemies("قرصان البجعة")
							if L_1061_[1] then
								repeat
									wait()
									L_1_[4]["Kill"](L_1061_[1], _G["Auto_Fish"])
								until L_1_[45]["Backpack"]:FindFirstChild("Flower 3") or not L_1061_[1]["Parent"] or L_1061_[1]["Humanoid"]["Health"] <= 0 or _G["Auto_Fish"] == false
							else
								_tp(CFrame["new"](980.09851074219, 121.33129882812, 1287.2093505859))
							end
						end
					elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 2 then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "3")
					end
				elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 0 then
					L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "2")
				elseif L_1_[18]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 1 then
					warn("Sea Beast Soon")
				end
			end
		end)
	end
end)
L_1_[93]["Race"]:AddSection({
	"Trials Quest V4"
})
CheckTier = L_1_[93]["Race"]:AddParagraph({
	["Title"] = "حالة تيرز V4";
	["Content"] = ""
})
spawn(function()
	pcall(function()
		while wait(.2) do
			CheckTier:SetDesc(" Tiers - V4  :" .. (" " .. L_1_[45]["Data"]["Race"]["C"]["Value"]))
		end
	end)
end)
PullLv = L_1_[93]["Race"]:AddToggle({
	["Name"] = "سحب الرافعة تلقائي",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1062_arg0)
		local L_1063_ = {}
		L_1063_[2] = L_1062_arg0
		_G["Lver"] = L_1063_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["Lver"] then
			pcall(function()
				for L_1064_forvar0, L_1065_forvar1 in pairs(workspace["Map"]["Temple of Time"]:GetDescendants()) do
					local L_1066_ = {}
					L_1066_[3], L_1066_[2] = L_1064_forvar0, L_1065_forvar1
					if L_1066_[2]["Name"] == "ProximityPrompt" then
						fireproximityprompt(L_1066_[2], math["huge"])
					end
				end
			end)
		end
	end
end)
Train = L_1_[93]["Race"]:AddToggle({
	["Name"] = "تدريب V4 تلقائي",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1067_arg0)
		local L_1068_ = {}
		L_1068_[1] = L_1067_arg0
		_G["AcientOne"] = L_1068_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["AcientOne"] then
				local L_1069_ = {}
				L_1069_[2] = {
					"الهيكل المولود من جديد";
					"الزومبي الحي";
					"الروح الشيطانية";
					"المومياء الممسوسة"
				}
				for L_1070_forvar0 = 1, #L_1069_[2], 1 do
					if (L_1_[45]["Character"]:FindFirstChild("RaceEnergy"))["Value"] == 1 then
						vim1:SendKeyEvent(true, "Y", false, game)
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("UpgradeRace", "Buy")
						_tp(CFrame["new"](-8987.041015625, 215.86206054688, 5886.7104492188))
					elseif (L_1_[45]["Character"]:FindFirstChild("RaceTransformed"))["Value"] == false then
						local L_1071_ = {}
						L_1071_[1] = GetConnectionEnemies(L_1069_[2])
						if L_1071_[1] then
							repeat
								wait()
								L_1_[4]["Kill"](L_1071_[1], _G["AcientOne"])
							until _G["AcientOne"] == false or L_1071_[1]["Humanoid"]["Health"] <= 0 or not L_1071_[1]["Parent"]
						else
							_tp(CFrame["new"](-9495.6806640625, 453.58624267578, 5977.3486328125))
						end
					end
				end
			end
		end)
	end
end)
L_1_[93]["Race"]:AddButton({
	["Name"] = L_1_[2]({
		"Teleport to Temple o";
		"f Time"
	});
	["Description"] = "";
	["Callback"] = function()
		local L_1072_ = {}
		L_1072_[1] = (game:GetService("Players"))["LocalPlayer"]
		L_1072_[3] = L_1072_[1]["Character"] and L_1072_[1]["Character"]:FindFirstChild("HumanoidRootPart")
		if L_1072_[3] then
			L_1072_[3]["CFrame"] = CFrame["new"](28286.35546875, 14895.301757812, 102.62469482422)
		end
		if not(game:GetService("Workspace"))["Map"]:FindFirstChild("Temple of Time") and World3 then
			local L_1073_ = {}
			L_1073_[2] = (game:GetService("ReplicatedStorage")):FindFirstChild("MapStash")
			if L_1073_[2] and L_1073_[2]:FindFirstChild("Temple of Time") then
				L_1073_[2]["Temple of Time"]["Parent"] = workspace["Map"]
			end
		end
	end
})
L_1_[93]["Race"]:AddButton({
	["Name"] = L_1_[2]({
		"Teleport to Ancient ";
		"One"
	});
	["Description"] = "";
	["Callback"] = function()
		local L_1074_ = {}
		L_1074_[3] = (game:GetService("Players"))["LocalPlayer"]
		L_1074_[1] = L_1074_[3]["Character"] and L_1074_[3]["Character"]:FindFirstChild("HumanoidRootPart")
		if L_1074_[1] then
			L_1074_[1]["CFrame"] = CFrame["new"](28286.35546875, 14895.301757812, 102.62469482422)
		end
		if not(game:GetService("Workspace"))["Map"]:FindFirstChild("Temple of Time") and World3 then
			local L_1075_ = {}
			L_1075_[1] = (game:GetService("ReplicatedStorage")):FindFirstChild("MapStash")
			if L_1075_[1] and L_1075_[1]:FindFirstChild("Temple of Time") then
				L_1075_[1]["Temple of Time"]["Parent"] = workspace["Map"]
			end
		end
		task["wait"](2)
		tween(CFrame["new"](28981.552734375, 14888.426757812, -120.24584960938))
	end
})
L_1_[93]["Race"]:AddButton({
	["Name"] = L_1_[2]({
		"Teleport to Ancient ",
		"Clock"
	}),
	["Description"] = "";
	["Callback"] = function()
		local L_1076_ = {}
		L_1076_[1] = (game:GetService("Players"))["LocalPlayer"]
		L_1076_[4] = L_1076_[1]["Character"] and L_1076_[1]["Character"]:FindFirstChild("HumanoidRootPart")
		L_1076_[5] = CFrame["new"](28286.35546875, 14895.301757812, 102.62469482422)
		L_1076_[2] = CFrame["new"](29549, 15069, -88)
		if L_1076_[4] then
			L_1076_[4]["CFrame"] = L_1076_[5]
		end
		task["delay"](2, function()
			_tp(L_1076_[2])
		end)
		if not workspace["Map"]:FindFirstChild("Temple of Time") and World3 then
			local L_1077_ = {}
			L_1077_[2] = (game:GetService("ReplicatedStorage")):FindFirstChild("MapStash")
			if L_1077_[2] and L_1077_[2]:FindFirstChild("Temple of Time") then
				L_1077_[2]["Temple of Time"]["Parent"] = workspace["Map"]
			end
		end
	end
})
Doors = L_1_[93]["Race"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Teleport to Rac",
		"e Doors"
	}),
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1078_arg0)
		local L_1079_ = {}
		L_1079_[1] = L_1078_arg0
		_G["TPDoor"] = L_1079_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["TPDoor"] then
				if tostring(L_1_[45]["Data"]["Race"]["Value"]) == "Mink" then
					_tp(CFrame["new"](29020.66015625, 14889.426757812, -379.2682800293))
				elseif tostring(L_1_[45]["Data"]["Race"]["Value"]) == "Fishman" then
					_tp(CFrame["new"](28224.056640625, 14889.426757812, -210.58720397949))
				elseif tostring(L_1_[45]["Data"]["Race"]["Value"]) == "السايبورغ" then
					_tp(CFrame["new"](28492.4140625, 14894.426757812, -422.11001586914))
				elseif tostring(L_1_[45]["Data"]["Race"]["Value"]) == "Skypiea" then
					_tp(CFrame["new"](28967.408203125, 14918.075195312, 234.31198120117))
				elseif tostring(L_1_[45]["Data"]["Race"]["Value"]) == "Ghoul" then
					_tp(CFrame["new"](28672.720703125, 14889.127929688, 454.59616088867))
				elseif tostring(L_1_[45]["Data"]["Race"]["Value"]) == "Human" then
					_tp(CFrame["new"](29237.294921875, 14889.426757812, -206.94955444336))
				end
			end
		end)
	end
end)
Trials = L_1_[93]["Race"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Complete Trial ";
		"Race"
	}),
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1080_arg0)
		local L_1081_ = {}
		L_1081_[1] = L_1080_arg0
		_G["Complete_Trials"] = L_1081_[1]
	end
})
GetSeaBeastTrial = function()
	if not workspace["Map"]:FindFirstChild("FishmanTrial") then
		return nil
	end
	if workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Trial of Water") then
		FishmanTrial = workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Trial of Water")
	end
	if FishmanTrial then
		for L_1082_forvar0, L_1083_forvar1 in next, workspace["SeaBeasts"]:GetChildren() do
			local L_1084_ = {}
			L_1084_[3], L_1084_[2] = L_1082_forvar0, L_1083_forvar1
			if L_1084_[2]:FindFirstChild("HumanoidRootPart") and (L_1084_[2]["HumanoidRootPart"]["Position"] - FishmanTrial["Position"])["Magnitude"] <= 1500 then
				if L_1084_[2]["Health"]["Value"] > 0 then
					return L_1084_[2]
				end
			end
		end
	end
end
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Complete_Trials"] then
				if tostring(L_1_[45]["Data"]["Race"]["Value"]) == "Mink" then
					notween(workspace["Map"]["MinkTrial"]["Ceiling"]["CFrame"] * CFrame["new"](0, -20, 0))
				end
			end
		end)
	end
end)
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Complete_Trials"] then
				if tostring(L_1_[45]["Data"]["Race"]["Value"]) == "Fishman" then
					if GetSeaBeastTrial() then
						repeat
							task["wait"]()
							spawn(function()
								_tp(CFrame["new"]((GetSeaBeastTrial())["HumanoidRootPart"]["Position"]["X"], (game:GetService("Workspace"))["Map"]["WaterBase-Plane"]["Position"]["Y"] + 300, (GetSeaBeastTrial())["HumanoidRootPart"]["Position"]["Z"]))
							end)
							MousePos = (GetSeaBeastTrial())["HumanoidRootPart"]["Position"]
							Useskills("يد", "Z")
							Useskills("يد", "X")
							Useskills("يد", "C")
							wait(.1)
							Useskills("سيف", "Z")
							Useskills("سيف", "X")
							wait(.1)
							Useskills("ثمرة بلوكس", "Z")
							Useskills("ثمرة بلوكس", "X")
							Useskills("ثمرة بلوكس", "C")
							wait(.1)
							Useskills("مسدس", "Z")
							Useskills("مسدس", "X")
						until _G["Complete_Trials"] == false or not GetSeaBeastTrial()
					end
				end
			end
		end)
	end
end)
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Complete_Trials"] then
				if tostring(L_1_[45]["Data"]["Race"]["Value"]) == "السايبورغ" then
					_tp(workspace["Map"]["CyborgTrial"]["Floor"]["CFrame"] * CFrame["new"](0, 500, 0))
				end
			end
		end)
	end
end)
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Complete_Trials"] then
				if tostring(L_1_[45]["Data"]["Race"]["Value"]) == "Skypiea" then
					notween(workspace["Map"]["SkyTrial"]["Model"]["FinishPart"]["CFrame"])
				end
			end
		end)
	end
end)
spawn(function()
	while wait(.1) do
		pcall(function()
			if _G["Complete_Trials"] then
				if tostring(L_1_[45]["Data"]["Race"]["Value"]) == "Human" or tostring(L_1_[45]["Data"]["Race"]["Value"]) == "Ghoul" then
					local L_1085_ = {}
					L_1085_[2] = {
						"Ancient Vampire";
						"Ancient Zombie"
					}
					L_1085_[3] = GetConnectionEnemies(L_1085_[2])
					if L_1085_[3] then
						repeat
							wait()
							L_1_[4]["Kill"](L_1085_[3], _G["Complete_Trials"])
						until _G["Complete_Trials"] == false or not L_1085_[3]["Parent"] or L_1085_[3]["Humanoid"]["Health"] <= 0
					end
				end
			end
		end)
	end
end)
AutoKill = L_1_[93]["Race"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Kill Player Aft";
		"er Trial"
	});
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1086_arg0)
		local L_1087_ = {}
		L_1087_[1] = L_1086_arg0
		_G["Defeating"] = L_1087_[1]
	end
})
spawn(function()
	while task["wait"](Sec) do
		pcall(function()
			if _G["Defeating"] then
				for L_1088_forvar0, L_1089_forvar1 in pairs(workspace["Characters"]:GetChildren()) do
					local L_1090_ = {}
					L_1090_[2], L_1090_[1] = L_1088_forvar0, L_1089_forvar1
					if L_1090_[1]["Name"] ~= L_1_[45]["Name"] then
						if L_1090_[1]["Humanoid"]["Health"] > 0 and (L_1090_[1]:FindFirstChild("HumanoidRootPart") and (L_1090_[1]["Parent"] and (Root["Position"] - L_1090_[1]["HumanoidRootPart"]["Position"])["Magnitude"] <= 250)) then
							repeat
								task["wait"]()
								EquipWeapon(_G["SelectWeapon"])
								_tp(L_1090_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 0, 15))
								sethiddenproperty(L_1_[45], "SimulationRadius", math["huge"])
							until _G["Defeating"] == false or L_1090_[1]["Humanoid"]["Health"] <= 0 or not L_1090_[1]["Parent"] or not L_1090_[1]:FindFirstChild("HumanoidRootPart") or not L_1090_[1]:FindFirstChild("Humanoid")
						end
					end
				end
			end
		end)
	end
end)
L_1_[93]["Prehistoric"]:AddSection({
	"مهمة الدوجو"
})
L_1_[93]["Prehistoric"]:AddButton({
	["Title"] = L_1_[2]({
		"Teleport To Dragon D";
		"ojo"
	});
	["Callback"] = function()
		(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](5661.5322265625, 1013.0907592773, -334.96499633789))
		topos(CFrame["new"](5814.4272460938, 1208.3267822266, 884.57855224609))
	end
})
DojoQ = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = "مدرب الدوجو تلقائي";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1091_arg0)
		local L_1092_ = {}
		L_1092_[2] = L_1091_arg0
		_G["Dojoo"] = L_1092_[2]
	end
})
function printBeltName(L_1093_arg0)
	local L_1094_ = {}
	L_1094_[1] = L_1093_arg0
	if type(L_1094_[1]) == "table" and L_1094_[1]["Quest"]["BeltName"] then
		return L_1094_[1]["Quest"]["BeltName"]
	end
end
spawn(function()
	while wait(Sec) do
		if _G["Dojoo"] then
			pcall(function()
				local L_1095_ = {}
				L_1095_[3] = {
					[1] = {
						["NPC"] = "Dojo Trainer";
						["Command"] = "RequestQuest"
					}
				}
				L_1095_[4] = (L_1_[18]["Modules"]["Net"]:FindFirstChild(L_1_[2]({
					"RF/InteractDragonQue",
					"st"
				}))):InvokeServer(unpack(L_1095_[3]))
				L_1095_[1] = printBeltName(L_1095_[4])
				if debug == false and (not L_1095_[4] and not L_1095_[1]) then
					_tp(CFrame["new"](5865.0234375, 1208.3154296875, 871.15185546875))
					debug = true
				elseif debug == true and ((CFrame["new"](5865.0234375, 1208.3154296875, 871.15185546875))["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 50 then
					if L_1095_[1] == "White" then
						local L_1096_ = {}
						L_1096_[1] = GetConnectionEnemies("Skull Slayer")
						if L_1096_[1] then
							repeat
								task["wait"]()
								L_1_[4]["Kill"](L_1096_[1], _G["Dojoo"])
							until not L_1095_[4] or not _G["Dojoo"] or not L_1_[4]["Alive"](L_1096_[1])
						else
							_tp(CFrame["new"](-16759.58984375, 71.283767700195, 1595.3399658203))
						end
					elseif L_1095_[1] == "Yellow" then
						repeat
							task["wait"]()
							_G["SeaBeast1"] = true
							_G["TerrorShark"] = true
							_G["Shark"] = true
							_G["البيرانا"] = true
							_G["MobCrew"] = true
							_G["FishBoat"] = true
							_G["SailBoats"] = true
						until not _G["Dojoo"] or not L_1095_[4]
						_G["SeaBeast1"] = false
						_G["TerrorShark"] = false
						_G["Shark"] = false
						_G["البيرانا"] = false
						_G["MobCrew"] = false
						_G["FishBoat"] = false
						_G["SailBoats"] = false
					elseif L_1095_[1] == "Green" then
						repeat
							task["wait"]()
							_G["SailBoats"] = true
						until not _G["Dojoo"] or not L_1095_[4]
						_G["SailBoats"] = false
					elseif L_1095_[1] == "Purple" then
						repeat
							task["wait"]()
							_G["FarmEliteHunt"] = true
						until not _G["Dojoo"] or not L_1095_[4]
						_G["FarmEliteHunt"] = false
					elseif L_1095_[1] == "Red" then
						repeat
							task["wait"]()
							_G["SailBoats"] = true
							_G["FishBoat"] = true
						until not _G["Dojoo"] or not L_1095_[4]
						_G["SailBoats"] = false
						_G["FishBoat"] = false
					elseif L_1095_[1] == "Black" then
						repeat
							task["wait"]()
							if workspace["Map"]:FindFirstChild("PrehistoricIsland") or workspace["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة ما قبل التاريخ") then
								_G["Prehis_Find"] = true
								if workspace["Map"]["PrehistoricIsland"]["Core"]["ActivationPrompt"]:FindFirstChild("ProximityPrompt", true) then
									_G["Prehis_Skills"] = false
									_G["Prehis_Find"] = true
								else
									_G["Prehis_Skills"] = true
									_G["Prehis_Find"] = false
								end
							else
								_G["Prehis_Find"] = true
								_G["Prehis_Skills"] = false
							end
						until not _G["Dojoo"] or not L_1095_[4]
						_G["Prehis_Find"] = false
						_G["Prehis_Skills"] = false
					elseif L_1095_[1] == "Orange" or L_1095_[1] == "Blue" then
						return nil
					end
				end
				if not L_1095_[4] then
					local L_1097_ = {}
					debug = false
					L_1097_[2] = {
						[1] = {
							["NPC"] = "Dojo Trainer",
							["Command"] = "ClaimQuest"
						}
					};
					(L_1_[18]["Modules"]["Net"]:FindFirstChild(L_1_[2]({
						"RF/InteractDragonQue",
						"st"
					}))):InvokeServer(unpack(L_1097_[2]))
				end
			end)
		end
	end
end)
BlazeEM = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = "صياد التنين تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1098_arg0)
		local L_1099_ = {}
		L_1099_[2] = L_1098_arg0
		_G["FarmBlazeEM"] = L_1099_[2]
	end
})
checkQuesta = function()
	local L_1100_ = {}
	L_1100_[3] = {
		[1] = {
			["Context"] = "Check"
		}
	}
	L_1100_[1] = nil
	pcall(function()
		local L_1101_ = {}
		L_1101_[1] = {
			[1] = {
				["Context"] = "RequestQuest"
			}
		};
		((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer(unpack(L_1101_[1]))
	end)
	L_1100_[8], L_1100_[4] = pcall(function()
		L_1100_[1] = ((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer(unpack(L_1100_[3]))
	end)
	L_1100_[6] = false
	if L_1100_[1] then
		if L_1100_[1]["Text"] then
			local L_1102_ = {}
			L_1100_[6] = true
			L_1102_[2] = L_1100_[1]["Text"]
			if string["find"](tostring(L_1102_[2]), "Defeat") then
				local L_1103_ = {}
				L_1100_[7] = 1
				L_1100_[2] = string["sub"](tostring(L_1102_[2]), 8, 9)
				L_1100_[2] = tonumber(L_1100_[2])
				L_1103_[1] = {
					"Hydra Enforcer";
					"المهاجم السام"
				}
				for L_1104_forvar0, L_1105_forvar1 in pairs(L_1103_[1]) do
					local L_1106_ = {}
					L_1106_[3], L_1106_[2] = L_1104_forvar0, L_1105_forvar1
					if string["find"](L_1102_[2], L_1106_[2]) then
						L_1100_[9] = L_1106_[2]
						break
					end
				end
			elseif string["find"](tostring(L_1102_[2]), "Destroy") then
				L_1100_[2] = 10
				L_1100_[7] = 2
				L_1100_[9] = nil
			end
		end
	end
	return L_1100_[6], L_1100_[9], L_1100_[2], L_1100_[7]
end
BackTODoJo = function()
	for L_1107_forvar0, L_1108_forvar1 in pairs((game:GetService("Players"))["LocalPlayer"]["PlayerGui"]["Notifications"]:GetChildren()) do
		local L_1109_ = {}
		L_1109_[2], L_1109_[1] = L_1107_forvar0, L_1108_forvar1
		if L_1109_[1]["Name"] == "NotificationTemplate" then
			if string["find"](L_1109_[1]["Text"], L_1_[2]({
				"Head back to the Doj";
				"o to complete more t";
				"asks"
			})) then
				return true
			end
		end
	end
	return false
end
DragonMobClear = function(L_1110_arg0, L_1111_arg1, L_1112_arg2)
	local L_1113_ = {}
	L_1113_[3], L_1113_[4], L_1113_[1] = L_1110_arg0, L_1111_arg1, L_1112_arg2
	if workspace["Enemies"]:FindFirstChild(L_1113_[4]) then
		for L_1114_forvar0, L_1115_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
			local L_1116_ = {}
			L_1116_[2], L_1116_[3] = L_1114_forvar0, L_1115_forvar1
			if L_1116_[3]["Name"] == L_1113_[4] and L_1_[4]["Alive"](L_1116_[3]) then
				if L_1113_[3] then
					L_1_[4]["Kill"](L_1116_[3], L_1113_[3])
				end
			end
		end
	else
		_tp(L_1113_[1])
	end
end
spawn(function()
	while wait() do
		if _G["FarmBlazeEM"] then
			pcall(function()
				local L_1117_ = {}
				L_1117_[1], L_1117_[5], L_1117_[3], L_1117_[4] = checkQuesta()
				if L_1117_[1] == true and not BackTODoJo() then
					if L_1117_[4] == 1 then
						if L_1117_[5] == "Hydra Enforcer" or L_1117_[5] == "المهاجم السام" then
							repeat
								wait()
								DragonMobClear(true, L_1117_[5], CFrame["new"](4620.6157226562, 1002.2954711914, 399.08688354492))
							until not _G["FarmBlazeEM"] or not L_1117_[1] or BackTODoJo()
						end
					elseif L_1117_[4] == 2 then
						if workspace["Map"]["Waterfall"]["IslandModel"]:FindFirstChild("Meshes/bambootree", true) then
							repeat
								wait()
								spawn(function()
									_tp((workspace["Map"]["Waterfall"]["IslandModel"]:FindFirstChild("Meshes/bambootree", true))["CFrame"] * CFrame["new"](4, 0, 0))
								end)
								if ((workspace["Map"]["Waterfall"]["IslandModel"]:FindFirstChild("Meshes/bambootree", true))["Position"] - Root["Position"])["Magnitude"] <= 200 then
									MousePos = (workspace["Map"]["Waterfall"]["IslandModel"]:FindFirstChild("Meshes/bambootree", true))["Position"]
									Useskills("يد", "Z")
									Useskills("يد", "X")
									Useskills("يد", "C")
									wait(.5)
									Useskills("سيف", "Z")
									Useskills("سيف", "X")
									wait(.5)
									Useskills("ثمرة بلوكس", "Z")
									Useskills("ثمرة بلوكس", "X")
									Useskills("ثمرة بلوكس", "C")
									wait(.5)
									Useskills("مسدس", "Z")
									Useskills("مسدس", "X")
								end
							until not _G["FarmBlazeEM"] or not L_1117_[1] or BackTODoJo()
						end
					end
				else
					_tp(CFrame["new"](5813, 1208, 884))
					DragonMobClear(false, nil, nil)
				end
			end)
		end
	end
end)
spawn(function()
	while wait(.1) do
		if _G["FarmBlazeEM"] then
			pcall(function()
				if workspace["EmberTemplate"]:FindFirstChild("Part") then
					game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["CFrame"] = workspace["EmberTemplate"]["Part"]["CFrame"]
				end
			end)
		end
	end
end)
L_1_[93]["Prehistoric"]:AddSection({
	"Drago Trial"
})
GetQuestDracoLevel = function()
	local L_1118_ = {}
	L_1118_[1] = {
		[1] = {
			["NPC"] = "Dragon Wizard",
			["Command"] = "Upgrade"
		}
	}
	return (L_1_[18]["Modules"]["Net"]:FindFirstChild(L_1_[2]({
		"RF/InteractDragonQue",
		"st"
	}))):InvokeServer(unpack(L_1118_[1]))
end
Toggle = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = L_1_[2]({
		"Tween To Upgrade Dro",
		"co Trial"
	}),
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1119_arg0)
		local L_1120_ = {}
		L_1120_[1] = L_1119_arg0
		_G["UPGDrago"] = L_1120_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["UPGDrago"] then
				if GetQuestDracoLevel() == false then
					return nil
				elseif GetQuestDracoLevel() == true then
					if ((CFrame["new"](5814.4272460938, 1208.3267822266, 884.57855224609))["Position"] - Root["Position"])["Magnitude"] >= 300 then
						_tp(CFrame["new"](5814.4272460938, 1208.3267822266, 884.57855224609))
					else
						local L_1121_ = {}
						_tp(CFrame["new"](5814.4272460938, 1208.3267822266, 884.57855224609))
						L_1121_[1] = {
							[1] = {
								["NPC"] = "Dragon Wizard";
								["Command"] = "Upgrade"
							}
						};
						(L_1_[18]["Modules"]["Net"]:FindFirstChild(L_1_[2]({
							"RF/InteractDragonQue",
							"st"
						}))):InvokeServer(unpack(L_1121_[1]))
					end
				end
			end
		end)
	end
end)
Toggle = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = "دراغو V1 تلقائي";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1122_arg0)
		local L_1123_ = {}
		L_1123_[1] = L_1122_arg0
		_G["DragoV1"] = L_1123_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["DragoV1"] then
				if GetM("Dragon Egg") <= 0 then
					repeat
						wait()
						_G["Prehis_Find"] = true
						_G["Prehis_Skills"] = true
						_G["Prehis_DE"] = true
					until not _G["DragoV1"] or GetM("Dragon Egg") >= 1
					_G["Prehis_Find"] = false
					_G["Prehis_Skills"] = false
					_G["Prehis_DE"] = false
				end
			end
		end)
	end
end)
fireflower = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = "دراغو V2 تلقائي";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1124_arg0)
		local L_1125_ = {}
		L_1125_[1] = L_1124_arg0
		_G["AutoFireFlowers"] = L_1125_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["AutoFireFlowers"] then
			local L_1126_ = {}
			L_1126_[1] = workspace:FindFirstChild("FireFlowers")
			L_1126_[2] = GetConnectionEnemies("قرصان الغابة")
			if L_1126_[2] then
				repeat
					wait()
					L_1_[4]["Kill"](L_1126_[2], _G["AutoFireFlowers"])
				until not _G["AutoFireFlowers"] or not L_1126_[2]["Parent"] or L_1126_[2]["Humanoid"]["Health"] <= 0 or L_1126_[1]
			else
				_tp(CFrame["new"](-13206.452148438, 425.89199829102, -7964.5537109375))
			end
			if L_1126_[1] then
				for L_1127_forvar0, L_1128_forvar1 in pairs(L_1126_[1]:GetChildren()) do
					local L_1129_ = {}
					L_1129_[1], L_1129_[3] = L_1127_forvar0, L_1128_forvar1
					if L_1129_[3]:IsA("Model") and L_1129_[3]["PrimaryPart"] then
						local L_1130_ = {}
						L_1130_[3] = L_1129_[3]["PrimaryPart"]["Position"]
						L_1130_[4] = game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"]
						L_1130_[2] = (L_1130_[3] - L_1130_[4])["Magnitude"]
						if L_1130_[2] <= 100 then
							vim1:SendKeyEvent(true, "E", false, game)
							wait(1.5)
							vim1:SendKeyEvent(false, "E", false, game)
						else
							_tp(CFrame["new"](L_1130_[3]))
						end
					end
				end
			end
		end
	end
end)
Toggle = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = "دراغو V3 تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1131_arg0)
		local L_1132_ = {}
		L_1132_[1] = L_1131_arg0
		_G["DragoV3"] = L_1132_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["DragoV3"] then
				repeat
					wait()
					_G["DangerSc"] = "Lv Infinite"
					_G["SailBoats"] = true
					_G["TerrorShark"] = true
				until not _G["DragoV3"]
				_G["DangerSc"] = "Lv 1"
				_G["SailBoats"] = false
				_G["TerrorShark"] = false
			end
		end)
	end
end)
Toggle = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Relic Drago Tri";
		"al [Beta]"
	});
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1133_arg0)
		local L_1134_ = {}
		L_1134_[1] = L_1133_arg0
		_G["Relic123"] = L_1134_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["Relic123"] then
			pcall(function()
				if workspace["Map"]:FindFirstChild("DracoTrial") then
					L_1_[18]["Remotes"]["DracoTrial"]:InvokeServer()
					wait(.5)
					repeat
						wait()
						_tp(CFrame["new"](-39934.9765625, 10685.359375, 22999.34375))
					until not _G["Relic123"] or Root["Position"] == (CFrame["new"](-39934.9765625, 10685.359375, 22999.34375))["Position"]
					repeat
						wait()
						_tp(CFrame["new"](-40511.25390625, 9376.4013671875, 23458.37890625))
					until not _G["Relic123"] or Root["Position"] == (CFrame["new"](-40511.25390625, 9376.4013671875, 23458.37890625))["Position"]
					wait(2.5)
					repeat
						wait()
						_tp(CFrame["new"](-39914.65625, 10685.384765625, 23000.177734375))
					until not _G["Relic123"] or Root["Position"] == (CFrame["new"](-39914.65625, 10685.384765625, 23000.177734375))["Position"]
					repeat
						wait()
						_tp(CFrame["new"](-40045.83203125, 9376.3984375, 22791.287109375))
					until not _G["Relic123"] or Root["Position"] == (CFrame["new"](-40045.83203125, 9376.3984375, 22791.287109375))["Position"]
					wait(2.5)
					repeat
						wait()
						_tp(CFrame["new"](-39908.5, 10685.405273438, 22990.04296875))
					until not _G["Relic123"] or Root["Position"] == (CFrame["new"](-39908.5, 10685.405273438, 22990.04296875))["Position"]
					repeat
						wait()
						_tp(CFrame["new"](-39609.5, 9376.400390625, 23472.94335975))
					until not _G["Relic123"] or Root["Position"] == (CFrame["new"](-39609.5, 9376.400390625, 23472.94335975))["Position"]
				else
					local L_1135_ = {}
					L_1135_[1] = workspace["Map"]["PrehistoricIsland"]:FindFirstChild("TrialTeleport")
					if L_1135_[1] and L_1135_[1]:IsA("Part") then
						_tp(CFrame["new"](L_1135_[1]["Position"]))
					end
				end
			end)
		end
	end
end)
Toggle = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = "تدريب دراغو V4 تلقائي";
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1136_arg0)
		local L_1137_ = {}
		L_1137_[1] = L_1136_arg0
		_G["TrainDrago"] = L_1137_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["TrainDrago"] then
				local L_1138_ = {}
				L_1138_[2] = {
					"المهاجم السام";
					"Hydra Enforcer"
				}
				for L_1139_forvar0 = 1, #L_1138_[2], 1 do
					if (L_1_[45]["Character"]:FindFirstChild("RaceEnergy"))["Value"] == 1 then
						vim1:SendKeyEvent(true, "Y", false, game)
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("UpgradeRace", "Buy", 2)
						_tp(CFrame["new"](4620.6157226562, 1002.2954711914, 399.08688354492))
					elseif (L_1_[45]["Character"]:FindFirstChild("RaceTransformed"))["Value"] == false then
						local L_1140_ = {}
						L_1140_[1] = GetConnectionEnemies(L_1138_[2])
						if L_1140_[1] then
							repeat
								wait()
								L_1_[4]["Kill"](L_1140_[1], _G["TrainDrago"])
							until _G["TrainDrago"] == false or L_1140_[1]["Humanoid"]["Health"] <= 0 or not L_1140_[1]["Parent"]
						else
							_tp(CFrame["new"](4620.6157226562, 1002.2954711914, 399.08688354492))
						end
					end
				end
			end
		end)
	end
end)
dragoTpVolcano = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = L_1_[2]({
		"Tween to Drago Trial",
		"s"
	}),
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1141_arg0)
		local L_1142_ = {}
		L_1142_[2] = L_1141_arg0
		_G["TpDrago_Prehis"] = L_1142_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["TpDrago_Prehis"] then
			local L_1143_ = {}
			L_1143_[2] = workspace["Map"]["PrehistoricIsland"]:FindFirstChild("TrialTeleport")
			if L_1143_[2] and L_1143_[2]:IsA("Part") then
				_tp(CFrame["new"](L_1143_[2]["Position"]))
			end
		end
	end
end)
bdrago = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = "تبديل ريس دراغو";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1144_arg0)
		local L_1145_ = {}
		L_1145_[1] = L_1144_arg0
		_G["BuyDrago"] = L_1145_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["BuyDrago"] then
			pcall(function()
				if ((CFrame["new"](5814.4272460938, 1208.3267822266, 884.57855224609))["Position"] - Root["Position"])["Magnitude"] >= 300 then
					_tp(CFrame["new"](5814.4272460938, 1208.3267822266, 884.57855224609))
				else
					local L_1146_ = {}
					_tp(CFrame["new"](5814.4272460938, 1208.3267822266, 884.57855224609))
					L_1146_[1] = {
						[1] = {
							["NPC"] = "Dragon Wizard";
							["Command"] = "DragonRace"
						}
					};
					(L_1_[18]["Modules"]["Net"]:FindFirstChild(L_1_[2]({
						"RF/InteractDragonQue";
						"st"
					}))):InvokeServer(unpack(L_1146_[1]))
				end
			end)
		end
	end
end)
UpTalon = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = L_1_[2]({
		"Upgrade Dragon Talon";
		" With Uzoth"
	});
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1147_arg0)
		local L_1148_ = {}
		L_1148_[2] = L_1147_arg0
		_G["DT_Uzoth"] = L_1148_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["DT_Uzoth"] then
			local L_1149_ = {}
			L_1149_[2] = CFrame["new"](5661.89014, 1211.31909, 864.836731, .811413169, -1.36805838e-08, -0.584473014, 4.75227395e-08, 1, 4.25682458e-08, .584473014, -6.23161966e-08, .811413169)
			_tp(L_1149_[2])
			if (L_1149_[2]["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 25 then
				local L_1150_ = {}
				L_1150_[2] = {
					["NPC"] = "Uzoth",
					["Command"] = "Upgrade"
				}
				L_1_[18]["Modules"]["Net"][L_1_[2]({
					"RF/InteractDragonQue",
					"st"
				})]:InvokeServer(L_1150_[2])
			end
		end
	end
end)
L_1_[93]["Prehistoric"]:AddSection({
	"Volcanic Crafting"
})
L_1_[93]["Prehistoric"]:AddButton({
	["Name"] = "صنع قلب التنين";
	["Description"] = "";
	["Callback"] = function()
		local L_1151_ = {}
		L_1151_[1] = {
			[1] = "CraftItem",
			[2] = "Craft",
			[3] = "Dragonheart"
		};
		(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_1151_[1]))
	end
})
L_1_[93]["Prehistoric"]:AddButton({
	["Name"] = "صنع عاصفة التنين";
	["Description"] = "";
	["Callback"] = function()
		local L_1152_ = {}
		L_1152_[1] = {
			[1] = "CraftItem",
			[2] = "Craft",
			[3] = "Dragonstorm"
		};
		(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_1152_[1]))
	end
})
L_1_[93]["Prehistoric"]:AddButton({
	["Name"] = "صنع قلنسوة ديناصور",
	["Callback"] = function()
		local L_1153_ = {}
		L_1153_[2] = {
			[1] = "CraftItem",
			[2] = "Craft";
			[3] = "DinoHood"
		};
		(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_1153_[2]))
	end
})
L_1_[93]["Prehistoric"]:AddButton({
	["Name"] = "صنع جمجمة تي-ريكس",
	["Callback"] = function()
		local L_1154_ = {}
		L_1154_[2] = {
			[1] = "CraftItem",
			[2] = "Craft";
			[3] = "TRexSkull"
		};
		(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_1154_[2]))
	end
})
L_1_[93]["Prehistoric"]:AddSection({
	"جزيرة ما قبل التاريخ"
})
Check_Volcano = L_1_[93]["Prehistoric"]:AddParagraph({
	["Title"] = L_1_[2]({
		" Prehistoric Island ",
		"Status "
	}),
	["Content"] = ""
})
spawn(function()
	while wait(.2) do
		if workspace["Map"]:FindFirstChild("PrehistoricIsland") or workspace["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة ما قبل التاريخ") then
			Check_Volcano:SetDesc(L_1_[2]({
				" Prehistoric Island ",
				": True"
			}))
		else
			Check_Volcano:SetDesc(L_1_[2]({
				" Prehistoric Island ";
				": False"
			}))
		end
	end
end)
L_1_[93]["Prehistoric"]:AddButton({
	["Name"] = L_1_[2]({
		"Craft Volcanic Magne",
		"t"
	});
	["Callback"] = function()
		local L_1155_ = {}
		L_1155_[1] = (game:GetService("ReplicatedStorage"))["Modules"]["Net"]["RF/Craft"]
		L_1155_[1]:InvokeServer("PossibleHardcode", "Volcanic Magnet")
	end
})
L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = L_1_[2]({
		"Craft Volcanic Magne",
		"t"
	});
	["Default"] = false;
	["Callback"] = function(L_1156_arg0)
		local L_1157_ = {}
		L_1157_[1] = L_1156_arg0;
		(getgenv())["AutoCraftVolcanic"] = L_1157_[1]
	end
})
task["spawn"](function()
	local L_1158_ = {}
	L_1158_[2] = (game:GetService("ReplicatedStorage"))["Modules"]["Net"]["RF/Craft"]
	while task["wait"](.3) do
		if (getgenv())["AutoCraftVolcanic"] then
			pcall(function()
				L_1158_[2]:InvokeServer("PossibleHardcode", "Volcanic Magnet")
			end);
			(getgenv())["AutoCraftVolcanic"] = false
		end
	end
end)
L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Find Prehistori",
		"c Island"
	}),
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1159_arg0)
		local L_1160_ = {}
		L_1160_[2] = L_1159_arg0
		_G["Prehis_Find"] = L_1160_[2]
	end
})
L_1_[85] = nil
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Prehis_Find"] then
				local L_1161_ = {}
				L_1161_[6] = L_1_[45]["Character"]
				if not L_1161_[6] then
					return
				end
				L_1161_[4] = L_1161_[6]:FindFirstChild("HumanoidRootPart")
				L_1161_[2] = L_1161_[6]:FindFirstChild("Humanoid")
				if not L_1161_[4] or not L_1161_[2] or L_1161_[2]["Health"] <= 0 then
					return
				end
				L_1161_[5] = workspace["_WorldOrigin"]["Locations"]
				L_1161_[3] = L_1161_[5]:FindFirstChild("جزيرة ما قبل التاريخ", true)
				if not L_1161_[3] then
					local L_1162_ = {}
					L_1162_[1] = CheckBoat()
					if not L_1162_[1] then
						local L_1163_ = {}
						L_1163_[2] = CFrame["new"](-16927.451, 9.086, 433.864)
						TeleportToTarget(L_1163_[2])
						if (L_1163_[2]["Position"] - L_1161_[4]["Position"])["Magnitude"] <= 10 then
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyBoat", _G["SelectedBoat"] or "الحارس")
						end
						return
					end
					if L_1161_[2]["Sit"] == false then
						local L_1164_ = {}
						L_1164_[1] = L_1162_[1]["VehicleSeat"]["CFrame"] * CFrame["new"](0, 1, 0)
						_tp(L_1164_[1])
						return
					end
					L_1162_[2] = CFrame["new"](-10000000, 31, 37016.25)
					L_1_[85] = L_1162_[2]
					if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
						_tp(CFrame["new"](-10000000, 150, 37016.25))
					else
						_tp(L_1162_[2])
					end
				else
					local L_1165_ = {}
					L_1165_[2] = L_1161_[3]:FindFirstChild("HeadTeleport", true) or L_1161_[3]:FindFirstChild("Teleport_Head", true) or L_1161_[3]:FindFirstChild("Head", true)
					if L_1165_[2] then
						local L_1166_ = {}
						L_1166_[1] = L_1165_[2]["CFrame"]
						L_1166_[2] = (L_1166_[1]["Position"] - L_1166_[1]["LookVector"] * 40) + Vector3["new"](0, 20, 0)
						if (L_1166_[2] - L_1161_[4]["Position"])["Magnitude"] > 30 then
							_tp(CFrame["new"](L_1166_[2]))
						end
					else
						local L_1167_ = {}
						L_1167_[3] = L_1161_[3]["CFrame"]["Position"]
						L_1167_[2] = (L_1167_[3] - L_1161_[4]["Position"])["Unit"]
						L_1167_[1] = (L_1167_[3] - L_1167_[2] * 250) + Vector3["new"](0, 60, 0)
						_tp(CFrame["new"](L_1167_[1]))
					end
				end
			end
		end)
	end
end)
L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Start Prehistor";
		"ic Event"
	}),
	["Default"] = false;
	["Callback"] = function(L_1168_arg0)
		local L_1169_ = {}
		L_1169_[2] = L_1168_arg0
		_G["AutoStartPrehistoric"] = L_1169_[2]
	end
})
spawn(function()
	while wait() do
		if _G["AutoStartPrehistoric"] then
			pcall(function()
				local L_1170_ = {}
				L_1170_[2] = workspace["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة ما قبل التاريخ", true)
				if L_1170_[2] then
					if workspace["Map"]:FindFirstChild("PrehistoricIsland", true) then
						local L_1171_ = {}
						L_1171_[1] = workspace["Map"]["PrehistoricIsland"]["Core"]:FindFirstChild("ActivationPrompt", true)
						if L_1171_[1] and L_1171_[1]:FindFirstChild("ProximityPrompt") then
							if L_1_[45]:DistanceFromCharacter(L_1171_[1]["CFrame"]["Position"]) <= 150 then
								fireproximityprompt(L_1171_[1]["ProximityPrompt"], math["huge"])
								vim1:SendKeyEvent(true, "E", false, game)
								wait(1.5)
								vim1:SendKeyEvent(false, "E", false, game)
							end
							_tp(L_1171_[1]["CFrame"])
						end
					end
				end
			end)
		end
	end
end)
L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Patch Prehistor",
		"ic Event"
	}),
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1172_arg0)
		local L_1173_ = {}
		L_1173_[2] = L_1172_arg0
		_G["Prehis_Skills"] = L_1173_[2]
	end
})
spawn(function()
	while wait(.3) do
		if _G["Prehis_Skills"] then
			pcall(function()
				local L_1174_ = {}
				L_1174_[1] = workspace["Map"]:FindFirstChild("PrehistoricIsland")
				if not L_1174_[1] then
					return
				end
				for L_1175_forvar0, L_1176_forvar1 in pairs(L_1174_[1]:GetDescendants()) do
					local L_1177_ = {}
					L_1177_[3], L_1177_[1] = L_1175_forvar0, L_1176_forvar1
					if (L_1177_[1]:IsA("BasePart") or L_1177_[1]:IsA("قطعة شبكية")) and (L_1177_[1]["Name"]:lower()):find("lava") then
						L_1177_[1]:Destroy()
					end
				end
				L_1174_[2] = L_1174_[1]:FindFirstChild("Core")
				if L_1174_[2] then
					local L_1178_ = {}
					L_1178_[1] = L_1174_[2]:FindFirstChild("InteriorLava")
					if L_1178_[1] then
						L_1178_[1]:Destroy()
					end
				end
				L_1174_[4] = L_1174_[1]:FindFirstChild("TrialTeleport")
				for L_1179_forvar0, L_1180_forvar1 in pairs(L_1174_[1]:GetDescendants()) do
					local L_1181_ = {}
					L_1181_[3], L_1181_[1] = L_1179_forvar0, L_1180_forvar1
					if L_1181_[1]["Name"] == "TouchInterest" and not(L_1174_[4] and L_1181_[1]:IsDescendantOf(L_1174_[4])) then
						L_1181_[1]["Parent"]:Destroy()
					end
				end
			end)
		end
	end
end)
spawn(function()
	while wait(Sec) do
		if _G["Prehis_Skills"] then
			pcall(function()
				local L_1182_ = {}
				L_1182_[1] = GetConnectionEnemies("Lava Golem")
				if L_1182_[1] and L_1182_[1]:FindFirstChild("Humanoid") then
					repeat
						wait(.1)
						L_1_[4]["Kill"](L_1182_[1], true)
						L_1182_[1]["Humanoid"]:ChangeState(15)
					until not _G["Prehis_Skills"] or not L_1182_[1]["Parent"] or L_1182_[1]["Humanoid"]["Health"] <= 0
				end
			end)
		end
	end
end)
spawn(function()
	while wait(Sec) do
		if _G["Prehis_Skills"] then
			pcall(function()
				local L_1183_ = {}
				L_1183_[3] = workspace["Map"]:FindFirstChild("PrehistoricIsland")
				if not L_1183_[3] then
					return
				end
				L_1183_[2] = L_1183_[3]:FindFirstChild("Core")
				if not L_1183_[2] then
					return
				end
				L_1183_[1] = L_1183_[2]:FindFirstChild("VolcanoRocks")
				if not L_1183_[1] then
					return
				end
				for L_1184_forvar0, L_1185_forvar1 in pairs(L_1183_[1]:GetChildren()) do
					local L_1186_ = {}
					L_1186_[5], L_1186_[3] = L_1184_forvar0, L_1185_forvar1
					L_1186_[2] = L_1186_[3]:FindFirstChild("VFXLayer")
					L_1186_[1] = L_1186_[2] and L_1186_[2]:FindFirstChild("At0")
					L_1186_[4] = L_1186_[1] and L_1186_[1]:FindFirstChild("Glow")
					if L_1186_[4] and L_1186_[4]["Enabled"] then
						repeat
							wait(.1)
							_tp(L_1186_[2]["CFrame"])
							if L_1_[45]:DistanceFromCharacter(L_1186_[2]["CFrame"]["Position"]) <= 150 then
								MousePos = L_1186_[2]["CFrame"]["Position"]
								Useskills("يد", "Z")
								wait(.4)
								Useskills("يد", "X")
								wait(.4)
								Useskills("يد", "C")
								wait(.4)
								Useskills("ثمرة بلوكس", "Z")
								wait(.4)
								Useskills("ثمرة بلوكس", "X")
								wait(.4)
								Useskills("ثمرة بلوكس", "C")
							end
						until not _G["Prehis_Skills"] or not L_1186_[4]["Enabled"]
					end
				end
			end)
		end
	end
end)
Kaura = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = "كيل أورا";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1187_arg0)
		local L_1188_ = {}
		L_1188_[2] = L_1187_arg0
		_G["KillAuraFull"] = L_1188_[2]
	end
})
L_1_[53] = 500
L_1_[51] = 2
spawn(function()
	while task["wait"](L_1_[51]) do
		if _G["KillAuraFull"] then
			pcall(function()
				local L_1189_ = {}
				L_1189_[3] = game["Players"]["LocalPlayer"]
				L_1189_[2] = L_1189_[3]["Character"]
				L_1189_[1] = L_1189_[2] and L_1189_[2]:FindFirstChild("HumanoidRootPart")
				if not L_1189_[1] then
					return
				end
				sethiddenproperty(L_1189_[3], "SimulationRadius", math["huge"])
				for L_1190_forvar0, L_1191_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
					local L_1192_ = {}
					L_1192_[1], L_1192_[2] = L_1190_forvar0, L_1191_forvar1
					if L_1192_[2]:FindFirstChild("Humanoid") and L_1192_[2]:FindFirstChild("HumanoidRootPart") then
						local L_1193_ = {}
						L_1193_[1] = (L_1192_[2]["HumanoidRootPart"]["Position"] - L_1189_[1]["Position"])["Magnitude"]
						if L_1193_[1] <= L_1_[53] and L_1192_[2]["Humanoid"]["Health"] > 0 then
							L_1192_[2]["Humanoid"]["Health"] = 0
							L_1192_[2]["HumanoidRootPart"]["CanCollide"] = false
							L_1192_[2]:BreakJoints()
						end
					end
				end
			end)
		end
	end
end)
Vocan = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Collect Dino Bo",
		"nes"
	}),
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1194_arg0)
		local L_1195_ = {}
		L_1195_[1] = L_1194_arg0
		_G["Prehis_DB"] = L_1195_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Prehis_DB"] then
				if workspace:FindFirstChild("DinoBone") then
					for L_1196_forvar0, L_1197_forvar1 in pairs(workspace:GetChildren()) do
						local L_1198_ = {}
						L_1198_[1], L_1198_[2] = L_1196_forvar0, L_1197_forvar1
						if L_1198_[2]["Name"] == "DinoBone" then
							_tp(L_1198_[2]["CFrame"])
						end
					end
				end
			end
		end)
	end
end)
Vocan = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Collect Dragon ",
		"Eggs"
	}),
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1199_arg0)
		local L_1200_ = {}
		L_1200_[2] = L_1199_arg0
		_G["Prehis_DE"] = L_1200_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Prehis_DE"] then
				if workspace["Map"]["PrehistoricIsland"]["Core"]["SpawnedDragonEggs"]:FindFirstChild("DragonEgg") then
					_tp((workspace["Map"]["PrehistoricIsland"]["Core"]["SpawnedDragonEggs"]:FindFirstChild("DragonEgg"))["Molten"]["CFrame"])
					fireproximityprompt(workspace["Map"]["PrehistoricIsland"]["Core"]["SpawnedDragonEggs"]["DragonEgg"]["Molten"]["ProximityPrompt"], 30)
				end
			end
		end)
	end
end)
Toggle = L_1_[93]["Prehistoric"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Reset When Comp",
		"lete Volcano"
	}),
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1201_arg0)
		local L_1202_ = {}
		L_1202_[2] = L_1201_arg0
		_G["ResetPH"] = L_1202_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["ResetPH"] then
				local L_1203_ = {}
				L_1203_[1] = workspace["Map"]["PrehistoricIsland"]:FindFirstChild("TrialTeleport")
				if L_1203_[1] and L_1203_[1]:FindFirstChild("TouchInterest") then
					L_1_[45]["Character"]["Humanoid"]["Health"] = 0
				else
					if workspace:FindFirstChild("DinoBone") then
						for L_1204_forvar0, L_1205_forvar1 in pairs(workspace:GetChildren()) do
							local L_1206_ = {}
							L_1206_[2], L_1206_[1] = L_1204_forvar0, L_1205_forvar1
							if L_1206_[1]["Name"] == "DinoBone" then
								_tp(L_1206_[1]["CFrame"])
							end
						end
					end
				end
			end
		end)
	end
end)
L_1_[93]["SeaEvent"]:AddSection({
	L_1_[2]({
		"Sea Event / Setting ",
		"Sail"
	})
})
L_1_[130] = {
	"الحارس",
	"PirateGrandBrigade";
	"MarineGrandBrigade",
	"PirateBrigade";
	"MarineBrigade",
	"PirateSloop";
	"MarineSloop",
	"صياد الوحوش"
}
L_1_[89] = {
	"Lv 1";
	"Lv 2";
	"Lv 3",
	"Lv 4",
	"Lv 5",
	"Lv 6",
	"Lv Infinite"
}
L_1_[93]["SeaEvent"]:AddButton({
	["Name"] = L_1_[2]({
		"Remove Lighting Effe",
		"ct"
	}),
	["Callback"] = function()
		(game:GetService("Lighting"))["BaseAtmosphere"]:Destroy()
	end
})
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = "معدل سرعة السفينة";
	["Default"] = false;
	["Callback"] = function(L_1207_arg0)
		local L_1208_ = {}
		L_1208_[1] = L_1207_arg0;
		(getgenv())["SpeedBoat"] = L_1208_[1]
	end
});
(game:GetService("RunService"))["RenderStepped"]:Connect(function()
	if (getgenv())["SpeedBoat"] then
		local L_1209_ = {}
		L_1209_[1] = (game:GetService("Players"))["LocalPlayer"]
		if L_1209_[1]["Character"] and L_1209_[1]["Character"]:FindFirstChild("Humanoid") then
			if L_1209_[1]["Character"]["Humanoid"]["Sit"] then
				for L_1210_forvar0, L_1211_forvar1 in pairs((game:GetService("Workspace"))["Boats"]:GetChildren()) do
					local L_1212_ = {}
					L_1212_[3], L_1212_[4] = L_1210_forvar0, L_1211_forvar1
					L_1212_[1] = L_1212_[4]:FindFirstChildWhichIsA("VehicleSeat")
					if L_1212_[1] then
						L_1212_[1]["MaxSpeed"] = SetSpeedBoat
					end
				end
			end
		end
	end
end)
L_1_[93]["SeaEvent"]:AddSlider({
	["Name"] = "سرعة السفينة",
	["Min"] = 0,
	["Max"] = 1000;
	["Increment"] = 1;
	["Default"] = 300,
	["Callback"] = function(L_1213_arg0)
		local L_1214_ = {}
		L_1214_[1] = L_1213_arg0
		SetSpeedBoat = L_1214_[1]
	end
})
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = "ضغط W تلقائي",
	["Default"] = false;
	["Callback"] = function(L_1215_arg0)
		local L_1216_ = {}
		L_1216_[1] = L_1215_arg0;
		(getgenv())["AutoPressW"] = L_1216_[1]
	end
})
spawn(function()
	while wait() do
		pcall(function()
			if (getgenv())["AutoPressW"] then
				local L_1217_ = {}
				L_1217_[1] = game["Players"]["LocalPlayer"]["Character"]:WaitForChild("Humanoid")
				if L_1217_[1]["Sit"] == true then
					(game:GetService("VirtualInputManager")):SendKeyEvent(true, "W", false, game)
				end
			end
		end)
	end
end)
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = "نو كليب للسفينة",
	["Default"] = false;
	["Callback"] = function(L_1218_arg0)
		local L_1219_ = {}
		L_1219_[1] = L_1218_arg0;
		(getgenv())["NoClipShip"] = L_1219_[1]
	end
})
spawn(function()
	while wait() do
		pcall(function()
			for L_1220_forvar0, L_1221_forvar1 in pairs((game:GetService("Workspace"))["Boats"]:GetChildren()) do
				local L_1222_ = {}
				L_1222_[1], L_1222_[2] = L_1220_forvar0, L_1221_forvar1
				for L_1223_forvar0, L_1224_forvar1 in pairs(L_1222_[2]:GetDescendants()) do
					local L_1225_ = {}
					L_1225_[1], L_1225_[3] = L_1223_forvar0, L_1224_forvar1
					if L_1225_[3]:IsA("BasePart") then
						if (getgenv())["NoClipShip"] or (getgenv())["FindPrehistoric"] then
							L_1225_[3]["CanCollide"] = false
						else
							L_1225_[3]["CanCollide"] = true
						end
					end
				end
			end
		end)
	end
end)
L_1_[93]["SeaEvent"]:AddSection({
	"Crafting Items"
})
L_1_[93]["SeaEvent"]:AddButton({
	["Name"] = "صنع سن القرش";
	["Description"] = "";
	["Callback"] = function()
		local L_1226_ = {}
		L_1226_[1] = {
			[1] = "CraftItem";
			[2] = "Craft",
			[3] = "SharkTooth"
		};
		(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_1226_[1]))
	end
})
L_1_[93]["SeaEvent"]:AddButton({
	["Name"] = "صنع فك الرعب";
	["Description"] = "",
	["Callback"] = function()
		local L_1227_ = {}
		L_1227_[2] = {
			[1] = "CraftItem";
			[2] = "Craft",
			[3] = "TerrorJaw"
		};
		(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_1227_[2]))
	end
})
L_1_[93]["SeaEvent"]:AddButton({
	["Name"] = "صنع مرساة القرش";
	["Description"] = "";
	["Callback"] = function()
		local L_1228_ = {}
		L_1228_[2] = {
			[1] = "CraftItem";
			[2] = "Craft";
			[3] = "SharkAnchor"
		};
		(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_1228_[2]))
	end
})
L_1_[93]["SeaEvent"]:AddButton({
	["Name"] = "صنع تاج ليفياثان",
	["Description"] = "",
	["Callback"] = function()
		local L_1229_ = {}
		L_1229_[1] = {
			[1] = "CraftItem";
			[2] = "Craft";
			[3] = "LeviathanCrown"
		};
		(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_1229_[1]))
	end
})
L_1_[93]["SeaEvent"]:AddButton({
	["Name"] = L_1_[2]({
		"Craft LeviathanShiel";
		"d"
	}),
	["Description"] = "";
	["Callback"] = function()
		local L_1230_ = {}
		L_1230_[1] = {
			[1] = "CraftItem";
			[2] = "Craft",
			[3] = "LeviathanShield"
		};
		(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_1230_[1]))
	end
})
L_1_[93]["SeaEvent"]:AddButton({
	["Name"] = "صنع قارب ليفياثان";
	["Description"] = "";
	["Callback"] = function()
		local L_1231_ = {}
		L_1231_[1] = {
			[1] = "CraftItem";
			[2] = "Craft",
			[3] = "LeviathanBoat"
		};
		(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_1231_[1]))
	end
})
L_1_[93]["SeaEvent"]:AddButton({
	["Name"] = L_1_[2]({
		"Craft LegendaryScrol";
		"l"
	}),
	["Description"] = "",
	["Callback"] = function()
		local L_1232_ = {}
		L_1232_[2] = {
			[1] = "CraftItem",
			[2] = "Craft";
			[3] = "LegendaryScroll"
		};
		(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_1232_[2]))
	end
})
L_1_[93]["SeaEvent"]:AddButton({
	["Name"] = "صنع طومار أسطوري";
	["Description"] = "";
	["Callback"] = function()
		local L_1233_ = {}
		L_1233_[1] = {
			[1] = "CraftItem",
			[2] = "Craft",
			[3] = "MythicalScroll"
		};
		(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_1233_[1]))
	end
})
L_1_[93]["SeaEvent"]:AddSection({
	"Choose Sea Event"
})
Q = L_1_[93]["SeaEvent"]:AddDropdown({
	["Name"] = "اختر المركب",
	["Options"] = L_1_[130],
	["Default"] = false;
	["Callback"] = function(L_1234_arg0)
		local L_1235_ = {}
		L_1235_[2] = L_1234_arg0
		_G["SelectedBoat"] = L_1235_[2]
	end
})
L_1_[93]["SeaEvent"]:AddButton({
	["Name"] = "شراء مراكب";
	["Description"] = "",
	["Callback"] = function()
		L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyBoat", _G["SelectedBoat"])
	end
})
Q = L_1_[93]["SeaEvent"]:AddDropdown({
	["Name"] = "اختر مستوى البحر";
	["Options"] = L_1_[89],
	["Default"] = false;
	["Callback"] = function(L_1236_arg0)
		local L_1237_ = {}
		L_1237_[1] = L_1236_arg0
		_G["DangerSc"] = L_1237_[1]
	end
})
Q = L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = "قارب شراعي تلقائي",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1238_arg0)
		local L_1239_ = {}
		L_1239_[2] = L_1238_arg0
		_G["SailBoats"] = L_1239_[2]
	end
})
spawn(function()
	while wait() do
		if _G["SailBoats"] then
			pcall(function()
				local L_1240_ = {}
				L_1240_[2] = CheckBoat()
				if not L_1240_[2] and (not(CheckShark() and _G["Shark"] or CheckTerrorShark() and _G["TerrorShark"] or CheckFishCrew() and _G["MobCrew"] or CheckPiranha() and _G["البيرانا"]) and (not(CheckEnemiesBoat() and _G["FishBoat"]) and (not(CheckSeaBeast() and _G["SeaBeast1"]) and (not(_G["PGB"] and CheckPirateGrandBrigade()) and (not(_G["HCM"] and CheckHauntedCrew()) and not(_G["Leviathan1"] and CheckLeviathan())))))) then
					local L_1241_ = {}
					L_1241_[1] = CFrame["new"](-16927.451, 9.086, 433.864)
					TeleportToTarget(L_1241_[1])
					if (L_1241_[1]["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10 then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyBoat", _G["SelectedBoat"])
					end
				elseif L_1240_[2] and (not(CheckShark() and _G["Shark"] or CheckTerrorShark() and _G["TerrorShark"] or CheckFishCrew() and _G["MobCrew"] or CheckPiranha() and _G["البيرانا"]) and (not(CheckEnemiesBoat() and _G["FishBoat"]) and (not(CheckSeaBeast() and _G["SeaBeast1"]) and (not(_G["PGB"] and CheckPirateGrandBrigade()) and (not(_G["HCM"] and CheckHauntedCrew()) and not(_G["Leviathan1"] and CheckLeviathan())))))) then
					if L_1_[45]["Character"]["Humanoid"]["Sit"] == false then
						local L_1242_ = {}
						L_1242_[2] = L_1240_[2]["VehicleSeat"]["CFrame"] * CFrame["new"](0, 1, 0)
						_tp(L_1242_[2])
					else
						if _G["DangerSc"] == "Lv 1" then
							CFrameSelectedZone = CFrame["new"](-21998.375, 30.0006084, -682.309143)
						elseif _G["DangerSc"] == "Lv 2" then
							CFrameSelectedZone = CFrame["new"](-26779.5215, 30.0005474, -822.858032)
						elseif _G["DangerSc"] == "Lv 3" then
							CFrameSelectedZone = CFrame["new"](-31171.957, 30.0001011, -2256.93774)
						elseif _G["DangerSc"] == "Lv 4" then
							CFrameSelectedZone = CFrame["new"](-34054.6875, 30.2187767, -2560.12012)
						elseif _G["DangerSc"] == "Lv 5" then
							CFrameSelectedZone = CFrame["new"](-38887.5547, 30.0004578, -2162.99023)
						elseif _G["DangerSc"] == "Lv 6" then
							CFrameSelectedZone = CFrame["new"](-44541.7617, 30.0003204, -1244.8584)
						elseif _G["DangerSc"] == "Lv Infinite" then
							CFrameSelectedZone = CFrame["new"](-10000000, 31, 37016.25)
						end
						repeat
							wait()
							if not _G["FishBoat"] and CheckEnemiesBoat() or not _G["PGB"] and CheckPirateGrandBrigade() or not _G["TerrorShark"] and CheckTerrorShark() then
								_tp(CFrameSelectedZone * CFrame["new"](0, 150, 0))
							else
								_tp(CFrameSelectedZone)
							end
						until _G["SailBoats"] == false or CheckShark() and _G["Shark"] or CheckTerrorShark() and _G["TerrorShark"] or CheckFishCrew() and _G["MobCrew"] or CheckPiranha() and _G["البيرانا"] or CheckSeaBeast() and _G["SeaBeast1"] or CheckEnemiesBoat() and _G["FishBoat"] or _G["Leviathan1"] and CheckLeviathan() or _G["HCM"] and CheckHauntedCrew() or _G["PGB"] and CheckPirateGrandBrigade() or (L_1_[45]["Character"]:WaitForChild("Humanoid"))["Sit"] == false
						L_1_[45]["Character"]["Humanoid"]["Sit"] = false
					end
				end
			end)
		end
	end
end)
spawn(function()
	while wait(Sec) do
		pcall(function()
			for L_1243_forvar0, L_1244_forvar1 in pairs(workspace["Boats"]:GetChildren()) do
				local L_1245_ = {}
				L_1245_[3], L_1245_[2] = L_1243_forvar0, L_1244_forvar1
				for L_1246_forvar0, L_1247_forvar1 in pairs(workspace["Boats"][L_1245_[2]["Name"]]:GetDescendants()) do
					local L_1248_ = {}
					L_1248_[1], L_1248_[2] = L_1246_forvar0, L_1247_forvar1
					if L_1248_[2]:IsA("BasePart") then
						if _G["SailBoats"] or _G["Prehis_Find"] or _G["FindMirage"] or _G["SailBoat_Hydra"] or _G["AutofindKitIs"] then
							L_1248_[2]["CanCollide"] = false
						else
							L_1248_[2]["CanCollide"] = true
						end
					end
				end
			end
		end)
	end
end)
L_1_[93]["SeaEvent"]:AddSection({
	"Entity Sea Event"
})
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = "قرش تلقائي";
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1249_arg0)
		local L_1250_ = {}
		L_1250_[1] = L_1249_arg0
		_G["Shark"] = L_1250_[1]
	end
})
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = "بيرانا تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1251_arg0)
		local L_1252_ = {}
		L_1252_[2] = L_1251_arg0
		_G["البيرانا"] = L_1252_[2]
	end
})
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = "قرش الرعب تلقائي";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1253_arg0)
		local L_1254_ = {}
		L_1254_[1] = L_1253_arg0
		_G["TerrorShark"] = L_1254_[1]
	end
})
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Fish Crew Membe";
		"r"
	}),
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1255_arg0)
		local L_1256_ = {}
		L_1256_[1] = L_1255_arg0
		_G["MobCrew"] = L_1256_[1]
	end
})
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Haunted Crew Me",
		"mber"
	});
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1257_arg0)
		local L_1258_ = {}
		L_1258_[1] = L_1257_arg0
		_G["HCM"] = L_1258_[1]
	end
})
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Attack PirateGr";
		"andBrigade"
	}),
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1259_arg0)
		local L_1260_ = {}
		L_1260_[2] = L_1259_arg0
		_G["PGB"] = L_1260_[2]
	end
})
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Attack Fish Boa",
		"t"
	});
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1261_arg0)
		local L_1262_ = {}
		L_1262_[2] = L_1261_arg0
		_G["FishBoat"] = L_1262_[2]
	end
})
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Attack Sea Beas";
		"t"
	});
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1263_arg0)
		local L_1264_ = {}
		L_1264_[1] = L_1263_arg0
		_G["SeaBeast1"] = L_1264_[1]
	end
})
spawn(function()
	while wait() do
		pcall(function()
			if _G["Shark"] then
				local L_1265_ = {}
				L_1265_[2] = {
					"Shark"
				}
				if CheckShark() then
					for L_1266_forvar0, L_1267_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
						local L_1268_ = {}
						L_1268_[2], L_1268_[3] = L_1266_forvar0, L_1267_forvar1
						if table["find"](L_1265_[2], L_1268_[3]["Name"]) then
							if L_1_[4]["Alive"](L_1268_[3]) then
								repeat
									task["wait"]()
									L_1_[4]["Kill"](L_1268_[3], _G["Shark"])
								until _G["Shark"] == false or not L_1268_[3]["Parent"] or L_1268_[3]["Humanoid"]["Health"] <= 0
							end
						end
					end
				end
			end
			if _G["TerrorShark"] then
				local L_1269_ = {}
				L_1269_[2] = {
					"Terrorshark"
				}
				if CheckTerrorShark() then
					for L_1270_forvar0, L_1271_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
						local L_1272_ = {}
						L_1272_[2], L_1272_[1] = L_1270_forvar0, L_1271_forvar1
						if table["find"](L_1269_[2], L_1272_[1]["Name"]) then
							if L_1_[4]["Alive"](L_1272_[1]) then
								repeat
									task["wait"]()
									L_1_[4]["KillSea"](L_1272_[1], _G["TerrorShark"])
								until _G["TerrorShark"] == false or not L_1272_[1]["Parent"] or L_1272_[1]["Humanoid"]["Health"] <= 0
							end
						end
					end
				end
			end
			if _G["البيرانا"] then
				local L_1273_ = {}
				L_1273_[1] = {
					"البيرانا"
				}
				if CheckPiranha() then
					for L_1274_forvar0, L_1275_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
						local L_1276_ = {}
						L_1276_[3], L_1276_[2] = L_1274_forvar0, L_1275_forvar1
						if table["find"](L_1273_[1], L_1276_[2]["Name"]) then
							if L_1_[4]["Alive"](L_1276_[2]) then
								repeat
									task["wait"]()
									L_1_[4]["Kill"](L_1276_[2], _G["البيرانا"])
								until _G["البيرانا"] == false or not L_1276_[2]["Parent"] or L_1276_[2]["Humanoid"]["Health"] <= 0
							end
						end
					end
				end
			end
			if _G["MobCrew"] then
				local L_1277_ = {}
				L_1277_[2] = {
					"Fish Crew Member"
				}
				if CheckFishCrew() then
					for L_1278_forvar0, L_1279_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
						local L_1280_ = {}
						L_1280_[2], L_1280_[1] = L_1278_forvar0, L_1279_forvar1
						if table["find"](L_1277_[2], L_1280_[1]["Name"]) then
							if L_1_[4]["Alive"](L_1280_[1]) then
								repeat
									task["wait"]()
									L_1_[4]["Kill"](L_1280_[1], _G["MobCrew"])
								until _G["MobCrew"] == false or not L_1280_[1]["Parent"] or L_1280_[1]["Humanoid"]["Health"] <= 0
							end
						end
					end
				end
			end
			if _G["HCM"] then
				local L_1281_ = {}
				L_1281_[1] = {
					"Haunted Crew Member"
				}
				if CheckHauntedCrew() then
					for L_1282_forvar0, L_1283_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
						local L_1284_ = {}
						L_1284_[1], L_1284_[3] = L_1282_forvar0, L_1283_forvar1
						if table["find"](L_1281_[1], L_1284_[3]["Name"]) then
							if L_1_[4]["Alive"](L_1284_[3]) then
								repeat
									task["wait"]()
									L_1_[4]["Kill"](L_1284_[3], _G["HCM"])
								until _G["HCM"] == false or not L_1284_[3]["Parent"] or L_1284_[3]["Humanoid"]["Health"] <= 0
							end
						end
					end
				end
			end
			if _G["SeaBeast1"] then
				if workspace["SeaBeasts"]:FindFirstChild("SeaBeast1") then
					for L_1285_forvar0, L_1286_forvar1 in pairs(workspace["SeaBeasts"]:GetChildren()) do
						local L_1287_ = {}
						L_1287_[1], L_1287_[3] = L_1285_forvar0, L_1286_forvar1
						if L_1287_[3]:FindFirstChild("HumanoidRootPart") and (L_1287_[3]:FindFirstChild("Health") and L_1287_[3]["Health"]["Value"] > 0) then
							repeat
								task["wait"]()
								spawn(function()
									_tp(CFrame["new"](L_1287_[3]["HumanoidRootPart"]["Position"]["X"], (game:GetService("Workspace"))["Map"]["WaterBase-Plane"]["Position"]["Y"] + 200, L_1287_[3]["HumanoidRootPart"]["Position"]["Z"]))
								end)
								if L_1_[45]:DistanceFromCharacter(L_1287_[3]["HumanoidRootPart"]["CFrame"]["Position"]) <= 500 then
									AitSeaSkill_Custom = L_1287_[3]["HumanoidRootPart"]["CFrame"]
									MousePos = AitSeaSkill_Custom["Position"]
									if CheckF() then
										weaponSc("ثمرة بلوكس")
										Useskills("ثمرة بلوكس", "Z")
										Useskills("ثمرة بلوكس", "X")
										Useskills("ثمرة بلوكس", "C")
									else
										Useskills("يد", "Z")
										Useskills("يد", "X")
										Useskills("يد", "C")
										wait(.1)
										Useskills("سيف", "Z")
										Useskills("سيف", "X")
										wait(.1)
										Useskills("ثمرة بلوكس", "Z")
										Useskills("ثمرة بلوكس", "X")
										Useskills("ثمرة بلوكس", "C")
										wait(.1)
										Useskills("مسدس", "Z")
										Useskills("مسدس", "X")
									end
								end
							until _G["SeaBeast1"] == false or not L_1287_[3]:FindFirstChild("HumanoidRootPart") or not L_1287_[3]["Parent"] or L_1287_[3]["Health"]["Value"] <= 0
						end
					end
				end
			end
			if _G["Leviathan1"] then
				if workspace["SeaBeasts"]:FindFirstChild("Leviathan") then
					for L_1288_forvar0, L_1289_forvar1 in pairs(workspace["SeaBeasts"]:GetChildren()) do
						local L_1290_ = {}
						L_1290_[2], L_1290_[3] = L_1288_forvar0, L_1289_forvar1
						if L_1290_[3]:FindFirstChild("HumanoidRootPart") and (L_1290_[3]:FindFirstChild("Leviathan Segment") and (L_1290_[3]:FindFirstChild("Health") and L_1290_[3]["Health"]["Value"] > 0)) then
							repeat
								task["wait"]()
								spawn(function()
									_tp(CFrame["new"](L_1290_[3]["HumanoidRootPart"]["Position"]["X"], (game:GetService("Workspace"))["Map"]["WaterBase-Plane"]["Position"]["Y"] + 200, L_1290_[3]["HumanoidRootPart"]["Position"]["Z"]))
								end)
								if L_1_[45]:DistanceFromCharacter(L_1290_[3]["HumanoidRootPart"]["CFrame"]["Position"]) <= 500 then
									MousePos = (L_1290_[3]:FindFirstChild("Leviathan Segment"))["Position"]
									if CheckF() then
										weaponSc("ثمرة بلوكس")
										Useskills("ثمرة بلوكس", "Z")
										Useskills("ثمرة بلوكس", "X")
										Useskills("ثمرة بلوكس", "C")
									else
										Useskills("يد", "Z")
										Useskills("يد", "X")
										Useskills("يد", "C")
										wait(.1)
										Useskills("سيف", "Z")
										Useskills("سيف", "X")
										wait(.1)
										Useskills("ثمرة بلوكس", "Z")
										Useskills("ثمرة بلوكس", "X")
										Useskills("ثمرة بلوكس", "C")
										wait(.1)
										Useskills("مسدس", "Z")
										Useskills("مسدس", "X")
									end
								end
							until _G["Leviathan1"] == false or not L_1290_[3]:FindFirstChild("HumanoidRootPart") or not L_1290_[3]["Parent"] or L_1290_[3]["Health"]["Value"] <= 0
						end
					end
				end
			end
			if _G["FishBoat"] then
				if CheckEnemiesBoat() then
					for L_1291_forvar0, L_1292_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
						local L_1293_ = {}
						L_1293_[1], L_1293_[2] = L_1291_forvar0, L_1292_forvar1
						if L_1293_[2]:FindFirstChild("Health") and (L_1293_[2]["Health"]["Value"] > 0 and L_1293_[2]:FindFirstChild("VehicleSeat")) then
							repeat
								task["wait"]()
								spawn(function()
									if L_1293_[2]["Name"] == "FishBoat" then
										_tp(L_1293_[2]["Engine"]["CFrame"] * CFrame["new"](0, -50, -25))
									end
								end)
								if L_1_[45]:DistanceFromCharacter(L_1293_[2]["Engine"]["CFrame"]["Position"]) <= 150 then
									AitSeaSkill_Custom = L_1293_[2]["Engine"]["CFrame"]
									MousePos = AitSeaSkill_Custom["Position"]
									if CheckF() then
										weaponSc("ثمرة بلوكس")
										Useskills("ثمرة بلوكس", "Z")
										Useskills("ثمرة بلوكس", "X")
										Useskills("ثمرة بلوكس", "C")
									else
										Useskills("يد", "Z")
										Useskills("يد", "X")
										Useskills("يد", "C")
										wait(.1)
										Useskills("سيف", "Z")
										Useskills("سيف", "X")
										wait(.1)
										Useskills("ثمرة بلوكس", "Z")
										Useskills("ثمرة بلوكس", "X")
										Useskills("ثمرة بلوكس", "C")
										wait(.1)
										Useskills("مسدس", "Z")
										Useskills("مسدس", "X")
									end
								end
							until _G["FishBoat"] == false or not L_1293_[2]:FindFirstChild("VehicleSeat") or L_1293_[2]["Health"]["Value"] <= 0
						end
					end
				end
			end
			if _G["PGB"] then
				if CheckPirateGrandBrigade() then
					for L_1294_forvar0, L_1295_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
						local L_1296_ = {}
						L_1296_[3], L_1296_[2] = L_1294_forvar0, L_1295_forvar1
						if L_1296_[2]:FindFirstChild("Health") and (L_1296_[2]["Health"]["Value"] > 0 and L_1296_[2]:FindFirstChild("VehicleSeat")) then
							repeat
								task["wait"]()
								spawn(function()
									if L_1296_[2]["Name"] == "PirateBrigade" then
										_tp(L_1296_[2]["Engine"]["CFrame"] * CFrame["new"](0, -30, -10))
									elseif L_1296_[2]["Name"] == "PirateGrandBrigade" then
										_tp(L_1296_[2]["Engine"]["CFrame"] * CFrame["new"](0, -50, -50))
									end
								end)
								if L_1_[45]:DistanceFromCharacter(L_1296_[2]["Engine"]["CFrame"]["Position"]) <= 150 then
									AitSeaSkill_Custom = L_1296_[2]["Engine"]["CFrame"]
									MousePos = AitSeaSkill_Custom["Position"]
									if CheckF() then
										weaponSc("ثمرة بلوكس")
										Useskills("ثمرة بلوكس", "Z")
										Useskills("ثمرة بلوكس", "X")
										Useskills("ثمرة بلوكس", "C")
									else
										Useskills("يد", "Z")
										Useskills("يد", "X")
										Useskills("يد", "C")
										wait(.1)
										Useskills("سيف", "Z")
										Useskills("سيف", "X")
										wait(.1)
										Useskills("ثمرة بلوكس", "Z")
										Useskills("ثمرة بلوكس", "X")
										Useskills("ثمرة بلوكس", "C")
										wait(.1)
										Useskills("مسدس", "Z")
										Useskills("مسدس", "X")
									end
								end
							until _G["PGB"] == false or not L_1296_[2]:FindFirstChild("VehicleSeat") or L_1296_[2]["Health"]["Value"] <= 0
						end
					end
				end
			end
		end)
	end
end)
L_1_[93]["SeaEvent"]:AddSection({
	L_1_[2]({
		"Kitsune Island / Eve";
		"nt"
	})
})
Check_Kitsu = L_1_[93]["SeaEvent"]:AddParagraph({
	["Title"] = L_1_[2]({
		" Kitsune Island Stat",
		"us "
	}),
	["Content"] = ""
})
spawn(function()
	while wait(.2) do
		if workspace["Map"]:FindFirstChild("KitsuneIsland") or workspace["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة كيتسوني") then
			Check_Kitsu:SetDesc(L_1_[2]({
				" Kitsune Island : Tr";
				"ue"
			}))
		else
			Check_Kitsu:SetDesc(L_1_[2]({
				" Kitsune Island : Fa",
				"lse"
			}))
		end
	end
end)
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Find Kitsune Is",
		"land"
	}),
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1297_arg0)
		local L_1298_ = {}
		L_1298_[1] = L_1297_arg0
		_G["AutofindKitIs"] = L_1298_[1]
	end
})
spawn(function()
	while wait() do
		if _G["AutofindKitIs"] then
			pcall(function()
				if not workspace["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة كيتسوني", true) then
					local L_1299_ = {}
					L_1299_[2] = CheckBoat()
					if not L_1299_[2] then
						local L_1300_ = {}
						L_1300_[1] = CFrame["new"](-16927.451, 9.086, 433.864)
						TeleportToTarget(L_1300_[1])
						if (L_1300_[1]["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10 then
							L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyBoat", _G["SelectedBoat"])
						end
					else
						if L_1_[45]["Character"]["Humanoid"]["Sit"] == false then
							local L_1301_ = {}
							L_1301_[1] = L_1299_[2]["VehicleSeat"]["CFrame"] * CFrame["new"](0, 1, 0)
							_tp(L_1301_[1])
						else
							local L_1302_ = {}
							L_1302_[2] = CFrame["new"](-10000000, 31, 37016.25)
							repeat
								wait()
								if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
									_tp(CFrame["new"](-10000000, 150, 37016.25))
								else
									_tp(CFrame["new"](-10000000, 31, 37016.25))
								end
							until not _G["AutofindKitIs"] or (L_1302_[2]["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10 or workspace["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة كيتسوني") or L_1_[45]["Character"]["Humanoid"]["Sit"] == false
							L_1_[45]["Character"]["Humanoid"]["Sit"] = false
						end
					end
				else
					_tp((workspace["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة كيتسوني"))["CFrame"] * CFrame["new"](0, 500, 0))
				end
			end)
		end
	end
end)
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Teleport to Shr",
		"ine Actived"
	}),
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1303_arg0)
		local L_1304_ = {}
		L_1304_[1] = L_1303_arg0
		_G["tweenShrine"] = L_1304_[1]
	end
})
spawn(function()
	while wait(.1) do
		if _G["tweenShrine"] then
			pcall(function()
				local L_1305_ = {}
				L_1305_[1] = workspace["Map"]:FindFirstChild("KitsuneIsland") or game["Workspace"]["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة كيتسوني")
				L_1305_[2] = L_1305_[1]:FindFirstChild("ShrineActive")
				if L_1305_[2] then
					for L_1306_forvar0, L_1307_forvar1 in next, L_1305_[2]:GetDescendants() do
						local L_1308_ = {}
						L_1308_[1], L_1308_[2] = L_1306_forvar0, L_1307_forvar1
						if L_1308_[2]:IsA("BasePart") and L_1308_[2]["Name"]:find("NeonShrinePart") then
							(L_1_[18]["Modules"]["Net"]:FindFirstChild(L_1_[2]({
								"RE/TouchKitsuneStatu",
								"e"
							}))):FireServer()
							repeat
								wait()
								_tp(L_1308_[2]["CFrame"] * CFrame["new"](0, 2, 0))
							until _G["tweenShrine"] == false or not L_1305_[1]
						end
					end
				else
					_tp((workspace["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة كيتسوني"))["CFrame"] * CFrame["new"](0, 500, 0))
				end
			end)
		end
	end
end)
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Collect Azure E";
		"mber"
	});
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1309_arg0)
		local L_1310_ = {}
		L_1310_[1] = L_1309_arg0
		_G["Collect_Ember"] = L_1310_[1]
	end
})
spawn(function()
	while wait(.1) do
		if _G["Collect_Ember"] then
			pcall(function()
				if workspace:WaitForChild("AttachedAzureEmber") or workspace:WaitForChild("EmberTemplate") then
					notween(((workspace:WaitForChild("EmberTemplate")):FindFirstChild("Part"))["CFrame"])
				else
					_tp((workspace["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة كيتسوني"))["CFrame"] * CFrame["new"](0, 500, 0))
					L_1_[18]["Modules"]["Net"]["RF/KitsuneStatuePray"]:InvokeServer()
				end
			end)
		end
	end
end)
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Trade Azure Emb",
		"er"
	}),
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1311_arg0)
		local L_1312_ = {}
		L_1312_[2] = L_1311_arg0
		_G["Trade_Ember"] = L_1312_[2]
	end
})
spawn(function()
	while wait(.1) do
		if _G["Trade_Ember"] then
			pcall(function()
				if workspace["_WorldOrigin"]["Locations"]:FindFirstChild("جزيرة كيتسوني", true) then
					(L_1_[18]["Modules"]["Net"]:FindFirstChild("RF/KitsuneStatuePray")):InvokeServer()
				end
			end)
		end
	end
end)
L_1_[93]["SeaEvent"]:AddButton({
	["Name"] = "تبادل أيتمات أزور";
	["Description"] = "",
	["Callback"] = function()
		(L_1_[18]["Modules"]["Net"]:FindFirstChild("RF/KitsuneStatuePray")):InvokeServer()
	end
})
L_1_[93]["SeaEvent"]:AddButton({
	["Name"] = L_1_[2]({
		"Talk with kitsune st",
		"atue"
	}),
	["Description"] = "";
	["Callback"] = function()
		(L_1_[18]["Modules"]["Net"]:FindFirstChild(L_1_[2]({
			"RE/TouchKitsuneStatu",
			"e"
		}))):FireServer()
	end
})
L_1_[93]["SeaEvent"]:AddSection({
	L_1_[2]({
		"Frozen Dimension Eve";
		"nt"
	})
})
L_1_[93]["SeaEvent"]:AddParagraph({
	["Title"] = L_1_[2]({
		" FlozenDimension Sta";
		"tus "
	});
	["Content"] = ""
})
spawn(function()
	pcall(function()
		while wait(.2) do
			if workspace["_WorldOrigin"]["Locations"]:FindFirstChild("البعد المجمد") then
				FloD:SetDesc(L_1_[2]({
					" Flozen Dimension : ",
					"True"
				}))
			else
				FloD:SetDesc(L_1_[2]({
					" Flozen Dimension : ";
					"False"
				}))
			end
		end
	end)
end)
L_1_[93]["SeaEvent"]:AddParagraph({
	["Title"] = "حالة التجسس";
	["Content"] = ""
})
spawn(function()
	while wait(.2) do
		pcall(function()
			local L_1313_ = {}
			L_1313_[1] = string["match"](L_1_[18]["Remotes"]["CommF_"]:InvokeServer("InfoLeviathan", "1"), "%d+")
			if L_1313_[1] then
				SPYING:SetDesc(" Spy Leviathan  : " .. tostring(L_1313_[1]))
				if tostring(L_1313_[1]) == 5 then
					SPYING:SetDesc(L_1_[2]({
						" Spy Leviathan : Alr",
						"eady Done!!"
					}))
				end
			end
		end)
	end
end)
L_1_[93]["SeaEvent"]:AddButton({
	["Name"] = "شراء جاسوس",
	["Callback"] = function()
		(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("InfoLeviathan", "2")
	end
})
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Teleport Frozen";
		" Dimension"
	}),
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1314_arg0)
		local L_1315_ = {}
		L_1315_[2] = L_1314_arg0
		_G["FrozenTP"] = L_1315_[2]
	end
})
spawn(function()
	while wait(.1) do
		if _G["FrozenTP"] then
			pcall(function()
				if workspace["Map"]:FindFirstChild("LeviathanGate") then
					_tp(workspace["Map"]["LeviathanGate"]["CFrame"]);
					((L_1_[18]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("OpenLeviathanGate")
				end
			end)
		end
	end
end)
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Drive To Hydra ",
		"Island"
	}),
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1316_arg0)
		local L_1317_ = {}
		L_1317_[1] = L_1316_arg0
		_G["SailBoat_Hydra"] = L_1317_[1]
	end
})
spawn(function()
	while wait() do
		if _G["SailBoat_Hydra"] then
			pcall(function()
				local L_1318_ = {}
				L_1318_[2] = CheckBoat()
				if not L_1318_[2] then
					local L_1319_ = {}
					L_1319_[2] = CFrame["new"](-16927.451, 9.086, 433.864)
					TeleportToTarget(L_1319_[2])
					if (L_1319_[2]["Position"] - L_1_[45]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10 then
						L_1_[18]["Remotes"]["CommF_"]:InvokeServer("BuyBoat", _G["SelectedBoat"])
					end
				elseif L_1318_[2] then
					if L_1_[45]["Character"]["Humanoid"]["Sit"] == false then
						local L_1320_ = {}
						L_1320_[1] = L_1318_[2]["VehicleSeat"]["CFrame"] * CFrame["new"](0, 1, 0)
						_tp(L_1320_[1])
					else
						repeat
							wait()
							if CheckEnemiesBoat() or CheckPirateGrandBrigade() or CheckTerrorShark() then
								_tp(CFrame["new"](5433, 150, 290))
							else
								_tp(CFrame["new"](5433, 35, 290))
							end
						until _G["SailBoat_Hydra"] == false or (L_1_[45]["Character"]:WaitForChild("Humanoid"))["Sit"] == false
						L_1_[45]["Character"]["Humanoid"]["Sit"] = false
					end
				end
			end)
		end
	end
end)
L_1_[93]["SeaEvent"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Attack Leviatha";
		"n"
	}),
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1321_arg0)
		local L_1322_ = {}
		L_1322_[1] = L_1321_arg0
		_G["Leviathan1"] = L_1322_[1]
	end
})
L_1_[93]["Esp"]:AddSection({
	"Esp"
})
function isnil(L_1323_arg0)
	local L_1324_ = {}
	L_1324_[1] = L_1323_arg0
	return L_1324_[1] == nil
end
L_1_[67] = function(L_1325_arg0)
	local L_1326_ = {}
	L_1326_[2] = L_1325_arg0
	return math["floor"](tonumber(L_1326_[2]) + .5)
end
Number = math["random"](1, 1000000)
L_1_[23] = (game:GetService("Players"))["LocalPlayer"]
L_1_[55] = game:GetService("ReplicatedStorage")
L_1_[86] = L_1_[23]["Team"]
EspPly = function()
	for L_1327_forvar0, L_1328_forvar1 in next, game["Players"]:GetChildren() do
		local L_1329_ = {}
		L_1329_[1], L_1329_[2] = L_1327_forvar0, L_1328_forvar1
		pcall(function()
			if not isnil(L_1329_[2]["Character"]) then
				if PlayerEsp then
					if not isnil(L_1329_[2]["Character"]["Head"]) and not L_1329_[2]["Character"]["Head"]:FindFirstChild("كشف الأسماء" .. Number) then
						local L_1330_ = {}
						L_1330_[1] = Instance["new"]("BillboardGui", L_1329_[2]["Character"]["Head"])
						L_1330_[1]["Name"] = "كشف الأسماء" .. Number
						L_1330_[1]["ExtentsOffset"] = Vector3["new"](0, 1, 0)
						L_1330_[1]["Size"] = UDim2["new"](1, 200, 1, 30)
						L_1330_[1]["Adornee"] = L_1329_[2]["Character"]["Head"]
						L_1330_[1]["AlwaysOnTop"] = true
						L_1330_[3] = Instance["new"]("TextLabel", L_1330_[1])
						L_1330_[3]["Font"] = Enum["Font"]["Code"]
						L_1330_[3]["FontSize"] = "Size14"
						L_1330_[3]["TextWrapped"] = true
						L_1330_[3]["Text"] = L_1329_[2]["Name"] .. (" \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1329_[2]["Character"]["Head"]["Position"])["Magnitude"] / 3) .. " M"))
						L_1330_[3]["Size"] = UDim2["new"](1, 0, 1, 0)
						L_1330_[3]["TextYAlignment"] = "Top"
						L_1330_[3][L_1_[2]({
							"BackgroundTransparen",
							"cy"
						})] = 1
						L_1330_[3][L_1_[2]({
							"TextStrokeTransparen",
							"cy"
						})] = .5
						if L_1329_[2]["Team"] == L_1_[86] then
							L_1330_[3]["TextColor3"] = Color3["new"](0, 0, 254)
						else
							L_1330_[3]["TextColor3"] = Color3["new"](255, 0, 0)
						end
					else
						if L_1329_[2]["Character"]["Head"]:FindFirstChild("كشف الأسماء" .. Number) then
							L_1329_[2]["Character"]["Head"]["كشف الأسماء" .. Number]["TextLabel"]["Text"] = L_1329_[2]["Name"] .. (" | " .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1329_[2]["Character"]["Head"]["Position"])["Magnitude"] / 3) .. (" M\
Health : " .. (L_1_[67]((L_1329_[2]["Character"]["Humanoid"]["Health"] * 100) / L_1329_[2]["Character"]["Humanoid"]["MaxHealth"]) .. "%"))))
						end
					end
				else
					if L_1329_[2]["Character"]["Head"]:FindFirstChild("كشف الأسماء" .. Number) then
						(L_1329_[2]["Character"]["Head"]:FindFirstChild("كشف الأسماء" .. Number)):Destroy()
					end
				end
			end
		end)
	end
end
LocationEsp = function()
	for L_1331_forvar0, L_1332_forvar1 in next, workspace["_WorldOrigin"]["Locations"]:GetChildren() do
		local L_1333_ = {}
		L_1333_[3], L_1333_[2] = L_1331_forvar0, L_1332_forvar1
		pcall(function()
			if IslandESP then
				if L_1333_[2]["Name"] ~= "Sea" then
					if not L_1333_[2]:FindFirstChild("كشف الأسماء") then
						local L_1334_ = {}
						L_1334_[2] = Instance["new"]("BillboardGui", L_1333_[2])
						L_1334_[2]["Name"] = "كشف الأسماء"
						L_1334_[2]["ExtentsOffset"] = Vector3["new"](0, 1, 0)
						L_1334_[2]["Size"] = UDim2["new"](1, 200, 1, 30)
						L_1334_[2]["Adornee"] = L_1333_[2]
						L_1334_[2]["AlwaysOnTop"] = true
						L_1334_[3] = Instance["new"]("TextLabel", L_1334_[2])
						L_1334_[3]["Font"] = Enum["Font"]["Code"]
						L_1334_[3]["FontSize"] = "Size14"
						L_1334_[3]["TextWrapped"] = true
						L_1334_[3]["Size"] = UDim2["new"](1, 0, 1, 0)
						L_1334_[3]["TextYAlignment"] = "Top"
						L_1334_[3][L_1_[2]({
							"BackgroundTransparen";
							"cy"
						})] = 1
						L_1334_[3][L_1_[2]({
							"TextStrokeTransparen";
							"cy"
						})] = .5
						L_1334_[3]["TextColor3"] = Color3["fromRGB"](98, 252, 252)
						L_1334_[3]["Text"] = L_1333_[2]["Name"] .. ("   \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1333_[2]["Position"])["Magnitude"] / 3) .. " M"))
					else
						L_1333_[2]["كشف الأسماء"]["TextLabel"]["Text"] = L_1333_[2]["Name"] .. ("   \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1333_[2]["Position"])["Magnitude"] / 3) .. " M"))
					end
				end
			else
				if L_1333_[2]:FindFirstChild("كشف الأسماء") then
					(L_1333_[2]:FindFirstChild("كشف الأسماء")):Destroy()
				end
			end
		end)
	end
end
DevEsp = function()
	for L_1335_forvar0, L_1336_forvar1 in next, workspace:GetChildren() do
		local L_1337_ = {}
		L_1337_[2], L_1337_[3] = L_1335_forvar0, L_1336_forvar1
		pcall(function()
			if DevilFruitESP then
				if string["find"](L_1337_[3]["Name"], "Fruit") then
					if not L_1337_[3]["Handle"]:FindFirstChild("كشف الأسماء" .. Number) then
						local L_1338_ = {}
						L_1338_[2] = Instance["new"]("BillboardGui", L_1337_[3]["Handle"])
						L_1338_[2]["Name"] = "كشف الأسماء" .. Number
						L_1338_[2]["ExtentsOffset"] = Vector3["new"](0, 1, 0)
						L_1338_[2]["Size"] = UDim2["new"](1, 200, 1, 30)
						L_1338_[2]["Adornee"] = L_1337_[3]["Handle"]
						L_1338_[2]["AlwaysOnTop"] = true
						L_1338_[3] = Instance["new"]("TextLabel", L_1338_[2])
						L_1338_[3]["Font"] = Enum["Font"]["Code"]
						L_1338_[3]["FontSize"] = "Size14"
						L_1338_[3]["TextWrapped"] = true
						L_1338_[3]["Size"] = UDim2["new"](1, 0, 1, 0)
						L_1338_[3]["TextYAlignment"] = "Top"
						L_1338_[3][L_1_[2]({
							"BackgroundTransparen";
							"cy"
						})] = 1
						L_1338_[3][L_1_[2]({
							"TextStrokeTransparen";
							"cy"
						})] = .5
						L_1338_[3]["TextColor3"] = Color3["fromRGB"](255, 255, 255)
						L_1338_[3]["Text"] = L_1337_[3]["Name"] .. (" \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1337_[3]["Handle"]["Position"])["Magnitude"] / 3) .. " M"))
					else
						L_1337_[3]["Handle"]["كشف الأسماء" .. Number]["TextLabel"]["Text"] = "[" .. (L_1337_[3]["Name"] .. ("]" .. ("   \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1337_[3]["Handle"]["Position"])["Magnitude"] / 3) .. " M"))))
					end
				end
			else
				if L_1337_[3]:FindFirstChild("Handle") and L_1337_[3]["Handle"]:FindFirstChild("كشف الأسماء" .. Number) then
					(L_1337_[3]["Handle"]:FindFirstChild("كشف الأسماء" .. Number)):Destroy()
				end
			end
		end)
	end
end
flowerEsp = function()
	for L_1339_forvar0, L_1340_forvar1 in pairs(workspace:GetChildren()) do
		local L_1341_ = {}
		L_1341_[3], L_1341_[1] = L_1339_forvar0, L_1340_forvar1
		pcall(function()
			if L_1341_[1]["Name"] == "Flower2" or L_1341_[1]["Name"] == "Flower1" then
				if FlowerESP then
					if not L_1341_[1]:FindFirstChild("كشف الأسماء" .. Number) then
						local L_1342_ = {}
						L_1342_[2] = Instance["new"]("BillboardGui", L_1341_[1])
						L_1342_[2]["Name"] = "كشف الأسماء" .. Number
						L_1342_[2]["ExtentsOffset"] = Vector3["new"](0, 1, 0)
						L_1342_[2]["Size"] = UDim2["new"](1, 200, 1, 30)
						L_1342_[2]["Adornee"] = L_1341_[1]
						L_1342_[2]["AlwaysOnTop"] = true
						L_1342_[1] = Instance["new"]("TextLabel", L_1342_[2])
						L_1342_[1]["Font"] = Enum["Font"]["Code"]
						L_1342_[1]["FontSize"] = "Size14"
						L_1342_[1]["TextWrapped"] = true
						L_1342_[1]["Size"] = UDim2["new"](1, 0, 1, 0)
						L_1342_[1]["TextYAlignment"] = "Top"
						L_1342_[1][L_1_[2]({
							"BackgroundTransparen";
							"cy"
						})] = 1
						L_1342_[1][L_1_[2]({
							"TextStrokeTransparen";
							"cy"
						})] = .5
						L_1342_[1]["TextColor3"] = Color3["fromRGB"](88, 214, 252)
						if L_1341_[1]["Name"] == "Flower1" then
							L_1342_[1]["Text"] = "Blue Flower" .. (" \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1341_[1]["Position"])["Magnitude"] / 3) .. " M"))
						elseif L_1341_[1]["Name"] == "Flower2" then
							L_1342_[1]["Text"] = "Red Flower" .. (" \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1341_[1]["Position"])["Magnitude"] / 3) .. " M"))
						end
					else
						L_1341_[1]["كشف الأسماء" .. Number]["TextLabel"]["Text"] = L_1341_[1]["Name"] .. ("   \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1341_[1]["Position"])["Magnitude"] / 3) .. " M"))
					end
				else
					if L_1341_[1]:FindFirstChild("كشف الأسماء" .. Number) then
						(L_1341_[1]:FindFirstChild("كشف الأسماء" .. Number)):Destroy()
					end
				end
			end
		end)
	end
end
EventIslandEsp = function()
	for L_1343_forvar0, L_1344_forvar1 in pairs(workspace["_WorldOrigin"]["Locations"]:GetChildren()) do
		local L_1345_ = {}
		L_1345_[2], L_1345_[1] = L_1343_forvar0, L_1344_forvar1
		pcall(function()
			if EspEventIsland then
				if L_1345_[1]["Name"] == "جزيرة ميراج" or L_1345_[1]["Name"] == "جزيرة ما قبل التاريخ" or L_1345_[1]["Name"] == "جزيرة كيتسوني" then
					if not L_1345_[1]:FindFirstChild("كشف الأسماء") then
						local L_1346_ = {}
						L_1346_[1] = Instance["new"]("BillboardGui", L_1345_[1])
						L_1346_[1]["Name"] = "كشف الأسماء"
						L_1346_[1]["ExtentsOffset"] = Vector3["new"](0, 1, 0)
						L_1346_[1]["Size"] = UDim2["new"](1, 200, 1, 30)
						L_1346_[1]["Adornee"] = L_1345_[1]
						L_1346_[1]["AlwaysOnTop"] = true
						L_1346_[2] = Instance["new"]("TextLabel", L_1346_[1])
						L_1346_[2]["Font"] = "Code"
						L_1346_[2]["FontSize"] = "Size14"
						L_1346_[2]["TextWrapped"] = true
						L_1346_[2]["Size"] = UDim2["new"](1, 0, 1, 0)
						L_1346_[2]["TextYAlignment"] = "Top"
						L_1346_[2][L_1_[2]({
							"BackgroundTransparen";
							"cy"
						})] = 1
						L_1346_[2][L_1_[2]({
							"TextStrokeTransparen";
							"cy"
						})] = .5
						L_1346_[2]["TextColor3"] = Color3["fromRGB"](80, 245, 245)
						L_1346_[2]["Text"] = L_1345_[1]["Name"] .. ("   \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1345_[1]["Position"])["Magnitude"] / 3) .. " M"))
					else
						L_1345_[1]["كشف الأسماء"]["TextLabel"]["Text"] = L_1345_[1]["Name"] .. ("   \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1345_[1]["Position"])["Magnitude"] / 3) .. " M"))
					end
				end
			else
				if L_1345_[1]:FindFirstChild("كشف الأسماء") then
					(L_1345_[1]:FindFirstChild("كشف الأسماء")):Destroy()
				end
			end
		end)
	end
end
gearEsp = function()
	for L_1347_forvar0, L_1348_forvar1 in pairs(workspace["Map"]["MysticIsland"]:GetDescendants()) do
		local L_1349_ = {}
		L_1349_[3], L_1349_[1] = L_1347_forvar0, L_1348_forvar1
		pcall(function()
			if ESPGear then
				if L_1349_[1]["Name"] == "Part" and L_1349_[1]["Material"] == Enum["Material"]["Neon"] then
					if not L_1349_[1]:FindFirstChild("كشف الأسماء") then
						local L_1350_ = {}
						L_1350_[3] = Instance["new"]("BillboardGui", L_1349_[1])
						L_1350_[3]["Name"] = "كشف الأسماء"
						L_1350_[3]["ExtentsOffset"] = Vector3["new"](0, 1, 0)
						L_1350_[3]["Size"] = UDim2["new"](1, 200, 1, 30)
						L_1350_[3]["Adornee"] = L_1349_[1]
						L_1350_[3]["AlwaysOnTop"] = true
						L_1350_[1] = Instance["new"]("TextLabel", L_1350_[3])
						L_1350_[1]["Font"] = "Code"
						L_1350_[1]["FontSize"] = "Size14"
						L_1350_[1]["TextWrapped"] = true
						L_1350_[1]["Size"] = UDim2["new"](1, 0, 1, 0)
						L_1350_[1]["TextYAlignment"] = "Top"
						L_1350_[1][L_1_[2]({
							"BackgroundTransparen";
							"cy"
						})] = 1
						L_1350_[1][L_1_[2]({
							"TextStrokeTransparen";
							"cy"
						})] = .5
						L_1350_[1]["TextColor3"] = Color3["fromRGB"](80, 245, 245)
						L_1350_[1]["Text"] = "Gear" .. ("   \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1349_[1]["Position"])["Magnitude"] / 3) .. " M"))
					else
						L_1349_[1]["كشف الأسماء"]["TextLabel"]["Text"] = "Gear" .. ("   \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1349_[1]["Position"])["Magnitude"] / 3) .. " M"))
					end
				end
			else
				if L_1349_[1]:FindFirstChild("كشف الأسماء") then
					(L_1349_[1]:FindFirstChild("كشف الأسماء")):Destroy()
				end
			end
		end)
	end
end
AdvanFruitEsp = function()
	if advanEsp then
		for L_1351_forvar0, L_1352_forvar1 in pairs(L_1_[55]["NPCs"]:GetChildren()) do
			local L_1353_ = {}
			L_1353_[3], L_1353_[1] = L_1351_forvar0, L_1352_forvar1
			if L_1353_[1]["Name"] == L_1_[2]({
				"Advanced Fruit Deale",
				"r"
			}) then
				if not workspace:FindFirstChild("متقدم") then
					Adv = Instance["new"]("Part")
					Adv["Name"] = "متقدم"
					Adv["Transparency"] = 1
					Adv["Size"] = Vector3["new"](1, 1, 1)
					Adv["Anchored"] = true
					Adv["CanCollide"] = false
					Adv["Parent"] = workspace
					Adv["CFrame"] = L_1353_[1]["HumanoidRootPart"]["CFrame"]
				elseif workspace:FindFirstChild("متقدم") then
					if not Adv:FindFirstChild("كشف الأسماء") then
						local L_1354_ = {}
						L_1354_[3] = Instance["new"]("BillboardGui", Adv)
						L_1354_[3]["Name"] = "كشف الأسماء"
						L_1354_[3]["ExtentsOffset"] = Vector3["new"](0, 1, 0)
						L_1354_[3]["Size"] = UDim2["new"](1, 200, 1, 30)
						L_1354_[3]["Adornee"] = Adv
						L_1354_[3]["AlwaysOnTop"] = true
						L_1354_[2] = Instance["new"]("TextLabel", L_1354_[3])
						L_1354_[2]["Font"] = "Code"
						L_1354_[2]["FontSize"] = "Size14"
						L_1354_[2]["TextWrapped"] = true
						L_1354_[2]["Size"] = UDim2["new"](1, 0, 1, 0)
						L_1354_[2]["TextYAlignment"] = "Top"
						L_1354_[2][L_1_[2]({
							"BackgroundTransparen";
							"cy"
						})] = 1
						L_1354_[2][L_1_[2]({
							"TextStrokeTransparen",
							"cy"
						})] = .5
						L_1354_[2]["TextColor3"] = Color3["fromRGB"](80, 245, 245)
						L_1354_[2]["Text"] = L_1353_[1]["Name"] .. ("   \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1353_[1]["HumanoidRootPart"]["Position"])["Magnitude"] / 3) .. " M"))
					else
						Adv["كشف الأسماء"]["TextLabel"]["Text"] = L_1353_[1]["Name"] .. ("   \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1353_[1]["HumanoidRootPart"]["Position"])["Magnitude"] / 3) .. " M"))
					end
				end
			end
		end
	else
		if workspace:FindFirstChild("متقدم") then
			(workspace:FindFirstChild("متقدم")):Destroy()
		end
	end
end
HakiClorEsp = function()
	if ColorEsp then
		for L_1355_forvar0, L_1356_forvar1 in pairs(L_1_[55]["NPCs"]:GetChildren()) do
			local L_1357_ = {}
			L_1357_[3], L_1357_[1] = L_1355_forvar0, L_1356_forvar1
			if L_1357_[1]["Name"] == "Barista Cousin" then
				if not workspace:FindFirstChild("وضع خاص") then
					Gay = Instance["new"]("Part")
					Gay["Name"] = "وضع خاص"
					Gay["Transparency"] = 1
					Gay["Size"] = Vector3["new"](1, 1, 1)
					Gay["Anchored"] = true
					Gay["CanCollide"] = false
					Gay["Parent"] = workspace
					Gay["CFrame"] = L_1357_[1]["HumanoidRootPart"]["CFrame"]
				elseif workspace:FindFirstChild("وضع خاص") then
					if not Gay:FindFirstChild("كشف الأسماء") then
						local L_1358_ = {}
						L_1358_[3] = Instance["new"]("BillboardGui", Gay)
						L_1358_[3]["Name"] = "كشف الأسماء"
						L_1358_[3]["ExtentsOffset"] = Vector3["new"](0, 1, 0)
						L_1358_[3]["Size"] = UDim2["new"](1, 200, 1, 30)
						L_1358_[3]["Adornee"] = Gay
						L_1358_[3]["AlwaysOnTop"] = true
						L_1358_[2] = Instance["new"]("TextLabel", L_1358_[3])
						L_1358_[2]["Font"] = "Code"
						L_1358_[2]["FontSize"] = "Size14"
						L_1358_[2]["TextWrapped"] = true
						L_1358_[2]["Size"] = UDim2["new"](1, 0, 1, 0)
						L_1358_[2]["TextYAlignment"] = "Top"
						L_1358_[2][L_1_[2]({
							"BackgroundTransparen";
							"cy"
						})] = 1
						L_1358_[2][L_1_[2]({
							"TextStrokeTransparen",
							"cy"
						})] = .5
						L_1358_[2]["TextColor3"] = Color3["fromRGB"](80, 245, 245)
						L_1358_[2]["Text"] = L_1357_[1]["Name"] .. ("   \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1357_[1]["HumanoidRootPart"]["Position"])["Magnitude"] / 3) .. " M"))
					else
						Gay["كشف الأسماء"]["TextLabel"]["Text"] = L_1357_[1]["Name"] .. ("   \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1357_[1]["HumanoidRootPart"]["Position"])["Magnitude"] / 3) .. " M"))
					end
				end
			end
		end
	else
		if workspace:FindFirstChild("وضع خاص") then
			(workspace:FindFirstChild("وضع خاص")):Destroy()
		end
	end
end
LegenSword = function()
	if LegenS then
		for L_1359_forvar0, L_1360_forvar1 in pairs(L_1_[55]["NPCs"]:GetChildren()) do
			local L_1361_ = {}
			L_1361_[3], L_1361_[2] = L_1359_forvar0, L_1360_forvar1
			if L_1361_[2]["Name"] == L_1_[2]({
				"Legendary Sword Deal",
				"er"
			}) then
				if not workspace:FindFirstChild("أسطوري") then
					Lgd = Instance["new"]("Part")
					Lgd["Name"] = "أسطوري"
					Lgd["Transparency"] = 1
					Lgd["Size"] = Vector3["new"](1, 1, 1)
					Lgd["Anchored"] = true
					Lgd["CanCollide"] = false
					Lgd["Parent"] = workspace
					Lgd["CFrame"] = L_1361_[2]["HumanoidRootPart"]["CFrame"]
				elseif workspace:FindFirstChild("أسطوري") then
					if not Lgd:FindFirstChild("كشف الأسماء") then
						local L_1362_ = {}
						L_1362_[2] = Instance["new"]("BillboardGui", Lgd)
						L_1362_[2]["Name"] = "كشف الأسماء"
						L_1362_[2]["ExtentsOffset"] = Vector3["new"](0, 1, 0)
						L_1362_[2]["Size"] = UDim2["new"](1, 200, 1, 30)
						L_1362_[2]["Adornee"] = Lgd
						L_1362_[2]["AlwaysOnTop"] = true
						L_1362_[1] = Instance["new"]("TextLabel", L_1362_[2])
						L_1362_[1]["Font"] = "Code"
						L_1362_[1]["FontSize"] = "Size14"
						L_1362_[1]["TextWrapped"] = true
						L_1362_[1]["Size"] = UDim2["new"](1, 0, 1, 0)
						L_1362_[1]["TextYAlignment"] = "Top"
						L_1362_[1][L_1_[2]({
							"BackgroundTransparen";
							"cy"
						})] = 1
						L_1362_[1][L_1_[2]({
							"TextStrokeTransparen",
							"cy"
						})] = .5
						L_1362_[1]["TextColor3"] = Color3["fromRGB"](80, 245, 245)
						L_1362_[1]["Text"] = L_1361_[2]["Name"] .. ("   \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1361_[2]["HumanoidRootPart"]["Position"])["Magnitude"] / 3) .. " M"))
					else
						Lgd["كشف الأسماء"]["TextLabel"]["Text"] = L_1361_[2]["Name"] .. ("   \
" .. (L_1_[67]((L_1_[23]["Character"]["Head"]["Position"] - L_1361_[2]["HumanoidRootPart"]["Position"])["Magnitude"] / 3) .. " M"))
					end
				end
			end
		end
	else
		if workspace:FindFirstChild("أسطوري") then
			(workspace:FindFirstChild("أسطوري")):Destroy()
		end
	end
end
ChestEsp = function()
	if ChestESP then
		local L_1363_ = {}
		L_1363_[1] = game:GetService("CollectionService")
		L_1363_[3] = L_1363_[1]:GetTagged("_ChestTagged")
		for L_1364_forvar0, L_1365_forvar1 in ipairs(L_1363_[3]) do
			local L_1366_ = {}
			L_1366_[2], L_1366_[1] = L_1364_forvar0, L_1365_forvar1
			pcall(function()
				local L_1367_ = {}
				L_1367_[3] = (L_1366_[1]:GetPivot())["Position"]
				L_1367_[5] = (L_1367_[3] - L_1_[23]["Character"]["Head"]["Position"])["Magnitude"]
				L_1367_[2] = (L_1366_[1]:GetFullName()):gsub("[^%w_]", "_")
				L_1367_[4] = L_1366_[1]:FindFirstChild("مرفق كشف الصندوق")
				if not L_1367_[4] then
					local L_1368_ = {}
					L_1368_[2] = Instance["new"]("Attachment")
					L_1368_[2]["Name"] = "مرفق كشف الصندوق"
					L_1368_[2]["Parent"] = L_1366_[1]
					L_1368_[2]["Position"] = Vector3["new"](0, 3, 0)
					L_1368_[3] = Instance["new"]("BillboardGui")
					L_1368_[3]["Name"] = "كشف الأسماء"
					L_1368_[3]["Size"] = UDim2["new"](0, 200, 0, 30)
					L_1368_[3]["Adornee"] = L_1368_[2]
					L_1368_[3]["ExtentsOffset"] = Vector3["new"](0, 1, 0)
					L_1368_[3]["AlwaysOnTop"] = true
					L_1368_[3]["Parent"] = L_1368_[2]
					L_1368_[1] = Instance["new"]("TextLabel")
					L_1368_[1]["Font"] = Enum["Font"]["Code"]
					L_1368_[1]["TextSize"] = 14
					L_1368_[1]["TextWrapped"] = true
					L_1368_[1]["Size"] = UDim2["new"](1, 0, 1, 0)
					L_1368_[1]["TextYAlignment"] = Enum["TextYAlignment"]["Top"]
					L_1368_[1][L_1_[2]({
						"BackgroundTransparen",
						"cy"
					})] = 1
					L_1368_[1][L_1_[2]({
						"TextStrokeTransparen",
						"cy"
					})] = .5
					L_1368_[1]["TextColor3"] = Color3["fromRGB"](80, 245, 245)
					L_1368_[1]["Parent"] = L_1368_[3]
				end
				L_1367_[6] = L_1367_[4] and L_1367_[4]:FindFirstChild("كشف الأسماء")
				if L_1367_[6] then
					local L_1369_ = {}
					L_1369_[3] = math["floor"](L_1367_[5] / 3)
					L_1369_[2] = L_1366_[1]["Name"]:gsub("Label", "")
					L_1367_[6]["TextLabel"]["Text"] = string["format"]("[%s] %d M", L_1369_[2], L_1369_[3])
				end
			end)
		end
	else
		for L_1370_forvar0, L_1371_forvar1 in ipairs((game:GetService("CollectionService")):GetTagged("_ChestTagged")) do
			local L_1372_ = {}
			L_1372_[2], L_1372_[4] = L_1370_forvar0, L_1371_forvar1
			L_1372_[1] = L_1372_[4]:FindFirstChild("مرفق كشف الصندوق")
			if L_1372_[1] then
				L_1372_[1]:Destroy()
			end
		end
	end
end
berriesEsp = function()
	if BerryEsp then
		local L_1373_ = {}
		L_1373_[3] = game:GetService("CollectionService")
		L_1373_[2] = L_1373_[3]:GetTagged("BerryBush")
		for L_1374_forvar0, L_1375_forvar1 in ipairs(L_1373_[2]) do
			local L_1376_ = {}
			L_1376_[1], L_1376_[2] = L_1374_forvar0, L_1375_forvar1
			pcall(function()
				local L_1377_ = {}
				L_1377_[1] = (L_1376_[2]["Parent"]:GetPivot())["Position"]
				for L_1378_forvar0, L_1379_forvar1 in pairs(L_1376_[2]:GetAttributes()) do
					local L_1380_ = {}
					L_1380_[3], L_1380_[2] = L_1378_forvar0, L_1379_forvar1
					if L_1380_[2] then
						local L_1381_ = {}
						L_1381_[1] = "BerryEspPart_" .. (L_1380_[2] .. ("_" .. tostring(L_1377_[1])))
						L_1381_[5] = workspace:FindFirstChild(L_1381_[1])
						if not L_1381_[5] then
							L_1381_[5] = Instance["new"]("Part")
							L_1381_[5]["Name"] = L_1381_[1]
							L_1381_[5]["Transparency"] = 1
							L_1381_[5]["Size"] = Vector3["new"](1, 1, 1)
							L_1381_[5]["Anchored"] = true
							L_1381_[5]["CanCollide"] = false
							L_1381_[5]["Parent"] = workspace
							L_1381_[5]["CFrame"] = CFrame["new"](L_1377_[1])
						end
						if not L_1381_[5]:FindFirstChild("كشف الأسماء") then
							local L_1382_ = {}
							L_1382_[2] = Instance["new"]("BillboardGui", L_1381_[5])
							L_1382_[2]["Name"] = "كشف الأسماء"
							L_1382_[2]["ExtentsOffset"] = Vector3["new"](0, 1, 0)
							L_1382_[2]["Size"] = UDim2["new"](0, 200, 0, 30)
							L_1382_[2]["Adornee"] = L_1381_[5]
							L_1382_[2]["AlwaysOnTop"] = true
							L_1382_[1] = Instance["new"]("TextLabel", L_1382_[2])
							L_1382_[1]["Font"] = Enum["Font"]["Code"]
							L_1382_[1]["TextSize"] = 14
							L_1382_[1]["TextWrapped"] = true
							L_1382_[1]["Size"] = UDim2["new"](1, 0, 1, 0)
							L_1382_[1]["TextYAlignment"] = Enum["TextYAlignment"]["Top"]
							L_1382_[1][L_1_[2]({
								"BackgroundTransparen",
								"cy"
							})] = 1
							L_1382_[1][L_1_[2]({
								"TextStrokeTransparen";
								"cy"
							})] = .5
							L_1382_[1]["TextColor3"] = Color3["fromRGB"](80, 245, 245)
						end
						L_1381_[3] = L_1381_[5]:FindFirstChild("كشف الأسماء")
						L_1381_[4] = (L_1_[23]["Character"]["Head"]["Position"] - L_1377_[1])["Magnitude"] / 3
						if L_1381_[3] then
							L_1381_[3]["TextLabel"]["Text"] = "[" .. (L_1380_[2] .. ("]" .. (" " .. (math["round"](L_1381_[4]) .. " M"))))
						end
					end
				end
			end)
		end
	else
		for L_1383_forvar0, L_1384_forvar1 in ipairs(workspace:GetChildren()) do
			local L_1385_ = {}
			L_1385_[3], L_1385_[2] = L_1383_forvar0, L_1384_forvar1
			if L_1385_[2]:IsA("Part") and L_1385_[2]["Name"]:match("BerryEspPart_.*") then
				L_1385_[2]:Destroy()
			end
		end
	end
end
L_1_[93]["Esp"]:AddToggle({
	["Name"] = "كشف البيري",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1386_arg0)
		local L_1387_ = {}
		L_1387_[1] = L_1386_arg0
		BerryEsp = L_1387_[1]
		if not L_1387_[1] then
			for L_1388_forvar0, L_1389_forvar1 in ipairs(workspace:GetChildren()) do
				local L_1390_ = {}
				L_1390_[2], L_1390_[3] = L_1388_forvar0, L_1389_forvar1
				if L_1390_[3]:IsA("Part") and L_1390_[3]["Name"]:match("BerryEspPart_.*") then
					L_1390_[3]:Destroy()
				end
			end
		else
			task["spawn"](function()
				while BerryEsp do
					berriesEsp()
					task["wait"]()
				end
			end)
		end
	end
})
L_1_[93]["Esp"]:AddToggle({
	["Name"] = "كشف اللاعبين",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1391_arg0)
		local L_1392_ = {}
		L_1392_[1] = L_1391_arg0
		PlayerEsp = L_1392_[1]
		if not L_1392_[1] then
			for L_1393_forvar0, L_1394_forvar1 in next, game["Players"]:GetChildren() do
				local L_1395_ = {}
				L_1395_[1], L_1395_[2] = L_1393_forvar0, L_1394_forvar1
				pcall(function()
					if not isnil(L_1395_[2]["Character"]) and not isnil(L_1395_[2]["Character"]["Head"]) then
						if L_1395_[2]["Character"]["Head"]:FindFirstChild("كشف الأسماء" .. Number) then
							(L_1395_[2]["Character"]["Head"]:FindFirstChild("كشف الأسماء" .. Number)):Destroy()
						end
					end
				end)
			end
		else
			task["spawn"](function()
				while PlayerEsp do
					EspPly()
					task["wait"]()
				end
			end)
		end
	end
})
L_1_[93]["Esp"]:AddToggle({
	["Name"] = "كشف الصناديق";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1396_arg0)
		local L_1397_ = {}
		L_1397_[1] = L_1396_arg0
		ChestESP = L_1397_[1]
		if not L_1397_[1] then
			for L_1398_forvar0, L_1399_forvar1 in ipairs((game:GetService("CollectionService")):GetTagged("_ChestTagged")) do
				local L_1400_ = {}
				L_1400_[2], L_1400_[3] = L_1398_forvar0, L_1399_forvar1
				L_1400_[1] = L_1400_[3]:FindFirstChild("مرفق كشف الصندوق")
				if L_1400_[1] then
					L_1400_[1]:Destroy()
				end
			end
		else
			task["spawn"](function()
				while ChestESP do
					ChestEsp()
					task["wait"]()
				end
			end)
		end
	end
})
L_1_[93]["Esp"]:AddToggle({
	["Name"] = "كشف الفاكهة";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1401_arg0)
		local L_1402_ = {}
		L_1402_[2] = L_1401_arg0
		DevilFruitESP = L_1402_[2]
		if not L_1402_[2] then
			for L_1403_forvar0, L_1404_forvar1 in next, workspace:GetChildren() do
				local L_1405_ = {}
				L_1405_[3], L_1405_[2] = L_1403_forvar0, L_1404_forvar1
				pcall(function()
					if L_1405_[2]:FindFirstChild("Handle") and L_1405_[2]["Handle"]:FindFirstChild("كشف الأسماء" .. Number) then
						(L_1405_[2]["Handle"]:FindFirstChild("كشف الأسماء" .. Number)):Destroy()
					end
				end)
			end
		else
			task["spawn"](function()
				while DevilFruitESP do
					DevEsp()
					task["wait"]()
				end
			end)
		end
	end
})
L_1_[93]["Esp"]:AddToggle({
	["Name"] = "كشف الجزر",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1406_arg0)
		local L_1407_ = {}
		L_1407_[2] = L_1406_arg0
		IslandESP = L_1407_[2]
		if not L_1407_[2] then
			for L_1408_forvar0, L_1409_forvar1 in next, workspace["_WorldOrigin"]["Locations"]:GetChildren() do
				local L_1410_ = {}
				L_1410_[3], L_1410_[1] = L_1408_forvar0, L_1409_forvar1
				pcall(function()
					if L_1410_[1]:FindFirstChild("كشف الأسماء") then
						(L_1410_[1]:FindFirstChild("كشف الأسماء")):Destroy()
					end
				end)
			end
		else
			task["spawn"](function()
				while IslandESP do
					LocationEsp()
					task["wait"]()
				end
			end)
		end
	end
})
L_1_[93]["Esp"]:AddToggle({
	["Name"] = "كشف الزهور";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1411_arg0)
		local L_1412_ = {}
		L_1412_[1] = L_1411_arg0
		FlowerESP = L_1412_[1]
		if not L_1412_[1] then
			for L_1413_forvar0, L_1414_forvar1 in pairs(workspace:GetChildren()) do
				local L_1415_ = {}
				L_1415_[1], L_1415_[2] = L_1413_forvar0, L_1414_forvar1
				pcall(function()
					if (L_1415_[2]["Name"] == "Flower2" or L_1415_[2]["Name"] == "Flower1") and L_1415_[2]:FindFirstChild("كشف الأسماء" .. Number) then
						(L_1415_[2]:FindFirstChild("كشف الأسماء" .. Number)):Destroy()
					end
				end)
			end
		else
			task["spawn"](function()
				while FlowerESP do
					flowerEsp()
					task["wait"]()
				end
			end)
		end
	end
})
L_1_[93]["Esp"]:AddToggle({
	["Name"] = "كشف السيف الأسطوري";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1416_arg0)
		local L_1417_ = {}
		L_1417_[2] = L_1416_arg0
		LegenS = L_1417_[2]
		if not L_1417_[2] then
			if workspace:FindFirstChild("أسطوري") then
				(workspace:FindFirstChild("أسطوري")):Destroy()
			end
		else
			task["spawn"](function()
				while LegenS do
					LegenSword()
					task["wait"]()
				end
			end)
		end
	end
})
L_1_[93]["Esp"]:AddToggle({
	["Name"] = "كشف ألوان الهاكي";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1418_arg0)
		local L_1419_ = {}
		L_1419_[2] = L_1418_arg0
		ColorEsp = L_1419_[2]
		if not L_1419_[2] then
			if workspace:FindFirstChild("وضع خاص") then
				(workspace:FindFirstChild("وضع خاص")):Destroy()
			end
		else
			task["spawn"](function()
				while ColorEsp do
					HakiClorEsp()
					task["wait"]()
				end
			end)
		end
	end
})
L_1_[93]["Esp"]:AddToggle({
	["Name"] = "كشف المعدات";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1420_arg0)
		local L_1421_ = {}
		L_1421_[2] = L_1420_arg0
		ESPGear = L_1421_[2]
		if not L_1421_[2] then
			for L_1422_forvar0, L_1423_forvar1 in pairs(workspace["Map"]["MysticIsland"]:GetDescendants()) do
				local L_1424_ = {}
				L_1424_[2], L_1424_[3] = L_1422_forvar0, L_1423_forvar1
				pcall(function()
					if L_1424_[3]:FindFirstChild("كشف الأسماء") then
						(L_1424_[3]:FindFirstChild("كشف الأسماء")):Destroy()
					end
				end)
			end
		else
			task["spawn"](function()
				while ESPGear do
					gearEsp()
					task["wait"]()
				end
			end)
		end
	end
})
L_1_[93]["Esp"]:AddToggle({
	["Name"] = "كشف جزيرة البحر";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1425_arg0)
		local L_1426_ = {}
		L_1426_[2] = L_1425_arg0
		EspEventIsland = L_1426_[2]
		if not L_1426_[2] then
			for L_1427_forvar0, L_1428_forvar1 in pairs(workspace["_WorldOrigin"]["Locations"]:GetChildren()) do
				local L_1429_ = {}
				L_1429_[1], L_1429_[3] = L_1427_forvar0, L_1428_forvar1
				pcall(function()
					if L_1429_[3]:FindFirstChild("كشف الأسماء") then
						(L_1429_[3]:FindFirstChild("كشف الأسماء")):Destroy()
					end
				end)
			end
		else
			task["spawn"](function()
				while EspEventIsland do
					EventIslandEsp()
					task["wait"]()
				end
			end)
		end
	end
})
L_1_[93]["Esp"]:AddToggle({
	["Name"] = "كشف التاجر المتقدم",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1430_arg0)
		local L_1431_ = {}
		L_1431_[1] = L_1430_arg0
		advanEsp = L_1431_[1]
		if not L_1431_[1] then
			if workspace:FindFirstChild("متقدم") then
				(workspace:FindFirstChild("متقدم")):Destroy()
			end
		else
			task["spawn"](function()
				while advanEsp do
					AdvanFruitEsp()
					task["wait"]()
				end
			end)
		end
	end
})
L_1_[93]["Raids"]:AddSection({
	"Fruits Options"
})
L_1_[88] = function(L_1432_arg0)
	local L_1433_ = {}
	L_1433_[1] = L_1432_arg0
	L_1433_[2] = tostring(L_1433_[1])
	repeat
		local L_1434_ = {}
		L_1434_[1], L_1434_[2] = L_1433_[2]:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
		L_1433_[2] = L_1434_[1]
	until L_1434_[2] == 0
	return L_1433_[2]
end
L_1_[105] = function()
	local L_1435_ = {}
	L_1435_[1] = "Advance Fruit Stock\
"
	L_1435_[5], L_1435_[3] = pcall(function()
		return (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("GetFruits", true)
	end)
	if not L_1435_[5] or not L_1435_[3] then
		L_1435_[1] = L_1435_[1] .. L_1_[2]({
			"- Error while retrie",
			"ving data.\
"
		})
	else
		local L_1436_ = {}
		L_1436_[1] = false
		for L_1437_forvar0, L_1438_forvar1 in pairs(L_1435_[3]) do
			local L_1439_ = {}
			L_1439_[2], L_1439_[3] = L_1437_forvar0, L_1438_forvar1
			if L_1439_[3]["OnSale"] then
				L_1436_[1] = true
				L_1435_[1] = L_1435_[1] .. (L_1439_[3]["Name"] .. (" - $" .. (L_1_[88](L_1439_[3]["Price"]) .. "\
")))
			end
		end
		if not L_1436_[1] then
			L_1435_[1] = L_1435_[1] .. "- No fruit.\
"
		end
	end
	L_1435_[1] = L_1435_[1] .. "\
Normal Fruit Stock\
"
	L_1435_[4], L_1435_[6] = pcall(function()
		return (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("GetFruits")
	end)
	if L_1435_[4] and L_1435_[6] then
		local L_1440_ = {}
		L_1440_[2] = false
		for L_1441_forvar0, L_1442_forvar1 in pairs(L_1435_[6]) do
			local L_1443_ = {}
			L_1443_[1], L_1443_[2] = L_1441_forvar0, L_1442_forvar1
			if L_1443_[2]["OnSale"] then
				L_1440_[2] = true
				L_1435_[1] = L_1435_[1] .. (L_1443_[2]["Name"] .. (" - $" .. (L_1_[88](L_1443_[2]["Price"]) .. "\
")))
			end
		end
		if not L_1440_[2] then
			L_1435_[1] = L_1435_[1] .. "- No fruit.\
"
		end
	else
		L_1435_[1] = L_1435_[1] .. L_1_[2]({
			"- Error while retrie",
			"ving data.\
"
		})
	end
	return L_1435_[1]
end
stockParagraph = L_1_[93]["Raids"]:AddParagraph({
	["Title"] = "مخزون الفاكهة";
	["Content"] = "Loading..."
})
task["spawn"](function()
	while task["wait"](60) do
		pcall(function()
			stockParagraph:Set(L_1_[105]())
		end)
	end
end)
pcall(function()
	stockParagraph:Set(L_1_[105]())
end)
RandomFF = L_1_[93]["Raids"]:AddToggle({
	["Name"] = "فاكهة عشوائية تلقائية",
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1444_arg0)
		local L_1445_ = {}
		L_1445_[2] = L_1444_arg0
		_G["Random_Auto"] = L_1445_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Random_Auto"] then
				L_1_[55]["Remotes"]["CommF_"]:InvokeServer("Cousin", "Buy")
			end
		end)
	end
end)
DropF = L_1_[93]["Raids"]:AddToggle({
	["Name"] = "إسقاط فاكهة تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1446_arg0)
		local L_1447_ = {}
		L_1447_[2] = L_1446_arg0
		_G["DropFruit"] = L_1447_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["DropFruit"] then
			pcall(function()
				DropFruits()
			end)
		end
	end
end)
StoredF = L_1_[93]["Raids"]:AddToggle({
	["Name"] = "تخزين فاكهة تلقائي",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1448_arg0)
		local L_1449_ = {}
		L_1449_[2] = L_1448_arg0
		_G["StoreF"] = L_1449_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["StoreF"] then
			pcall(function()
				UpdStFruit()
			end)
		end
	end
end)
TwF = L_1_[93]["Raids"]:AddToggle({
	["Name"] = "تويين للفاكهة تلقائي";
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1450_arg0)
		local L_1451_ = {}
		L_1451_[2] = L_1450_arg0
		_G["TwFruits"] = L_1451_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["TwFruits"] then
			pcall(function()
				for L_1452_forvar0, L_1453_forvar1 in pairs(workspace:GetChildren()) do
					local L_1454_ = {}
					L_1454_[1], L_1454_[3] = L_1452_forvar0, L_1453_forvar1
					if string["find"](L_1454_[3]["Name"], "Fruit") then
						_tp(L_1454_[3]["Handle"]["CFrame"])
					end
				end
			end)
		end
	end
end)
BringF = L_1_[93]["Raids"]:AddToggle({
	["Name"] = "جمع فاكهة تلقائي",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1455_arg0)
		local L_1456_ = {}
		L_1456_[2] = L_1455_arg0
		_G["InstanceF"] = L_1456_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["InstanceF"] then
			pcall(function()
				collectFruits(_G["InstanceF"])
			end)
		end
	end
end)
L_1_[93]["Raids"]:AddDropdown({
	["Name"] = "اختر محل الفاكهة";
	["Options"] = {
		"Rocket-Rocket",
		"Spin-Spin";
		"Blade-Blade",
		"Spring-Spring";
		"Bomb-Bomb",
		"Smoke-Smoke";
		"Spike-Spike",
		"Flame-Flame";
		"Ice-Ice";
		"Sand-Sand";
		"Dark-Dark";
		"Eagle-Eagle",
		"Diamond-Diamond";
		"Light-Light";
		"Rubber-Rubber",
		"Ghost-Ghost";
		"Magma-Magma";
		"Quake-Quake",
		"Buddha-Buddha";
		"Love-Love",
		"Creation-Creation";
		"Spider-Spider";
		"Sound-Sound";
		"Phoenix-Phoenix";
		"Portal-Portal",
		"Lightning-Lightning",
		"Pain-Pain";
		"Blizzard-Blizzard",
		"Gravity-Gravity";
		"T-Rex-T-Rex";
		"Mammoth-Mammoth";
		"Dough-Dough",
		"Shadow-Shadow";
		"Venom-Venom";
		"Gas-Gas";
		"Control-Control";
		"Spirit-Spirit",
		"Leopard-Leopard",
		"Yeti-Yeti";
		"Kitsune-Kitsune";
		"Dragon-Dragon"
	};
	["Callback"] = function(L_1457_arg0)
		local L_1458_ = {}
		L_1458_[1] = L_1457_arg0;
		(getgenv())["SelectFruit"] = L_1458_[1]
	end
})
L_1_[93]["Raids"]:AddToggle({
	["Name"] = "شراء فاكهة تلقائي",
	["Default"] = false;
	["Callback"] = function(L_1459_arg0)
		local L_1460_ = {}
		L_1460_[1] = L_1459_arg0;
		(getgenv())["AutoBuyFruitSniper"] = L_1460_[1]
	end
})
spawn(function()
	pcall(function()
		while wait() do
			if (getgenv())["AutoBuyFruitSniper"] then
				(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("GetFruits");
				(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("PurchaseRawFruit", (getgenv())["SelectFruit"])
			end
		end
	end)
end)
L_1_[93]["Raids"]:AddSection({
	L_1_[2]({
		"Dungeon Event / Raid";
		"ing"
	})
})
RaidS = L_1_[93]["Raids"]:AddParagraph({
	["Title"] = "حالة الريد",
	["Content"] = ""
})
spawn(function()
	while wait(.2) do
		pcall(function()
			if L_1_[23]["PlayerGui"]["Main"]["Timer"]["Visible"] == true then
				RaidS:SetDesc(L_1_[2]({
					" Raiding Statud : Tr";
					"ue"
				}))
			else
				RaidS:SetDesc(L_1_[2]({
					" Raiding Statud : Fa",
					"lse"
				}))
			end
		end)
	end
end)
L_1_[15] = {
	"اللهب";
	"الجليد";
	"الزلزال";
	"النور";
	"الظلام",
	"الخيط";
	"الرعد",
	"الحمم",
	"إنسان: بوذا",
	"الرمال",
	"طائر: الفينيق";
	"العجين"
}
Q = L_1_[93]["Raids"]:AddDropdown({
	["Name"] = "اختر التشيب";
	["Description"] = "";
	["Options"] = L_1_[15];
	["Default"] = false,
	["Callback"] = function(L_1461_arg0)
		local L_1462_ = {}
		L_1462_[2] = L_1461_arg0
		_G["SelectChip"] = L_1462_[2]
	end
})
Q = L_1_[93]["Raids"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Select Dungeon ",
		"Chip"
	}),
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1463_arg0)
		local L_1464_ = {}
		L_1464_[1] = L_1463_arg0
		_G["AutoSelectDungeon"] = L_1464_[1]
	end
})
L_1_[93]["Raids"]:AddToggle({
	["Name"] = L_1_[2]({
		"Get Fruit In Invento",
		"ry Below 1M"
	});
	["Default"] = false,
	["Callback"] = function(L_1465_arg0)
		local L_1466_ = {}
		L_1466_[2] = L_1465_arg0;
		(getgenv())["AutoGetFruit"] = L_1466_[2]
	end
})
spawn(function()
	while wait() do
		pcall(function()
			if (getgenv())["AutoGetFruit"] then
				local L_1467_ = {}
				L_1467_[1] = {
					"Rocket-Rocket";
					"Spin-Spin",
					"Chop-Chop";
					"Spring-Spring";
					"Bomb-Bomb";
					"Smoke-Smoke";
					"Spike-Spike",
					"Flame-Flame",
					"Falcon-Falcon",
					"Ice-Ice";
					"Sand-Sand";
					"Dark-Dark";
					"Ghost-Ghost",
					"Diamond-Diamond";
					"Light-Light";
					"Rubber-Rubber",
					"Barrier-Barrier"
				}
				for L_1468_forvar0, L_1469_forvar1 in ipairs(L_1467_[1]) do
					local L_1470_ = {}
					L_1470_[3], L_1470_[2] = L_1468_forvar0, L_1469_forvar1
					L_1470_[4] = {
						[1] = "LoadFruit";
						[2] = L_1470_[2]
					};
					(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_1470_[4]))
				end
			end
		end)
	end
end)
L_1_[93]["Raids"]:AddButton({
	["Name"] = L_1_[2]({
		"Buy Dungeon Chips [B",
		"eli]"
	}),
	["Description"] = "";
	["Callback"] = function()
		if not GetBP("Special Microchip") then
			L_1_[55]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", _G["SelectChip"])
		end
	end
})
L_1_[93]["Raids"]:AddButton({
	["Name"] = L_1_[2]({
		"Buy Dungeon Chips [D";
		"evil Fruit]"
	});
	["Description"] = "",
	["Callback"] = function()
		local L_1471_ = {}
		if GetBP("Special Microchip") then
			return
		end
		L_1471_[2] = {}
		L_1471_[1] = {}
		for L_1472_forvar0, L_1473_forvar1 in next, (L_1_[55]:WaitForChild("Remotes"))["CommF_"]:InvokeServer("GetFruits") do
			local L_1474_ = {}
			L_1474_[2], L_1474_[3] = L_1472_forvar0, L_1473_forvar1
			if L_1474_[3]["Price"] <= 490000 then
				table["insert"](L_1471_[2], L_1474_[3]["Name"])
			end
		end
		for L_1475_forvar0, L_1476_forvar1 in pairs(L_1471_[2]) do
			local L_1477_ = {}
			L_1477_[3], L_1477_[2] = L_1475_forvar0, L_1476_forvar1
			for L_1478_forvar0, L_1479_forvar1 in pairs(L_1_[15]) do
				if not GetBP("Special Microchip") then
					L_1_[55]["Remotes"]["CommF_"]:InvokeServer("LoadFruit", tostring(L_1477_[2]))
					L_1_[55]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", _G["SelectChip"])
				end
			end
		end
	end
})
AutoChipBeli = L_1_[93]["Raids"]:AddToggle({
	["Name"] = "شراء تشيب [بيلي] تلقائي";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1480_arg0)
		local L_1481_ = {}
		L_1481_[2] = L_1480_arg0
		_G["AutoChipBeli"] = L_1481_[2]
	end
})
task["spawn"](function()
	while task["wait"](1) do
		if _G["AutoChipBeli"] then
			pcall(function()
				if not GetBP("Special Microchip") then
					L_1_[55]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", _G["SelectChip"])
				end
			end)
		end
	end
end)
AutoChipFruit = L_1_[93]["Raids"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Buy Chip [Devil";
		" Fruit]"
	}),
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1482_arg0)
		local L_1483_ = {}
		L_1483_[2] = L_1482_arg0
		_G["AutoChipFruit"] = L_1483_[2]
	end
})
task["spawn"](function()
	while task["wait"](1) do
		if _G["AutoChipFruit"] then
			pcall(function()
				if not GetBP("Special Microchip") then
					local L_1484_ = {}
					L_1484_[3] = L_1_[55]["Remotes"]["CommF_"]:InvokeServer("GetFruits")
					L_1484_[2] = nil
					for L_1485_forvar0, L_1486_forvar1 in pairs(L_1484_[3]) do
						local L_1487_ = {}
						L_1487_[1], L_1487_[2] = L_1485_forvar0, L_1486_forvar1
						if L_1487_[2]["Price"] <= 490000 then
							L_1484_[2] = L_1487_[2]["Name"]
							break
						end
					end
					if L_1484_[2] then
						L_1_[55]["Remotes"]["CommF_"]:InvokeServer("LoadFruit", tostring(L_1484_[2]))
						L_1_[55]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", _G["SelectChip"])
					end
				end
			end)
		end
	end
end)
StartR = L_1_[93]["Raids"]:AddToggle({
	["Name"] = "بدء الريد تلقائي",
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1488_arg0)
		local L_1489_ = {}
		L_1489_[1] = L_1488_arg0
		_G["Auto_StartRaid"] = L_1489_[1]
	end
})
task["spawn"](function()
	while task["wait"](Sec) do
		if not _G["Auto_StartRaid"] then
			continue
		end
		pcall(function()
			local L_1490_ = {}
			L_1490_[2] = game["Players"]["LocalPlayer"]
			L_1490_[1] = L_1490_[2]:FindFirstChild("PlayerGui")
			L_1490_[4] = L_1490_[1] and L_1490_[1]:FindFirstChild("Main")
			L_1490_[5] = L_1490_[4] and L_1490_[4]:FindFirstChild("TopHUDList")
			if not L_1490_[5] or L_1490_[5]["RaidTimer"]["Visible"] then
				return
			end
			if not GetBP("Special Microchip") then
				return
			end
			if World2 then
				local L_1491_ = {}
				L_1491_[2] = workspace["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]
				if L_1491_[2] then
					if L_1491_[2]:FindFirstChild("ProximityPrompt") then
						fireproximityprompt(L_1491_[2]["ProximityPrompt"])
					elseif L_1491_[2]:FindFirstChild("ClickDetector") then
						fireclickdetector(L_1491_[2]["ClickDetector"])
					end
				end
			end
			if World3 then
				local L_1492_ = {}
				L_1492_[1] = workspace["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]
				if L_1492_[1] then
					if L_1492_[1]:FindFirstChild("ProximityPrompt") then
						fireproximityprompt(L_1492_[1]["ProximityPrompt"])
					elseif L_1492_[1]:FindFirstChild("ClickDetector") then
						fireclickdetector(L_1492_[1]["ClickDetector"])
					end
				end
			end
		end)
	end
end)
Raiding = L_1_[93]["Raids"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Raid + Next Isl";
		"and"
	}),
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1493_arg0)
		local L_1494_ = {}
		L_1494_[1] = L_1493_arg0
		_G["Raiding"] = L_1494_[1]
	end
})
spawn(function()
	local L_1495_ = {}
	L_1495_[2] = workspace["_WorldOrigin"]["Locations"]
	L_1495_[1] = {
		"Island 1",
		"Island 2",
		"Island 3";
		"Island 4",
		"Island 5"
	}
	L_1495_[3] = nil
	while task["wait"](.3) do
		local L_1496_ = {}
		if not _G["Raiding"] then
			continue
		end
		L_1496_[8] = L_1_[23]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]
		if not L_1496_[8]["Visible"] then
			continue
		end
		L_1496_[1] = L_1_[23]["Character"]
		if not L_1496_[1] then
			continue
		end
		L_1496_[7] = L_1496_[1]:FindFirstChild("HumanoidRootPart")
		L_1496_[5] = L_1496_[1]:FindFirstChildOfClass("Humanoid")
		if not L_1496_[7] or not L_1496_[5] or L_1496_[5]["Health"] <= 0 then
			continue
		end
		if L_1496_[5]["Sit"] or L_1496_[5]["PlatformStand"] or L_1496_[7]["Anchored"] then
			continue
		end
		L_1496_[2] = 999999
		for L_1497_forvar0, L_1498_forvar1 in ipairs(L_1495_[1]) do
			local L_1499_ = {}
			L_1499_[1], L_1499_[4] = L_1497_forvar0, L_1498_forvar1
			L_1499_[2] = L_1495_[2]:FindFirstChild(L_1499_[4])
			if L_1499_[2] then
				local L_1500_ = {}
				L_1500_[2] = (L_1496_[7]["Position"] - L_1499_[2]["Position"])["Magnitude"]
				if L_1500_[2] < L_1496_[2] then
					L_1496_[2] = L_1500_[2]
					L_1495_[3] = L_1499_[4]
				end
			end
		end
		if not L_1495_[3] then
			continue
		end
		L_1496_[3] = L_1495_[2]:FindFirstChild(L_1495_[3])
		if not L_1496_[3] then
			continue
		end
		L_1496_[6] = false
		for L_1501_forvar0, L_1502_forvar1 in ipairs(workspace["Enemies"]:GetChildren()) do
			local L_1503_ = {}
			L_1503_[4], L_1503_[3] = L_1501_forvar0, L_1502_forvar1
			L_1503_[2] = L_1503_[3]:FindFirstChild("Humanoid")
			L_1503_[1] = L_1503_[3]:FindFirstChild("HumanoidRootPart")
			if L_1503_[2] and (L_1503_[1] and L_1503_[2]["Health"] > 0) then
				if (L_1503_[1]["Position"] - L_1496_[3]["Position"])["Magnitude"] < 450 then
					L_1496_[6] = true
					repeat
						task["wait"]()
						L_1_[4]["Kill"](L_1503_[3], _G["Raiding"])
					until not _G["Raiding"] or not L_1503_[3]["Parent"] or L_1503_[2]["Health"] <= 0
				end
			end
		end
		if not L_1496_[6] then
			local L_1504_ = {}
			L_1504_[1] = table["find"](L_1495_[1], L_1495_[3])
			if L_1504_[1] and L_1495_[1][L_1504_[1] + 1] then
				local L_1505_ = {}
				L_1505_[2] = L_1495_[2]:FindFirstChild(L_1495_[1][L_1504_[1] + 1])
				if L_1505_[2] then
					local L_1506_ = {}
					L_1506_[2] = L_1505_[2]["CFrame"] * CFrame["new"](0, 45, 120)
					_tp(L_1506_[2])
				end
				L_1495_[3] = L_1495_[1][L_1504_[1] + 1]
				task["wait"](1)
			end
		end
	end
end)
L_1_[93]["Raids"]:AddToggle({
	["Name"] = "إيقاظ تلقائي",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1507_arg0)
		local L_1508_ = {}
		L_1508_[1] = L_1507_arg0
		_G["Auto_Awakener"] = L_1508_[1]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["Auto_Awakener"] then
				L_1_[55]["Remotes"]["CommF_"]:InvokeServer("Awakener", "Check")
				L_1_[55]["Remotes"]["CommF_"]:InvokeServer("Awakener", "Awaken")
			end
		end)
	end
end)
L_1_[93]["Raids"]:AddToggle({
	["Name"] = "تلبورت للمختبر تلقائي",
	["Default"] = false,
	["Callback"] = function(L_1509_arg0)
		local L_1510_ = {}
		L_1510_[1] = L_1509_arg0
		_G["TpLab"] = L_1510_[1]
		StopTween(_G["TpLab"])
		while _G["TpLab"] do
			wait()
			if _G["TpLab"] then
				if World2 and _G["TpLab"] then
					topos(CFrame["new"](-6438.73535, 250.645355, -4501.50684))
				elseif World3 and _G["TpLab"] then
					topos(CFrame["new"](-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, .378151238, 9.7681621e-08, -0.925743818))
				end
			end
		end
	end
})
L_1_[93]["Raids"]:AddSection({
	L_1_[2]({
		"Items Law/Order Swor",
		"d"
	})
})
L_1_[93]["Raids"]:AddButton({
	["Name"] = "شراء ميكروتشيب لو",
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward", "Microchip", "2")
	end
})
L_1_[93]["Raids"]:AddButton({
	["Name"] = "بدء ريد لو",
	["Description"] = "",
	["Callback"] = function()
		fireclickdetector(workspace["Map"]["CircleIsland"]["RaidSummon"]["Button"]["Main"]["ClickDetector"])
	end
})
L_1_[93]["Raids"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Buy Microchip L";
		"aw"
	});
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1511_arg0)
		local L_1512_ = {}
		L_1512_[1] = L_1511_arg0;
		(getgenv())["AutoBuyMicrochipLaw"] = L_1512_[1]
	end
})
spawn(function()
	while task["wait"](1) do
		if (getgenv())["AutoBuyMicrochipLaw"] then
			pcall(function()
				(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward", "Microchip", "2")
			end)
		end
	end
end)
L_1_[93]["Raids"]:AddToggle({
	["Name"] = "بدء ريد لو تلقائي",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1513_arg0)
		local L_1514_ = {}
		L_1514_[2] = L_1513_arg0;
		(getgenv())["AutoStartLawRaids"] = L_1514_[2]
	end
})
spawn(function()
	while task["wait"](1) do
		if (getgenv())["AutoStartLawRaids"] then
			pcall(function()
				fireclickdetector(workspace["Map"]["CircleIsland"]["RaidSummon"]["Button"]["Main"]["ClickDetector"])
			end)
		end
	end
end)
L_1_[93]["Raids"]:AddToggle({
	["Name"] = "قتل لو تلقائي";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1515_arg0)
		local L_1516_ = {}
		L_1516_[1] = L_1515_arg0
		_G["AutoLawKak"] = L_1516_[1]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["AutoLawKak"] then
			pcall(function()
				local L_1517_ = {}
				L_1517_[1] = GetConnectionEnemies("النظام")
				if L_1517_[1] then
					repeat
						task["wait"]()
						L_1_[4]["Kill"](L_1517_[1], _G["AutoLawKak"])
					until _G["AutoLawKak"] == false or not L_1517_[1]["Parent"] or L_1517_[1]["Humanoid"]["Health"] <= 0
				else
					_tp(CFrame["new"](-6217.2021484375, 28.047645568848, -5053.1357421875))
				end
			end)
		end
	end
end)
L_1_[93]["Raids"]:AddSection({
	"Raids Dungeons"
})
L_1_[42] = game["Players"]["LocalPlayer"]
L_1_[83] = function()
	local L_1518_ = {}
	L_1518_[1] = L_1_[42]["Character"]
	return L_1518_[1] and L_1518_[1]:FindFirstChild("HumanoidRootPart")
end
L_1_[93]["Raids"]:AddToggle({
	["Name"] = "فارم زنزانة تلقائي";
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1519_arg0)
		local L_1520_ = {}
		L_1520_[2] = L_1519_arg0
		_G["AutoFarmDungeon"] = L_1520_[2]
	end
})
L_1_[50] = 5000
spawn(function()
	while task["wait"](.15) do
		if not _G["AutoFarmDungeon"] then
			continue
		end
		pcall(function()
			local L_1521_ = {}
			L_1521_[4] = game["Players"]["LocalPlayer"]
			L_1521_[5] = L_1521_[4]["Character"]
			L_1521_[1] = L_1521_[5] and L_1521_[5]:FindFirstChild("HumanoidRootPart")
			L_1521_[3] = L_1521_[5] and L_1521_[5]:FindFirstChildOfClass("Humanoid")
			if not L_1521_[1] or not L_1521_[3] or L_1521_[3]["Health"] <= 0 then
				return
			end
			for L_1522_forvar0, L_1523_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
				local L_1524_ = {}
				L_1524_[5], L_1524_[3] = L_1522_forvar0, L_1523_forvar1
				if not _G["AutoFarmDungeon"] then
					break
				end
				L_1524_[2] = L_1524_[3]:FindFirstChild("Humanoid")
				L_1524_[1] = L_1524_[3]:FindFirstChild("HumanoidRootPart")
				if L_1524_[2] and (L_1524_[1] and L_1524_[2]["Health"] > 0) then
					local L_1525_ = {}
					L_1525_[1] = (L_1524_[1]["Position"] - L_1521_[1]["Position"])["Magnitude"]
					if L_1525_[1] <= L_1_[50] then
						repeat
							task["wait"]()
							L_1_[4]["Kill"](L_1524_[3], true)
						until not _G["AutoFarmDungeon"] or not L_1524_[3]["Parent"] or L_1524_[2]["Health"] <= 0
					end
				end
			end
		end)
	end
end)
L_1_[93]["Raids"]:AddToggle({
	["Name"] = "خروج TP (1)",
	["Default"] = false,
	["Callback"] = function(L_1526_arg0)
		local L_1527_ = {}
		L_1527_[1] = L_1526_arg0
		_G["TPFloor1"] = L_1527_[1]
	end
})
L_1_[120] = false
L_1_[8] = function()
	local L_1528_ = {}
	L_1528_[2] = L_1_[83]()
	if not L_1528_[2] then
		return
	end
	for L_1529_forvar0, L_1530_forvar1 in pairs(workspace["Map"]["Dungeon"]:GetChildren()) do
		local L_1531_ = {}
		L_1531_[4], L_1531_[3] = L_1529_forvar0, L_1530_forvar1
		L_1531_[2] = L_1531_[3]:FindFirstChild("ExitTeleporter")
		if L_1531_[2] and L_1531_[2]:FindFirstChild("Root") then
			if (L_1528_[2]["Position"] - L_1531_[2]["Root"]["Position"])["Magnitude"] < 200 then
				return L_1531_[2]["Root"]
			end
		end
	end
end
task["spawn"](function()
	while task["wait"](.3) do
		if not _G["TPFloor1"] then
			L_1_[120] = false
			continue
		end
		if not L_1_[120] then
			local L_1532_ = {}
			L_1532_[2] = L_1_[8]()
			if L_1532_[2] then
				L_1532_[2] = L_1532_[2]["CFrame"] * CFrame["new"](0, 3, 0);
				(L_1_[83]())["CFrame"] = L_1532_[2]
				L_1_[120] = true
			end
		end
	end
end)
L_1_[93]["Raids"]:AddToggle({
	["Name"] = "خروج TP (2)",
	["Default"] = false;
	["Callback"] = function(L_1533_arg0)
		local L_1534_ = {}
		L_1534_[2] = L_1533_arg0
		_G["TPFloor2"] = L_1534_[2]
	end
})
L_1_[140] = false
task["spawn"](function()
	while task["wait"](.3) do
		local L_1535_ = {}
		if not _G["TPFloor2"] then
			L_1_[140] = false
			continue
		end
		if L_1_[140] then
			continue
		end
		L_1535_[2] = L_1_[83]()
		if not L_1535_[2] then
			continue
		end
		for L_1536_forvar0, L_1537_forvar1 in pairs(workspace["Map"]["Dungeon"]:GetChildren()) do
			local L_1538_ = {}
			L_1538_[4], L_1538_[5] = L_1536_forvar0, L_1537_forvar1
			L_1538_[2] = L_1538_[5]:FindFirstChild("EntranceTeleporter")
			L_1538_[1] = L_1538_[5]:FindFirstChild("ExitTeleporter")
			if L_1538_[2] and (L_1538_[1] and (L_1538_[2]:FindFirstChild("Root") and L_1538_[1]:FindFirstChild("Root"))) then
				if (L_1535_[2]["Position"] - L_1538_[2]["Root"]["Position"])["Magnitude"] < 100 then
					L_1535_[2]["CFrame"] = L_1538_[1]["Root"]["CFrame"] * CFrame["new"](0, 3, 0)
					L_1_[140] = true
					break
				end
			end
		end
	end
end)
L_1_[93]["Raids"]:AddToggle({
	["Name"] = "خروج TP (3)",
	["Default"] = false;
	["Callback"] = function(L_1539_arg0)
		local L_1540_ = {}
		L_1540_[1] = L_1539_arg0
		_G["TPFloor3"] = L_1540_[1]
	end
})
L_1_[131] = false
L_1_[66] = function()
	local L_1541_ = {}
	for L_1542_forvar0, L_1543_forvar1 in pairs(workspace["Map"]["Dungeon"]:GetChildren()) do
		local L_1544_ = {}
		L_1544_[4], L_1544_[3] = L_1542_forvar0, L_1543_forvar1
		L_1544_[2] = tonumber(L_1544_[3]["Name"])
		if L_1544_[2] and (not L_1541_[1] or L_1544_[2] > tonumber(L_1541_[1]["Name"])) then
			L_1541_[1] = L_1544_[3]
		end
	end
	return L_1541_[1]
end
task["spawn"](function()
	while task["wait"](.3) do
		if not _G["TPFloor3"] then
			L_1_[131] = false
			continue
		end
		if not L_1_[131] then
			local L_1545_ = {}
			L_1545_[1] = L_1_[66]()
			if L_1545_[1] and (L_1545_[1]:FindFirstChild("ExitTeleporter") and L_1545_[1]["ExitTeleporter"]:FindFirstChild("Root")) then
				(L_1_[83]())["CFrame"] = L_1545_[1]["ExitTeleporter"]["Root"]["CFrame"] * CFrame["new"](0, 3, 0)
				L_1_[131] = true
			end
		end
	end
end)
L_1_[93]["Raids"]:AddToggle({
	["Name"] = "خروج TP (4)",
	["Default"] = false,
	["Callback"] = function(L_1546_arg0)
		local L_1547_ = {}
		L_1547_[1] = L_1546_arg0
		_G["TPFloor4"] = L_1547_[1]
	end
})
L_1_[9] = false
L_1_[128] = function()
	local L_1548_ = {}
	L_1548_[3] = L_1_[83]()
	if not L_1548_[3] then
		return
	end
	L_1548_[4], L_1548_[2] = nil, math["huge"]
	for L_1549_forvar0, L_1550_forvar1 in pairs(workspace["Map"]["Dungeon"]:GetChildren()) do
		local L_1551_ = {}
		L_1551_[3], L_1551_[4] = L_1549_forvar0, L_1550_forvar1
		L_1551_[2] = L_1551_[4]:FindFirstChild("ExitTeleporter")
		if L_1551_[2] and L_1551_[2]:FindFirstChild("Root") then
			local L_1552_ = {}
			L_1552_[1] = (L_1548_[3]["Position"] - L_1551_[2]["Root"]["Position"])["Magnitude"]
			if L_1552_[1] < L_1548_[2] then
				L_1548_[2] = L_1552_[1]
				L_1548_[4] = L_1551_[2]["Root"]
			end
		end
	end
	return L_1548_[4]
end
task["spawn"](function()
	while task["wait"](.3) do
		if not _G["TPFloor4"] then
			L_1_[9] = false
			continue
		end
		if not L_1_[9] then
			local L_1553_ = {}
			L_1553_[1] = L_1_[128]()
			if L_1553_[1] then
				(L_1_[83]())["CFrame"] = L_1553_[1]["CFrame"] * CFrame["new"](0, 3, 0)
				L_1_[9] = true
			end
		end
	end
end)
L_1_[93]["Combat"]:AddSection({
	"Combat / AimBot"
})
__indexPlayer = L_1_[93]["Combat"]:AddParagraph({
	["Title"] = L_1_[2]({
		"All Players On Serve";
		"r :"
	});
	["Content"] = ""
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			for L_1554_forvar0, L_1555_forvar1 in pairs((game:GetService("Players")):GetPlayers()) do
				local L_1556_ = {}
				L_1556_[3], L_1556_[2] = L_1554_forvar0, L_1555_forvar1
				if L_1556_[3] == 12 then
					__indexPlayer:SetDesc("All Players :" .. (" " .. (L_1556_[3] .. " / 12 [Max]")))
				elseif L_1556_[3] == 1 then
					__indexPlayer:SetDesc("All Players  :" .. (" " .. (L_1556_[3] .. " / 12")))
				else
					__indexPlayer:SetDesc("All Players  :" .. (" " .. (L_1556_[3] .. " / 12")))
				end
			end
		end)
	end
end)
__AimBotTurn = L_1_[93]["Combat"]:AddParagraph({
	["Title"] = "حالة الأيم بوت:";
	["Content"] = ""
})
Checking_AimStatus = function()
	if _G["AimCam"] then
		return "Aimbot Camera"
	else
		return ""
	end
	if _G["AimbotGun"] then
		return "Aimbot Guns"
	else
		return ""
	end
end
spawn(function()
	while wait(.2) do
		pcall(function()
			if _G["AimMethod"] then
				__AimBotTurn:SetDesc(L_1_[2]({
					"Aimbot - Skills : Tr",
					"ue"
				}))
			elseif (_G["AimCam"] or _G["AimbotGun"]) and _G["AimMethod"] then
				__AimBotTurn:SetDesc("Aimbot - Skills |" .. (Checking_AimStatus() .. " :True"))
			else
				__AimBotTurn:SetDesc(L_1_[2]({
					"Aimbot - Skills : Fa",
					"lse"
				}))
			end
		end)
	end
end)
L_1_[39] = {}
for L_1557_forvar0, L_1558_forvar1 in pairs((game:GetService("Players")):GetChildren()) do
	local L_1559_ = {}
	L_1559_[3], L_1559_[1] = L_1557_forvar0, L_1558_forvar1
	table["insert"](L_1_[39], L_1559_[1]["Name"])
end
L_1_[93]["Combat"]:AddDropdown({
	["Name"] = "اختر اللاعبين";
	["Description"] = "";
	["Options"] = L_1_[39];
	["Default"] = false,
	["Callback"] = function(L_1560_arg0)
		local L_1561_ = {}
		L_1561_[1] = L_1560_arg0
		_G["PlayersList"] = L_1561_[1]
	end
})
L_1_[93]["Combat"]:AddToggle({
	["Name"] = L_1_[2]({
		"Teleport To Select P";
		"layers"
	}),
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1562_arg0)
		local L_1563_ = {}
		L_1563_[2] = L_1562_arg0
		_G["TpPly"] = L_1563_[2]
		spawn(function()
			pcall(function()
				while _G["TpPly"] do
					wait()
					_tp((game:GetService("Players"))[_G["PlayersList"]]["Character"]["HumanoidRootPart"]["CFrame"])
				end
			end)
		end)
	end
})
L_1_[93]["Combat"]:AddToggle({
	["Name"] = L_1_[2]({
		"Spectate Select Play";
		"ers"
	}),
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1564_arg0)
		local L_1565_ = {}
		L_1565_[1] = L_1564_arg0
		SpectatePlys = L_1565_[1]
		spawn(function()
			repeat
				task["wait"](.1)
				if (game:GetService("Players")):FindFirstChild(_G["PlayersList"]) then
					workspace["Camera"]["CameraSubject"] = ((game:GetService("Players")):FindFirstChild(_G["PlayersList"]))["Character"]["Humanoid"]
				end
			until not SpectatePlys
			workspace["Camera"]["CameraSubject"] = L_1_[42]["Character"]["Humanoid"]
		end)
	end
})
L_1_[93]["Combat"]:AddDropdown({
	["Name"] = "اختر طريقة الأيم",
	["Description"] = "";
	["Options"] = {
		"أيم لاعب",
		"الأقرب"
	},
	["Default"] = false,
	["Callback"] = function(L_1566_arg0)
		local L_1567_ = {}
		L_1567_[2] = L_1566_arg0
		ABmethod = L_1567_[2]
	end
})
L_1_[93]["Combat"]:AddToggle({
	["Name"] = "طريقة أيم بوت المهارات",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1568_arg0)
		local L_1569_ = {}
		L_1569_[1] = L_1568_arg0
		_G["AimMethod"] = L_1569_[1]
	end
})
spawn(function()
	while wait() do
		pcall(function()
			if _G["AimMethod"] and ABmethod == "أيم لاعب" then
				local L_1570_ = {}
				L_1570_[1] = L_1_[59]:FindFirstChild((getgenv())["PlayersList"])
				if L_1570_[1] and (L_1570_[1]["Character"] and L_1570_[1]["Character"]:FindFirstChild("HumanoidRootPart")) then
					if L_1570_[1]["Team"] ~= L_1_[42]["Team"] then
						MousePos = L_1570_[1]["Character"]["HumanoidRootPart"]["Position"]
					end
				end
			end
		end)
	end
end)
spawn(function()
	while wait() do
		pcall(function()
			if _G["AimMethod"] and ABmethod == "الأقرب" then
				local L_1571_ = {}
				L_1571_[2] = math["huge"]
				for L_1572_forvar0, L_1573_forvar1 in pairs(L_1_[59]:GetPlayers()) do
					local L_1574_ = {}
					L_1574_[3], L_1574_[1] = L_1572_forvar0, L_1573_forvar1
					if L_1574_[1] ~= L_1_[42] and (L_1574_[1]["Team"] ~= L_1_[42]["Team"] and (L_1574_[1]["Character"] and L_1574_[1]["Character"]:FindFirstChild("HumanoidRootPart"))) then
						local L_1575_ = {}
						L_1575_[2] = (L_1574_[1]["Character"]["HumanoidRootPart"]["Position"] - L_1_[42]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]
						if L_1575_[2] < L_1571_[2] then
							L_1571_[2] = L_1575_[2]
							MousePos = L_1574_[1]["Character"]["HumanoidRootPart"]["Position"]
						end
					end
				end
			end
		end)
	end
end)
L_1_[93]["Combat"]:AddToggle({
	["Name"] = L_1_[2]({
		"Aimbot Camera Closet";
		" Players"
	});
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1576_arg0)
		local L_1577_ = {}
		L_1577_[1] = L_1576_arg0
		_G["AimCam"] = L_1577_[1]
	end
})
task["spawn"](function()
	while task["wait"](Sec) do
		pcall(function()
			if _G["AimCam"] then
				local L_1578_ = {}
				L_1578_[1] = workspace["CurrentCamera"]
				closestplayer = function()
					local L_1579_ = {}
					L_1579_[3] = math["huge"]
					L_1579_[1] = nil
					for L_1580_forvar0, L_1581_forvar1 in next, ply:GetPlayers() do
						local L_1582_ = {}
						L_1582_[2], L_1582_[3] = L_1580_forvar0, L_1581_forvar1
						if L_1582_[3] ~= L_1_[42] then
							if L_1582_[3]["Character"] and (L_1582_[3]["Character"]:FindFirstChild("Head") and (_G["AimCam"] and L_1582_[3]["Character"]["Humanoid"]["Health"] > 0)) then
								local L_1583_ = {}
								L_1583_[1] = (L_1582_[3]["Character"]["Head"]["Position"] - L_1_[42]["Character"]["Head"]["Position"])["Magnitude"]
								if L_1583_[1] < L_1579_[3] then
									L_1579_[3] = L_1583_[1]
									L_1579_[1] = L_1582_[3]
								end
							end
						end
					end
					return L_1579_[1]
				end
				repeat
					task["wait"]()
					L_1578_[1]["CFrame"] = CFrame["new"](L_1578_[1]["CFrame"]["Position"], (closestplayer())["Character"]["HumanoidRootPart"]["Position"])
				until _G["AimCam"] == false or Mag > dist
			end
		end)
	end
end)
L_1_[93]["Combat"]:AddSection({
	"Quests Players"
})
L_1_[93]["Combat"]:AddButton({
	["Name"] = "جلب مهمات اللاعب",
	["Description"] = "";
	["Callback"] = function()
		pcall(function()
			(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("PlayerHunter")
		end)
	end
})
L_1_[93]["Combat"]:AddToggle({
	["Name"] = "جلب مهمة لاعب تلقائي",
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1584_arg0)
		local L_1585_ = {}
		L_1585_[1] = L_1584_arg0
		_G[L_1_[2]({
			"AutoReceivePlayerQue",
			"st"
		})] = L_1585_[1]
	end
})
spawn(function()
	while task["wait"](1) do
		if _G[L_1_[2]({
			"AutoReceivePlayerQue";
			"st"
		})] then
			pcall(function()
				(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("PlayerHunter")
			end)
		end
	end
end)
L_1_[93]["Combat"]:AddToggle({
	["Name"] = L_1_[2]({
		"Auto Kill Player Que";
		"st"
	});
	["Default"] = false,
	["Callback"] = function(L_1586_arg0)
		local L_1587_ = {}
		L_1587_[2] = L_1586_arg0
		_G["AutoPlayerHunter"] = L_1587_[2]
	end
})
spawn(function()
	while task["wait"]() do
		if _G["AutoPlayerHunter"] then
			if game["Players"]["LocalPlayer"]["PlayerGui"]["Main"]["Quest"]["Visible"] == false then
				task["wait"](.5);
				(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("PlayerHunter")
			else
				for L_1588_forvar0, L_1589_forvar1 in pairs((game:GetService("Workspace"))["Characters"]:GetChildren()) do
					local L_1590_ = {}
					L_1590_[1], L_1590_[3] = L_1588_forvar0, L_1589_forvar1
					if string["find"](game["Players"]["LocalPlayer"]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], L_1590_[3]["Name"]) then
						repeat
							task["wait"]()
							if AutoHaki then
								AutoHaki()
							end
							if EquipWeapon then
								EquipWeapon(_G["SelectWeapon"])
							end
							Useskill = true
							_tp(L_1590_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](1, 7, 3))
							L_1590_[3]["HumanoidRootPart"]["Size"] = Vector3["new"](60, 60, 60);
							(game:GetService("VirtualUser")):CaptureController();
							(game:GetService("VirtualUser")):Button1Down(Vector2["new"](1280, 672))
						until _G["AutoPlayerHunter"] == false or L_1590_[3]["Humanoid"]["Health"] <= 0
						Useskill = false;
						(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
					end
				end
			end
		end
	end
end)
L_1_[93]["Combat"]:AddToggle({
	["Name"] = "تفعيل PvP تلقائي";
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1591_arg0)
		local L_1592_ = {}
		L_1592_[1] = L_1591_arg0
		_G["AutoPvP"] = L_1592_[1]
	end
})
spawn(function()
	while task["wait"](.5) do
		if _G["AutoPvP"] then
			local L_1593_ = {}
			L_1593_[2] = game["Players"]["LocalPlayer"]["PlayerGui"]
			if L_1593_[2] and (L_1593_[2]["Main"] and L_1593_[2]["Main"]:FindFirstChild("PvpDisabled")) then
				if L_1593_[2]["Main"]["PvpDisabled"]["Visible"] then
					pcall(function()
						(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("EnablePvp")
					end)
				end
			end
		end
	end
end)
L_1_[93]["Combat"]:AddToggle({
	["Name"] = "وضع آمن تلقائي";
	["Default"] = false;
	["Callback"] = function(L_1594_arg0)
		local L_1595_ = {}
		L_1595_[2] = L_1594_arg0
		_G["SafeMode"] = L_1595_[2]
	end
})
spawn(function()
	while task["wait"](.1) do
		if _G["SafeMode"] then
			local L_1596_ = {}
			L_1596_[1] = game["Players"]["LocalPlayer"]["Character"]
			L_1596_[2] = L_1596_[1] and L_1596_[1]:FindFirstChild("HumanoidRootPart")
			if L_1596_[2] then
				local L_1597_ = {}
				L_1597_[2] = L_1596_[2]["CFrame"] * CFrame["new"](0, 200, 0)
				_tp(L_1597_[2])
			end
		end
	end
end)
L_1_[93]["Combat"]:AddSection({
	"LocalPlayer Settings"
})
L_1_[30] = game:GetService("Players")
L_1_[10] = game:GetService("UserInputService")
L_1_[119] = game:GetService("RunService")
L_1_[52] = L_1_[30]["LocalPlayer"]
L_1_[69] = false
L_1_[129] = 50
L_1_[115] = {
	["f"] = 0,
	["b"] = 0,
	["l"] = 0,
	["r"] = 0
}
L_1_[75] = function()
	local L_1598_ = {}
	L_1598_[1] = function()
		local L_1599_ = {}
		L_1599_[2] = L_1_[52]["Character"]
		if not L_1599_[2] then
			return
		end
		L_1599_[4] = L_1599_[2]:FindFirstChildOfClass("Humanoid")
		if not L_1599_[4] then
			return
		end
		L_1599_[1] = L_1599_[4]["MoveDirection"]
		L_1_[115]["f"] = 0
		L_1_[115]["b"] = 0
		L_1_[115]["l"] = 0
		L_1_[115]["r"] = 0
		if L_1599_[1]["Z"] < -0.1 then
			L_1_[115]["f"] = 1
		elseif L_1599_[1]["Z"] > .1 then
			L_1_[115]["b"] = 1
		end
		if L_1599_[1]["X"] < -0.1 then
			L_1_[115]["l"] = 1
		elseif L_1599_[1]["X"] > .1 then
			L_1_[115]["r"] = 1
		end
	end
	L_1598_[3] = L_1_[119]["Heartbeat"]:Connect(function()
		if L_1_[69] then
			L_1598_[1]()
		else
			if L_1598_[3] then
				L_1598_[3]:Disconnect()
			end
		end
	end)
end
L_1_[102] = function(L_1600_arg0)
	local L_1601_ = {}
	L_1601_[2] = L_1600_arg0
	L_1_[69] = L_1601_[2]
	if L_1_[69] then
		local L_1602_ = {}
		if not L_1_[52]["Character"] then
			return
		end
		L_1602_[1] = L_1_[52]["Character"]:FindFirstChildOfClass("Humanoid")
		if L_1_[52]["Character"]:FindFirstChild("Torso") then
			L_1602_[4] = L_1_[52]["Character"]["Torso"]
		else
			L_1602_[4] = L_1_[52]["Character"]["UpperTorso"]
		end
		if not L_1602_[1] or not L_1602_[4] then
			return
		end
		for L_1603_forvar0, L_1604_forvar1 in ipairs(L_1_[52]["Character"]:GetDescendants()) do
			local L_1605_ = {}
			L_1605_[3], L_1605_[2] = L_1603_forvar0, L_1604_forvar1
			if L_1605_[2]:IsA("BasePart") then
				L_1605_[2]["CanCollide"] = false
				L_1605_[2]["Massless"] = true
			end
		end
		L_1602_[2] = L_1_[52]["Character"]["DescendantAdded"]:Connect(function(L_1606_arg0)
			local L_1607_ = {}
			L_1607_[2] = L_1606_arg0
			if L_1_[69] and L_1607_[2]:IsA("BasePart") then
				L_1607_[2]["CanCollide"] = false
				L_1607_[2]["Massless"] = true
			end
		end)
		L_1_[49] = Instance["new"]("BodyGyro", L_1602_[4])
		L_1_[49]["P"] = 90000
		L_1_[49]["maxTorque"] = Vector3["new"](9000000000, 9000000000, 9000000000)
		L_1_[49]["cframe"] = L_1602_[4]["CFrame"]
		L_1_[117] = Instance["new"]("سرعة الجسم", L_1602_[4])
		L_1_[117]["velocity"] = Vector3["new"](0, 0, 0)
		L_1_[117]["maxForce"] = Vector3["new"](9000000000, 9000000000, 9000000000)
		L_1602_[1]["PlatformStand"] = true
		L_1_[75]()
		L_1_[47] = L_1_[119]["Heartbeat"]:Connect(function()
			if not L_1_[69] or not L_1_[52]["Character"] then
				return
			end
			for L_1608_forvar0, L_1609_forvar1 in ipairs(L_1_[52]["Character"]:GetDescendants()) do
				local L_1610_ = {}
				L_1610_[1], L_1610_[3] = L_1608_forvar0, L_1609_forvar1
				if L_1610_[3]:IsA("BasePart") and L_1610_[3]["CanCollide"] then
					L_1610_[3]["CanCollide"] = false
				end
			end
			if L_1_[115]["l"] + L_1_[115]["r"] ~= 0 or L_1_[115]["f"] + L_1_[115]["b"] ~= 0 then
				L_1_[117]["velocity"] = (workspace["CurrentCamera"]["CoordinateFrame"]["lookVector"] * (L_1_[115]["f"] + L_1_[115]["b"]) + (workspace["CurrentCamera"]["CoordinateFrame"] * (CFrame["new"](L_1_[115]["l"] + L_1_[115]["r"], (L_1_[115]["f"] + L_1_[115]["b"]) * .2, 0))["p"] - workspace["CurrentCamera"]["CoordinateFrame"]["p"])) * L_1_[129]
			else
				L_1_[117]["velocity"] = Vector3["new"](0, 0, 0)
			end
			L_1_[49]["cframe"] = workspace["CurrentCamera"]["CoordinateFrame"]
		end)
	else
		if L_1_[47] then
			L_1_[47]:Disconnect()
			L_1_[47] = nil
		end
		if L_1_[52]["Character"] then
			local L_1611_ = {}
			L_1611_[2] = L_1_[52]["Character"]:FindFirstChildOfClass("Humanoid")
			if L_1611_[2] then
				L_1611_[2]["PlatformStand"] = false
			end
			for L_1612_forvar0, L_1613_forvar1 in ipairs(L_1_[52]["Character"]:GetDescendants()) do
				local L_1614_ = {}
				L_1614_[1], L_1614_[3] = L_1612_forvar0, L_1613_forvar1
				if L_1614_[3]:IsA("BasePart") then
					L_1614_[3]["CanCollide"] = true
					L_1614_[3]["Massless"] = false
				end
			end
			if L_1_[49] then
				L_1_[49]:Destroy()
			end
			if L_1_[117] then
				L_1_[117]:Destroy()
			end
		end
		L_1_[115] = {
			["f"] = 0;
			["b"] = 0,
			["l"] = 0;
			["r"] = 0
		}
	end
end
L_1_[91] = function(L_1615_arg0)
	local L_1616_ = {}
	L_1616_[2] = L_1615_arg0
	L_1_[129] = L_1616_[2]
end
L_1_[52]["CharacterAdded"]:Connect(function(L_1617_arg0)
	wait(1)
	if L_1_[69] then
		L_1_[102](false)
		wait(.1)
		L_1_[102](true)
	end
end)
L_1_[93]["Combat"]:AddToggle({
	["Name"] = "تفعيل الطيران",
	["Default"] = false;
	["Callback"] = function(L_1618_arg0)
		local L_1619_ = {}
		L_1619_[2] = L_1618_arg0
		L_1_[102](L_1619_[2])
	end
})
L_1_[93]["Combat"]:AddSlider({
	["Name"] = "نمط الطيران السريع";
	["Min"] = 10;
	["Max"] = 200;
	["Default"] = 50;
	["Callback"] = function(L_1620_arg0)
		local L_1621_ = {}
		L_1621_[2] = L_1620_arg0
		L_1_[91](L_1621_[2])
	end
})
L_1_[93]["Combat"]:AddToggle({
	["Name"] = "داش بلا كولداون",
	["Default"] = false;
	["Callback"] = function(L_1622_arg0)
		local L_1623_ = {}
		L_1623_[1] = L_1622_arg0;
		(getgenv())["DodgeNoCD"] = L_1623_[1]
	end
})
L_1_[48] = function()
	local L_1624_ = {}
	L_1624_[1] = game["Players"]["LocalPlayer"]["Character"]:WaitForChild("Dodge")
	for L_1625_forvar0, L_1626_forvar1 in next, getgc() do
		local L_1627_ = {}
		L_1627_[2], L_1627_[3] = L_1625_forvar0, L_1626_forvar1
		if typeof(L_1627_[3]) == "function" then
			local L_1628_ = {}
			L_1628_[1] = getfenv(L_1627_[3])
			if L_1628_[1]["script"] == L_1624_[1] then
				for L_1629_forvar0, L_1630_forvar1 in next, getupvalues(L_1627_[3]) do
					local L_1631_ = {}
					L_1631_[1], L_1631_[3] = L_1629_forvar0, L_1630_forvar1
					if tostring(L_1631_[3]) == "0.4" then
						setupvalue(L_1627_[3], L_1631_[1], 0)
					end
				end
			end
		end
	end
end
L_1_[93]["Combat"]:AddToggle({
	["Name"] = L_1_[2]({
		"Instance Mink V3 [ I";
		"NF ]"
	}),
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1632_arg0)
		local L_1633_ = {}
		L_1633_[1] = L_1632_arg0
		InfAblities = L_1633_[1]
	end
})
spawn(function()
	while wait(.2) do
		pcall(function()
			if InfAblities then
				if not L_1_[42]["Character"]["HumanoidRootPart"]:FindFirstChild("رشاقة") then
					local L_1634_ = {}
					L_1634_[1] = L_1_[55]["FX"]["رشاقة"]:Clone()
					L_1634_[1]["Name"] = "رشاقة"
					L_1634_[1]["Parent"] = L_1_[42]["Character"]["HumanoidRootPart"]
				end
			else
				L_1_[42]["Character"]["HumanoidRootPart"]["رشاقة"]:Destroy()
			end
		end)
	end
end)
L_1_[93]["Combat"]:AddToggle({
	["Name"] = L_1_[2]({
		"Instance Energy [ IN";
		"F ]"
	}),
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1635_arg0)
		local L_1636_ = {}
		L_1636_[1] = L_1635_arg0
		infEnergy = L_1636_[1]
		if L_1636_[1] then
			getInfinity_Ability("Energy", infEnergy)
		end
	end
})
L_1_[93]["Combat"]:AddToggle({
	["Name"] = L_1_[2]({
		"Instance Soru [ INF ",
		"]"
	}),
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1637_arg0)
		local L_1638_ = {}
		L_1638_[1] = L_1637_arg0
		_G["InfSoru"] = L_1638_[1]
		if L_1638_[1] then
			getInfinity_Ability("Soru", _G["InfSoru"])
		end
	end
})
L_1_[93]["Combat"]:AddToggle({
	["Name"] = L_1_[2]({
		"Instance Observation",
		" Range [ INF ]"
	});
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1639_arg0)
		local L_1640_ = {}
		L_1640_[1] = L_1639_arg0
		_G["InfiniteObRange"] = L_1640_[1]
		if L_1640_[1] then
			getInfinity_Ability("Observation", _G["InfiniteObRange"])
		end
	end
})
L_1_[93]["Combat"]:AddToggle({
	["Name"] = "تجاهل نفس الفريق";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1641_arg0)
		local L_1642_ = {}
		L_1642_[2] = L_1641_arg0
		_G["NoAimTeam"] = L_1642_[2]
	end
})
L_1_[93]["Combat"]:AddToggle({
	["Name"] = "قبول الحلفاء",
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1643_arg0)
		local L_1644_ = {}
		L_1644_[2] = L_1643_arg0
		_G["AcceptAlly"] = L_1644_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["AcceptAlly"] then
			pcall(function()
				for L_1645_forvar0, L_1646_forvar1 in pairs(ply:GetChildren()) do
					local L_1647_ = {}
					L_1647_[3], L_1647_[2] = L_1645_forvar0, L_1646_forvar1
					if L_1647_[2]["Name"] ~= L_1_[42]["Name"] and (L_1647_[2]:FindFirstChild("Humanoid") and L_1647_[2]:FindFirstChild("HumanoidRootPart")) then
						((L_1_[55]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("AcceptAlly", L_1647_[2]["Name"])
					end
				end
			end)
		end
	end
end)
L_1_[93]["Travel"]:AddSection({
	"Travel - Worlds"
})
L_1_[93]["Travel"]:AddButton({
	["Name"] = L_1_[2]({
		"Travel East Blue (Wo",
		"rld 1)"
	}),
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("TravelMain")
	end
})
L_1_[93]["Travel"]:AddButton({
	["Name"] = L_1_[2]({
		"Travel Dressrosa (Wo",
		"rld 2)"
	});
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
	end
})
L_1_[93]["Travel"]:AddButton({
	["Name"] = "السفر لـ Zou (عالم 3)",
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("TravelZou")
	end
})
L_1_[93]["Travel"]:AddSection({
	"Travel - Island"
})
Location = {}
for L_1648_forvar0, L_1649_forvar1 in pairs(workspace["_WorldOrigin"]["Locations"]:GetChildren()) do
	local L_1650_ = {}
	L_1650_[3], L_1650_[1] = L_1648_forvar0, L_1649_forvar1
	table["insert"](Location, L_1650_[1]["Name"])
end
Travelllll = L_1_[93]["Travel"]:AddDropdown({
	["Name"] = "اختر وجهة السفر",
	["Description"] = "",
	["Options"] = Location,
	["Default"] = false,
	["Callback"] = function(L_1651_arg0)
		local L_1652_ = {}
		L_1652_[2] = L_1651_arg0
		_G["Island"] = L_1652_[2]
	end
})
GoIsland = L_1_[93]["Travel"]:AddToggle({
	["Name"] = "تنقل تلقائي";
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1653_arg0)
		local L_1654_ = {}
		L_1654_[1] = L_1653_arg0
		_G["تلبورت"] = L_1654_[1]
		if L_1654_[1] then
			for L_1655_forvar0, L_1656_forvar1 in pairs(workspace["_WorldOrigin"]["Locations"]:GetChildren()) do
				local L_1657_ = {}
				L_1657_[1], L_1657_[3] = L_1655_forvar0, L_1656_forvar1
				if L_1657_[3]["Name"] == _G["Island"] then
					repeat
						wait()
						_tp(L_1657_[3]["CFrame"] * CFrame["new"](0, 30, 0))
					until not _G["تلبورت"] or Root["CFrame"] == L_1657_[3]["CFrame"]
				end
			end
		end
	end
})
L_1_[93]["Travel"]:AddSection({
	"Travel - Portal"
})
if World1 then
	Location_Portal = {
		"Sky";
		"UnderWater"
	}
elseif World2 then
	Location_Portal = {
		"SwanRoom";
		"Cursed Ship"
	}
elseif World3 then
	Location_Portal = {
		"Castle On The Sea";
		"Mansion Cafe";
		"Hydra Teleport";
		"Canvendish Room",
		"Temple of Time"
	}
end
PortalTP = L_1_[93]["Travel"]:AddDropdown({
	["Name"] = "اختر البوابة",
	["Options"] = Location_Portal,
	["Default"] = false;
	["Callback"] = function(L_1658_arg0)
		local L_1659_ = {}
		L_1659_[2] = L_1658_arg0
		_G["Island_PT"] = L_1659_[2]
	end
})
L_1_[93]["Travel"]:AddButton({
	["Name"] = "requestEntrance";
	["Description"] = "",
	["Callback"] = function()
		if _G["Island_PT"] == "Sky" then
			L_1_[55]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-7894, 5547, -380))
		elseif _G["Island_PT"] == "UnderWater" then
			L_1_[55]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](61163, 11, 1819))
		elseif _G["Island_PT"] == "SwanRoom" then
			L_1_[55]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](2285, 15, 905))
		elseif _G["Island_PT"] == "Cursed Ship" then
			L_1_[55]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](923, 126, 32852))
		elseif _G["Island_PT"] == "Castle On The Sea" then
			L_1_[55]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-5097.93164, 316.447021, -3142.66602, -0.405007899, -4.31682743e-08, .914313197, -1.90943332e-08, 1, 3.8755779e-08, -0.914313197, -1.76180437e-09, -0.405007899))
		elseif _G["Island_PT"] == "Mansion Cafe" then
			L_1_[55]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-12471.169921875, 374.94024658203, -7551.677734375))
		elseif _G["Island_PT"] == "Hydra Teleport" then
			L_1_[55]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](5643.4526367188, 1013.0858154297, -340.51025390625))
		elseif _G["Island_PT"] == "Canvendish Room" then
			L_1_[55]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](5314.5463867188, 22.562219619751, -127.06755065918))
		elseif _G["Island_PT"] == "Temple of Time" then
			L_1_[55]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](28310.0234, 14895.1123, 109.456741, -0.469690144, -2.85620132e-08, -0.882831335, -3.23509219e-08, 1, -1.51411736e-08, .882831335, 2.14487486e-08, -0.469690144))
		end
	end
})
L_1_[93]["Travel"]:AddSection({
	"Travel - NPCs"
})
for L_1660_forvar0, L_1661_forvar1 in pairs(L_1_[55]["NPCs"]:GetChildren()) do
	local L_1662_ = {}
	L_1662_[2], L_1662_[1] = L_1660_forvar0, L_1661_forvar1
	table["insert"](NPCList, L_1662_[1]["Name"])
end
NPCsPos = L_1_[93]["Travel"]:AddDropdown({
	["Name"] = "اختر الـ NPC",
	["Options"] = NPCList,
	["Default"] = false;
	["Callback"] = function(L_1663_arg0)
		local L_1664_ = {}
		L_1664_[2] = L_1663_arg0
		NPClist = L_1664_[2]
	end
})
GoNPCs = L_1_[93]["Travel"]:AddToggle({
	["Name"] = "تويين للـ NPC تلقائي",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1665_arg0)
		local L_1666_ = {}
		L_1666_[2] = L_1665_arg0
		_G["TPNpc"] = L_1666_[2]
	end
})
spawn(function()
	while wait(Sec) do
		if _G["TPNpc"] then
			pcall(function()
				for L_1667_forvar0, L_1668_forvar1 in pairs(L_1_[55]["NPCs"]:GetChildren()) do
					local L_1669_ = {}
					L_1669_[2], L_1669_[3] = L_1667_forvar0, L_1668_forvar1
					if L_1669_[3]["Name"] == NPClist then
						_tp(L_1669_[3]["HumanoidRootPart"]["CFrame"])
					end
				end
			end)
		end
	end
end)
L_1_[93]["Shop"]:AddSection({
	"Shop Options"
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء بوسو",
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyHaki", "Buso")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء جيبو",
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyHaki", "Geppo")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء سورو";
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyHaki", "Soru")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء كين",
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("KenTalk", "Buy")
	end
})
L_1_[93]["Shop"]:AddSection({
	"Fighting - Style"
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء بلاك ليغ",
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyBlackLeg")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء إلكترو";
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyElectro")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء كاراتيه رجل السمكة";
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyFishmanKarate")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء مخلب التنين";
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward", "DragonClaw", "2")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء سوبر هيومن";
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuySuperhuman")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء ديث ستيب";
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء كاراتيه رجل القرش";
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء مخلب كهربائي";
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء تالون التنين";
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء إنسان إله",
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء سانغوين آرت",
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuySanguineArt")
	end
})
L_1_[93]["Shop"]:AddSection({
	"Accessory"
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء خاتم تومي",
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Tomoe Ring")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء عباءة سوداء";
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Black Cape")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء قبعة السيف";
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Swordsman Hat")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء ريفل غريب",
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("الإكتوبلازم", "Buy", 1)
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء قناع الغول";
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("الإكتوبلازم", "Buy", 2)
	end
})
L_1_[93]["Shop"]:AddSection({
	"Weapon World1"
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء كتلاس",
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Cutlass")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء كاتانا";
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Katana")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء مقرعة حديدية",
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Iron Mace")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء كاتانا مزدوج",
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Duel Katana")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء ثلاثي الكاتانا";
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Triple Katana")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء عصا",
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Pipe")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = L_1_[2]({
		"Buy Dual-Headed Blad";
		"e"
	});
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Dual-Headed Blade")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء بيسينتو";
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Bisento")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء عصا الروح";
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Soul Cane")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء مقلاع";
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Slingshot")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء بندقية",
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Musket")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء مزدوج فلينتلوك";
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Dual Flintlock")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء فلينتلوك";
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Flintlock")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = L_1_[2]({
		"Buy Refined Flintloc",
		"k"
	});
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Refined Flintlock")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء مدفع";
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Cannon")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء كابوتشا",
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward", "Slingshot", "2")
	end
})
L_1_[93]["Shop"]:AddSection({
	"Fragments shop"
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء استرداد ستاتس",
	["Description"] = "";
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward", "Refund", "2")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء ريرول ريس",
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward", "Reroll", "2")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء ريس الغول";
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("الإكتوبلازم", " Change", 4)
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = L_1_[2]({
		"Buy Cyborg Race (2.5";
		"k)"
	});
	["Description"] = "",
	["Callback"] = function()
		L_1_[55]["Remotes"]["CommF_"]:InvokeServer("CyborgTrainer", " Buy")
	end
})
L_1_[93]["Shop"]:AddButton({
	["Name"] = "شراء ريس دراكو",
	["Callback"] = function()
		local L_1670_ = {}
		_tp(CFrame["new"](5814.4272460938, 1208.3267822266, 884.57855224609))
		L_1670_[2] = Vector3["new"](5814.4272460938, 1208.3267822266, 884.57855224609)
		L_1670_[1] = game["Players"]["LocalPlayer"]
		L_1670_[3] = L_1670_[1]["Character"] or L_1670_[1]["CharacterAdded"]:Wait()
		repeat
			wait()
		until (L_1670_[3]["HumanoidRootPart"]["Position"] - L_1670_[2])["Magnitude"] < 1
		L_1670_[4] = {
			[1] = {
				["NPC"] = "Dragon Wizard";
				["Command"] = "DragonRace"
			}
		};
		((game:GetService("ReplicatedStorage"))["Modules"]["Net"]:FindFirstChild(L_1_[2]({
			"RF/InteractDragonQue";
			"st"
		}))):InvokeServer(unpack(L_1670_[4]))
	end
})
L_1_[93]["Misc"]:AddSection({
	"Server - Function"
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = "استبدال كل الأكواد";
	["Description"] = "",
	["Callback"] = function()
		local L_1671_ = {}
		L_1671_[1] = {
			"LIGHTNINGABUSE",
			"1LOSTADMIN";
			"ADMINFIGHT",
			"GIFTING_HOURS";
			"NOMOREHACK",
			"BANEXPLOIT";
			"WildDares";
			"BossBuild",
			"GetPranked";
			"EARN_FRUITS",
			L_1_[2]({
				"SUB2GAMERROBOT_RESET",
				"1"
			});
			"KITT_RESET",
			"Bignews",
			"CHANDLER";
			"Fudd10",
			"fudd10_v2",
			"Sub2UncleKizaru";
			"FIGHT4FRUIT",
			"kittgaming";
			"TRIPLEABUSE";
			"Sub2CaptainMaui",
			"Sub2Fer999",
			"Enyu_is_Pro",
			"Magicbus";
			"JCWK",
			"Starcodeheo",
			"Bluxxy",
			"SUB2GAMERROBOT_EXP1";
			"Sub2NoobMaster123",
			"Sub2Daigrock",
			"Axiore";
			"TantaiGaming",
			"StrawHatMaine",
			"Sub2OfficialNoobie";
			"TheGreatAce";
			"JULYUPDATE_RESET",
			"ADMINHACKED";
			"SEATROLLING";
			"24NOADMIN",
			"ADMIN_TROLL",
			"NEWTROLL";
			"SECRET_ADMIN";
			"staffbattle";
			"NOEXPLOIT",
			"NOOB2ADMIN",
			"CODESLIDE";
			"fruitconcepts",
			"krazydares"
		}
		L_1671_[4] = game:GetService("ReplicatedStorage")
		L_1671_[3] = L_1671_[4]:WaitForChild("Remotes")
		L_1671_[2] = L_1671_[3]:FindFirstChild("Redeem")
		if not L_1671_[2] then
			return
		end
		for L_1672_forvar0, L_1673_forvar1 in ipairs(L_1671_[1]) do
			local L_1674_ = {}
			L_1674_[1], L_1674_[3] = L_1672_forvar0, L_1673_forvar1
			task["wait"](0)
			pcall(function()
				if L_1671_[2]["InvokeServer"] then
					L_1671_[2]:InvokeServer(L_1674_[3])
				else
					L_1671_[2]:FireServer(L_1674_[3])
				end
			end)
		end
	end
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = "إعادة الانضمام للسيرفر",
	["Description"] = "";
	["Callback"] = function()
		(game:GetService("TeleportService")):Teleport(game["PlaceId"], game["Players"]["LocalPlayer"])
	end
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = "هوب سيرفر";
	["Description"] = "";
	["Callback"] = function()
		task["spawn"](function()
			local L_1675_ = {}
			L_1675_[3] = game:GetService("HttpService")
			L_1675_[5] = game:GetService("TeleportService")
			L_1675_[7] = game["PlaceId"]
			L_1675_[4] = game:GetService("Players")
			L_1675_[1], L_1675_[2] = pcall(function()
				local L_1676_ = {}
				L_1676_[2] = L_1_[2]({
					"https://games.roblox",
					".com/v1/games/"
				}) .. (L_1675_[7] .. L_1_[2]({
					"/servers/Public?sort";
					"Order=Asc&limit=100"
				}))
				L_1676_[3] = game:HttpGet(L_1676_[2])
				return (L_1675_[3]:JSONDecode(L_1676_[3]))["data"]
			end)
			if L_1675_[1] and L_1675_[2] then
				local L_1677_ = {}
				for L_1678_forvar0, L_1679_forvar1 in pairs(L_1675_[2]) do
					local L_1680_ = {}
					L_1680_[3], L_1680_[2] = L_1678_forvar0, L_1679_forvar1
					if L_1680_[2]["playing"] < L_1680_[2]["maxPlayers"] then
						L_1677_[1] = L_1680_[2]["id"]
					end
				end
				if L_1677_[1] then
					pcall(function()
						L_1675_[5]:TeleportToPlaceInstance(L_1675_[7], L_1677_[1], L_1675_[4]["LocalPlayer"])
					end)
				end
			end
		end)
	end
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = L_1_[2]({
		"Hop to Lowest Player",
		"s"
	});
	["Description"] = "",
	["Callback"] = function()
		local L_1681_ = {}
		L_1681_[6] = game:GetService("HttpService")
		L_1681_[7] = game:GetService("TeleportService")
		L_1681_[4] = L_1_[2]({
			"https://games.roblox",
			".com/v1/games/"
		})
		L_1681_[5] = game["PlaceId"]
		L_1681_[2] = L_1681_[4] .. (L_1681_[5] .. L_1_[2]({
			"/servers/Public?sort";
			"Order=Asc&limit=100"
		}))
		function ListServers(L_1682_arg0)
			local L_1683_ = {}
			L_1683_[3] = L_1682_arg0
			L_1683_[1] = game:HttpGet(L_1681_[2] .. (L_1683_[3] and "&cursor=" .. L_1683_[3] or ""))
			return L_1681_[6]:JSONDecode(L_1683_[1])
		end
		repeat
			local L_1684_ = {}
			L_1684_[2] = ListServers(L_1681_[3])
			L_1681_[8] = L_1684_[2]["data"][1]
			L_1681_[3] = L_1684_[2]["nextPageCursor"]
		until L_1681_[8]
		L_1681_[7]:TeleportToPlaceInstance(L_1681_[5], L_1681_[8]["id"], L_1_[42])
	end
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = L_1_[2]({
		"Hop to Lowest Pings ";
		"Server"
	}),
	["Description"] = "";
	["Callback"] = function()
		local L_1685_ = {}
		L_1685_[13] = game:GetService("HttpService")
		L_1685_[12] = game:GetService("TeleportService")
		L_1685_[1] = game:GetService("Stats")
		L_1685_[5] = function(L_1686_arg0, L_1687_arg1)
			local L_1688_ = {}
			L_1688_[1], L_1688_[2] = L_1686_arg0, L_1687_arg1
			L_1688_[6] = string["format"](L_1_[2]({
				"https://games.roblox";
				".com/v1/games/%d/ser";
				"vers/Public?limit=%d"
			}), L_1688_[1], L_1688_[2])
			L_1688_[5], L_1688_[3] = pcall(function()
				return L_1685_[13]:JSONDecode(game:HttpGet(L_1688_[6]))
			end)
			if L_1688_[5] and (L_1688_[3] and L_1688_[3]["data"]) then
				return L_1688_[3]["data"]
			end
			return nil
		end
		L_1685_[10] = game["PlaceId"]
		L_1685_[9] = 100
		L_1685_[14] = L_1685_[5](L_1685_[10], L_1685_[9])
		if not L_1685_[14] then
			return
		end
		L_1685_[3] = L_1685_[14][1]
		for L_1689_forvar0, L_1690_forvar1 in pairs(L_1685_[14]) do
			local L_1691_ = {}
			L_1691_[1], L_1691_[3] = L_1689_forvar0, L_1690_forvar1
			if L_1691_[3]["ping"] < L_1685_[3]["ping"] and L_1691_[3]["maxPlayers"] > L_1691_[3]["playing"] then
				L_1685_[3] = L_1691_[3]
			end
		end
		L_1685_[6] = .5
		task["wait"](L_1685_[6])
		L_1685_[8] = 100
		L_1685_[7] = L_1685_[1]["Network"]["ServerStatsItem"]
		L_1685_[2] = L_1685_[7]["Data Ping"]:GetValueString()
		L_1685_[4] = tonumber(L_1685_[2]:match("(%d+)"))
		if L_1685_[4] >= L_1685_[8] then
			L_1685_[12]:TeleportToPlaceInstance(L_1685_[10], L_1685_[3]["id"])
		else
		end
	end
})
L_1_[103] = game:GetService("ReplicatedStorage")
L_1_[93]["Misc"]:AddTextBox({
	["Name"] = "أدخل الـ Job ID",
	["Placeholder"] = "Job ID",
	["ClearOnFocus"] = true;
	["Callback"] = function(L_1692_arg0)
		local L_1693_ = {}
		L_1693_[1] = L_1692_arg0;
		(getgenv())["Job"] = L_1693_[1]
	end
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = "تلبورت [Job ID]";
	["Callback"] = function()
		if (getgenv())["Job"] and (getgenv())["Job"] ~= "" then
			(game:GetService("TeleportService")):TeleportToPlaceInstance(game["PlaceId"], (getgenv())["Job"], game["Players"]["LocalPlayer"])
		end
	end
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = "نسخ Job ID";
	["Description"] = "";
	["Callback"] = function()
		setclipboard(tostring(game["JobId"]))
	end
})
L_1_[93]["Misc"]:AddSection({
	"Player Gui / Others"
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = L_1_[2]({
		"Open Awakenings Expe",
		"rt"
	}),
	["Description"] = "",
	["Callback"] = function()
		L_1_[42]["PlayerGui"]["Main"]["AwakeningToggler"]["Visible"] = true
	end
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = "فتح اختيار اللقب";
	["Description"] = "",
	["Callback"] = function()
		L_1_[103]["Remotes"]["CommF_"]:InvokeServer("getTitles", true)
		L_1_[42]["PlayerGui"]["Main"]["Titles"]["Visible"] = true
	end
})
DisbleChat = L_1_[93]["Misc"]:AddToggle({
	["Name"] = "إخفاء الشات",
	["Description"] = "";
	["Default"] = false;
	["Callback"] = function(L_1694_arg0)
		local L_1695_ = {}
		L_1695_[1] = L_1694_arg0
		_G["Rechat"] = L_1695_[1]
		if _G["Rechat"] == true then
			local L_1696_ = {}
			L_1696_[1] = game:GetService("StarterGui")
			L_1696_[1]:SetCoreGuiEnabled(Enum["CoreGuiType"]["Chat"], false)
		elseif _G["chat"] == false then
			local L_1697_ = {}
			L_1697_[2] = game:GetService("StarterGui")
			L_1697_[2]:SetCoreGuiEnabled(Enum["CoreGuiType"]["Chat"], true)
		end
	end
})
DisbleLeaderB = L_1_[93]["Misc"]:AddToggle({
	["Name"] = L_1_[2]({
		"Disable Leader Board",
		" GUI"
	}),
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1698_arg0)
		local L_1699_ = {}
		L_1699_[1] = L_1698_arg0
		ReLeader = L_1699_[1]
		if ReLeader == true then
			local L_1700_ = {}
			L_1700_[1] = game:GetService("StarterGui")
			L_1700_[1]:SetCoreGuiEnabled(Enum["CoreGuiType"]["PlayerList"], false)
		elseif ReLeader == false then
			local L_1701_ = {}
			L_1701_[1] = game:GetService("StarterGui")
			L_1701_[1]:SetCoreGuiEnabled(Enum["CoreGuiType"]["PlayerList"], true)
		end
	end
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = "تعيين فريق القراصنة";
	["Description"] = "";
	["Callback"] = function()
		Pirates()
	end
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = "تعيين فريق البحرية",
	["Description"] = "",
	["Callback"] = function()
		Marines()
	end
})
UnPortal = L_1_[93]["Misc"]:AddToggle({
	["Name"] = "فتح كل البوابات";
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1702_arg0)
		local L_1703_ = {}
		L_1703_[2] = L_1702_arg0
		_G["PortalUnLock"] = L_1703_[2]
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G["PortalUnLock"] then
				if L_1_[4]["Pos"](CstlePos_Miti, 8) then
					L_1_[103]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-12471.169921875, 374.94024658203, -7551.677734375))
				elseif L_1_[4]["Pos"](Man3Pos_Miti, 8) then
					L_1_[103]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-5072.08984375, 314.5412902832, -3151.1098632812))
				elseif L_1_[4]["Pos"](HydraPos_Miti, 8) then
					L_1_[103]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](5748.7587890625, 610.44982910156, -267.81704711914))
				elseif L_1_[4]["Pos"](HydratoCastle, 8) then
					L_1_[103]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-5072.08984375, 314.5412902832, -3151.1098632812))
				end
			end
		end)
	end
end)
L_1_[93]["Misc"]:AddSection({
	L_1_[2]({
		"Graphics / Haki Stat",
		"s"
	})
})
HakiSt = {
	"State 0",
	"State 1",
	"State 2";
	"State 3";
	"State 4",
	"State 5"
}
HakiStat = L_1_[93]["Misc"]:AddDropdown({
	["Name"] = "اختر حالة الهاكي",
	["Options"] = HakiSt;
	["Default"] = false,
	["Callback"] = function(L_1704_arg0)
		local L_1705_ = {}
		L_1705_[1] = L_1704_arg0
		_G["SelectStateHaki"] = L_1705_[1]
	end
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = "تغيير مرحلة البوسو";
	["Description"] = "",
	["Callback"] = function()
		if _G["SelectStateHaki"] == "State 0" then
			L_1_[103]["Remotes"]["CommF_"]:InvokeServer("تغيير مرحلة البوسو", 0)
		elseif _G["SelectStateHaki"] == "State 1" then
			L_1_[103]["Remotes"]["CommF_"]:InvokeServer("تغيير مرحلة البوسو", 1)
		elseif _G["SelectStateHaki"] == "State 2" then
			L_1_[103]["Remotes"]["CommF_"]:InvokeServer("تغيير مرحلة البوسو", 2)
		elseif _G["SelectStateHaki"] == "State 3" then
			L_1_[103]["Remotes"]["CommF_"]:InvokeServer("تغيير مرحلة البوسو", 3)
		elseif _G["SelectStateHaki"] == "State 4" then
			L_1_[103]["Remotes"]["CommF_"]:InvokeServer("تغيير مرحلة البوسو", 4)
		elseif _G["SelectStateHaki"] == "State 5" then
			L_1_[103]["Remotes"]["CommF_"]:InvokeServer("تغيير مرحلة البوسو", 5)
		end
	end
})
rtxM = L_1_[93]["Misc"]:AddToggle({
	["Name"] = "تشغيل نمط RTX",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1706_arg0)
		local L_1707_ = {}
		L_1707_[5] = L_1706_arg0
		_G["RTXMode"] = L_1707_[5]
		L_1707_[1] = game["Lighting"]
		L_1707_[2] = Instance["new"](L_1_[2]({
			"ColorCorrectionEffec",
			"t"
		}), L_1707_[1])
		L_1707_[3] = Instance["new"](L_1_[2]({
			"ColorCorrectionEffec";
			"t"
		}), L_1707_[1])
		OldAmbient = L_1707_[1]["Ambient"]
		OldBrightness = L_1707_[1]["Brightness"]
		OldColorShift_Top = L_1707_[1]["ColorShift_Top"]
		OldBrightnessc = L_1707_[2]["Brightness"]
		OldContrastc = L_1707_[2]["Contrast"]
		OldTintColorc = L_1707_[2]["TintColor"]
		OldTintColore = L_1707_[3]["TintColor"]
		if not _G["RTXMode"] then
			return
		end
		while _G["RTXMode"] do
			wait()
			L_1707_[1]["Ambient"] = Color3["fromRGB"](33, 33, 33)
			L_1707_[1]["Brightness"] = .3
			L_1707_[2]["Brightness"] = .176
			L_1707_[2]["Contrast"] = .39
			L_1707_[2]["TintColor"] = Color3["fromRGB"](217, 145, 57)
			game["Lighting"]["FogEnd"] = 999
			if not L_1_[42]["Character"]["HumanoidRootPart"]:FindFirstChild("PointLight") then
				local L_1708_ = {}
				L_1708_[2] = Instance["new"]("PointLight")
				L_1708_[2]["Parent"] = L_1_[42]["Character"]["HumanoidRootPart"]
				L_1708_[2]["Range"] = 15
				L_1708_[2]["Color"] = Color3["fromRGB"](217, 145, 57)
			end
			if not _G["RTXMode"] then
				L_1707_[1]["Ambient"] = OldAmbient
				L_1707_[1]["Brightness"] = OldBrightness
				L_1707_[1]["ColorShift_Top"] = OldColorShift_Top
				L_1707_[2]["Contrast"] = OldContrastc
				L_1707_[2]["Brightness"] = OldBrightnessc
				L_1707_[2]["TintColor"] = OldTintColorc
				L_1707_[3]["TintColor"] = OldTintColore
				game["Lighting"]["FogEnd"] = 2500;
				(L_1_[42]["Character"]["HumanoidRootPart"]:FindFirstChild("PointLight")):Destroy()
			end
		end
	end
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = "تشغيل الوضع السريع";
	["Description"] = "",
	["Callback"] = function()
		for L_1709_forvar0, L_1710_forvar1 in next, workspace:GetDescendants() do
			local L_1711_ = {}
			L_1711_[3], L_1711_[2] = L_1709_forvar0, L_1710_forvar1
			if table["find"](L_1_[26], L_1711_[2]["ClassName"]) then
				L_1711_[2]["Material"] = "Plastic"
			end
		end
	end
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = "تشغيل CPU منخفض";
	["Description"] = "";
	["Callback"] = function()
		LowCpu()
	end
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = L_1_[2]({
		"Turn on increase Boa",
		"ts"
	});
	["Description"] = "",
	["Callback"] = function()
		for L_1712_forvar0, L_1713_forvar1 in pairs(workspace["Boats"]:GetDescendants()) do
			local L_1714_ = {}
			L_1714_[3], L_1714_[2] = L_1712_forvar0, L_1713_forvar1
			if table["find"](L_1_[130], L_1714_[2]["Name"]) and tostring(L_1714_[2]["Owner"]["Value"]) == tostring(L_1_[42]["Name"]) then
				L_1714_[2]["VehicleSeat"]["MaxSpeed"] = 350
				L_1714_[2]["VehicleSeat"]["Torque"] = .2
				L_1714_[2]["VehicleSeat"]["TurnSpeed"] = 5
				L_1714_[2]["VehicleSeat"]["HeadsUpDisplay"] = true
			end
		end
	end
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = "إزالة ضباب السماء";
	["Description"] = "",
	["Callback"] = function()
		if Lighting:FindFirstChild("LightingLayers") then
			Lighting["LightingLayers"]:Destroy()
		end
		if Lighting:FindFirstChild("SeaTerrorCC") then
			Lighting["SeaTerrorCC"]:Destroy()
		end
		if Lighting:FindFirstChild("FantasySky") then
			Lighting["FantasySky"]:Destroy()
		end
	end
})
L_1_[93]["Misc"]:AddSection({
	"Configure - God"
})
L_1_[93]["Misc"]:AddButton({
	["Name"] = "مطر فواكه (كلاينت)",
	["Description"] = "",
	["Callback"] = function()
		for L_1715_forvar0, L_1716_forvar1 in pairs((game:GetObjects(L_1_[2]({
			"rbxassetid://1475936",
			"8201"
		})))[1]:GetChildren()) do
			local L_1717_ = {}
			L_1717_[2], L_1717_[3] = L_1715_forvar0, L_1716_forvar1
			L_1717_[3]["Parent"] = game["Workspace"]["Map"]
			L_1717_[3]:MoveTo(L_1_[42]["Character"]["PrimaryPart"]["Position"] + Vector3["new"](math["random"](-50, 50), 100, math["random"](-50, 50)))
			if L_1717_[3]["Fruit"]:FindFirstChild("AnimationController") then
				((L_1717_[3]["Fruit"]:FindFirstChild("AnimationController")):LoadAnimation(L_1717_[3]["Fruit"]:FindFirstChild("Idle"))):Play()
			end
			L_1717_[3]["Handle"]["Touched"]:Connect(function(L_1718_arg0)
				local L_1719_ = {}
				L_1719_[1] = L_1718_arg0
				if L_1719_[1]["Parent"] == L_1_[42]["Character"] then
					L_1717_[3]["Parent"] = L_1_[42]["Backpack"]
					L_1_[42]["Character"]["Humanoid"]:EquipTool(L_1717_[3])
				end
			end)
		end
	end
})
briggt1 = L_1_[93]["Misc"]:AddToggle({
	["Name"] = "تشغيل إضاءة كاملة";
	["Description"] = "",
	["Default"] = false;
	["Callback"] = function(L_1720_arg0)
		local L_1721_ = {}
		L_1721_[1] = L_1720_arg0
		bright = L_1721_[1]
		if L_1721_[1] == true then
			Lighting["Ambient"] = Color3["new"](1, 1, 1)
			Lighting["ColorShift_Bottom"] = Color3["new"](1, 1, 1)
			Lighting["ColorShift_Top"] = Color3["new"](1, 1, 1)
		else
			Lighting["Ambient"] = Color3["new"](0, 0, 0)
			Lighting["ColorShift_Bottom"] = Color3["new"](0, 0, 0)
			Lighting["ColorShift_Top"] = Color3["new"](0, 0, 0)
		end
	end
})
DayN = L_1_[93]["Misc"]:AddDropdown({
	["Name"] = "اختر الوقت";
	["Description"] = "";
	["Options"] = {
		"Day",
		"Night"
	};
	["Default"] = false,
	["Callback"] = function(L_1722_arg0)
		local L_1723_ = {}
		L_1723_[2] = L_1722_arg0
		_G["SelectDN"] = L_1723_[2]
	end
})
dayornight = L_1_[93]["Misc"]:AddToggle({
	["Name"] = "تشغيل الوقت";
	["Description"] = "";
	["Default"] = false,
	["Callback"] = function(L_1724_arg0)
		local L_1725_ = {}
		L_1725_[2] = L_1724_arg0
		_G["daylightN"] = L_1725_[2]
	end
})
task["spawn"](function()
	while task["wait"]() do
		if _G["daylightN"] then
			if _G["SelectDN"] == "Day" then
				Lighting["ClockTime"] = 12
			elseif _G["SelectDN"] == "Night" then
				Lighting["ClockTime"] = 0
			end
		end
	end
end)
walkWater = L_1_[93]["Misc"]:AddToggle({
	["Name"] = L_1_[2]({
		"Turn on Walk on Wate";
		"r"
	});
	["Description"] = "",
	["Default"] = true,
	["Callback"] = function(L_1726_arg0)
		local L_1727_ = {}
		L_1727_[1] = L_1726_arg0
		_G["WalkWater_Part"] = L_1727_[1]
		if _G["WalkWater_Part"] then
			(game:GetService("Workspace"))["Map"]["WaterBase-Plane"]["Size"] = Vector3["new"](1000, 112, 1000)
		else
			(game:GetService("Workspace"))["Map"]["WaterBase-Plane"]["Size"] = Vector3["new"](1000, 80, 1000)
		end
	end
})
iceWalk = L_1_[93]["Misc"]:AddToggle({
	["Name"] = "تشغيل المشي على الجليد",
	["Description"] = "",
	["Default"] = false,
	["Callback"] = function(L_1728_arg0)
		local L_1729_ = {}
		L_1729_[1] = L_1728_arg0
		_G["WalkWater"] = L_1729_[1]
	end
})
spawn(function()
	while task["wait"]() do
		if _G["WalkWater"] then
			pcall(function()
				if L_1_[42]["Character"] and L_1_[42]["Character"]:FindFirstChild("LeftFoot") then
					local L_1730_ = {}
					L_1730_[3] = L_1_[103]["Assets"]["Models"]["IceSpikes4"]:Clone()
					L_1730_[3]["Parent"] = workspace
					L_1730_[3]["Size"] = Vector3["new"](3 + math["random"](10, 12), 1.7, 3 + math["random"](10, 12))
					L_1730_[3]["Color"] = Color3["fromRGB"](128, 187, 219)
					L_1730_[3]["CFrame"] = CFrame["new"](L_1_[42]["Character"]["Head"]["Position"]["X"], -3.8, L_1_[42]["Character"]["Head"]["Position"]["Z"]) * CFrame["Angles"]((math["random"]() - .5) * .06, math["random"]() * 7, (math["random"]() - .5) * .07)
					L_1730_[1] = {}
					L_1730_[1]["Size"] = Vector3["new"](0, .3, 0)
					L_1730_[2] = TW:Create(L_1730_[3], TweenInfo["new"](2, Enum["EasingStyle"]["Quad"], Enum["EasingDirection"]["In"]), L_1730_[1])
					L_1730_[2]["Completed"]:Connect(function()
						L_1730_[3]:Destroy()
					end)
					L_1730_[2]:Play()
				end
			end)
		end
	end
end)
L_1_[43] = game["Players"]["LocalPlayer"]
L_1_[20] = function(L_1731_arg0)
	local L_1732_ = {}
	L_1732_[3] = L_1731_arg0
	if not L_1732_[3] then
		return false
	end
	L_1732_[1] = L_1732_[3]:FindFirstChild("Humanoid")
	return L_1732_[1] and L_1732_[1]["Health"] > 0
end
L_1_[134] = function(L_1733_arg0, L_1734_arg1)
	local L_1735_ = {}
	L_1735_[5], L_1735_[3] = L_1733_arg0, L_1734_arg1
	L_1735_[2] = (game:GetService("Workspace"))["Enemies"]:GetChildren()
	L_1735_[7] = (game:GetService("Players")):GetPlayers()
	L_1735_[4] = {}
	L_1735_[1] = (L_1735_[5]:GetPivot())["Position"]
	for L_1736_forvar0, L_1737_forvar1 in ipairs(L_1735_[2]) do
		local L_1738_ = {}
		L_1738_[4], L_1738_[1] = L_1736_forvar0, L_1737_forvar1
		L_1738_[3] = L_1738_[1]:FindFirstChild("HumanoidRootPart")
		if L_1738_[3] and L_1_[20](L_1738_[1]) then
			local L_1739_ = {}
			L_1739_[2] = (L_1738_[3]["Position"] - L_1735_[1])["Magnitude"]
			if L_1739_[2] <= L_1735_[3] then
				table["insert"](L_1735_[4], L_1738_[1])
			end
		end
	end
	for L_1740_forvar0, L_1741_forvar1 in ipairs(L_1735_[7]) do
		local L_1742_ = {}
		L_1742_[2], L_1742_[1] = L_1740_forvar0, L_1741_forvar1
		if L_1742_[1] ~= L_1_[43] and L_1742_[1]["Character"] then
			local L_1743_ = {}
			L_1743_[2] = L_1742_[1]["Character"]:FindFirstChild("HumanoidRootPart")
			if L_1743_[2] and L_1_[20](L_1742_[1]["Character"]) then
				local L_1744_ = {}
				L_1744_[2] = (L_1743_[2]["Position"] - L_1735_[1])["Magnitude"]
				if L_1744_[2] <= L_1735_[3] then
					table["insert"](L_1735_[4], L_1742_[1]["Character"])
				end
			end
		end
	end
	return L_1735_[4]
end
function AttackNoCoolDown()
	local L_1745_ = {}
	L_1745_[7] = (game:GetService("Players"))["LocalPlayer"]
	L_1745_[10] = L_1745_[7]["Character"]
	if not L_1745_[10] then
		return
	end
	L_1745_[1] = nil
	for L_1746_forvar0, L_1747_forvar1 in ipairs(L_1745_[10]:GetChildren()) do
		local L_1748_ = {}
		L_1748_[3], L_1748_[1] = L_1746_forvar0, L_1747_forvar1
		if L_1748_[1]:IsA("Tool") then
			L_1745_[1] = L_1748_[1]
			break
		end
	end
	if not L_1745_[1] then
		return
	end
	L_1745_[14] = L_1_[134](L_1745_[10], 60)
	if #L_1745_[14] == 0 then
		return
	end
	L_1745_[11] = game:GetService("ReplicatedStorage")
	L_1745_[5] = L_1745_[11]:FindFirstChild("Modules")
	if not L_1745_[5] then
		return
	end
	L_1745_[4] = ((L_1745_[11]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RE/RegisterAttack")
	L_1745_[2] = ((L_1745_[11]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RE/RegisterHit")
	if not L_1745_[4] or not L_1745_[2] then
		return
	end
	L_1745_[6], L_1745_[12] = {}, nil
	for L_1749_forvar0, L_1750_forvar1 in ipairs(L_1745_[14]) do
		local L_1751_ = {}
		L_1751_[1], L_1751_[3] = L_1749_forvar0, L_1750_forvar1
		if not L_1751_[3]:GetAttribute("IsBoat") then
			local L_1752_ = {}
			L_1752_[1] = {
				"RightLowerArm";
				"RightUpperArm",
				"LeftLowerArm";
				"LeftUpperArm";
				"RightHand",
				"LeftHand"
			}
			L_1752_[2] = L_1751_[3]:FindFirstChild(L_1752_[1][math["random"](#L_1752_[1])]) or L_1751_[3]["PrimaryPart"]
			if L_1752_[2] then
				table["insert"](L_1745_[6], {
					L_1751_[3],
					L_1752_[2]
				})
				L_1745_[12] = L_1752_[2]
			end
		end
	end
	if not L_1745_[12] then
		return
	end
	L_1745_[4]:FireServer(0)
	L_1745_[13] = L_1745_[7]:FindFirstChild("PlayerScripts")
	if not L_1745_[13] then
		return
	end
	L_1745_[8] = L_1745_[13]:FindFirstChildOfClass("LocalScript")
	while not L_1745_[8] do
		L_1745_[13]["ChildAdded"]:Wait()
		L_1745_[8] = L_1745_[13]:FindFirstChildOfClass("LocalScript")
	end
	if getsenv then
		local L_1753_ = {}
		L_1753_[1], L_1753_[3] = pcall(getsenv, L_1745_[8])
		if L_1753_[1] and L_1753_[3] then
			L_1745_[9] = L_1753_[3]["_G"]["SendHitsToServer"]
		end
	end
	L_1745_[15], L_1745_[16] = pcall(function()
		return (require(L_1745_[5]["Flags"]))["COMBAT_REMOTE_THREAD"] or false
	end)
	if L_1745_[15] and (L_1745_[16] and L_1745_[9]) then
		L_1745_[9](L_1745_[12], L_1745_[6])
	elseif L_1745_[15] and not L_1745_[16] then
		L_1745_[2]:FireServer(L_1745_[12], L_1745_[6])
	end
end
CameraShakerR = require(game["ReplicatedStorage"]["Util"]["CameraShaker"])
CameraShakerR:Stop()
get_Monster = function()
	for L_1754_forvar0, L_1755_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
		local L_1756_ = {}
		L_1756_[1], L_1756_[4] = L_1754_forvar0, L_1755_forvar1
		L_1756_[3] = L_1756_[4]:FindFirstChild("UpperTorso") or L_1756_[4]:FindFirstChild("Head")
		if L_1756_[4]:FindFirstChild("HumanoidRootPart", true) and L_1756_[3] then
			if (L_1756_[4]["Head"]["Position"] - L_1_[42]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 50 then
				return true, L_1756_[3]["Position"]
			end
		end
	end
	for L_1757_forvar0, L_1758_forvar1 in pairs(workspace["SeaBeasts"]:GetChildren()) do
		local L_1759_ = {}
		L_1759_[2], L_1759_[3] = L_1757_forvar0, L_1758_forvar1
		if L_1759_[3]:FindFirstChild("HumanoidRootPart") and (L_1759_[3]:FindFirstChild("Health") and L_1759_[3]["Health"]["Value"] > 0) then
			return true, L_1759_[3]["HumanoidRootPart"]["Position"]
		end
	end
	for L_1760_forvar0, L_1761_forvar1 in pairs(workspace["Enemies"]:GetChildren()) do
		local L_1762_ = {}
		L_1762_[1], L_1762_[2] = L_1760_forvar0, L_1761_forvar1
		if L_1762_[2]:FindFirstChild("Health") and (L_1762_[2]["Health"]["Value"] > 0 and L_1762_[2]:FindFirstChild("VehicleSeat")) then
			return true, L_1762_[2]["Engine"]["Position"]
		end
	end
end
Actived = function()
	local L_1763_ = {}
	L_1763_[1] = game["Players"]["LocalPlayer"]["Character"]:FindFirstChildOfClass("Tool")
	for L_1764_forvar0, L_1765_forvar1 in next, getconnections(L_1763_[1]["Activated"]) do
		local L_1766_ = {}
		L_1766_[2], L_1766_[3] = L_1764_forvar0, L_1765_forvar1
		if typeof(L_1766_[3]["Function"]) == "function" then
			getupvalues(L_1766_[3]["Function"])
		end
	end
end
task["spawn"](function()
	RunSer["Heartbeat"]:Connect(function()
		pcall(function()
			local L_1767_ = {}
			if not _G["الضرب المتواصل"] then
				return
			end
			AttackNoCoolDown()
			L_1767_[2] = game["Players"]["LocalPlayer"]["Character"]:FindFirstChildOfClass("Tool")
			L_1767_[5] = L_1767_[2]["ToolTip"]
			L_1767_[1], L_1767_[3] = get_Monster()
			if L_1767_[5] == "ثمرة بلوكس" then
				if L_1767_[1] then
					local L_1768_ = {}
					L_1768_[2] = L_1767_[2]:FindFirstChild("LeftClickRemote")
					if L_1768_[2] then
						Actived()
						L_1768_[2]:FireServer(Vector3["new"](.01, -500, .01), 1, true)
						L_1768_[2]:FireServer(false)
					end
				end
			end
		end)
	end)
end)
