#1 = exists
#2 = does not exist

scoreboard players set #test5 value 0
execute on vehicle if entity @s[tag=botElytraHeightFix] run scoreboard players set #test5 value 1

execute if score #test5 value matches 1 run return 1
return 0