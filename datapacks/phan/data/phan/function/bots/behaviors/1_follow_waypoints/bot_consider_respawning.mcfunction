#try to find waypoints we can re-route to if we're allowed to
scoreboard players set #foundNode value 0
execute if score @s botAllowedReroutes matches 1.. at @s run function phan:bots/behaviors/1_follow_waypoints/reroute_try
execute if score #foundNode value matches 1 run return 0

#battle mode: just like human players, we are NOT allowed to respawn on command.
#so instead of respawning, switch to "roam" logic
execute if score #vGameType value matches 2 run return run function phan:bots/behaviors/1_follow_waypoints/switch_to_wander_logic_temporary

#respawn if we didn't successfully re-route anywhere
tag @s add botRespawn