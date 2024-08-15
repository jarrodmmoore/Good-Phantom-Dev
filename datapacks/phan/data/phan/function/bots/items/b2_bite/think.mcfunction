#set think cooldown
scoreboard players set #random value 0
execute if score @s botSkill matches ..1 store result score #random value run random value 80..190
execute if score @s botSkill matches 2 store result score #random value run random value 40..120
execute if score @s botSkill matches 3 store result score #random value run random value 20..70
execute if score @s botSkill matches 4 store result score #random value run random value 16..25
execute if score @s botSkill matches 5.. store result score #random value run random value 1..25
execute if entity @s[tag=vsHomeStretch,tag=botRival,scores={botSkill=5..}] run scoreboard players set #random value 15
scoreboard players operation @s botProjectileThinkTime = #random value

#=====

#kick out if on projectile input cooldown
execute if score @s inputCooldownD matches 1.. run return 0

#=====

#check for hittable players
scoreboard players set #targetExists value 0
tag @s add thinkSelf
execute if score @s botSkill matches ..1 anchored eyes positioned ^ ^ ^2 as @e[tag=playing,tag=!thinkSelf,tag=!botRival,distance=..1] run function phan:bots/items/los_check_success
execute if score @s botSkill matches 2 anchored eyes positioned ^ ^ ^2 as @e[tag=playing,tag=!thinkSelf,tag=!botRival,distance=..2] run function phan:bots/items/los_check_success
execute if score @s botSkill matches 3 anchored eyes positioned ^ ^ ^2 as @e[tag=playing,tag=!thinkSelf,tag=!botRival,distance=..3] run function phan:bots/items/los_check_success
execute if score @s botSkill matches 4.. anchored eyes positioned ^ ^ ^1 as @e[tag=playing,tag=!thinkSelf,tag=!botRival,distance=..3] run function phan:bots/items/los_check_success
tag @s remove thinkSelf

#quit if no targets found
execute if score #targetExists value matches ..0 run return 0
#=====

#random aim offset (more extreme for low level bots)
function phan:bots/items/random_aim_offset_large
data modify storage phan:coords functioncall set value "phan:bots/items/b2_bite/use"

#potential targets are now marked with "viableTarget"

#try to bite one of the targets at random
execute if score #random value matches 0 facing entity @e[limit=1,sort=random,tag=viableTarget,distance=..6] eyes run function phan:bots/items/shoot_projectile_with_aim_offset with storage phan:coords
tag @e[tag=viableTarget,distance=..6] remove viableTarget