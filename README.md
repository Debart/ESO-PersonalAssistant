# PersonalAssistant
PersonalAssistant, an Addon for 'The Elder Scrolls Online'

***

##Download
http://www.esoui.com/downloads/info381-PersonalAssistant.html

***

##How to use
tbd

***

## Development ToDo

#### General
* Update Currency System
  * https://forums.elderscrollsonline.com/en/discussion/200789/imperial-city-api-patch-notes-change-log-live/p1
* Support ESO Plus Bags
  * BAG_VIRTUAL (Dark Brotherhood)
    * https://forums.elderscrollsonline.com/en/discussion/261946/dark-brotherhood-api-patch-notes-change-log-pts
  * BAG_SUBSCRIBER_BANK (Morrowind)
    * https://forums.elderscrollsonline.com/en/discussion/335644/update-14-api-patch-notes-change-log-pts
* Check ItemLink Handling in HelperFunctions.lua
  * http://www.esoui.com/forums/showthread.php?t=2054
  * http://www.esoui.com/forums/showthread.php?t=1944
* Check Singular/Plural formatting for HelperFunctions.lua
    * http://www.esoui.com/forums/showthread.php?p=7988
  
  
#### PABanking
* PABanking: Refactor regarding inventory-loop  
    ```lua
    local bagSlots = SHARED_INVENTORY:GetBagCache(BAG_BACKPACK)
    if bagSlots then
        for index, data in pairs(bagSlots) do
            data.stolen
            data.isGemmable
            itemLink = GetItemLink(BAG_BACKPACK, index)
        end
    end
    ```
* PABanking: Refactor regarding Item Movement  
    ```lua
    RequestMoveItem (number sourceBag, number sourceSlot, number destBag, number destSlot, number stackCount)
    ```
* PABanking: Add Soul gems (empty / filled)
* PABanking: Add summary after transaction completed


#### PALoot
* PALoot: Loot other currencies than gold  
    ```lua
    GetLootCurrency(number CurrencyType type)  
    Returns: number unownedCurrency, number ownedCurrency
  
    CURT_ALLIANCE_POINTS
    CURT_TELVAR_STONES
    ```


#### PAJunk
* PAJunk: Add support for FCOItemSaver
  * http://www.esoui.com/downloads/info630-FCOItemSaver.html

   
***

##Disclaimer

**Disclaimer:**
This Add-on is not created by, affiliated with or sponsored by ZeniMax Media Inc. or its affiliates. The Elder Scrolls® and related logos are registered trademarks or trademarks of ZeniMax Media Inc. in the United States and/or other countries. All rights reserved.
