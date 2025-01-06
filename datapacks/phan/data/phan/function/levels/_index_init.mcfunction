#default stuff that individual levels can override
scoreboard players set #nightVision value 0
scoreboard players set #brightMines value 0
scoreboard players set #portal1StopsMusic value 0
scoreboard players set #portal2StopsMusic value 0
scoreboard players set #portal3StopsMusic value 0

#run level init function
function phan:level_manager/load/function_init with storage phan_dream_active:dream_data

#load generic conditions (if these conflict, later-act players will take priority)
execute as @a[scores={pCurrentArea=1}] run function phan:level_manager/load/load_score_attack_conditions with storage phan_dream_active:sa_act_1
execute as @a[scores={pCurrentArea=2}] run function phan:level_manager/load/load_score_attack_conditions with storage phan_dream_active:sa_act_2
execute as @a[scores={pCurrentArea=3}] run function phan:level_manager/load/load_score_attack_conditions with storage phan_dream_active:sa_act_3

#determine which portals should cause music changes
execute store result score #test1 value run data get storage phan_dream_active:sa_act_1 music_track
execute store result score #test2 value run data get storage phan_dream_active:sa_act_2 music_track
execute store result score #test3 value run data get storage phan_dream_active:sa_act_3 music_track
execute unless score #test1 value = #test2 value run scoreboard players set #portal1StopsMusic value 1
execute unless score #test2 value = #test3 value run scoreboard players set #portal2StopsMusic value 1
execute unless score #test3 value = #test1 value run scoreboard players set #portal3StopsMusic value 1

#old, run level init function
#execute if score #chosenLevel value matches 1 run function phan:levels/pastel_palace/_init
#execute if score #chosenLevel value matches 2 run function phan:levels/moonlit_mountains/_init
#execute if score #chosenLevel value matches 3 run function phan:levels/shattered_city/_init
#execute if score #chosenLevel value matches 4 run function phan:levels/neon_nightway/_init
#execute if score #chosenLevel value matches 5 run function phan:levels/deep_dive/_init