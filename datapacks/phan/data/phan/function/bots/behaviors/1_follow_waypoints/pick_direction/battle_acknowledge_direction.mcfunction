#return which direction we are
execute if entity @s[tag=wpPossibleDir1] if score #targetExists value matches 0 run scoreboard players set #test value 1
execute if entity @s[tag=wpPossibleDir2] if score #targetExists value matches 0 run scoreboard players set #test value 2
execute if entity @s[tag=wpPossibleDir3] if score #targetExists value matches 0 run scoreboard players set #test value 3
execute if entity @s[tag=wpPossibleDir4] if score #targetExists value matches 0 run scoreboard players set #test value 4

#clean up all tags
tag @s remove wpPossibleDir
tag @s remove wpPossibleDir1
tag @s remove wpPossibleDir2
tag @s remove wpPossibleDir3
tag @s remove wpPossibleDir4

#only adopt the number of the first target. ignore anything else
scoreboard players add #targetExists value 1