#don't target us if we're a rival bot with normal skill or higher
execute if entity @s[tag=ai,tag=botRival,scores={botSkill=3..}] run return 0
#yes-- the bots are colluding to help the rival bot win. >:)

#race mode: don't target us if we're a tryhard bot or higher and we're in 2nd place w/o shield
execute if score #vGameType value matches 1 if entity @s[tag=ai,scores={botSkill=5..,racePosDisplay=2,shieldTime=..0}] run return 0
#the aim with this one is to reduce bot infighting to make 1st place harder to hold

#set max recursions and go
scoreboard players set #recursions value 64
execute positioned ^ ^ ^.9 run function phan:bots/items/los_check_recursive