#get ready
scoreboard players operation #checkID value = @s targetID

#check if we are still in range of the eye
scoreboard players set #targetExists value 0
execute as @e[tag=enderEye,type=item_display,distance=..30] if score @s eyeSpawnerID = #checkID value facing entity @s feet run scoreboard players set #targetExists value 1

#target nothing if we didn't find eye
execute if score #targetExists value matches 0 run return run function phan:bots/battle/targeting/lost_target
#=====

#we're good
scoreboard players set #hasTarget value 1