-- Local instances of Global tables --
local PA = PersonalAssistant
local PAC = PA.Constants
local PAMenuFunctions = PA.MenuFunctions
local PAMenuDefaults = PA.MenuDefaults
local PAMenuChoices = PA.MenuChoices

local LAM2 = LibStub("LibAddonMenu-2.0")

local PARepairPanelData = {
    type = "panel",
    name = "PersonalAssistant Repair",
    displayName = GetString(SI_PA_MENU_TITLE),
    author = "Klingo",
    version = PAC.ADDON_VERSION,
    website = "http://www.esoui.com/downloads/info381-PersonalAssistant",
    slashCommand = "/parepair",
    registerForRefresh = true,
    registerForDefaults = true,
}

local PARepairOptionsTable = setmetatable({}, { __index = table })

local PARGoldSubmenuTable = setmetatable({}, { __index = table })
local PARRepairKitSubmenuTable = setmetatable({}, { __index = table })
local PARRechargeSubmenuTable = setmetatable({}, { __index = table })

-- =================================================================================================================

local function _createPARepairMenu()
    PARepairOptionsTable:insert({
        type = "header",
        name = GetString(SI_PA_MENU_REPAIR_HEADER)
    })

    PARepairOptionsTable:insert({
        type = "checkbox",
        name = GetString(SI_PA_MENU_REPAIR_ENABLE),
        getFunc = PAMenuFunctions.PARepair.getAutoRepairEnabledSetting,
        setFunc = PAMenuFunctions.PARepair.setAutoRepairEnabledSetting,
        disabled = PAMenuFunctions.PAGeneral.isNoProfileSelected,
        default = PAMenuDefaults.PARepair.autoRepairEnabled,
    })

    PARepairOptionsTable:insert({
        type = "submenu",
        name = GetString(SI_PA_MENU_REPAIR_GOLD_HEADER),
        controls = PARGoldSubmenuTable,
        disabled = PAMenuFunctions.PARepair.isRepairWithGoldMenuDisabled,
    })

    PARepairOptionsTable:insert({
        type = "submenu",
        name = GetString(SI_PA_MENU_REPAIR_REPAIRKIT_HEADER),
        controls = PARRepairKitSubmenuTable,
        disabled = PAMenuFunctions.PARepair.isRepairWithRepairKitMenuDisabled,
    })

    PARepairOptionsTable:insert({
        type = "submenu",
        name = GetString(SI_PA_MENU_REPAIR_RECHARGE_HEADER),
        controls = PARRechargeSubmenuTable,
        disabled = PAMenuFunctions.PARepair.isRechargeWithSoulGemMenuDisabled,
    })

    PARepairOptionsTable:insert({
        type = "checkbox",
        name = GetString(SI_PA_MENU_GENERAL_CHAT_OUTPUT_ENABLE),
        tooltip = GetString(SI_PA_MENU_GENERAL_CHAT_OUTPUT_ENABLE_T),
        getFunc = PAMenuFunctions.PARepair.getChatOutputSetting,
        setFunc = PAMenuFunctions.PARepair.setChatOutputSetting,
        disabled = PAMenuFunctions.PARepair.isChatOutputDisabled,
        default = PAMenuDefaults.PARepair.chatOutput,
    })
end

-- =================================================================================================================

