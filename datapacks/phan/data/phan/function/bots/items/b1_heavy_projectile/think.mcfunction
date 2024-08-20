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

#kick out if we don't have energy
execute if score @s energy matches ..1 run return 0

#high level bots will try to hold on to at least 1 shot's worth of energy for grabbing eyes
execute if entity @s[tag=!vsHomeStretch,scores={botSkill=4..,energy=..3}] unless score @s botTargetPriority matches 2 run return 0

#kick out if on projectile input cooldown
execute if score @s inputCooldownC matches 1.. run return 0

#kick out if blinded
execute if entity @s[scores={squidBlindTime=1..,botSkill=..5}] run return 0

#=====

#chance of attempting to lead the shot (1 = lead the shot)
execute if score @s botSkill matches ..1 store result score #random value run random value 1..6
execute if score @s botSkill matches 2 store result score #random value run random value 1..5
execute if score @s botSkill matches 3 store result score #random value run random value 1..4
execute if score @s botSkill matches 4 store result score #random value run random value 1..3
execute if score @s botSkill matches 5.. store result score #random value run random value 1..2

#find hittable players (do a LOS check)
scoreboard players set #targetExists value 0
tag @s add thinkSelf
execute if score @s botSkill matches ..1 positioned ~ ~1.8 ~ positioned ^ ^ ^15 as @e[tag=playing,tag=!thinkSelf,distance=..10] positioned ^ ^ ^-15 facing entity @s feet run function phan:bots/items/los_check_start
execute if score @s botSkill matches 2 positioned ~ ~1.8 ~ positioned ^ ^ ^15 as @e[tag=playing,tag=!thinkSelf,distance=..12] positioned ^ ^ ^-15 facing entity @s feet run function phan:bots/items/los_check_start
execute if score @s botSkill matches 3 positioned ~ ~1.8 ~ positioned ^ ^ ^20 as @e[tag=playing,tag=!thinkSelf,distance=..15] positioned ^ ^ ^-20 facing entity @s feet run function phan:bots/items/los_check_start
execute if score @s botSkill matches 4 positioned ~ ~1.8 ~ positioned ^ ^ ^20 as @e[tag=playing,tag=!thinkSelf,distance=..20] positioned ^ ^ ^-20 facing entity @s feet run function phan:bots/items/los_check_start
execute if score @s botSkill matches 5 positioned ~ ~1.8 ~ positioned ^ ^ ^20 as @e[tag=playing,tag=!thinkSelf,distance=..25] positioned ^ ^ ^-20 facing entity @s feet run function phan:bots/items/los_check_start
execute if score @s botSkill matches 6.. positioned ~ ~1.8 ~ positioned ^ ^ ^20 as @e[tag=playing,tag=!thinkSelf,distance=..30] positioned ^ ^ ^-20 facing entity @s feet run function phan:bots/items/los_check_start
tag @s remove thinkSelf

#quit if no targets found
execute if score #targetExists value matches ..0 run return 0
#=====

#random aim offset (more extreme for low level bots)
function phan:bots/items/random_aim_offset
data modify storage phan:coords functioncall set value "phan:bots/items/b1_heavy_projectile/use"

#potential targets are now marked with "viableTarget"

#if we want to lead the shot: check LOS to a projected point ahead of each viable target
scoreboard players set #targetLeadExists value 0
execute if score #random value matches 1 as @e[tag=viableTarget,distance=..51] run function phan:bots/items/lead_los_check_start
execute if score #targetLeadExists value matches 0 run scoreboard players set #random value 0

#not leading the shot? shoot directly at one of the targets at random
execute if score #random value matches 0 facing entity @e[limit=1,sort=random,tag=viableTarget,distance=..51] eyes run function phan:bots/items/shoot_projectile_with_aim_offset with storage phan:coords
tag @e[tag=viableTarget,distance=..51] remove viableTarget

#kick out if not leading the shot
execute if score #random value matches 0 run return 0
#=====

#leading the shot? shoot at a projected target
execute as @e[limit=1,sort=random,tag=viableLeadTarget,distance=..50] at @s run summon marker ^ ^ ^3 {UUID:[I;123987,0,0,4]}
execute facing entity 0001e453-0000-0000-0000-000000000004 eyes run function phan:bots/items/shoot_projectile_with_aim_offset with storage phan:coords
kill 0001e453-0000-0000-0000-000000000004
tag @e[tag=viableLeadTarget,distance=..51] remove viableLeadTarget