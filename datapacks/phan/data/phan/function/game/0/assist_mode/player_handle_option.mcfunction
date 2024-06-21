#check for each individual option

#assist mode (generally)
execute store result score #test value run clear @s red_dye[custom_data~{assistEnabled:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_assist_broad

#time limit
execute store result score #test value run clear @s red_dye[custom_data~{assistTimeLimit:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_time_limit

#movement
execute store result score #test value run clear @s red_dye[custom_data~{assistMovement:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_movement

#enemies
execute store result score #test value run clear @s red_dye[custom_data~{assistEnemies:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_enemies

#energy
execute store result score #test value run clear @s red_dye[custom_data~{assistEnergy:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_energy

#combos
execute store result score #test value run clear @s red_dye[custom_data~{assistCombos:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_combos

#navigation
execute store result score #test value run clear @s red_dye[custom_data~{assistNavigation:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_navigation


#clear inv, just in case we picked up one that doesn't have a handler
clear @s red_dye[custom_data~{assistMenu:1b}]