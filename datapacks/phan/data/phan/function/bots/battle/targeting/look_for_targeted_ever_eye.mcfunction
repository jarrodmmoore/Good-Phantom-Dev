#get ready
scoreboard players operation #checkID value = @s targetID

#check if we can still make eye contact with the eye
scoreboard players set #targetExists value 0
execute as @e[tag=enderEye,type=item_display,distance=..30] if score @s eyeSpawnerID = #checkID value facing entity @s feet run function phan:bots/battle/targeting/los_check_generic_start

#target nothing if we didn't find LOS
execute if score #targetExists value matches 0 run return run function phan:bots/battle/targeting/lost_target
#=====

#target found and still has valid LOS? we're good, then
scoreboard players set #hasTarget value 1

#clean up viable targets
tag @e[tag=viableTarget,type=item_display,distance=..30] remove viableTarget