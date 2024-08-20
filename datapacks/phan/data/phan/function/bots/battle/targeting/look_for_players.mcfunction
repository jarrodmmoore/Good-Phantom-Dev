#random chance we might just not engage at all
execute store result score #random value run random value 1..100
execute if entity @s[scores={botSkill=4..,shieldTime=20..}] run scoreboard players add #random value 30
execute if entity @s[scores={botSkill=4..,energy=..1}] run scoreboard players remove #random value 25
execute if entity @s[scores={botSkill=4..,botHasItem12=1..}] run scoreboard players add #random value 35
execute if score @s botSkill matches ..1 if score #random value matches ..45 run return 0
execute if score @s botSkill matches 2 if score #random value matches ..30 run return 0
execute if score @s botSkill matches 3 if score #random value matches ..25 run return 0
execute if score @s botSkill matches 4 if score #random value matches ..21 run return 0
execute if score @s botSkill matches 5 if score #random value matches ..18 run return 0
execute if score @s botSkill matches 6.. if score #random value matches ..15 run return 0
#=====

#check for line of sight to players
scoreboard players set #targetExists value 0

#check on players who are roughly in front of us
tag @s add self_l
execute if score @s botSkill matches ..2 positioned ~ ~1.8 ~ positioned ^ ^ ^5 as @e[tag=playing,tag=!self_l,distance=..8] positioned ^ ^ ^-5 facing entity @s feet run function phan:bots/battle/targeting/los_check_generic_start
execute if score @s botSkill matches 3 positioned ~ ~1.8 ~ positioned ^ ^ ^5 as @e[tag=playing,tag=!self_l,distance=..10] positioned ^ ^ ^-5 facing entity @s feet run function phan:bots/battle/targeting/los_check_generic_start
execute if score @s botSkill matches 4 positioned ~ ~1.8 ~ positioned ^ ^ ^5 as @e[tag=playing,tag=!self_l,distance=..12,scores={shieldTime=..0}] positioned ^ ^ ^-5 facing entity @s feet run function phan:bots/battle/targeting/los_check_generic_start
execute if score @s botSkill matches 5 positioned ~ ~1.8 ~ positioned ^ ^ ^5 as @e[tag=playing,tag=!self_l,distance=..14,scores={shieldTime=..0}] positioned ^ ^ ^-5 facing entity @s feet run function phan:bots/battle/targeting/los_check_generic_start
execute if score @s botSkill matches 6.. positioned ~ ~1.8 ~ positioned ^ ^ ^5 as @e[tag=playing,tag=!self_l,distance=..15,scores={shieldTime=..0}] positioned ^ ^ ^-5 facing entity @s feet run function phan:bots/battle/targeting/los_check_generic_start
tag @s remove self_l

#exit out if not target found
execute if score #targetExists value matches 0 run return 0
#=====

#target one of the players with LOS
scoreboard players operation @s[scores={botSkill=4..}] botTargetID = @e[limit=1,sort=nearest,tag=viableTarget,distance=..24] playerID
scoreboard players operation @s[scores={botSkill=..3}] botTargetID = @e[limit=1,sort=random,tag=viableTarget,distance=..24] playerID
scoreboard players set @s botTargetPriority 2
function phan:bots/behaviors/3_follow_target/start_following_target
scoreboard players set #hasTarget value 1

#clean up viable targets
tag @e[tag=viableTarget,distance=..24] remove viableTarget