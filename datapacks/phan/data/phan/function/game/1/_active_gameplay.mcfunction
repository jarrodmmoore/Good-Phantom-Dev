#even more player-specific code!
function phan:game/1/player/_player_main
#yeah, this is some weird organization, but _active_gameplay was originally a globally run function. that all changed when support for 3-player parallel multiplayer was added

#keep track of how much time it takes us to reach the portal
function phan:game/1/time_to_portal

#sync time2portal values
scoreboard players operation #time2portalTicks value = @s time2portalTicks
scoreboard players operation #time2portalMsec value = @s time2portalMsec
scoreboard players operation #time2portalSec value = @s time2portalSec
scoreboard players operation #time2portalSec10 value = @s time2portalSec10
scoreboard players operation #time2portalMin value = @s time2portalMin

#handle portals. (slightly different logic depending on what act we're in)
execute if score @s pCurrentArea matches 1 run function phan:game/1/_portal_logic_act_1
execute if score @s pCurrentArea matches 2 run function phan:game/1/_portal_logic_act_2
execute if score @s pCurrentArea matches 3 run function phan:game/1/_portal_logic_act_3

#jump into portal to finish the level
execute if score @s pPearlsNeeded matches ..0 if block ~ ~-1 ~ end_portal if entity @s[gamemode=!spectator] run function phan:game/1/area_finished