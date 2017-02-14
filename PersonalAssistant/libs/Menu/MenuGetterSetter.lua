--
-- Created by IntelliJ IDEA.
-- User: Klingo
-- Date: 13.02.2017
-- Time: 22:40
--

if not PAMenu_Functions then
    PAMenu_Functions = {
        getFunc = {
            PABanking = {},
            PALoot = {},
        },
        setFunc = {
            PABanking = {},
            PALoot = {},
        },
        disabled = {
            PABanking = {},
            PALoot = {},
        },
    }
end

-- =====================================================================================================================
-- =====================================================================================================================

-- PAGeneral

-- =====================================================================================================================
-- =====================================================================================================================

 -- PARepair

-- =====================================================================================================================
-- =====================================================================================================================


--------------------------------------------------------------------------
-- PABanking   enable
---------------------------------
function PAMenu_Functions.getFunc.PABanking.enabled()
    PALogger.log("PAMenu_Functions.getFunc.PABanking.enabled() returns ["..tostring(PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabled).."]")
    return PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabled
end

function PAMenu_Functions.setFunc.PABanking.enabled(value)
    PALogger.log("PAMenu_Functions.setFunc.PABanking.enabled("..tostring(value)..")")
    PALogger.log(tostring(PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabled))
    PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabled = value
end

--------------------------------------------------------------------------
-- PABanking   enabledGold
---------------------------------
function PAMenu_Functions.getFunc.PABanking.enabledGold()
    return PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabledGold
end

function PAMenu_Functions.setFunc.PABanking.enabledGold(value)
    PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabledGold = value
end

function PAMenu_Functions.disabled.PABanking.enabledGold()
    return not PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabled
end

--------------------------------------------------------------------------
-- PABanking   goldDepositInterval
---------------------------------
function PAMenu_Functions.getFunc.PABanking.goldDepositInterval()
    PALogger.log("PAMenu_Functions.getFunc.PABanking.goldDepositInterval() returns ["..tostring(PA.savedVars.Banking[PA.savedVars.General.activeProfile].goldDepositInterval).."]")
    PALogger.log(tostring(PA.savedVars.Banking[PA.savedVars.General.activeProfile].goldDepositInterval))
    return PA.savedVars.Banking[PA.savedVars.General.activeProfile].goldDepositInterval
end

function PAMenu_Functions.setFunc.PABanking.goldDepositInterval(value)
    PALogger.log("PAMenu_Functions.setFunc.PABanking.goldDepositInterval("..tostring(value)..")")
    PA.savedVars.Banking[PA.savedVars.General.activeProfile].goldDepositInterval = value
end

function PAMenu_Functions.disabled.PABanking.goldDepositInterval()
    return not (PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabled and PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabledGold)
end

--------------------------------------------------------------------------
-- PABanking   goldDepositPercentage
---------------------------------
function PAMenu_Functions.getFunc.PABanking.goldDepositPercentage()
    return PA.savedVars.Banking[PA.savedVars.General.activeProfile].goldDepositPercentage
end

function PAMenu_Functions.setFunc.PABanking.goldDepositPercentage(value)
    PA.savedVars.Banking[PA.savedVars.General.activeProfile].goldDepositPercentage = value
end

function PAMenu_Functions.disabled.PABanking.goldDepositPercentage()
    return not (PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabled and PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabledGold)
end

--------------------------------------------------------------------------
-- PABanking   goldTransactionStep
---------------------------------
function PAMenu_Functions.getFunc.PABanking.goldTransactionStep()
   return PA.savedVars.Banking[PA.savedVars.General.activeProfile].goldTransactionStep
end

function PAMenu_Functions.setFunc.PABanking.goldTransactionStep(value)
    PA.savedVars.Banking[PA.savedVars.General.activeProfile].goldTransactionStep = value
end

function PAMenu_Functions.disabled.PABanking.goldTransactionStep()
    return not (PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabled and PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabledGold)
end

--------------------------------------------------------------------------
-- PABanking   goldMinToKeep
---------------------------------
function PAMenu_Functions.getFunc.PABanking.goldMinToKeep()
    return PA.savedVars.Banking[PA.savedVars.General.activeProfile].goldMinToKeep
    -- return tostring(PA.savedVars.Banking[PA.savedVars.General.activeProfile].goldMinToKeep)
end

function PAMenu_Functions.setFunc.PABanking.goldMinToKeep(value)
    PA.savedVars.Banking[PA.savedVars.General.activeProfile].goldMinToKeep = value
end

function PAMenu_Functions.disabled.PABanking.goldMinToKeep()
    return not (PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabled and PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabledGold)
end

--------------------------------------------------------------------------
-- PABanking   withdrawToMinGold
---------------------------------
function PAMenu_Functions.getFunc.PABanking.withdrawToMinGold()
    return PA.savedVars.Banking[PA.savedVars.General.activeProfile].withdrawToMinGold
