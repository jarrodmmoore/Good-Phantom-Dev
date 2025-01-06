#executed by "@e[tag=playerSoul]"
execute if score #pCurrentArea value matches ..2 if score #pTransitionProgress value matches ..100120 facing 1059 96 79 run tp @s ^ ^.5 ^.7
execute if score #pCurrentArea value matches ..2 if score #pTransitionProgress value matches 100121.. facing 1059 96 79 run tp @s ^ ^ ^0.7

execute if score #pCurrentArea value matches 3 if score #pTransitionProgress value matches ..100090 facing 1139 96 51 run tp @s ^.15 ^1 ^.1
execute if score #pCurrentArea value matches 3 if score #pTransitionProgress value matches 100091..100120 facing 1139 96 51 run tp @s ^ ^0.8 ^0.8
execute if score #pCurrentArea value matches 3 if score #pTransitionProgress value matches 100121.. facing 1139 96 51 run tp @s ^ ^ ^1.2

execute if score #pCurrentArea value matches 4.. run tp @s ~ ~1 ~
execute if score #pCurrentArea value matches 4.. run scoreboard players set #followStraightUp value 1