#kick out if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#exit out if we don't want to get our item stolen (unless we're hard+, in which case we might burn this item to get rid of an enderman)
execute if entity @s[scores={botSkill=2..3}] if score #botFearsEnderman value matches 1 run return 0

#=====

#note: placement of mines can also be triggered by stuff like waypoint events or other logic
#example: harder bots will try to put mines directly on jump pads

#use #test to determine whether to use
scoreboard players set #test value 0

#roll a random number
execute store result score #random value run random value 1..100
#very easy .. normal: might randomly set mine with no logic
execute if score @s botSkill matches ..2 if score #random value matches ..25 run scoreboard players set #test value 1
execute if score @s botSkill matches 3 if score #random value matches ..15 run scoreboard players set #test value 1

#normal+ bot: be a punk and put mines in congested areas
execute if score @s botSkill matches 3.. if function phan:bots/items/13_mine/check_for_thin_lane run scoreboard players set #test value 1

#tryhard bot: hold onto at least 1 mine unless it's the final lap
execute if entity @s[tag=!botOnFinalLap,scores={botSkill=5..,botHasItem13=..1}] run scoreboard players set #test value 0

#hard+ bot: use mine to hit player directly behind us
execute if score @s botSkill matches 4.. positioned ^ ^ ^-5 if entity @e[tag=playing,distance=..4,tag=!botRival] run scoreboard players set #test value 1

#hard+ bot: dump all mines in home stretch
execute if entity @s[scores={botSkill=4..},tag=vsHomeStretch] run scoreboard players set #test value 1

#=====
#abort if we didn't decide to use
execute unless score #test value matches 0 run return run scoreboard players set @s[scores={botSkill=2..4}] botHoldingItem 18


#use item
function phan:bots/items/18_trapped_chest/use