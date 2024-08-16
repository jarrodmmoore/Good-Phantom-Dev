#check for each individual option

#assist mode (generally)
execute store result score #test value run clear @s red_dye[custom_data~{assistEnabled:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_assist_broad


#movement
execute store result score #test value run clear @s red_dye[custom_data~{assistMovement:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_movement

#energy
execute store result score #test value run clear @s red_dye[custom_data~{assistEnergy:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_energy

#enemies
execute store result score #test value run clear @s red_dye[custom_data~{assistEnemies:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_enemies


#time limit
execute store result score #test value run clear @s red_dye[custom_data~{assistTimeLimit:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_time_limit

#combos
execute store result score #test value run clear @s red_dye[custom_data~{assistCombos:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_combos

#navigation
execute store result score #test value run clear @s red_dye[custom_data~{assistNavigation:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_navigation


#rival bot
execute store result score #test value run clear @s red_dye[custom_data~{assistRival:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_rival

#catch up
execute store result score #test value run clear @s red_dye[custom_data~{assistCatchUp:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_catch_up

#race end timer
execute store result score #test value run clear @s red_dye[custom_data~{assistRaceEndTime:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_race_end_time

#items
execute store result score #test value run clear @s red_dye[custom_data~{assistItems:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/change_items



#noisemakers
execute store result score #test value run clear @s *[custom_data~{assistGeneral:1b}] 0
execute if score #test value matches 1.. at @s run playsound minecraft:entity.phantom.hurt master @s ~ ~ ~ 1.1 1.2

execute store result score #test value run clear @s *[custom_data~{assistScoreAttack:1b}] 0
execute if score #test value matches 1.. at @s run playsound minecraft:block.amethyst_block.hit master @s ~ ~1 ~ 2 1.3

execute store result score #test value run clear @s *[custom_data~{assistPortalRace:1b}] 0
execute if score #test value matches 1.. at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1.8 1

execute store result score #test value run clear @s *[custom_data~{assistWarning:1b}] 0
execute if score #test value matches 1.. at @s run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1



#clear inv, just in case we picked up one that doesn't have a handler
clear @s *[custom_data~{assistMenu:1b}]