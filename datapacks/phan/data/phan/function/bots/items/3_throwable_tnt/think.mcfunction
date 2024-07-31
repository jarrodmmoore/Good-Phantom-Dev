#kick out if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#exit out if we don't want to get our item stolen
execute if score #botFearsEnderman value matches 1 run return 0

#=====

#chance of attempting to lead the shot (1 = lead the shot)
execute if score @s botSkill matches ..1 store result score #random value run random value 1..6
execute if score @s botSkill matches 2 store result score #random value run random value 1..5
execute if score @s botSkill matches 3 store result score #random value run random value 1..4
execute if score @s botSkill matches 4 store result score #random value run random value 1..3
execute if score @s botSkill matches 5.. store result score #random value run random value 1..2

#lower level bots hold the item before they 100% know they can make a shot
execute if score @s botSkill matches ..3 run scoreboard players set @s botHoldingItem 3

#find hittable players (do a LOS check)
scoreboard players set #targetExists value 0
tag @s add thinkSelf
execute if score @s botSkill matches ..1 anchored eyes positioned ^ ^ ^15 as @e[tag=playing,tag=!thinkSelf,distance=..10] positioned ^ ^ ^-15 facing entity @s feet run function phan:bots/items/los_check_start
execute if score @s botSkill matches 2 anchored eyes positioned ^ ^ ^15 as @e[tag=playing,tag=!thinkSelf,distance=..12] positioned ^ ^ ^-15 facing entity @s feet run function phan:bots/items/los_check_start
execute if score @s botSkill matches 3 anchored eyes positioned ^ ^ ^20 as @e[tag=playing,tag=!thinkSelf,distance=..15] positioned ^ ^ ^-20 facing entity @s feet run function phan:bots/items/los_check_start
execute if score @s botSkill matches 4 anchored eyes positioned ^ ^ ^20 as @e[tag=playing,tag=!thinkSelf,distance=..20] positioned ^ ^ ^-20 facing entity @s feet run function phan:bots/items/los_check_start
execute if score @s botSkill matches 5 anchored eyes positioned ^ ^ ^20 as @e[tag=playing,tag=!thinkSelf,distance=..25] positioned ^ ^ ^-20 facing entity @s feet run function phan:bots/items/los_check_start
execute if score @s botSkill matches 6.. anchored eyes positioned ^ ^ ^20 as @e[tag=playing,tag=!thinkSelf,distance=..30] positioned ^ ^ ^-20 facing entity @s feet run function phan:bots/items/los_check_start
tag @s remove thinkSelf

#quit if no targets found
execute if score #targetExists value matches ..0 run return 0
#=====

#random aim offset (more extreme for low level bots)
function phan:bots/items/random_aim_offset
data modify storage phan:coords functioncall set value "phan:bots/items/3_throwable_tnt/use"

#potential targets are now marked with "viableTarget"

#if we want to lead the shot: check LOS to a projected point ahead of each viable target
scoreboard players set #targetLeadExists value 0
execute if score #random value matches 1 as @e[tag=viableTarget,distance=..51] run function phan:bots/items/lead_los_check_start
execute if score #targetLeadExists value matches 0 run scoreboard players set #random value 0

#not leading the shot? shoot directly at one of the targets at random
execute if score #random value matches 0 facing entity @e[limit=1,sort=random,tag=viableTarget,distance=..51] eyes rotated ~ ~-4 run function phan:bots/items/shoot_projectile_with_aim_offset with storage phan:coords
tag @e[tag=viableTarget,distance=..51] remove viableTarget

#kick out if not leading the shot
execute if score #random value matches 0 run return 0
#=====

#leading the shot? shoot at a projected target
execute as @e[limit=1,sort=random,tag=viableLeadTarget,distance=..50] at @s run summon marker ^ ^ ^5 {UUID:[I;123987,0,0,4]}
execute facing entity 0001e453-0000-0000-0000-000000000004 eyes rotated ~ ~-4 run function phan:bots/items/shoot_projectile_with_aim_offset with storage phan:coords
kill 0001e453-0000-0000-0000-000000000004
tag @e[tag=viableLeadTarget,distance=..51] remove viableLeadTarget