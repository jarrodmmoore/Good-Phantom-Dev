#(continuation from 15_ender_pearl/think)

#very easy bots will never use (or even hold)
execute if score @s botSkill matches ..1 run return 0

#normal bots and lower won't use in the home stretch (try not to upset any kids playing this by stealing win)
execute if entity @s[tag=vsHomeStretch,scores={botSkill=..3}] run return 0

#tryhard bot: save 1 ender pearl for the home stretch
execute if entity @s[tag=!vsHomeStretch,scores={botSkill=5..,botHasItem15=..1}] run return 0

#if we're not the rival bot: don't ender pearl at the end portal if rival bot hasn't finished yet
execute if entity @s[tag=vsHomeStretch,tag=!botRival] if score #botRivalFinished value matches 0 run return 0

#hard+: if in home stretch: keep holding ender pearl regardless if we can use it. keep checking los!
execute if entity @s[tag=vsHomeStretch,scores={botSkill=4..}] if score @s botFearsEnderman matches 0 run scoreboard players set @s botHoldingItem 15

#never use if we have another ender pearl entity in flight
execute if score @s botTeleportTimer matches 0.. run return 0

#=====

#note: ender pearl can travel 54 blocks with 35deg angle

scoreboard players set #targetExists value 0

#might throw ender pearl at an ever eye
execute if entity @s[tag=!vsHomeStretch,scores={botSkill=3..}] positioned ~ ~1.8 ~ rotated ~ 0 as @e[type=marker,tag=enderEye,distance=10..50,limit=5,sort=random] run function phan:bots/items/15_ender_pearl/find_possible_targets_race_direct

#might throw ender pearl at a player! (unless we already decided to throw at an ever eye)
execute if entity @s[tag=!vsHomeStretch] positioned ~ ~1.8 ~ rotated ~ 0 as @e[tag=playing,tag=!botRival,distance=10..50,limit=5,sort=random] run function phan:bots/items/15_ender_pearl/find_possible_targets_race_direct

#homestretch: might use ender pearl for the portal
execute if entity @s[tag=vsHomeStretch] positioned ~ ~1.8 ~ rotated ~ 0 as @e[type=marker,tag=portalCore,scores={versusSpawn=1},distance=..70] run function phan:bots/items/15_ender_pearl/find_possible_targets_race_direct

#no viable target found? exit out now
execute if score #targetExists value matches 0 run return 0

#=====

#clear flight panic tag if we found target
tag @s[tag=botFlightPanic] remove botFlightPanic

#use item while rotated facing target
execute if score #rot_pitch value matches -15 facing entity @e[limit=1,sort=nearest,tag=viableTarget,distance=..72] feet rotated ~ ~-15 run function phan:bots/items/15_ender_pearl/use
execute if score #rot_pitch value matches -25 facing entity @e[limit=1,sort=nearest,tag=viableTarget,distance=..72] feet rotated ~ ~-25 run function phan:bots/items/15_ender_pearl/use
execute if score #rot_pitch value matches -35 facing entity @e[limit=1,sort=nearest,tag=viableTarget,distance=..72] feet rotated ~ ~-35 run function phan:bots/items/15_ender_pearl/use
execute if score #rot_pitch value matches -45 facing entity @e[limit=1,sort=nearest,tag=viableTarget,distance=..72] feet rotated ~ ~-45 run function phan:bots/items/15_ender_pearl/use

#clean up tags
tag @e[tag=viableTarget,distance=..72] remove viableTarget