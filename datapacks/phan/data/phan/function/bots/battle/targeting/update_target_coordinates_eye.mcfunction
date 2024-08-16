scoreboard players set @s botBehavior 3

scoreboard players set #targetExists value 0
execute as @e[tag=enderEye,type=item_display,distance=..30,sort=nearest,scores={eyeSpawnerID=-2147483648..2147483647}] if score @s eyeSpawnerID = #checkID value run function phan:bots/battle/targeting/set_temporary_target_eye
execute if score #targetExists value matches 0 run function phan:bots/battle/targeting/lost_target