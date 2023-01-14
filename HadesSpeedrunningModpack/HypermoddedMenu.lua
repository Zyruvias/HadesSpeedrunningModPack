function HSMConfigMenu.CreateHypermoddedMenu( screen )
    local rowStartX = 250
    local itemLocationX = rowStartX
    local itemLocationY = 250
    local itemSpacingX = 250
    local itemSpacingY = 65

    -----------------
    -- Chaos control settings
    -----------------
    screen.Components["ChaosSettingsTextBox"] = CreateScreenComponent({
        Name = "BlankObstacle",
        Scale = 1,
        X = itemLocationX,
        Y = itemLocationY,
        Group = "Combat_Menu"
    })
    CreateTextBox({
        Id = screen.Components["ChaosSettingsTextBox"].Id,
        Text = "Chaos Settings: ",
        Color = Color.BoonPatchCommon,
        FontSize = 16,
        OffsetX = 0, OffsetY = 0,
        Font = "AlegrayaSansSCRegular",
        ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
        Justification = "Left",
        Group = "Combat_Menu"
    })

    local chaosDropdownOptions = {["Default"] = {
        event = function(dropdown)
            ChaosControl.config.ChaosSetting = "Vanilla"
        end,
        Text = "Vanilla",
      }}
      for k, v in pairs(ChaosControl.Presets) do
        table.insert(chaosDropdownOptions,
          {
            event = function(dropdown)
                ChaosControl.config.ChaosSetting = k
            end,
            Text = k
          })
      end
    
    ErumiUILib.Dropdown.CreateDropdown(screen, {
        Name = "ChaosDropdown",
        Group = "Combat_Menu",  
        Scale = {X = .25, Y = .5},
        Padding = {X = 0, Y = 2},
        X = itemLocationX + itemSpacingX * 2, Y = itemLocationY,
        GeneralFontSize = 16,
        Font = "AlegrayaSansSCRegular",
        Items = chaosDropdownOptions
    })
    itemLocationY = itemLocationY + itemSpacingY

    -----------------
    -- DarknessDenied settings
    -----------------
    -- title
    screen.Components["DarknessDeniedTitleTextBox"] = CreateScreenComponent({
        Name = "BlankObstacle",
        Scale = 1,
        X = itemLocationX,
        Y = itemLocationY,
        Group = "Combat_Menu"
      })
      CreateTextBox({
        Id = screen.Components["DarknessDeniedTitleTextBox"].Id,
        Text = "Hades's Moveset Options ",
        Color = Color.BoonPatchCommon,
        FontSize = 16,
        OffsetX = 0, OffsetY = 0,
        Font = "AlegrayaSansSCRegular",
        ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
        Justification = "Left"
      })
      itemLocationY = itemLocationY + itemSpacingY * 0.5

      -- all darkness
      screen.Components["DarknessDeniedAllTextBox"] = CreateScreenComponent({
        Name = "BlankObstacle",
        Scale = 1,
        X = itemLocationX,
        Y = itemLocationY,
        Group = "Combat_Menu"
      })
      CreateTextBox({
        Id = screen.Components["DarknessDeniedAllTextBox"].Id,
        Text = "Remove All Darknesses:",
        Color = Color.BoonPatchCommon,
        FontSize = 12,
        OffsetX = 0, OffsetY = 0,
        Font = "AlegrayaSansSCRegular",
        ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
        Justification = "Left"
      })
      screen.Components["DarknessDeniedAllCheckBox"] = CreateScreenComponent({
        Name = "RadioButton",
        Scale = 1,
        X = itemLocationX + itemSpacingX * 2,
        Y = itemLocationY,
        Group = "Combat_Menu"
      })
      screen.Components["DarknessDeniedAllCheckBox"].Config = "DarknessDenied.config.RemoveDarkness"
      screen.Components["DarknessDeniedAllCheckBox"].OnPressedFunctionName = "HSMConfigMenu__ToggleGenericConfigCheckBox"
      HSMConfigMenu__UpdateGenericConfigCheckbox(screen, screen.Components["DarknessDeniedAllCheckBox"])
      itemLocationY = itemLocationY + itemSpacingY * 0.5

      -- insta-darkness
      screen.Components["DarknessDeniedInstantTextBox"] = CreateScreenComponent({
        Name = "BlankObstacle",
        Scale = 1,
        X = itemLocationX,
        Y = itemLocationY,
        Group = "Combat_Menu"
      })
      CreateTextBox({
        Id = screen.Components["DarknessDeniedInstantTextBox"].Id,
        Text = "Remove Only Insta-Darknesses:",
        Color = Color.BoonPatchCommon,
        FontSize = 12,
        OffsetX = 0, OffsetY = 0,
        Font = "AlegrayaSansSCRegular",
        ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
        Justification = "Left"
      })
      screen.Components["DarknessDeniedInstantEnabledBox"] = CreateScreenComponent({
        Name = "RadioButton",
        Scale = 1,
        X = itemLocationX + itemSpacingX * 2,
        Y = itemLocationY,
        Group = "Combat_Menu"
      })
      screen.Components["DarknessDeniedInstantEnabledBox"].Config = "DarknessDenied.config.RemoveInstadarkness"
      screen.Components["DarknessDeniedInstantEnabledBox"].OnPressedFunctionName = "HSMConfigMenu__ToggleGenericConfigCheckBox"
      HSMConfigMenu__UpdateGenericConfigCheckbox(screen, screen.Components["DarknessDeniedInstantEnabledBox"])
      itemLocationY = itemLocationY + itemSpacingY

    -----------------
    -- EnemyControl settings
    -----------------
    screen.Components["EnemySettingsTextBox"] = CreateScreenComponent({
        Name = "BlankObstacle",
        Scale = 1,
        X = itemLocationX,
        Y = itemLocationY,
        Group = "Combat_Menu"
    })
    CreateTextBox({
        Id = screen.Components["EnemySettingsTextBox"].Id,
        Text = "Enemy Settings: ",
        Color = Color.BoonPatchCommon,
        FontSize = 16,
        OffsetX = 0, OffsetY = 0,
        Font = "AlegrayaSansSCRegular",
        ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
        Justification = "Left"
    })

    local enemyControlOptions = {["Default"] = {
        event = function(dropdown)
            EnemyControl.config.EnemySetting = "Vanilla"
        end,
        Text = "Default",
      }}
      for k, v in pairs(EnemyControl.Presets) do
        table.insert(enemyControlOptions,
          {
            event = function(dropdown)
                EnemyControl.config.ChaosSetting = k
            end,
            Text = k
          })
      end
    
    ErumiUILib.Dropdown.CreateDropdown(screen, {
        Name = "EnemyControlDropDown",
        Group = "Combat_Menu",  
        Scale = {X = .25, Y = .5},
        Padding = {X = 0, Y = 2},
        X = itemLocationX + itemSpacingX * 2, Y = itemLocationY,
        GeneralFontSize = 16,
        Font = "AlegrayaSansSCRegular",
        Items = enemyControlOptions
    })
    itemLocationY = itemLocationY + itemSpacingY


    -----------------
    -- ForceSecondGod settings
    -----------------
      screen.Components["ForceSecondGodEnabledTextBox"] = CreateScreenComponent({
        Name = "BlankObstacle",
        Scale = 1,
        X = itemLocationX,
        Y = itemLocationY,
        Group = "Combat_Menu"
      })
      CreateTextBox({
        Id = screen.Components["ForceSecondGodEnabledTextBox"].Id,
        Text = "Enable Choice of Second God:",
        Color = Color.BoonPatchCommon,
        FontSize = 16,
        OffsetX = 0, OffsetY = 0,
        Font = "AlegrayaSansSCRegular",
        ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
        Justification = "Left"
      })
      
      screen.Components["ForceSecondGodEnabledCheckbox"] = CreateScreenComponent({
        Name = "RadioButton",
        Scale = 1,
        X = itemLocationX + itemSpacingX * 2,
        Y = itemLocationY,
        Group = "Combat_Menu"
      })
      screen.Components["ForceSecondGodEnabledCheckbox"].Config = "ForceSecondGod.config.Enabled"
      screen.Components["ForceSecondGodEnabledCheckbox"].OnPressedFunctionName = "HSMConfigMenu__ToggleGenericConfigCheckBox"
      HSMConfigMenu__UpdateGenericConfigCheckbox(screen, screen.Components["ForceSecondGodEnabledCheckbox"])
    itemLocationY = itemLocationY + itemSpacingY * 0.5
      screen.Components["ForceSecondGodNoteTextBox"] = CreateScreenComponent({
        Name = "BlankObstacle",
        Scale = 1,
        X = itemLocationX,
        Y = itemLocationY,
        Group = "Combat_Menu"
      })
      CreateTextBox({
        Id = screen.Components["ForceSecondGodNoteTextBox"].Id,
        Text = "(select Gods by aspect on next page)",
        Color = Color.BoonPatchCommon,
        FontSize = 12,
        OffsetX = 0, OffsetY = 0,
        Font = "AlegrayaSansSCRegular",
        ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
        Justification = "Left"
      })

      itemLocationY = itemLocationY + itemSpacingY
    -----------------
    -- FreeRoomControl settings
    -----------------
    screen.Components["FreeRoomControlEnabledTextBox"] = CreateScreenComponent({
        Name = "BlankObstacle",
        Scale = 1,
        X = itemLocationX,
        Y = itemLocationY,
        Group = "Combat_Menu"
      })
      CreateTextBox({
        Id = screen.Components["FreeRoomControlEnabledTextBox"].Id,
        Text = "Prevent Free Room Conflicts:",
        Color = Color.BoonPatchCommon,
        FontSize = 16,
        OffsetX = 0, OffsetY = 0,
        Font = "AlegrayaSansSCRegular",
        ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
        Justification = "Left"
      })
      
      screen.Components["FreeRoomControlEnabledCheckbox"] = CreateScreenComponent({
        Name = "RadioButton",
        Scale = 1,
        X = itemLocationX + itemSpacingX * 2,
        Y = itemLocationY,
        Group = "Combat_Menu"
      })
      screen.Components["FreeRoomControlEnabledCheckbox"].Config = "FreeRoomControl.config.Enabled"
      screen.Components["FreeRoomControlEnabledCheckbox"].OnPressedFunctionName = "HSMConfigMenu__ToggleGenericConfigCheckBox"
      HSMConfigMenu__UpdateGenericConfigCheckbox(screen, screen.Components["FreeRoomControlEnabledCheckbox"])

      itemLocationY = itemLocationY + itemSpacingY

    -----------------
    -- SaytrSackControl short tunnel settings
    -----------------
    screen.Components["SatyrSackControlShortTunnelEnabledTextBox"] = CreateScreenComponent({
        Name = "BlankObstacle",
        Scale = 1,
        X = itemLocationX,
        Y = itemLocationY,
        Group = "Combat_Menu"
      })
      CreateTextBox({
        Id = screen.Components["SatyrSackControlShortTunnelEnabledTextBox"].Id,
        Text = "Force Short Tunnels in Styx:",
        Color = Color.BoonPatchCommon,
        FontSize = 16,
        OffsetX = 0, OffsetY = 0,
        Font = "AlegrayaSansSCRegular",
        ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
        Justification = "Left"
      })
      
      screen.Components["SatyrSackControlShortTunnelEnabledCheckbox"] = CreateScreenComponent({
        Name = "RadioButton",
        Scale = 1,
        X = itemLocationX + itemSpacingX * 2,
        Y = itemLocationY,
        Group = "Combat_Menu"
      })
      screen.Components["SatyrSackControlShortTunnelEnabledCheckbox"].Config = "SatyrSackControl.config.ForceShortTunnels"
      screen.Components["SatyrSackControlShortTunnelEnabledCheckbox"].OnPressedFunctionName = "HSMConfigMenu__ToggleGenericConfigCheckBox"
      HSMConfigMenu__UpdateGenericConfigCheckbox(screen, screen.Components["SatyrSackControlShortTunnelEnabledCheckbox"])

      itemLocationY = itemLocationY + itemSpacingY
    -----------------
    -- WellControl settings
    -----------------
    screen.Components["WellControlSettingsTextBox"] = CreateScreenComponent({
        Name = "BlankObstacle",
        Scale = 1,
        X = itemLocationX,
        Y = itemLocationY,
        Group = "Combat_Menu"
    })
    CreateTextBox({
        Id = screen.Components["WellControlSettingsTextBox"].Id,
        Text = "Well Settings: ",
        Color = Color.BoonPatchCommon,
        FontSize = 16,
        OffsetX = 0, OffsetY = 0,
        Font = "AlegrayaSansSCRegular",
        ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
        Justification = "Left"
    })

    local wellControlOptions = {["Default"] = {
        event = function(dropdown)
            WellControl.config.WellSetting = "Vanilla"
        end,
        Text = "Default",
      }}
      for k, v in pairs(WellControl.Presets) do
        table.insert(wellControlOptions,
          {
            event = function(dropdown)
                WellControl.config.WellSetting = k
            end,
            Text = k
          })
      end
    
    ErumiUILib.Dropdown.CreateDropdown(screen, {
        Name = "WellControlDropDown",
        Group = "Combat_Menu",  
        Scale = {X = .25, Y = .5},
        Padding = {X = 0, Y = 2},
        X = itemLocationX + itemSpacingX * 2, Y = itemLocationY,
        GeneralFontSize = 16,
        Font = "AlegrayaSansSCRegular",
        Items = wellControlOptions
    })
    itemLocationY = itemLocationY + itemSpacingY

    -----------------
    -- BoonControl global enabled setting
    -----------------
    screen.Components["BoonControlEnabledTextBox"] = CreateScreenComponent({
      Name = "BlankObstacle",
      Scale = 1,
      X = itemLocationX,
      Y = itemLocationY,
      Group = "Combat_Menu"
    })
    CreateTextBox({
      Id = screen.Components["BoonControlEnabledTextBox"].Id,
      Text = "Enable advanced boon control:",
      Color = Color.BoonPatchCommon,
      FontSize = 16,
      OffsetX = 0, OffsetY = 0,
      Font = "AlegrayaSansSCRegular",
      ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
      Justification = "Left"
    })
    
    screen.Components["BoonControlEnabledCheckBox"] = CreateScreenComponent({
      Name = "RadioButton",
      Scale = 1,
      X = itemLocationX + itemSpacingX * 2,
      Y = itemLocationY,
      Group = "Combat_Menu"
    })
    screen.Components["BoonControlEnabledCheckBox"].Config = "BoonControl.config.Enabled"
    screen.Components["BoonControlEnabledCheckBox"].OnPressedFunctionName = "HSMConfigMenu__ToggleGenericConfigCheckBox"
    HSMConfigMenu__UpdateGenericConfigCheckbox(screen, screen.Components["BoonControlEnabledCheckBox"])

    itemLocationY = itemLocationY + itemSpacingY
