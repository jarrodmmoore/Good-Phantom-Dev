#random chance we might just not
execute store result score #random value run random value 1..100
execute if score @s botSkill matches ..1 if score #random value matches ..40 run return 0
execute if score @s botSkill matches 2 if score #random value matches ..30 run return 0
execute if score @s botSkill matches 3 if score #random value matches ..20 run return 0
execute if score @s botSkill matches 4 if score #random value matches ..15 run return 0
execute if score @s botSkill matches 5 if score #random value matches ..10 run return 0
execute if score @s botSkill matches 6.. if score #random value matches ..5 run return 0
#=====

#check for line of sight to players
scoreboard players set #targetExists value 0

#check for eyes that are roughly in front of us
tag @s add botSelf
scoreboard players operation #checkID value = @s botIgnoreEyeID
execute if score @s botSkill matches ..1 positioned ^ ^ ^5 as @e[tag=enderEye,type=item_display,distance=..6] unless score @s eyeSpawnerID = #checkID value positioned ^ ^ ^-5 facing entity @s feet run function phan:bots/battle/targeting/los_check_ever_eye_start
execute if score @s botSkill matches 2 positioned ^ ^ ^10 as @e[tag=enderEye,type=item_display,distance=..12] unless score @s eyeSpawnerID = #checkID value positioned ^ ^ ^-10 facing entity @s feet run function phan:bots/battle/targeting/los_check_ever_eye_start
execute if score @s botSkill matches 3 positioned ^ ^ ^15 as @e[tag=enderEye,type=item_display,distance=..20] unless score @s eyeSpawnerID = #checkID value positioned ^ ^ ^-15 facing entity @s feet run function phan:bots/battle/targeting/los_check_ever_eye_start
execute if score @s botSkill matches 4 positioned ^ ^ ^20 as @e[tag=enderEye,type=item_display,distance=..35] unless score @s eyeSpawnerID = #checkID value positioned ^ ^ ^-20 facing entity @s feet run function phan:bots/battle/targeting/los_check_ever_eye_start
execute if score @s botSkill matches 5.. positioned ^ ^ ^20 as @e[tag=enderEye,type=item_display,distance=..40] unless score @s eyeSpawnerID = #checkID value positioned ^ ^ ^-20 facing entity @s feet run function phan:bots/battle/targeting/los_check_ever_eye_start
tag @s remove botSelf

#exit out if not target found
execute if score #targetExists value matches 0 run return 0
#=====

#determine if we can reach the target and if we should try shooting at it
scoreboard players set #test2 value 0
scoreboard players set #success value 0
execute as @e[limit=1,sort=nearest,tag=viableTarget,type=item_display,distance=..30] run function phan:bots/battle/targeting/look_for_eyes_validate_target
execute if score #success value matches 0 if score #targetExists value matches 2.. as @e[limit=1,sort=random,tag=viableTarget,type=item_display,distance=..30] run function phan:bots/battle/targeting/look_for_eyes_validate_target
#found something we can walk towards? cool. go for it
execute if score #success value matches 1.. run function phan:bots/battle/targeting/look_for_eyes_accept_target
#nothing walkable? try shooting at it, then
execute if score #success value matches 0 run function phan:bots/battle/targeting/consider_shooting_at_ever_eye

#clean up viable targets
tag @e[tag=viableTarget,type=item_display,distance=..60] remove viableTarget