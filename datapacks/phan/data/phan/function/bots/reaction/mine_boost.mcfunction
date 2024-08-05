#don't bother if an existing target was already found
execute if score #targetExists value matches 1 run return 0

#check if we have a line of sight to player
scoreboard players set #test value 1
scoreboard players set #recursions value 12
execute facing entity @s feet run function phan:bots/reaction/item_box_check_los
execute if score #test value matches 0 run return 0

#if we were already targeting this thing, keep targeting it
execute if score @s ringID = #botTargetID value run return run function phan:bots/reaction/set_temporary_target

#first time targeting? make the bot jump at us
execute as @e[type=zombie,tag=botSelf,distance=..1] run function phan:bots/movement/try_to_boost_on_trap

#otherwise, become potential target
scoreboard players add #test1 value 1
tag @s add potentialTempTarget