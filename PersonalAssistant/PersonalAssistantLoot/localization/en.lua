local PAC = PersonalAssistant.Constants
local PALStrings = {
    -- =================================================================================================================
    -- Language specific texts that need to be translated --

    -- =================================================================================================================
    -- == MENU/PANEL TEXTS == --
    -- -----------------------------------------------------------------------------------------------------------------
    -- PALoot Menu --
    -- TODO: Refactor all texts below for PALoot!
    SI_PA_MENU_LOOT_DESCRIPTION = "PALoot can notify you when items of special interest (such as unknown recipes, motifs, or traits) have been looted",
    -- Loot Recipes
    SI_PA_MENU_LOOT_RECIPES_HEADER = table.concat({" ", PAC.ICONS.ITEMS.RECIPE.NORMAL, "  ", "When Looting ", zo_strformat("<<m:1>>", GetString("SI_ITEMTYPE", ITEMTYPE_RECIPE))}),
    SI_PA_MENU_LOOT_RECIPES_UNKNOWN_MSG = table.concat({"Display message if ", GetString("SI_ITEMTYPE", ITEMTYPE_RECIPE), " is unknown"}),
    SI_PA_MENU_LOOT_RECIPES_UNKNOWN_MSG_T = "???",

    -- Loot Motifs
    SI_PA_MENU_LOOT_MOTIFS_HEADER = table.concat({" ", PAC.ICONS.ITEMS.MOTIF.NORMAL, "  ", "When Looting ", zo_strformat("<<m:1>>", GetString("SI_ITEMTYPE", ITEMTYPE_RACIAL_STYLE_MOTIF))}),
    SI_PA_MENU_LOOT_MOTIFS_UNKNOWN_MSG = table.concat({"Display message if ", GetString("SI_ITEMTYPE", ITEMTYPE_RACIAL_STYLE_MOTIF), " is unknown"}),
    SI_PA_MENU_LOOT_MOTIFS_UNKNOWN_MSG_T = "???",

    -- Loot Apparel & Weapons
    SI_PA_MENU_LOOT_APPARELWEAPONS_HEADER = table.concat({" ", PAC.ICONS.CRAFTBAG.WEAPON.NORMAL, "  ", "When Looting ", zo_strformat("<<m:1>>", GetString("SI_ITEMFILTERTYPE", ITEMFILTERTYPE_ARMOR)), " & ", zo_strformat("<<m:1>>", GetString("SI_ITEMFILTERTYPE", ITEMFILTERTYPE_WEAPONS))}),
    SI_PA_MENU_LOOT_APPARELWEAPONS_UNKNOWN_MSG = "Display message if Trait is not yet researched",
    SI_PA_MENU_LOOT_APPARELWEAPONS_UNKNOWN_MSG_T = "???",

    SI_PA_MENU_LOOT_LOW_INVENTORY_WARNING = "Warn when low on inventory space",
    SI_PA_MENU_LOOT_LOW_INVENTORY_WARNING_T ="Display a warning in the chat window if you are low on inventory space",
    SI_PA_MENU_LOOT_LOW_INVENTORY_THRESHOLD = "Inventory space threshold",
    SI_PA_MENU_LOOT_LOW_INVENTORY_THRESHOLD_T = "If the remaining free inventory space is below this threshold, a message is displayed in the chat window",


    -- =================================================================================================================
    -- == CHAT OUTPUTS == --
    -- -----------------------------------------------------------------------------------------------------------------
    -- PALoot --
    SI_PA_CHAT_LOOT_RECIPE_UNKNOWN = table.concat({PAC.COLORED_TEXTS.PAL, "%s can be ", PAC.COLORS.ORANGE,"learned", PAC.COLORS.DEFAULT, "!"}),
    SI_PA_CHAT_LOOT_MOTIF_UNKNOWN = table.concat({PAC.COLORED_TEXTS.PAL, "%s can be ", PAC.COLORS.ORANGE,"learned", PAC.COLORS.DEFAULT, "!"}),
    SI_PA_CHAT_LOOT_TRAIT_UNKNOWN = table.concat({PAC.COLORED_TEXTS.PAL, "%s has [", PAC.COLORS.ORANGE,"%s", PAC.COLORS.DEFAULT,"] that can be researched!"}),

    SI_PA_PATTERN_INVENTORY_COUNT = table.concat({PAC.COLORED_TEXTS.PAL, "%sYou have <<1[", PAC.COLORS.WHITE,"no/only ", PAC.COLORS.WHITE, "%d/only ", PAC.COLORS.WHITE, "%d]>> %s<<1[inventory space/inventory space/inventory spaces]>> left!"}),
    SI_PA_PATTERN_REPAIRKIT_COUNT = table.concat({PAC.COLORED_TEXTS.PAL, "%sYou have <<1[", PAC.COLORS.WHITE,"no/only ", PAC.COLORS.WHITE, "%d/only ", PAC.COLORS.WHITE, "%d]>> %s<<1[Repair Kits/Repair Kit/Repair Kits]>> left!"}),
    SI_PA_PATTERN_SOULGEM_COUNT = table.concat({PAC.COLORED_TEXTS.PAL, "%sYou have <<1[", PAC.COLORS.WHITE,"no/only ", PAC.COLORS.WHITE, "%d/only ", PAC.COLORS.WHITE, "%d]>> %s<<1[Soul Gems/SoulGem/Soul Gems]>> left!"}),


    -- =================================================================================================================
    -- == OTHER STRINGS FOR MENU == --
    -- -----------------------------------------------------------------------------------------------------------------
    -- PALoot --
    -- TODO: to be removed below?
    SI_PA_MENU_LOOT_ENABLE = table.concat({PAC.COLORS.LIGHT_BLUE, "Enable Auto Loot"}),
    SI_PA_MENU_LOOT_ENABLE_T = "Enable Auto Loot?",
}

for key, value in pairs(PALStrings) do
    ZO_CreateStringId(key, value)
    SafeAddVersion(key, 1)
end


local PALGenericStrings = {
    -- =================================================================================================================
    -- Language independent texts (do not need to be translated/copied to other languages --

    -- =================================================================================================================
    -- == MENU/PANEL TEXTS == --
    -- -----------------------------------------------------------------------------------------------------------------
    -- PALoot Menu --
    SI_PA_MENU_LOOT_HEADER = PAC.COLORED_TEXTS.PAL,


    -- =================================================================================================================
    -- == OTHER STRINGS FOR MENU == --
    -- -----------------------------------------------------------------------------------------------------------------
}

for key, value in pairs(PALGenericStrings) do
    ZO_CreateStringId(key, value)
    SafeAddVersion(key, 1)
end