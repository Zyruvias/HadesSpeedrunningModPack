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

  -----------------
  -- BoonControl.config.AllowHermesControl
  -----------------
  screen.Components["HermesControlEnabledTextBox"] = CreateScreenComponent({
    Name = "BlankObstacle",
    Scale = 1,
    X = itemLocationX,
    Y = itemLocationY,
    Group = "Combat_Menu"
  })
  CreateTextBox({
    Id = screen.Components["HermesControlEnabledTextBox"].Id,
    Text = "Enable control of Hermes:",
    Color = Color.BoonPatchCommon,
    FontSize = 16,
    OffsetX = 0, OffsetY = 0,
    Font = "AlegrayaSansSCRegular",
    ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
    Justification = "Left"
  })
  
  screen.Components["HermesControlControlEnabledCheckbox"] = CreateScreenComponent({
    Name = "RadioButton",
    Scale = 1,
    X = itemLocationX + itemSpacingX * 3,
    Y = itemLocationY,
    Group = "Combat_Menu"
  })
  screen.Components["HermesControlControlEnabledCheckbox"].Config = "BoonControl.config.AllowHermesControl"
  screen.Components["HermesControlControlEnabledCheckbox"].OnPressedFunctionName = "HSMConfigMenu__ToggleGenericConfigCheckBox"
  HSMConfigMenu__UpdateGenericConfigCheckbox(screen, screen.Components["HermesControlControlEnabledCheckbox"])
  itemLocationY = itemLocationY + itemSpacingY
  -----------------
  -- BoonControl.config.AllowOlympianControl
  -----------------
  screen.Components["OlympianControlEnabledTextBox"] = CreateScreenComponent({
    Name = "BlankObstacle",
    Scale = 1,
    X = itemLocationX,
    Y = itemLocationY,
    Group = "Combat_Menu"
  })
  CreateTextBox({
    Id = screen.Components["OlympianControlEnabledTextBox"].Id,
    Text = "Enable control of other Olympians:",
    Color = Color.BoonPatchCommon,
    FontSize = 16,
    OffsetX = 0, OffsetY = 0,
    Font = "AlegrayaSansSCRegular",
    ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
    Justification = "Left"
  })
  
  screen.Components["OlympianControlEnabledCheckbox"] = CreateScreenComponent({
    Name = "RadioButton",
    Scale = 1,
    X = itemLocationX + itemSpacingX * 3,
    Y = itemLocationY,
    Group = "Combat_Menu"
  })
  screen.Components["OlympianControlEnabledCheckbox"].Config = "BoonControl.config.AllowOlympianControl"
  screen.Components["OlympianControlEnabledCheckbox"].OnPressedFunctionName = "HSMConfigMenu__ToggleGenericConfigCheckBox"
  HSMConfigMenu__UpdateGenericConfigCheckbox(screen, screen.Components["OlympianControlEnabledCheckbox"])
  itemLocationY = itemLocationY + itemSpacingY

  -----------------
  -- BoonControl.config.AllowHammerControl
  -----------------
  
  screen.Components["HammerControlTextBox"] = CreateScreenComponent({
    Name = "BlankObstacle",
    Scale = 1,
    X = itemLocationX,
    Y = itemLocationY,
    Group = "Combat_Menu"
  })
  CreateTextBox({
    Id = screen.Components["HammerControlTextBox"].Id,
    Text = "Select number of hammers to control:",
    Color = Color.BoonPatchCommon,
    FontSize = 16,
    OffsetX = 0, OffsetY = 0,
    Font = "AlegrayaSansSCRegular",
    ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
    Justification = "Left"
  })
  local hammerOptions = {
    Default = {
      event = function (dropdown)
        BoonControl.config.AllowedHammerControl = 0
      end,
      Text = "None"
    },
    [1] = {
      event = function (dropdown)
        BoonControl.config.AllowedHammerControl = 0
      end,
      Text = "None"
    },
    [2] = {
      event = function (dropdown)
        BoonControl.config.AllowedHammerControl = 1
      end,
      Text = "One Hammer"
    },
    [3] = {
      event = function (dropdown)
        BoonControl.config.AllowedHammerControl = 2
      end,
      Text = "Both Hammers"
    },
  }

  ErumiUILib.Dropdown.CreateDropdown(screen, {
    Name = "HammerControlDropdown",
    Group = "Combat_Menu",  
    Scale = {X = .25, Y = .5},
    Padding = {X = 0, Y = 2},
    X = itemLocationX + itemSpacingX * 3, Y = itemLocationY,
    GeneralFontSize = 16,
    Font = "AlegrayaSansSCRegular",
    Items = hammerOptions,
  })
  itemLocationY = itemLocationY + itemSpacingY
  

  -----------------
  -- BoonControl.config.AllowRarityForce
  -----------------
  screen.Components["AllowRarityForceEnabledTextBox"] = CreateScreenComponent({
    Name = "BlankObstacle",
    Scale = 1,
    X = itemLocationX,
    Y = itemLocationY,
    Group = "Combat_Menu"
  })
  CreateTextBox({
    Id = screen.Components["AllowRarityForceEnabledTextBox"].Id,
    Text = "Enable for always-epic Hermes:",
    Color = Color.BoonPatchCommon,
    FontSize = 16,
    OffsetX = 0, OffsetY = 0,
    Font = "AlegrayaSansSCRegular",
    ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
    Justification = "Left"
  })
  -- TODO: add note about all rarity force config possibilities but not leaderboard legal
  
  screen.Components["AllowRarityForceEnabledCheckbox"] = CreateScreenComponent({
    Name = "RadioButton",
    Scale = 1,
    X = itemLocationX + itemSpacingX * 3,
    Y = itemLocationY,
    Group = "Combat_Menu"
  })
  screen.Components["AllowRarityForceEnabledCheckbox"].Config = "BoonControl.config.AllowRarityForce"
  screen.Components["AllowRarityForceEnabledCheckbox"].OnPressedFunctionName = "HSMConfigMenu__ToggleGenericConfigCheckBox"
  HSMConfigMenu__UpdateGenericConfigCheckbox(screen, screen.Components["AllowRarityForceEnabledCheckbox"])
  itemLocationY = itemLocationY + itemSpacingY

  -----------------
  -- BoonControl.config.FirstBoonAlwaysEpic/FirstBoonEpicOnPride
  -----------------
  
  screen.Components["RarityControlTextBox"] = CreateScreenComponent({
    Name = "BlankObstacle",
    Scale = 1,
    X = itemLocationX,
    Y = itemLocationY,
    Group = "Combat_Menu"
  })
  CreateTextBox({
    Id = screen.Components["RarityControlTextBox"].Id,
    Text = "Select first boon rarity settings:",
    Color = Color.BoonPatchCommon,
    FontSize = 16,
    OffsetX = 0, OffsetY = 0,
    Font = "AlegrayaSansSCRegular",
    ShadowBlur = 0, ShadowColor = { 0, 0, 0, 1 }, ShadowOffset = { 0,  2 },
    Justification = "Left"
  })
  local rarityOptions = {
    Default = {
      event = function (dropdown)
        BoonControl.config.FirstBoonAlwaysEpic = false
        BoonControl.config.FirstBoonEpicOnPride = false
      end,
      Text = "Vanilla"
    },
    [1] = {
      event = function (dropdown)
        BoonControl.config.FirstBoonAlwaysEpic = false
        BoonControl.config.FirstBoonEpicOnPride = false
      end,
      Text = "Vanilla"
    },
    [2] = {
      event = function (dropdown)
        BoonControl.config.FirstBoonAlwaysEpic = false
        BoonControl.config.FirstBoonEpicOnPride = true
      end,
      Text = "Epic on God's Pride"
    },
    [3] = {
      event = function (dropdown)
        BoonControl.config.FirstBoonAlwaysEpic = true
        BoonControl.config.FirstBoonEpicOnPride = true
      end,
      Text = "Always Epic"
    },
  }

  ErumiUILib.Dropdown.CreateDropdown(screen, {
    Name = "RarityControlDropdown",
    Group = "Combat_Menu",  
    Scale = {X = .35, Y = .5},
    Padding = {X = 0, Y = 2},
    X = itemLocationX + itemSpacingX * 3, Y = itemLocationY,
    GeneralFontSize = 16,
    Font = "AlegrayaSansSCRegular",
    Items = rarityOptions,
  })
  itemLocationY = itemLocationY + itemSpacingY

