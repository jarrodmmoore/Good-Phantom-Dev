tag @s add botSelf
scoreboard players operation #checkID value = @s botTargetID
execute if score @s botTargetPriority matches 2 run function phan:bots/battle/targeting/update_target_coordinates_player
execute if score @s botTargetPriority matches 1 run function phan:bots/battle/targeting/update_target_coordinates_eye
tag @s remove botSelf

execute if score @s botTargetPriority matches 100 run scoreboard players set @s botTargetID 0