local function _createPARGoldSubmenuTable()
    PARGoldSubmenuTable:insert({
        type = "checkbox",
        name = GetString(SI_PA_MENU_REPAIR_GOLD_ENABLE),
        tooltip = GetString(SI_PA_MENU_REPAIR_GOLD_ENABLE_T),
        getFunc = PAMenuFunctions.PARepair.getRepairWithGoldSetting,
        setFunc = PAMenuFunctions.PARepair.setRepairWithGoldSetting,
        disabled = PAMenuFunctions.PARepair.isRepairWithGoldDisabled,
        default = PAMenuDefaults.PARepair.RepairEquipped.repairWithGold,
    })

    PARGoldSubmenuTable:insert({
        type = "slider",
        name = GetString(SI_PA_MENU_REPAIR_GOLD_DURABILITY),
        tooltip = GetString(SI_PA_MENU_REPAIR_GOLD_DURABILITY_T),
        min = 0,
        max = 99,
        step = 1,
        --        width = "half",
        getFunc = PAMenuFunctions.PARepair.getRepairWithGoldDurabilityThresholdSetting,
        setFunc = PAMenuFunctions.PARepair.setRepairWithGoldDurabilityThresholdSetting,
        disabled = PAMenuFunctions.PARepair.isRepairWithGoldDurabilityThresholdDisabled,
        default = PAMenuDefaults.PARepair.RepairEquipped.repairWithGoldDurabilityThreshold,
    })

    PARGoldSubmenuTable:insert({
        type = "dropdown",
        name = GetString(SI_PA_MENU_REPAIR_CHATMODE),
        tooltip = GetString(SI_PA_MENU_REPAIR_CHATMODE_T),
        choices = PAMenuChoices.choices.PARepair.repairChatMode,
        choicesValues = PAMenuChoices.choicesValues.PARepair.repairChatMode,
        --            width = "half",
        getFunc = PAMenuFunctions.PARepair.getRepairWithGoldChatModeSetting,
        setFunc = PAMenuFunctions.PARepair.setRepairWithGoldChatModeSetting,
        disabled = PAMenuFunctions.PARepair.isRepairWithGoldChatModeDisabled,
        default = PAMenuDefaults.PARepair.RepairEquipped.repairWithGoldChatMode,
    })

end

-- -----------------------------------------------------------------------------------------------------------------

local function _createPARRepairKitSubmenuTable()
    PARRepairKitSubmenuTable:insert({
        type = "checkbox",
        name = GetString(SI_PA_MENU_REPAIR_REPAIRKIT_ENABLE),
        tooltip = GetString(SI_PA_MENU_REPAIR_REPAIRKIT_ENABLE_T),
        getFunc = PAMenuFunctions.PARepair.getRepairWithRepairKitSetting,
        setFunc = PAMenuFunctions.PARepair.setRepairWithRepairKitSetting,
        disabled = PAMenuFunctions.PARepair.isRepairWithRepairKitDisabled,
        default = PAMenuDefaults.PARepair.RepairEquipped.repairWithRepairKit,
    })

    PARRepairKitSubmenuTable:insert({
        type = "slider",
        name = GetString(SI_PA_MENU_REPAIR_REPAIRKIT_DURABILITY),
        tooltip = GetString(SI_PA_MENU_REPAIR_REPAIRKIT_DURABILITY_T),
        min = 0,
        max = 99,
        step = 1,
        getFunc = PAMenuFunctions.PARepair.getRepairWithRepairKitDurabilityThresholdSetting,
        setFunc = PAMenuFunctions.PARepair.setRepairWithRepairKitDurabilityThresholdSetting,
        disabled = PAMenuFunctions.PARepair.isRepairWithRepairKitDurabilityThresholdDisabled,
        default = PAMenuDefaults.PARepair.RepairEquipped.repairWithRepairKitThreshold,
    })


    --    PARRepairKitSubmenuTable:insert({
    --        type = "description",
    --        text = GetString(SI_PA_MENU_NOT_YET_IMPLEMENTED)
    --    })
    --
    --    PARRepairKitSubmenuTable:insert({
    --        type = "checkbox",
    --        name = GetString(SI_PA_MENU_REPAIR_REPAIRKIT_CROWN_ENABLE),
    --        tooltip = GetString(SI_PA_MENU_REPAIR_REPAIRKIT_CROWN_ENABLE_T),
    --        width = "half",
    --        getFunc = PAMenuFunctions.PARepair.getRepairWithCrownRepairKitSetting,
    --        setFunc = PAMenuFunctions.PARepair.setRepairWithCrownRepairKitSetting,
    --        disabled = PAMenuFunctions.PARepair.isRepairWithCrownRepairKitDisabled,
    --        default = PAMenuDefaults.PARepair.RepairEquipped.repairWithCrownRepairKit,
    --    })
    --
    --    PARRepairKitSubmenuTable:insert({
    --        type = "slider",
    --        name = GetString(SI_PA_MENU_REPAIR_REPAIRKIT_CROWN_DURABILITY),
    --        tooltip = GetString(SI_PA_MENU_REPAIR_REPAIRKIT_CROWN_DURABILITY_T),
    --        min = 0,
    --        max = 99,
    --        step = 1,
    --        width = "half",
    --        getFunc = PAMenuFunctions.PARepair.getRepairWithCrownRepairKitDurabilityThresholdSetting,
    --        setFunc = PAMenuFunctions.PARepair.setRepairWithCrownRepairKitDurabilityThresholdSetting,
    --        disabled = PAMenuFunctions.PARepair.isRepairWithCrownRepairKitDurabilityThresholdDisabled,
    --        default = PAMenuDefaults.PARepair.RepairEquipped.repairWithCrownRepairKitThreshold,
    --    })

    PARRepairKitSubmenuTable:insert({
        type = "checkbox",
        name = GetString(SI_PA_MENU_REPAIR_REPAIRKIT_LOW_KIT_WARNING),
        tooltip = GetString(SI_PA_MENU_REPAIR_REPAIRKIT_LOW_KIT_WARNING_T),
        getFunc = PAMenuFunctions.PARepair.getLowRepairKitWarningSetting,
        setFunc = PAMenuFunctions.PARepair.setLowRepairKitWarningSetting,
        disabled = PAMenuFunctions.PARepair.isLowRepairKitWarningDisabled,
        default = PAMenuDefaults.PARepair.RepairEquipped.lowRepairKitWarning,
    })
