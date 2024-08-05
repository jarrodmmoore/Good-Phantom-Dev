#(continuation from 15_ender_pearl/think)

#very easy bots will never use (or even hold)
execute if score @s botSkill matches ..1 run return 0

#easy bots won't use unless they're decently far back
execute if entity @s[scores={botSkill=2,itemLuck=..3}] run return 0

#normal bots and lower won't use in the home stretch (try not to upset any kids playing this by stealing win)
execute if entity @s[tag=vsHomeStretch,scores={botSkill=..3}] run return 0

#hard+: don't burn ender pearls on checkpoint throws until the final lap
execute if score @s botSkill matches 4.. unless entity @s[tag=botOnFinalLap] unless entity @s[tag=vsHomeStretch] run return 0

#if we're not the rival bot: don't ender pearl at the end portal if rival bot hasn't finished yet
execute if entity @s[tag=vsHomeStretch,tag=!botRival] if score #botRivalFinished value matches 0 run return 0

#hard+: if in home strech: keep holding ender pearl regardless if we can use it. keep checking los!
execute if entity @s[tag=vsHomeStretch,scores={botSkill=4..}] if score @s botFearsEnderman matches 0 run scoreboard players set @s botHoldingItem 15

#never use if we have another ender pearl entity in flight
execute if score @s botTeleportTimer matches 0.. run return 0

#=====

#note: ender pearl can travel 54 blocks with 35deg angle

#figure out and store what number checkpoint we're looking for
scoreboard players operation #check value = @s check
scoreboard players add #check value 1
execute store result storage phan:bot_args id int 1 run scoreboard players get #check value
#check for any possible throw to next critical checkpoint or end portal
scoreboard players set #targetExists value 0
execute if entity @s[tag=!vsHomeStretch] positioned ~ ~1.8 ~ rotated ~ 0 run function phan:bots/items/15_ender_pearl/find_possible_targets_race with storage phan:bot_args
execute if entity @s[tag=vsHomeStretch] positioned ~ ~1.8 ~ rotated ~ 0 run function phan:bots/items/15_ender_pearl/find_possible_targets_race_portal
#(using "positoned ~ ~1.8 ~" because "anchored eyes" is unreliable)

#no viable target found? exit out now
execute if score #targetExists value matches 0 run return 0

#=====

#use item while rotated facing target
execute if entity @s[tag=!vsHomeStretch] if entity @e[limit=1,sort=nearest,tag=viableTarget,type=marker,distance=..25] facing entity @e[limit=1,sort=nearest,tag=viableTarget,type=marker,distance=..72] eyes rotated ~ ~-5 run function phan:bots/items/15_ender_pearl/use
execute if entity @s[tag=!vsHomeStretch] unless entity @e[limit=1,sort=nearest,tag=viableTarget,type=marker,distance=..25] facing entity @e[limit=1,sort=nearest,tag=viableTarget,type=marker,distance=..72] eyes rotated ~ -35 run function phan:bots/items/15_ender_pearl/use
execute if entity @s[tag=vsHomeStretch] if score #rot_pitch value matches -15 facing entity @e[limit=1,sort=nearest,tag=viableTarget,type=marker,distance=..72] feet rotated ~ ~-15 run function phan:bots/items/15_ender_pearl/use
execute if entity @s[tag=vsHomeStretch] if score #rot_pitch value matches -25 facing entity @e[limit=1,sort=nearest,tag=viableTarget,type=marker,distance=..72] feet rotated ~ ~-25 run function phan:bots/items/15_ender_pearl/use
execute if entity @s[tag=vsHomeStretch] if score #rot_pitch value matches -35 facing entity @e[limit=1,sort=nearest,tag=viableTarget,type=marker,distance=..72] feet rotated ~ ~-35 run function phan:bots/items/15_ender_pearl/use
execute if entity @s[tag=vsHomeStretch] if score #rot_pitch value matches -45 facing entity @e[limit=1,sort=nearest,tag=viableTarget,type=marker,distance=..72] feet rotated ~ ~-45 run function phan:bots/items/15_ender_pearl/use

#clean up tags
tag @e[tag=viableTarget,type=marker,distance=..72] remove viableTarget