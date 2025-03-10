#record whether we've unlocked certain built-in levels
scoreboard players operation #math value = @s pCurrentArea
function phan:levels/_index_unlock_act

#adopt soul angle for intro cutscene
execute unless score #math value matches 2..3 store result score @s soulAngle run data get storage phan_dream_active:sa_act_1 soul_approach
execute if score #math value matches 2 store result score @s soulAngle run data get storage phan_dream_active:sa_act_2 soul_approach
execute if score #math value matches 3 store result score @s soulAngle run data get storage phan_dream_active:sa_act_3 soul_approach

#store coordinates
execute unless score #math value matches 2..3 run data modify storage phan:coords coord_x set from storage phan_dream_active:sa_act_1 teleport_location[0]
execute unless score #math value matches 2..3 run data modify storage phan:coords coord_y set from storage phan_dream_active:sa_act_1 teleport_location[1]
execute unless score #math value matches 2..3 run data modify storage phan:coords coord_z set from storage phan_dream_active:sa_act_1 teleport_location[2]

execute if score #math value matches 2 run data modify storage phan:coords coord_x set from storage phan_dream_active:sa_act_2 teleport_location[0]
execute if score #math value matches 2 run data modify storage phan:coords coord_y set from storage phan_dream_active:sa_act_2 teleport_location[1]
execute if score #math value matches 2 run data modify storage phan:coords coord_z set from storage phan_dream_active:sa_act_2 teleport_location[2]

execute if score #math value matches 3 run data modify storage phan:coords coord_x set from storage phan_dream_active:sa_act_3 teleport_location[0]
execute if score #math value matches 3 run data modify storage phan:coords coord_y set from storage phan_dream_active:sa_act_3 teleport_location[1]
execute if score #math value matches 3 run data modify storage phan:coords coord_z set from storage phan_dream_active:sa_act_3 teleport_location[2]

#figure out what dimension we're going to
execute unless score #math value matches 2..3 store result score #test3 value run data get storage phan_dream_active:sa_act_1 teleport_dimension
execute if score #math value matches 2 store result score #test3 value run data get storage phan_dream_active:sa_act_2 teleport_dimension
execute if score #math value matches 3 store result score #test3 value run data get storage phan_dream_active:sa_act_3 teleport_dimension

#do it
execute unless score #test3 value matches 2..3 in overworld run return run function phan:level_manager/load/perform_teleport_self with storage phan:coords
execute if score #test3 value matches 2 in the_nether run return run function phan:level_manager/load/perform_teleport_self with storage phan:coords
execute if score #test3 value matches 3 in the_end run return run function phan:level_manager/load/perform_teleport_self with storage phan:coords