end

-- -----------------------------------------------------------------------------------------------------------------

local function _createPARRechargeSubmenuTable()
    PARRechargeSubmenuTable:insert({
        type = "checkbox",
        name = GetString(SI_PA_MENU_REPAIR_RECHARGE_ENABLE),
        tooltip = GetString(SI_PA_MENU_REPAIR_RECHARGE_ENABLE_T),
        getFunc = PAMenuFunctions.PARepair.getRechargeWithSoulGemSetting,
        setFunc = PAMenuFunctions.PARepair.setRechargeWithSoulGemSetting,
        disabled = PAMenuFunctions.PARepair.isRechargeWithSoulGemDisabled,
        default = PAMenuDefaults.PARepair.RechargeWeapons.useSoulGems,
    })

    PARRechargeSubmenuTable:insert({
        type = "dropdown",
        name = GetString(SI_PA_MENU_REPAIR_RECHARGE_CHATMODE),
        tooltip = GetString(SI_PA_MENU_REPAIR_RECHARGE_CHATMODE_T),
        choices = PAMenuChoices.choices.PARepair.chargeWeaponsChatMode,
        choicesValues = PAMenuChoices.choicesValues.PARepair.chargeWeaponsChatMode,
        getFunc = PAMenuFunctions.PARepair.getChargeWeaponsChatModeSetting,
        setFunc = PAMenuFunctions.PARepair.setChargeWeaponsChatModeSetting,
        disabled = PAMenuFunctions.PARepair.isChargeWeaponsChatModeDisabled,
        default = PAMenuDefaults.PARepair.RechargeWeapons.chargeWeaponsChatMode,
    })

    PARRechargeSubmenuTable:insert({
        type = "checkbox",
        name = GetString(SI_PA_MENU_REPAIR_RECHARGE_LOW_GEM_WARNING),
        tooltip = GetString(SI_PA_MENU_REPAIR_RECHARGE_LOW_GEM_WARNING_T),
        getFunc = PAMenuFunctions.PARepair.getLowSoulGemWarningSetting,
        setFunc = PAMenuFunctions.PARepair.setLowSoulGemWarningSetting,
        disabled = PAMenuFunctions.PARepair.isLowSoulGemWarningDisabled,
        default = PAMenuDefaults.PARepair.RechargeWeapons.lowSoulGemWarning,
    })
end

-- =================================================================================================================

local function createOptions()
    _createPARepairMenu()

    _createPARGoldSubmenuTable()
    _createPARRepairKitSubmenuTable()
    _createPARRechargeSubmenuTable()

    LAM2:RegisterAddonPanel("PersonalAssistantRepairAddonOptions", PARepairPanelData)
    LAM2:RegisterOptionControls("PersonalAssistantRepairAddonOptions", PARepairOptionsTable)
end

-- ---------------------------------------------------------------------------------------------------------------------
-- Export
PA.Repair = PA.Repair or {}
PA.Repair.createOptions = createOptions
