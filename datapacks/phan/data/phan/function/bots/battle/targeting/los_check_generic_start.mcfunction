#don't target us if we're a rival bot with normal skill or higher
execute if entity @s[tag=ai,tag=botRival,scores={botSkill=3..}] run return 0
#yes-- the bots are colluding to help the rival bot win. >:)

#set max recursions and go
scoreboard players set #recursions value 64
execute positioned ^ ^ ^.9 run function phan:bots/items/los_check_recursive