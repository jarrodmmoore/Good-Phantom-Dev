#get ready
scoreboard players operation #checkID value = @s botTargetID

#check if we can still gaze into the eyes of our one and only
scoreboard players set #targetExists value 0
tag @s add self_l
execute as @e[tag=playing,tag=!self_l,distance=..20] if score @s playerID = #checkID value facing entity @s feet run function phan:bots/battle/targeting/los_check_generic_start
tag @s remove self_l
#that comment was beautiful. touching. i'm gonna throw up

#target nothing if we didn't find LOS
execute if score #targetExists value matches 0 run return run function phan:bots/battle/targeting/lost_target
#=====

#target found and still has valid LOS? we're good, then
scoreboard players set #hasTarget value 1

#clean up viable targets
tag @e[tag=viableTarget,distance=..20] remove viableTarget