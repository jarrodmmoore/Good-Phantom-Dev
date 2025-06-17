tag @s add playing
tag @s remove playerReservation

#next area
scoreboard players add @s pCurrentArea 1
execute if score @s pCurrentArea matches 4.. run scoreboard players set @s pCurrentArea 1
execute if score #freePlay value matches 0 run gamemode adventure @s

#update level conditions! including on self
execute if score #freePlay value matches 0 run function phan:level_manager/load/load_score_attack_act_specific

#clear points so they don't get doubled on the sidebar during load screen :)
scoreboard players set @s scoreCurrent 0
scoreboard players set @s scoreCurrent2 0

#this is not paranoia code. this actually fixes a bug we found where getting an F allowed you to skip the /clear upon finishing an act
clear @s

#let the loading sequence take us again
scoreboard players set @s pGameTime 0
scoreboard players set @s pSubGameState -1
scoreboard players set @s pShowHUD 0

#set global gameTime to 0 again
scoreboard players set #gameTime value 0

#free play mode: we're done! exit level.
execute if score #freePlay value matches 1 run function phan:game/0/_0_init