end

function UpdateDropdown( screen, dropdown, options, newSetValue )
  if dropdown == nil then
    return
  end
  -- copied from NewEntry function, using the Dropdown api led to weird crashes
  dropdown.dropDownPressedArgs.Items = options
  if dropdown.isExpanded then
      ErumiUILib.Dropdown.Collapse(screen, dropdown)
      ErumiUILib.Dropdown.Expand(screen, dropdown)
  end
  if newSetValue ~= nil then
    ErumiUILib.Dropdown.SetValue(dropdown, newSetValue)
  end
end

function HSMConfigMenu.CreateHermesMenu ( screen )
  local rowStartX = 250
  local itemLocationX = rowStartX
  local itemLocationY = 250
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
  itemLocationY = 500
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
  -- TODO: fix Default Weapon list not updating icon

  local updateHermesDropdown = nil

  -- 4. On Select Function for Weapon List
  local onWeaponListDropdownChange = function (aspects)
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
          updateHermesDropdown(RCLib.CodeToName.Aspects[aspectID])
        end,
        Text = aspectID
      })
    end
    UpdateDropdown(screen, aspectDropdown, hermesOptionsByAspect, 1)
    -- TODO: update the current display text/default text? idk man
    changeDisplayAspect(aspects[1])
    updateHermesDropdown(RCLib.CodeToName.Aspects[aspects[1]])
  end

  local weaponOptions = {["Default"] = {
    -- event = function (dropdown)
    --   onWeaponListDropdownChange("SwordWeapon")
    -- end,
    Text = "SwordWeapon"
  }}

  -- setup weapon options
  for i = 1, TableLength(RunStartControl.WeaponAspectData) do
    local weaponData = RunStartControl.WeaponAspectData[i]
    table.insert(weaponOptions, {
      event = function (dropdown)
        onWeaponListDropdownChange(weaponData.Aspects)
      end,
      Text = weaponData.Name
    })
  end

  local hermesSettingsByAspectDropdown = nil

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

  updateHermesDropdown = function(aspect)
    DebugPrint{
      Text = "Updating hermes options for " .. aspect ..
      " with a default of " .. BoonControl.config.AspectSettings[aspect].BoonSetting
    }
    local hermesBoonOptions = {["Default"] = {
      Text = BoonControl.config.AspectSettings[aspect].BoonSetting
    }}
    
    for k, v in pairs(BoonControl.BoonPresets) do
      table.insert(hermesBoonOptions, {
        event = function (dropdown)
          DebugPrint { Text = "Updating " .. aspect .. " to " .. k}
          BoonControl.config.AspectSettings[aspect].BoonSetting = k
        end,
        Text = k
      })
    end
    UpdateDropdown(
      screen,
      hermesSettingsByAspectDropdown,
      hermesBoonOptions,
      BoonControl.config.AspectSettings[aspect].BoonSetting
    )
    
  end

  local onAspectChange = function(aspectID)

    updateHermesDropdown(RCLib.CodeToName.Aspects[aspectID])
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
          onAspectChange(aspectID)
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
  

  itemLocationX = itemLocationX + itemSpacingX * 4
  -- actual hermes boons options
  hermesSettingsByAspectDropdown = ErumiUILib.Dropdown.CreateDropdown(screen, {
    Name = "HermesBoonDropdown",
    Group = "Combat_Menu",  
    Scale = {X = .3, Y = .5},
    Padding = {X = 0, Y = 2},
    X = itemLocationX, Y = itemLocationY,
    GeneralFontSize = 16,
    Font = "AlegrayaSansSCRegular",
    -- placeholder, this gets updated very quickly anyway
    Items = {["Default"] = {
      Text = BoonControl.config.AspectSettings[currentAspect].BoonSetting
    }},
  })
  
  updateHermesDropdown(currentAspect)
end

ModUtil.LoadOnce(function()
    ModConfigMenu.RegisterMenuOverride({ModName = "Hypermodded"}, HSMConfigMenu.CreateHypermoddedMenu)
    ModConfigMenu.RegisterMenuOverride({ModName = "Choice of Second God"}, HSMConfigMenu.CreateForceSecondGodMenu)
    ModConfigMenu.RegisterMenuOverride({ModName = "Misc. Trait Settings"}, HSMConfigMenu.CreateBoonControlMenu)
    ModConfigMenu.RegisterMenuOverride({ModName = "Hermes Settings"}, HSMConfigMenu.CreateHermesMenu)
end)