end

function CreateForceSecondGodConfigMenu( screen )
  if ForceSecondGod.config.Enabled then
      local nrows = 4
      local idx = 0

      -- TODO - assert dependency / warning message if not
      for i = 1, TableLength(RunStartControl.WeaponAspectData) do
        local weaponData = RunStartControl.WeaponAspectData[i]
        for j = 1, TableLength(weaponData.Aspects) do
            local aspectID = weaponData.Aspects[j]
            local gridX = math.ceil((idx+1) / nrows)
            local gridY = idx % nrows + 1
            CreateSecondGodPicker( screen, aspectID, gridX, gridY)
            idx = idx + 1
        end
      end
  end
end

local menuXPositions = {
  200, 504, 808, 1112, 1416, 1720
}
local menuYPositions = {
  400, 580, 760, 940
}

function CreateSecondGodPicker( screen, aspect, gridX, gridY)
  local xpos = menuXPositions[gridX]
  local ypos = menuYPositions[gridY]

  local gods = { "Aphrodite", "Ares", "Artemis", "Athena", "Demeter", "Dionysus", "Poseidon", "Zeus"}
  local defaultGod = ForceSecondGod.config.AspectSettings[RCLib.CodeToName.Aspects[aspect]]
  local godOptions = {["Default"] = {
    event = function(dropdown)
      ForceSecondGod.config.AspectSettings[RCLib.CodeToName.Aspects[aspect]] = defaultGod
    end,
    Text = defaultGod,
  }}
  -- TODO: Get defauly by config or save data
  -- local godOptions = {}
  -- aspectName = RCLib.CodeToName
  -- ForceSecondGod.config.AspectSettings
  for i, god in pairs(gods) do
    table.insert(godOptions,
      {
        event = function(dropdown)
            -- ChaosControl.config.ChaosSetting = god
            ForceSecondGod.config.AspectSettings[RCLib.CodeToName.Aspects[aspect]] = god
        end,
        Text = god
      })
  end

  ErumiUILib.Dropdown.CreateDropdown(screen, {
    Name = "GodDropdown"..aspect,
    Group = "Combat_Menu",  
    Scale = {X = .25, Y = .5},
    Padding = {X = 0, Y = 2},
    X = xpos, Y = ypos,
    GeneralFontSize = 16,
    Font = "AlegrayaSansSCRegular",
    Items = godOptions
  })

  --Icon Display
  screen.Components["AspectIcon"..aspect] = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.8, Group = "Combat_Menu", X = xpos, Y = ypos - 90 })
  local aspectIcon = TraitData[aspect].Icon .. "_Large"
  SetAnimation({ DestinationId = screen.Components["AspectIcon"..aspect].Id, Name = aspectIcon})
  
