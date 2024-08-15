#random chance we might just not engage at all
execute store result score #random value run random value 1..100
execute if score @s botSkill matches ..2 if score #random value matches ..55 run return 0
execute if score @s botSkill matches 3 if score #random value matches ..45 run return 0
execute if score @s botSkill matches 4 if score #random value matches ..35 run return 0
execute if score @s botSkill matches 5 if score #random value matches ..25 run return 0
execute if score @s botSkill matches 6.. if score #random value matches ..15 run return 0
#=====

#check for line of sight to players
scoreboard players set #targetExists value 0

#check on players who are roughly in front of us
tag @s add self_l
execute if score @s botSkill matches ..2 positioned ^ ^ ^5 as @e[tag=playing,tag=!self_l,distance=..5] positioned ^ ^ ^-5 facing entity @s feet run function phan:bots/battle/targeting/los_check_generic_start
execute if score @s botSkill matches 3 positioned ^ ^ ^5 as @e[tag=playing,tag=!self_l,distance=..7] positioned ^ ^ ^-5 facing entity @s feet run function phan:bots/battle/targeting/los_check_generic_start
execute if score @s botSkill matches 4 positioned ^ ^ ^5 as @e[tag=playing,tag=!self_l,distance=..10] positioned ^ ^ ^-5 facing entity @s feet run function phan:bots/battle/targeting/los_check_generic_start
execute if score @s botSkill matches 5.. positioned ^ ^ ^5 as @e[tag=playing,tag=!self_l,distance=..13] positioned ^ ^ ^-5 facing entity @s feet run function phan:bots/battle/targeting/los_check_generic_start
tag @s remove self_l

#exit out if not target found
execute if score #targetExists value matches 0 run return 0
#=====

#target one of the players with LOS
scoreboard players operation @s botTargetID = @e[limit=1,sort=random,tag=viableTarget,distance=..20] playerID
scoreboard players set @s botTargetPriority 2
scoreboard players set @s botBehavior 3
scoreboard players set #hasTarget value 1

#clean up viable targets
tag @e[tag=viableTarget,distance=..20] remove viableTarget