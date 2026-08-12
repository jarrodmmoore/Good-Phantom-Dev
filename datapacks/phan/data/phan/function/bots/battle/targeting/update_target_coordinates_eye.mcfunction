scoreboard players set @s botBehavior 3

scoreboard players set #targetExists value 0
execute as @e[type=item_display,tag=enderEye,distance=..30,sort=nearest,scores={eyeSpawnerID=-2147483648..2147483647}] if score @s eyeSpawnerID = #checkID value run function phan:bots/battle/targeting/set_temporary_target_eye
#scoreboard players operation @s botTargetID = #botTargetID value
execute if score #targetExists value matches 0 run function phan:bots/battle/targeting/lost_target