end

function HSMConfigMenu.CreateForceSecondGodMenu (screen )
  local rowStartX = 250
  local itemLocationX = rowStartX
  local itemLocationY = 250
  local itemSpacingX = 250
  local itemSpacingY = 65

  if not ForceSecondGod.config.Enabled then
    -- Create "menu disabled" text
    screen.Components["ForceSecondGodMenuDisabledTextBox"] = CreateScreenComponent({
      Name = "BlankObstacle",
      Scale = 1,
      X = itemLocationX,
      Y = itemLocationY,
      Group = "Combat_Menu"
    })
    CreateTextBox({
        Id = screen.Components["ForceSecondGodMenuDisabledTextBox"].Id,
        Text = "Enable \"Enable Choice of Second God\" setting to use this menu.",
        Color = Color.BoonPatchCommon,
        FontSize = 16,
        OffsetX = 0, OffsetY = 0,
        Font = "AlegrayaSansSCRegular",
        ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
        Justification = "Left"
    })
    return
  end
  -- Create menu
  CreateForceSecondGodConfigMenu(screen)

end

function HSMConfigMenu.CreateBoonControlMenu ( screen )
  local rowStartX = 250
  local itemLocationX = rowStartX
  local itemLocationY = 250
  local itemSpacingX = 250
  local itemSpacingY = 65

  

