local updateColorblindCheckbox = function(screen, button)
    local enabled = ColorblindMod.config[button.Biome .. "Enabled"]
    local radioButtonValue = "RadioButton_Unselected"
    if enabled then
        radioButtonValue = "RadioButton_Selected"
    end
    SetThingProperty({
        DestinationId = button.Id,
        Property = "Graphic",
        Value = radioButtonValue
    })
end

function HSMConfigMenu.CreateHypermoddedMenu( screen )
    local rowStartX = 250
    local itemLocationX = rowStartX
    local itemLocationY = 250
    local itemSpacingX = 250
    local itemSpacingY = 65

end

ModUtil.LoadOnce(function()
    ModConfigMenu.RegisterMenuOverride({ModName = "Hypermodded"}, HSMConfigMenu.CreateHypermoddedMenu)
end)
