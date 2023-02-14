-- Table of all hashed config and their defaults.  Accessibility and Personalization config is not hashed.
-- TODO: Maybe populate some of this from the other mods themselves? To have a central menu, we already need to break modularity, so :shrug:
-- Minimize these configs somehow
HSMConfigMenu.RulesetSettings = {
    {Key = "DontGetVorimed.config.Enabled", Values = {false, true}, Default = true},

    {Key = "DoorVisualIndicators.config.ShowMinibossDoorIndicator", Values = {false, true}, Default = false},
    {Key = "DoorVisualIndicators.config.ShowFountainDoorIndictor", Values = {false, true}, Default = true},

    {Key = "EllosBoonSelectorMod.config.ShowPreview", Values = {false, true}, Default = false},

    {Key = "RunStartControl.config.Enabled", Values = {false, true}, Default = true},

    {Key = "InteractableChaos.config.Enabled", Values = {false, true}, Default = false},

    {Key = "RemoveCutscenes.config.RemoveIntro", Values = {false, true}, Default = true},
    {Key = "RemoveCutscenes.config.RemoveOutro", Values = {false, true}, Default = true},

    {Key = "RoomDeterminism.config.Enabled", Values = {false, true}, Default = false},
    {Key = "RoomDeterminism.config.RoomGenerationAlgorithm", Values = {"Vanilla"}, Default = "Vanilla"},

    {Key = "SatyrSackControl.config.Enabled", Values = {false, true}, Default = true},
    {Key = "SatyrSackControl.config.MinSack", Values = {1, 2, 3, 4, 5}, Default = 2},
    {Key = "SatyrSackControl.config.MaxSack", Values = {1, 2, 3, 4, 5}, Default = 2},

    {Key = "ShowChamberNumber.config.ShowDepth", Values = {false, true}, Default = true},

    -- BoonControl
    {Key = "BoonControl.config.Enabled", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.AllowOlympianControl", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.AllowHermesControl", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.AllowedHammerControl", Values = {0, 1, 2}, Default = 1},
    {Key = "BoonControl.config.AllowRarityForce", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.AllowOverrides", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.FirstBoonAlwaysEpic", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.FirstBoonEpicOnPride", Values = {false, true}, Default = false},
    -- Chaos Control
    {Key = "ChaosControl.config.ChaosSetting", Values = {"Vanilla", "Hypermodded"}, Default = "Vanilla"},
    -- DarknessDenied
    {Key = "DarknessDenied.config.RemoveDarkness", Values = {false, true}, Default = false},
    {Key = "DarknessDenied.config.RemoveInstadarkness", Values = {false, true}, Default = true},
    -- EnemyControl
    {Key = "EnemyControl.config.EnemySetting", Values = {"Vanilla", "Hypermodded1", "Hypermodded2"}, Default = "Vanilla"},
    -- ForceSecondGod
    {Key = "ForceSecondGod.config.Enabled", Values = {false, true}, Default = false},
    -- FreeRoomControl
    {Key = "FreeRoomControl.config.Enabled", Values = {false, true}, Default = false},
    -- Miniboss Control
    {Key = "MinibossControl.config.MinibossSetting", Values = {"Vanilla", "HyperDelivery1", "HyperDelivery", "Leaderboard", "Hypermodded"}, Default = "Leaderboard"},
    -- SatyrSackControl
    {Key = "SatyrSackControl.config.ForceShortTunnels", Values = {false, true}, Default = false},
    -- WellControl
    {Key = "WellControl.config.WellSetting", Values = {"Vanilla", "Hypermodded"}, Default = "Vanilla"},
    {Key = "ThanatosControl.config.ThanatosSetting", Values = {"Vanilla", "Removed"}, Default = "Removed"},
}

HSMConfigMenu.MultiRunSettings = {
    {Key = "DontGetVorimed.config.Enabled", Values = {false, true}, Default = true},
    
    {Key = "DoorVisualIndicators.config.ShowMinibossDoorIndicator", Values = {false, true}, Default = false},
    {Key = "DoorVisualIndicators.config.ShowFountainDoorIndictor", Values = {false, true}, Default = true},

    {Key = "EllosBoonSelectorMod.config.ShowPreview", Values = {false, true}, Default = false},

    {Key = "RunStartControl.config.Enabled", Values = {false, true}, Default = true},

    {Key = "InteractableChaos.config.Enabled", Values = {false, true}, Default = false},

    {Key = "RemoveCutscenes.config.RemoveIntro", Values = {false, true}, Default = true},
    {Key = "RemoveCutscenes.config.RemoveOutro", Values = {false, true}, Default = true},

    {Key = "RoomDeterminism.config.Enabled", Values = {false, true}, Default = false},
    {Key = "RoomDeterminism.config.RoomGenerationAlgorithm", Values = {"Vanilla"}, Default = "Vanilla"},

    {Key = "SatyrSackControl.config.Enabled", Values = {false, true}, Default = true},
    {Key = "SatyrSackControl.config.MinSack", Values = {1, 2, 3, 4, 5}, Default = 2},
    {Key = "SatyrSackControl.config.MaxSack", Values = {1, 2, 3, 4, 5}, Default = 2},

    {Key = "ShowChamberNumber.config.ShowDepth", Values = {false, true}, Default = true},

    -- BoonControl
    {Key = "BoonControl.config.Enabled", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.AllowOlympianControl", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.AllowHermesControl", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.AllowedHammerControl", Values = {0, 1, 2}, Default = 1},
    {Key = "BoonControl.config.AllowRarityForce", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.AllowOverrides", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.FirstBoonAlwaysEpic", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.FirstBoonEpicOnPride", Values = {false, true}, Default = false},
    -- Chaos Control
    {Key = "ChaosControl.config.ChaosSetting", Values = {"Vanilla", "Hypermodded"}, Default = "Vanilla"},
    -- DarknessDenied
    {Key = "DarknessDenied.config.RemoveDarkness", Values = {false, true}, Default = false},
    {Key = "DarknessDenied.config.RemoveInstadarkness", Values = {false, true}, Default = true},
    -- EnemyControl
    {Key = "EnemyControl.config.EnemySetting", Values = {"Vanilla", "Hypermodded1", "Hypermodded2"}, Default = "Vanilla"},
    -- ForceSecondGod
    {Key = "ForceSecondGod.config.Enabled", Values = {false, true}, Default = false},
    -- FreeRoomControl
    {Key = "FreeRoomControl.config.Enabled", Values = {false, true}, Default = false},
    -- Miniboss Control
    {Key = "MinibossControl.config.MinibossSetting", Values = {"Vanilla", "HyperDelivery1", "HyperDelivery", "Leaderboard", "Hypermodded"}, Default = "Leaderboard"},
    -- SatyrSackControl
    {Key = "SatyrSackControl.config.ForceShortTunnels", Values = {false, true}, Default = false},
    -- WellControl
    {Key = "WellControl.config.WellSetting", Values = {"Vanilla", "Hypermodded"}, Default = "Vanilla"},
    {Key = "ThanatosControl.config.ThanatosSetting", Values = {"Vanilla", "Removed"}, Default = "Removed"},
}

HSMConfigMenu.SingleRunSettings = {
    {Key = "DontGetVorimed.config.Enabled", Values = {false, true}, Default = true},
    
    {Key = "DoorVisualIndicators.config.ShowMinibossDoorIndicator", Values = {false, true}, Default = false},
    {Key = "DoorVisualIndicators.config.ShowFountainDoorIndictor", Values = {false, true}, Default = true},

    {Key = "EllosBoonSelectorMod.config.ShowPreview", Values = {false, true}, Default = false},

    {Key = "RunStartControl.config.Enabled", Values = {false, true}, Default = true},

    {Key = "InteractableChaos.config.Enabled", Values = {false, true}, Default = false},

    {Key = "RemoveCutscenes.config.RemoveIntro", Values = {false, true}, Default = true},
    {Key = "RemoveCutscenes.config.RemoveOutro", Values = {false, true}, Default = true},

    {Key = "RoomDeterminism.config.Enabled", Values = {false, true}, Default = false},
    {Key = "RoomDeterminism.config.RoomGenerationAlgorithm", Values = {"Vanilla"}, Default = "Vanilla"},

    {Key = "SatyrSackControl.config.Enabled", Values = {false, true}, Default = true},
    {Key = "SatyrSackControl.config.MinSack", Values = {1, 2, 3, 4, 5}, Default = 2},
    {Key = "SatyrSackControl.config.MaxSack", Values = {1, 2, 3, 4, 5}, Default = 2},

    {Key = "ShowChamberNumber.config.ShowDepth", Values = {false, true}, Default = true},

    -- BoonControl
    {Key = "BoonControl.config.Enabled", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.AllowOlympianControl", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.AllowHermesControl", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.AllowedHammerControl", Values = {0, 1, 2}, Default = 1},
    {Key = "BoonControl.config.AllowRarityForce", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.AllowOverrides", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.FirstBoonAlwaysEpic", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.FirstBoonEpicOnPride", Values = {false, true}, Default = false},
    -- Chaos Control
    {Key = "ChaosControl.config.ChaosSetting", Values = {"Vanilla", "Hypermodded"}, Default = "Vanilla"},
    -- DarknessDenied
    {Key = "DarknessDenied.config.RemoveDarkness", Values = {false, true}, Default = false},
    {Key = "DarknessDenied.config.RemoveInstadarkness", Values = {false, true}, Default = true},
    -- EnemyControl
    {Key = "EnemyControl.config.EnemySetting", Values = {"Vanilla", "Hypermodded1", "Hypermodded2"}, Default = "Vanilla"},
    -- ForceSecondGod
    {Key = "ForceSecondGod.config.Enabled", Values = {false, true}, Default = false},
    -- FreeRoomControl
    {Key = "FreeRoomControl.config.Enabled", Values = {false, true}, Default = false},
    -- Miniboss Control
    {Key = "MinibossControl.config.MinibossSetting", Values = {"Vanilla", "HyperDelivery1", "HyperDelivery", "Leaderboard", "Hypermodded"}, Default = "Leaderboard"},
    -- SatyrSackControl
    {Key = "SatyrSackControl.config.ForceShortTunnels", Values = {false, true}, Default = false},
    -- WellControl
    {Key = "WellControl.config.WellSetting", Values = {"Vanilla", "Hypermodded"}, Default = "Vanilla"},
    {Key = "ThanatosControl.config.ThanatosSetting", Values = {"Vanilla", "Removed"}, Default = "Vanilla"},
}

HSMConfigMenu.HypermoddedRTASettings = {
    {Key = "DontGetVorimed.config.Enabled", Values = {false, true}, Default = true},
    
    {Key = "DoorVisualIndicators.config.ShowMinibossDoorIndicator", Values = {false, true}, Default = false},
    {Key = "DoorVisualIndicators.config.ShowFountainDoorIndictor", Values = {false, true}, Default = true},
    
    {Key = "EllosBoonSelectorMod.config.ShowPreview", Values = {false, true}, Default = false},

    {Key = "RunStartControl.config.Enabled", Values = {false, true}, Default = true},

    {Key = "InteractableChaos.config.Enabled", Values = {false, true}, Default = false},

    {Key = "RemoveCutscenes.config.RemoveIntro", Values = {false, true}, Default = true},
    {Key = "RemoveCutscenes.config.RemoveOutro", Values = {false, true}, Default = true},

    {Key = "RoomDeterminism.config.Enabled", Values = {false, true}, Default = false},
    {Key = "RoomDeterminism.config.RoomGenerationAlgorithm", Values = {"Vanilla"}, Default = "Vanilla"},

    {Key = "SatyrSackControl.config.Enabled", Values = {false, true}, Default = true},
    {Key = "SatyrSackControl.config.MinSack", Values = {1, 2, 3, 4, 5}, Default = 2},
    {Key = "SatyrSackControl.config.MaxSack", Values = {1, 2, 3, 4, 5}, Default = 2},

    {Key = "ShowChamberNumber.config.ShowDepth", Values = {false, true}, Default = true},

    -- BoonControl
    {Key = "BoonControl.config.Enabled", Values = {false, true}, Default = true},
    {Key = "BoonControl.config.AllowOlympianControl", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.AllowHermesControl", Values = {false, true}, Default = true},
    {Key = "BoonControl.config.AllowedHammerControl", Values = {0, 1, 2}, Default = 2},
    {Key = "BoonControl.config.AllowRarityForce", Values = {false, true}, Default = true},
    {Key = "BoonControl.config.AllowOverrides", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.FirstBoonAlwaysEpic", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.FirstBoonEpicOnPride", Values = {false, true}, Default = true},
    -- Chaos Control
    {Key = "ChaosControl.config.ChaosSetting", Values = {"Vanilla", "Hypermodded"}, Default = "Hypermodded"},
    -- DarknessDenied
    {Key = "DarknessDenied.config.RemoveDarkness", Values = {false, true}, Default = false},
    {Key = "DarknessDenied.config.RemoveInstadarkness", Values = {false, true}, Default = true},
    -- EnemyControl
    {Key = "EnemyControl.config.EnemySetting", Values = {"Vanilla", "Hypermodded1", "Hypermodded2"}, Default = "Hypermodded2"},
    -- ForceSecondGod
    {Key = "ForceSecondGod.config.Enabled", Values = {false, true}, Default = true},
    -- FreeRoomControl
    {Key = "FreeRoomControl.config.Enabled", Values = {false, true}, Default = true},
    -- Miniboss Control
    {Key = "MinibossControl.config.MinibossSetting", Values = {"Vanilla", "HyperDelivery1", "HyperDelivery", "Leaderboard", "Hypermodded"}, Default = "Hypermodded"},
    -- SatyrSackControl
    {Key = "SatyrSackControl.config.ForceShortTunnels", Values = {false, true}, Default = true},
    -- WellControl
    {Key = "WellControl.config.WellSetting", Values = {"Vanilla", "Hypermodded"}, Default = "Vanilla"},
    {Key = "ThanatosControl.config.ThanatosSetting", Values = {"Vanilla", "Removed"}, Default = "Removed"},
}


HSMConfigMenu.HypermoddedIGTSettings = {
    {Key = "DontGetVorimed.config.Enabled", Values = {false, true}, Default = true},
    
    {Key = "DoorVisualIndicators.config.ShowMinibossDoorIndicator", Values = {false, true}, Default = false},
    {Key = "DoorVisualIndicators.config.ShowFountainDoorIndictor", Values = {false, true}, Default = true},
    
    {Key = "EllosBoonSelectorMod.config.ShowPreview", Values = {false, true}, Default = false},

    {Key = "RunStartControl.config.Enabled", Values = {false, true}, Default = true},

    {Key = "InteractableChaos.config.Enabled", Values = {false, true}, Default = false},

    {Key = "RemoveCutscenes.config.RemoveIntro", Values = {false, true}, Default = true},
    {Key = "RemoveCutscenes.config.RemoveOutro", Values = {false, true}, Default = true},

    {Key = "RoomDeterminism.config.Enabled", Values = {false, true}, Default = false},
    {Key = "RoomDeterminism.config.RoomGenerationAlgorithm", Values = {"Vanilla"}, Default = "Vanilla"},

    {Key = "SatyrSackControl.config.Enabled", Values = {false, true}, Default = true},
    {Key = "SatyrSackControl.config.MinSack", Values = {1, 2, 3, 4, 5}, Default = 2},
    {Key = "SatyrSackControl.config.MaxSack", Values = {1, 2, 3, 4, 5}, Default = 2},

    {Key = "ShowChamberNumber.config.ShowDepth", Values = {false, true}, Default = true},

    -- BoonControl
    {Key = "BoonControl.config.Enabled", Values = {false, true}, Default = true},
    {Key = "BoonControl.config.AllowOlympianControl", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.AllowHermesControl", Values = {false, true}, Default = true},
    {Key = "BoonControl.config.AllowedHammerControl", Values = {0, 1, 2}, Default = 2},
    {Key = "BoonControl.config.AllowRarityForce", Values = {false, true}, Default = true},
    {Key = "BoonControl.config.AllowOverrides", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.FirstBoonAlwaysEpic", Values = {false, true}, Default = false},
    {Key = "BoonControl.config.FirstBoonEpicOnPride", Values = {false, true}, Default = true},
    -- Chaos Control
    {Key = "ChaosControl.config.ChaosSetting", Values = {"Vanilla", "Hypermodded"}, Default = "Hypermodded"},
    -- DarknessDenied
    {Key = "DarknessDenied.config.RemoveDarkness", Values = {false, true}, Default = false},
    {Key = "DarknessDenied.config.RemoveInstadarkness", Values = {false, true}, Default = true},
    -- EnemyControl
    {Key = "EnemyControl.config.EnemySetting", Values = {"Vanilla", "Hypermodded1", "Hypermodded2"}, Default = "Hypermodded2"},
    -- ForceSecondGod
    {Key = "ForceSecondGod.config.Enabled", Values = {false, true}, Default = true},
    -- FreeRoomControl
    {Key = "FreeRoomControl.config.Enabled", Values = {false, true}, Default = true},
    -- Miniboss Control
    {Key = "MinibossControl.config.MinibossSetting", Values = {"Vanilla", "HyperDelivery1", "HyperDelivery", "Leaderboard", "Hypermodded"}, Default = "Hypermodded"},
    -- SatyrSackControl
    {Key = "SatyrSackControl.config.ForceShortTunnels", Values = {false, true}, Default = true},
    -- WellControl
    {Key = "WellControl.config.WellSetting", Values = {"Vanilla", "Hypermodded"}, Default = "Vanilla"},
    {Key = "ThanatosControl.config.ThanatosSetting", Values = {"Vanilla", "Removed"}, Default = "Vanilla"},
}

HSMConfigMenu.NonRulesetSettings = {
    {Key = "QuickRestart.config.Enabled", Values = {false, true}, Default = false},
    
    {Key = "ColorblindMod.config.TartarusEnabled", Values = {false, true}, Default = false},
    {Key = "ColorblindMod.config.AsphodelEnabled", Values = {false, true}, Default = false},
    {Key = "ColorblindMod.config.ElysiumEnabled", Values = {false, true}, Default = false},
    {Key = "ColorblindMod.config.StyxEnabled", Values = {false, true}, Default = false},
  
    {Key = "RtaTimer.config.DisplayTimer", Values = {false, true}, Default = false},
    {Key = "RtaTimer.config.MultiWeapon", Values = {false, true}, Default = false},
  
    {Key = "EmoteMod.config.Enabled", Values = {false, true}, Default = false},
}
  
HSMConfigMenu.SettingsDefaults = {
    RulesetSettings = 367836398617,
    MultiRunSettings = 367836398617,
    SingleRunSettings = 367836398616,
    NonRulesetSettings = 0,
    HypermoddedIGTSettings = 367839229668,
    HypermoddedRTASettings = 367839229669,
}

-- Note: Add a key here to print out the default hash setting values on startup.
local rulesetHashesToCalculate = {
    "RulesetSettings",
    "MultiRunSettings",
    "SingleRunSettings",
    "HypermoddedIGTSettings",
    "HypermoddedRTASettings",
}
ModUtil.LoadOnce(function()
    DebugPrint { Text = "-------------------------------"}
    DebugPrint { Text = "Current Ruleset Profile Hashes:"}
    for _, key in ipairs(rulesetHashesToCalculate) do
        DebugPrint {
            Text = key .. ": " .. tostring(CalculateHash(HSMConfigMenu[key]))
        }
    end
    DebugPrint { Text = "-------------------------------"}
end)