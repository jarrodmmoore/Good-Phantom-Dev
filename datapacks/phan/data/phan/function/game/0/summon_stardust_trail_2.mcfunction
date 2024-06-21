#re-use the first half of the trail if we're coming out of pastel palace
execute if score #lastLevelPlayed value matches 1 run function phan:game/0/summon_stardust_trail_1

execute positioned 212 -1 115 run function phan:game/1/spawning/spawn_stardust_nodeless
execute positioned 211 -1 112 run function phan:game/1/spawning/spawn_stardust_nodeless

execute positioned 210 -1 110 run function phan:game/1/spawning/spawn_stardust_nodeless

execute positioned 208 -1 109 run function phan:game/1/spawning/spawn_stardust_nodeless
execute positioned 205 -1 108 run function phan:game/1/spawning/spawn_stardust_nodeless