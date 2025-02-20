#executed by "@e[tag=playerSoul]"

execute if score #pCurrentArea value matches ..2 if score #saCustomAreaTransition1 value matches ..0 run function phan:game/1/area_transition_default
execute if score #pCurrentArea value matches ..2 if score #saCustomAreaTransition1 value matches 1.. run function phan:level_manager/load/area_transition_custom_1 with storage phan_dream_active:dream_data

execute if score #pCurrentArea value matches 3 if score #saCustomAreaTransition2 value matches ..0 run function phan:game/1/area_transition_default
execute if score #pCurrentArea value matches 3 if score #saCustomAreaTransition2 value matches 1.. run function phan:level_manager/load/area_transition_custom_2 with storage phan_dream_active:dream_data

execute if score #pCurrentArea value matches 4.. if score #saCustomAreaTransition3 value matches ..0 run function phan:game/1/area_transition_default
execute if score #pCurrentArea value matches 4.. if score #saCustomAreaTransition3 value matches 1.. run function phan:level_manager/load/area_transition_custom_3 with storage phan_dream_active:dream_data

#count up how far we've gone
scoreboard players add #pTransitionProgress value 1

#progress 140? done.
execute if score #pCurrentArea value matches 4.. if score #pTransitionProgress value matches 100140 run scoreboard players set #pGameTime value 100140