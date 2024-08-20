#random chance we might just not
execute store result score #random value run random value 1..100
execute if score @s botSkill matches ..1 if score #random value matches ..20 run return 0
execute if score @s botSkill matches 2 if score #random value matches ..17 run return 0
execute if score @s botSkill matches 3 if score #random value matches ..14 run return 0
execute if score @s botSkill matches 4 if score #random value matches ..11 run return 0
execute if score @s botSkill matches 5 if score #random value matches ..8 run return 0
execute if score @s botSkill matches 6.. if score #random value matches ..5 run return 0

scoreboard players operation #random value %= #2 value
#=====

#check for line of sight to players
scoreboard players set #targetExists value 0

#check radius based on botSkill
scoreboard players operation #skillCheck value = @s botSkill
#do a better job of checking for stuff if we're running low on time
execute if score #vTimeLimit value matches ..1000 run scoreboard players add #skillCheck value 1
execute if score #vTimeLimit value matches ..2000 run scoreboard players add #skillCheck value 1

#check for eyes that are roughly in front of us
tag @s add botSelf
scoreboard players operation #checkID value = @s botIgnoreEyeID
execute if score #skillCheck value matches ..1 positioned ~ ~2 ~ positioned ^ ^ ^10 as @e[tag=enderEye,type=item_display,distance=..20] unless score @s eyeSpawnerID = #checkID value positioned ^ ^ ^-10 facing entity @s feet run function phan:bots/battle/targeting/los_check_ever_eye_start
execute if score #skillCheck value matches 2 positioned ~ ~2 ~ positioned ^ ^ ^12.5 as @e[tag=enderEye,type=item_display,distance=..25] unless score @s eyeSpawnerID = #checkID value positioned ^ ^ ^-12.5 facing entity @s feet run function phan:bots/battle/targeting/los_check_ever_eye_start
execute if score #skillCheck value matches 3 positioned ~ ~2 ~ positioned ^ ^ ^15 as @e[tag=enderEye,type=item_display,distance=..30] unless score @s eyeSpawnerID = #checkID value positioned ^ ^ ^-15 facing entity @s feet run function phan:bots/battle/targeting/los_check_ever_eye_start
execute if score #skillCheck value matches 4 positioned ~ ~2 ~ positioned ^ ^ ^17.5 as @e[tag=enderEye,type=item_display,distance=..35] unless score @s eyeSpawnerID = #checkID value positioned ^ ^ ^-17.5 facing entity @s feet run function phan:bots/battle/targeting/los_check_ever_eye_start
execute if score #skillCheck value matches 5.. positioned ~ ~2 ~ positioned ^ ^ ^20 as @e[tag=enderEye,type=item_display,distance=..40] unless score @s eyeSpawnerID = #checkID value positioned ^ ^ ^-20 facing entity @s feet run function phan:bots/battle/targeting/los_check_ever_eye_start
tag @s remove botSelf

#exit out if not target found
execute if score #targetExists value matches 0 run return 0
#=====

#determine if we can walk to the target or if we should try shooting at it
scoreboard players set #success value 0

#try to check for a walkable path to eye
#DISABLED -- cut because it was expensive and unreliable
#scoreboard players set #test2 value 0
#execute as @e[limit=1,sort=nearest,tag=viableTarget,type=item_display,distance=..30] run function phan:bots/battle/targeting/look_for_eyes_validate_target
#execute if score #success value matches 0 if score #targetExists value matches 2.. as @e[limit=1,sort=random,tag=viableTarget,type=item_display,distance=..30] run function phan:bots/battle/targeting/look_for_eyes_validate_target

#pick one that's around our height or lower
scoreboard players operation #checkMaxY value = @s location_yy
scoreboard players add #checkMaxY value 40
execute if score #random value matches ..0 as @e[sort=nearest,tag=viableTarget,type=item_display,distance=..30] at @s run function phan:bots/battle/targeting/los_check_validate_path_success
execute if score #random value matches 1.. as @e[sort=random,tag=viableTarget,type=item_display,distance=..30] at @s run function phan:bots/battle/targeting/los_check_validate_path_success

#found something we can walk towards? cool. go for it
execute if score #success value matches 1.. run function phan:bots/battle/targeting/look_for_eyes_accept_target
#nothing walkable? try shooting at it, then
execute if score #success value matches 0 run function phan:bots/battle/targeting/consider_shooting_at_ever_eye

#clean up viable targets
tag @e[tag=viableTarget,type=item_display,distance=..60] remove viableTarget