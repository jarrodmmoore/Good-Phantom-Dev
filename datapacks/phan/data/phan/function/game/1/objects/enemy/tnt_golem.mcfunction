#editArg1 tracks whether we're aggro or not
#editArg2 is attack state / cooldown

#use the "age" variable to check LOS to player every few ticks
scoreboard players add @s age 1
execute if score @s age matches 10.. if entity @s[tag=!declawed] positioned ~ ~1.6 ~ run function phan:game/1/objects/enemy/tnt_golem_check_los

#targeting a player? run aggro code
execute if score @s editArg1 matches 1 run function phan:game/1/objects/enemy/tnt_golem_aggro

#otherwise do nothing and reset attack cooldown
execute unless score @s editArg1 matches 1 run scoreboard players set @s editArg2 0

#change model depending if we have a tnt or not
scoreboard players remove @s[scores={editArg3=1..}] editArg3 1
execute if score @s editArg3 matches 1 run function phan:game/1/objects/enemy/tnt_golem_model_throw
execute if score @s editArg3 matches 13 run function phan:game/1/objects/enemy/tnt_golem_model_normal
