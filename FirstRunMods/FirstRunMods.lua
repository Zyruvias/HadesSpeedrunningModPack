--[[
    FirstRunMods
    Author:
        cgull (Discord: cgull#4469)
    Credits:
        zyruvias - formal integration into main stream modpack
    Dependencies:
        ModUtil v2.8.1

    Enable Quality-of-Life settings for Fresh File during the first run
]]
ModUtil.RegisterMod("FirstRunMods")

local config = {
    Enabled = true,

}
FirstRunMods.config = config
FirstRunMods.FirstRunTartarus = false

FirstRunMods.MiniBossPreset = {
    -- Tartarus_Bombers
    A_MiniBoss01 = 1,
    -- Tartarus_Doomstone TODO: Handle middle management?
    A_MiniBoss04 = 0,
    -- Tartarus_Sneak
    A_MiniBoss03 = 0,

    -- Asphodel_Barge
    B_Wrapping01 = 1,
    -- Asphodel_PowerCouple,
    B_MiniBoss01 = 1,
    -- Asphodel_Witches
    B_MiniBoss02 = 0,

    -- Elysium_ButterflyBall
    C_MiniBoss02 = 1,
    -- Elysium_Asterius
    C_MiniBoss01 = 1,

    -- If true, Tiny Vermin will not spawn
    RemoveTinyVermin = true,
  }

ModUtil.LoadOnce(function()
    MinibossControl.RegisterPreset("FirstRun", FirstRunMods.MiniBossPreset)
end, FirstRunMods)


ModUtil.Path.Wrap("StartNewGame", function( baseFunc )
    baseFunc()

    if FirstRunMods.config.Enabled  and TableLength(GameState.RunHistory) == 0 then
        HSMConfigMenu_SavedRuleset = {HashInt = HSMConfigMenu.SettingsDefaults["FirstRunSettings"]}
        HSMConfigMenu_SavedPersonalization = {}


        HSMConfigMenu.LoadSettings("FirstRunSettings")
        
        HSMConfigMenu.CurrentRulesetHash = HSMConfigMenu.ConvertIntToBase25(HSMConfigMenu_SavedRuleset.HashInt, 5)

        HSMConfigMenu.updateRulesetHashDisplay()
        HSMConfigMenu.SaveSettingsToGlobal()

        DontGetVorimed.config.Enabled = false
        RtaTimer.config.DisplayTimer = true
        RtaTimer.config.MultiWeapon = true
        RtaTimer.TimerWasReset = false
        FirstRunMods.FirstRunTartarus = true
    end

end, FirstRunMods)

ModUtil.Path.Wrap("GetEligibleLootNames", function( baseFunc, excludeLootNames )
    if FirstRunMods.config.Enabled and TableLength(GameState.RunHistory) == 0 and FirstRunMods.FirstRunTartarus then
        if excludeLootNames == nil then
            excludeLootNames = {}
        end
        table.insert(excludeLootNames, "DionysusUpgrade")
        table.insert(excludeLootNames, "ArtemisUpgrade")

    end
    return baseFunc(excludeLootNames)
end, FirstRunMods)

ModUtil.Path.Wrap("HarpyKillPresentation", function( baseFunc, unit, args )
    FirstRunMods.FirstRunTartarus = false
    baseFunc(unit, args)
end, FirstRunMods)