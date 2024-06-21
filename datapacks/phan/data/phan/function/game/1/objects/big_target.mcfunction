#stay in green "shot" state for a limited time
scoreboard players remove @s[scores={editArg1=1..}] editArg1 1
execute if score @s editArg1 matches 1 run function phan:game/1/objects/big_target_revert