end

function HSMConfigMenu.CreateHermesMenu ( screen )
  local rowStartX = 250
  local itemLocationX = rowStartX
  local itemLocationY = 500
  local itemSpacingX = 250
  local itemSpacingY = 65

  if not BoonControl.config.Enabled or not BoonControl.config.AllowHermesControl then
    -- Create "menu disabled" text
    local textToUse = BoonControl.config.Enabled and 
      "Enable \"Allow controlled Hermes\" setting to use this menu." or
      "Enable \"Enable advanced boon control\" setting to use this menu."
    
    screen.Components["HermesControlDisabledTextBox"] = CreateScreenComponent({
      Name = "BlankObstacle",
      Scale = 1,
      X = itemLocationX,
      Y = itemLocationY,
      Group = "Combat_Menu"
    })
    CreateTextBox({
        Id = screen.Components["HermesControlDisabledTextBox"].Id,
        Text = textToUse,
        Color = Color.BoonPatchCommon,
        FontSize = 16,
        OffsetX = 0, OffsetY = 0,
        Font = "AlegrayaSansSCRegular",
        ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
        Justification = "Left"
    })
    return
  end
  --[[
    1. Create Weapon List Dropdown
    2. Create Aspect List Dropdown
    3. Create Icon Display from aspect
    4. On Select Functions
    5. Hermes Display
  ]]--
  -- 1. create weapon list
  local weaponToDisplay = "SwordWeapon"
  local currentAspect = "ZagreusSword"
  local aspectDropdown = nil
  local changeDisplayAspect = function(aspectID)
    -- set icon
    local aspectIcon = TraitData[aspectID].Icon .. "_Large"
    SetAnimation({ DestinationId = screen.Components["AspectIcon"].Id, Name = aspectIcon})
  end

  -- 4. On Select Function for Weapon List
  local updateAspectListDropdown = function (aspects)
    local hermesOptionsByAspect = {["Default"] = {
      event = function (dropdown)
        aspectToDisplay = aspects[1]
      end,
      Text = aspects[1]
    }}
    
    for j = 1, TableLength(aspects) do
      local aspectID = aspects[j]
      table.insert(hermesOptionsByAspect, {
        event = function (dropdown)
          changeDisplayAspect(aspectID)
        end,
        Text = aspectID
        -- Text = RCLib.CodeToName.Aspects[aspectID]
      })
    end

    if aspectDropdown ~= nil then
      -- copied from NewEntry function, using the Dropdown api led to weird crashes
      aspectDropdown.dropDownPressedArgs.Items = hermesOptionsByAspect
      if aspectDropdown.isExpanded then
          ErumiUILib.Dropdown.Collapse(screen, aspectDropdown)
          ErumiUILib.Dropdown.Expand(screen, aspectDropdown)
      end
      -- TODO: update the current display text/default text? idk man
      changeDisplayAspect(aspects[1])
      ErumiUILib.Dropdown.SetValue(aspectDropdown, 1)

    else -- should probably not get here but ya know it's for the best
      ErumiUILib.Dropdown.CreateDropdown(screen, {
        Name = "HermesAspectDropdown",
        Group = "Combat_Menu",  
        Scale = {X = .25, Y = .5},
        Padding = {X = 0, Y = 2},
        X = itemLocationX + itemSpacingX, Y = itemLocationY,
        GeneralFontSize = 16,
        Font = "AlegrayaSansSCRegular",
        Items = hermesOptionsByAspect,
      })
    end
  end

  local weaponOptions = {["Default"] = {
    -- event = function (dropdown)
    --   updateAspectListDropdown("SwordWeapon")
    -- end,
    Text = "SwordWeapon"
  }}

  -- setup weapon options
  for i = 1, TableLength(RunStartControl.WeaponAspectData) do
    local weaponData = RunStartControl.WeaponAspectData[i]
    table.insert(weaponOptions, {
      event = function (dropdown)
        updateAspectListDropdown(weaponData.Aspects)
      end,
      Text = weaponData.Name
    })
  end

  -- weapon dropdown
  ErumiUILib.Dropdown.CreateDropdown(screen, {
    Name = "HermesWeaponDropdown",
    Group = "Combat_Menu",  
    Scale = {X = .25, Y = .5},
    Padding = {X = 0, Y = 2},
    X = itemLocationX, Y = itemLocationY,
    GeneralFontSize = 16,
    Font = "AlegrayaSansSCRegular",
    Items = weaponOptions,
  })

  local changeDisplayAspect = function(aspectID)
    -- set icon
    local aspectIcon = TraitData[aspectID].Icon .. "_Large"
    SetAnimation({ DestinationId = screen.Components["AspectIcon"].Id, Name = aspectIcon})
  end

  -- Create Hermes Control Menu
  local hermesOptionsByAspect = {["Default"] = {
    Text = RCLib.NameToCode.Aspects[currentAspect]
  }}
  

  -- TODO - assert dependency / warning message if not
  local weaponData = RunStartControl.WeaponAspectData[1]
  for j = 1, TableLength(weaponData.Aspects) do
      local aspectID = weaponData.Aspects[j]
      table.insert(hermesOptionsByAspect, {
        event = function (dropdown)
          changeDisplayAspect(aspectID)
        end,
        Text = aspectID
      })
  end

  -- initial aspect list
  aspectDropdown = ErumiUILib.Dropdown.CreateDropdown(screen, {
    Name = "HermesAspectDropdown",
    Group = "Combat_Menu",  
    Scale = {X = .3, Y = .5},
    Padding = {X = 0, Y = 2},
    X = itemLocationX + itemSpacingX * 1.25, Y = itemLocationY,
    GeneralFontSize = 16,
    Font = "AlegrayaSansSCRegular",
    Items = hermesOptionsByAspect,
  })

  --Icon Display
  screen.Components["AspectIcon"] = CreateScreenComponent({
    Name = "BlankObstacle",
    Scale = 1.5,
    Group = "Combat_Menu",
    X = itemLocationX + itemSpacingX * 2.5,
    Y = itemLocationY 
  })
  local aspectIcon = TraitData[RCLib.NameToCode.Aspects[currentAspect]].Icon .. "_Large"
  SetAnimation({ DestinationId = screen.Components["AspectIcon"].Id, Name = aspectIcon})
  

  -- actual hermes boons options
  itemLocationX = itemLocationX + itemSpacingX * 4
  local hermesBoonOptions = {["Default"] = {
    Text = BoonControl.config.AspectSettings[currentAspect].BoonSetting
  }}
  
  for k, v in pairs(BoonControl.BoonPresets) do
      table.insert(hermesBoonOptions, {
        event = function (dropdown)
          DebugPrint({ Text = (aspectDropdown.currentItem.Text or currentAspect) .. " " .. k})
          BoonControl.config.AspectSettings[aspectDropdown.currentItem.Text or currentAspect].BoonSetting = k
        end,
        Text = k
      })
  end

  ErumiUILib.Dropdown.CreateDropdown(screen, {
    Name = "HermesBoonDropdown",
    Group = "Combat_Menu",  
    Scale = {X = .3, Y = .5},
    Padding = {X = 0, Y = 2},
    X = itemLocationX, Y = itemLocationY,
    GeneralFontSize = 16,
    Font = "AlegrayaSansSCRegular",
    Items = hermesBoonOptions,
  })

end

ModUtil.LoadOnce(function()
    ModConfigMenu.RegisterMenuOverride({ModName = "Hypermodded"}, HSMConfigMenu.CreateHypermoddedMenu)
    ModConfigMenu.RegisterMenuOverride({ModName = "Choice of Second God"}, HSMConfigMenu.CreateForceSecondGodMenu)
    ModConfigMenu.RegisterMenuOverride({ModName = "Misc. Trait Settings"}, HSMConfigMenu.CreateBoonControlMenu)
    ModConfigMenu.RegisterMenuOverride({ModName = "Hermes Settings"}, HSMConfigMenu.CreateHermesMenu)
end)
