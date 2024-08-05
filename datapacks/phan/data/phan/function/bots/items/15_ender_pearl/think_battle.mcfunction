#(continuation from 15_ender_pearl/think)

#very easy bots will never use (or even hold)
execute if score @s botSkill matches ..1 run return 0

#normal bots and lower won't use in the home stretch (try not to upset any kids playing this by stealing win)
execute if entity @s[tag=vsHomeStretch,scores={botSkill=..3}] run return 0

#tryhard bot: save 1 ender pearl for the home stretch
execute if entity @s[tag=!vsHomeStretch,scores={botSkill=5..,botHasItem15=..1}] run return 0

#if we're not the rival bot: don't ender pearl at the end portal if rival bot hasn't finished yet
execute if entity @s[tag=vsHomeStretch,tag=!botRival] if score #botRivalFinished value matches 0 run return 0

#hard+: if in home strech: keep holding ender pearl regardless if we can use it. keep checking los!
execute if entity @s[tag=vsHomeStretch,scores={botSkill=4..}] if score @s botFearsEnderman matches 0 run scoreboard players set @s botHoldingItem 15

#never use if we have another ender pearl entity in flight
execute if score @s botTeleportTimer matches 0.. run return 0

#=====

#note: ender pearl can travel 54 blocks with 35deg angle

scoreboard players set #targetExists value 0

#might throw ender pearl at a player!
execute if entity @s[tag=!vsHomeStretch] anchored eyes rotated ~ 0 as @e[tag=playing,tag=!botRival,distance=10..50,limit=5,sort=random] facing entity @s eyes rotated ~ ~-15 run function phan:bots/items/15_ender_pearl/pearl_check_los_start_direct

#might use ender pearl for the portal
execute if entity @s[tag=vsHomeStretch] anchored eyes rotated ~ 0 run function phan:bots/items/15_ender_pearl/find_possible_targets_race_portal

#no viable target found? exit out now
execute if score #targetExists value matches 0 run return 0

#=====

#use item facing target
execute if entity @s[tag=!vsHomeStretch] facing entity @e[limit=1,sort=nearest,tag=viableTarget,distance=..52] eyes rotated ~ ~-15 run function phan:bots/items/15_ender_pearl/use
execute if entity @s[tag=vsHomeStretch] if score #rot_pitch value matches -15 facing entity @e[limit=1,sort=nearest,tag=viableTarget,type=marker,distance=..72] eyes rotated ~ ~-15 run function phan:bots/items/15_ender_pearl/use
execute if entity @s[tag=vsHomeStretch] if score #rot_pitch value matches -20 facing entity @e[limit=1,sort=nearest,tag=viableTarget,type=marker,distance=..72] eyes rotated ~ ~-15 run function phan:bots/items/15_ender_pearl/use
execute if entity @s[tag=vsHomeStretch] if score #rot_pitch value matches -25 facing entity @e[limit=1,sort=nearest,tag=viableTarget,type=marker,distance=..72] eyes rotated ~ ~-15 run function phan:bots/items/15_ender_pearl/use
execute if entity @s[tag=vsHomeStretch] if score #rot_pitch value matches -30 facing entity @e[limit=1,sort=nearest,tag=viableTarget,type=marker,distance=..72] eyes rotated ~ ~-15 run function phan:bots/items/15_ender_pearl/use
execute if entity @s[tag=vsHomeStretch] if score #rot_pitch value matches -35 facing entity @e[limit=1,sort=nearest,tag=viableTarget,type=marker,distance=..72] eyes rotated ~ ~-15 run function phan:bots/items/15_ender_pearl/use

#clean up tags
tag @e[tag=viableTarget,distance=..52] remove viableTarget