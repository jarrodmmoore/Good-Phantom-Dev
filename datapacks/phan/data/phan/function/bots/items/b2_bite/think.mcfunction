#set think cooldown
scoreboard players set #random value 0
execute if score @s botSkill matches ..1 store result score #random value run random value 22..45
execute if score @s botSkill matches 2 store result score #random value run random value 16..30
execute if score @s botSkill matches 3 store result score #random value run random value 12..25
execute if score @s botSkill matches 4 store result score #random value run random value 8..20
execute if score @s botSkill matches 5 store result score #random value run random value 4..15
execute if score @s botSkill matches 6.. store result score #random value run random value 1..10
execute if entity @s[tag=vsHomeStretch,tag=botRival,scores={botSkill=5..}] if score #random value matches 16.. run scoreboard players set #random value 15
scoreboard players operation @s botBiteThinkTime = #random value

#=====

#kick out if on projectile input cooldown
execute if score @s inputCooldownD matches 1.. run return 0

#kick out if blinded
execute if entity @s[scores={squidBlindTime=1..,botSkill=..4}] run return 0

#=====

#check for hittable players and eye pickups
scoreboard players set #targetExists value 0
tag @s add thinkSelf
execute if score @s botSkill matches ..2 positioned ~ ~1.8 ~ positioned ^ ^ ^1 as @e[tag=playing,tag=!thinkSelf,tag=!botRival,distance=..2] run function phan:bots/items/los_check_success
execute if score @s botSkill matches 3.. positioned ~ ~1.8 ~ positioned ^ ^ ^1 as @e[tag=playing,tag=!thinkSelf,tag=!botRival,distance=..3] run function phan:bots/items/los_check_success
execute if score @s botChaseTime matches 40.. positioned ~ ~1.8 ~ positioned ^ ^ ^2 as @e[type=item_display,tag=enderEye,distance=..2] run function phan:bots/items/los_check_success
tag @s remove thinkSelf

#quit if no targets found
execute if score #targetExists value matches ..0 run return 0
#=====

#random aim offset (more extreme for low level bots)
function phan:bots/items/random_aim_offset_large
data modify storage phan:coords functioncall set value "phan:bots/items/b2_bite/use"

#potential targets are now marked with "viableTarget"

#try to bite one of the targets at random
execute facing entity @e[limit=1,sort=random,tag=viableTarget,distance=..6] eyes run function phan:bots/items/shoot_projectile_with_aim_offset with storage phan:coords
tag @e[tag=viableTarget,distance=..6] remove viableTarget