#reset all spawns for Act 1 (which is what the practice course uses)
function phan:game/1/spawning/reset_all_a
scoreboard players set #targetTimeAct1 value 60
scoreboard players set #time2portalTicks value 0
scoreboard players set #time2portalMsec value 0
scoreboard players set #time2portalSec value 0
scoreboard players set #time2portalSec10 value 0
scoreboard players set #time2portalMin value 0

#editLoadArea 0 starts doing stuff right away
scoreboard players set #area0SpawnA value 0

#all players share the portal, here
scoreboard players set #practicePearlsNeeded value 16