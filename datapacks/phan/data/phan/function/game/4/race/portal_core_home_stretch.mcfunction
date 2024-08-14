#executed by the portalCore node when someone has enough eyes to enter the portal

#hand out positions to players that meet the eye requirement to enter
execute if score #botsEnabled value matches ..0 as @a[tag=playing,tag=vsHomeStretch,sort=nearest] run function phan:game/4/race/checkpoint/player_get_position
execute if score #botsEnabled value matches 1.. as @e[tag=playing,tag=vsHomeStretch,sort=nearest] run function phan:game/4/race/checkpoint/player_get_position

#hand out remaining positions to any unloaded bots that requested a position
execute if score #botsEnabled value matches 1.. if score #checkDoMissingPlayersHS value matches 1.. run function phan:game/4/battle/assign_missing_bot_positions_homestretch

#render portal if we haven't already
execute if score #vsPortalOpen value matches 0 run function phan:game/4/race/portal_core_render