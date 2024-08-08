#clean up some tags and flags that might be set if we got called from "1_follow_waypoint/target_nearest"
tag @s[tag=botUseNearestSpread] remove botUseNearestSpread
tag @s[tag=botTargetNearestWP] remove botTargetNearestWP
tag @s[tag=botTargetMidAir] remove botTargetMidAir
scoreboard players set #getChildIDs value 0

#if target coordinates are set but unloaded, we will respawn
execute if score #vGameType value matches 1 if score @s botTargetX matches -2147483648..2147483647 run function phan:bots/behaviors/1_follow_waypoints/bot_consider_respawning_check_loaded

#try to find waypoints we can re-route to if we're allowed to
scoreboard players set #foundNode value 0
execute if score @s botAllowedReroutes matches 1.. at @s run function phan:bots/behaviors/1_follow_waypoints/reroute_try
execute if score #foundNode value matches 1 run return 0

#battle mode: just like human players, we are NOT allowed to respawn on command.
#so instead of respawning, switch to "roam" logic
execute if score #vGameType value matches 2 run return run function phan:bots/behaviors/1_follow_waypoints/switch_to_wander_logic_temporary

#respawn if we didn't successfully re-route anywhere
execute if score @s botTimeBeenAlive matches 80.. run return run tag @s add botRespawn
tag @s add botRespawnAdvance