end

function PAMenu_Functions.setFunc.PABanking.withdrawToMinGold(value)
    PA.savedVars.Banking[PA.savedVars.General.activeProfile].withdrawToMinGold = value
end

function PAMenu_Functions.disabled.PABanking.withdrawToMinGold()
    return not (PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabled and PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabledGold)
end

--------------------------------------------------------------------------
-- PABanking   enabledItems
---------------------------------
function PAMenu_Functions.getFunc.PABanking.enabledItems()
    return PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabledItems
end

function PAMenu_Functions.setFunc.PABanking.enabledItems(value)
    PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabledItems = value
end

function PAMenu_Functions.disabled.PABanking.enabledItems()
    return not PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabled
end

--------------------------------------------------------------------------
-- PABanking   depositTimerInterval
---------------------------------
function PAMenu_Functions.getFunc.PABanking.depositTimerInterval()
    return PA.savedVars.Banking[PA.savedVars.General.activeProfile].depositTimerInterval
end

function PAMenu_Functions.setFunc.PABanking.depositTimerInterval(value)
    PA.savedVars.Banking[PA.savedVars.General.activeProfile].depositTimerInterval = value
end

function PAMenu_Functions.disabled.PABanking.depositTimerInterval()
    return not (PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabled and PA.savedVars.Banking[PA.savedVars.General.activeProfile].enabledItems)
end


-- =====================================================================================================================
-- =====================================================================================================================


--------------------------------------------------------------------------
-- PALoot   enable
---------------------------------
function PAMenu_Functions.getFunc.PALoot.enabled()
    return PA.savedVars.Loot[PA.savedVars.General.activeProfile].enabled
end

function PAMenu_Functions.setFunc.PALoot.enabled(value)
    PA.savedVars.Loot[PA.savedVars.General.activeProfile].enabled = value
end

--------------------------------------------------------------------------
-- PALoot   lootGoldEnabled
---------------------------------
function PAMenu_Functions.getFunc.PALoot.lootGoldEnabled()
    return PA.savedVars.Loot[PA.savedVars.General.activeProfile].lootGoldEnabled
end

function PAMenu_Functions.setFunc.PALoot.lootGoldEnabled(value)
    PA.savedVars.Loot[PA.savedVars.General.activeProfile].lootGoldEnabled = value
end

function PAMenu_Functions.disabled.PALoot.lootGoldEnabled()
    return not PA.savedVars.Loot[PA.savedVars.General.activeProfile].enabled
end

--------------------------------------------------------------------------
-- PALoot   lootGoldChatMode
---------------------------------
function PAMenu_Functions.getFunc.PALoot.lootGoldChatMode()
    return PA.savedVars.Loot[PA.savedVars.General.activeProfile].lootGoldChatMode
end

function PAMenu_Functions.setFunc.PALoot.lootGoldChatMode(value)
    PA.savedVars.Loot[PA.savedVars.General.activeProfile].lootGoldChatMode = value
end

function PAMenu_Functions.disabled.PALoot.lootGoldChatMode()
    return not (PA.savedVars.Loot[PA.savedVars.General.activeProfile].enabled and PA.savedVars.Loot[PA.savedVars.General.activeProfile].lootGoldEnabled)
end

--------------------------------------------------------------------------
-- PALoot   lootItemsEnabled
---------------------------------
function PAMenu_Functions.getFunc.PALoot.lootItemsEnabled()
    return PA.savedVars.Loot[PA.savedVars.General.activeProfile].lootItemsEnabled
end

function PAMenu_Functions.setFunc.PALoot.lootItemsEnabled(value)
    PA.savedVars.Loot[PA.savedVars.General.activeProfile].lootItemsEnabled = value
end

function PAMenu_Functions.disabled.PALoot.lootItemsEnabled()
    return not PA.savedVars.Loot[PA.savedVars.General.activeProfile].enabled
end

--------------------------------------------------------------------------
-- PALoot   lootItemsChatMode
---------------------------------
function PAMenu_Functions.getFunc.PALoot.lootItemsChatMode()
    return PA.savedVars.Loot[PA.savedVars.General.activeProfile].lootItemsChatMode
end

function PAMenu_Functions.setFunc.PALoot.lootItemsChatMode(value)
    PA.savedVars.Loot[PA.savedVars.General.activeProfile].lootItemsChatMode = value
end

function PAMenu_Functions.disabled.PALoot.lootItemsChatMode()
    return not (PA.savedVars.Loot[PA.savedVars.General.activeProfile].enabled and PA.savedVars.Loot[PA.savedVars.General.activeProfile].lootItemsEnabled)
end

-- =====================================================================================================================
-- =====================================================================================================================

-- PAJunk



-- =====================================================================================================================
-- =====================================================================================================================