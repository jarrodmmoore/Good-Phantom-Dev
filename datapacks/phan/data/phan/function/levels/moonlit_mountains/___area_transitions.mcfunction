#executed by "@e[tag=playerSoul]"
execute if score #pCurrentArea value matches ..2 if score #pTransitionProgress value matches ..100120 facing 1874 49 44 run tp @s ^ ^1 ^1
execute if score #pCurrentArea value matches ..2 if score #pTransitionProgress value matches 100121.. facing 1874 49 44 run tp @s ^ ^ ^1.4

execute if score #pCurrentArea value matches 3 if score #pTransitionProgress value matches ..100120 facing 1980 45 -40 run tp @s ^.25 ^1 ^1
execute if score #pCurrentArea value matches 3 if score #pTransitionProgress value matches 100121.. facing 1980 45 -40 run tp @s ^.4 ^ ^1.4

execute if score #pCurrentArea value matches 4.. run tp @s ~ ~1 ~
execute if score #pCurrentArea value matches 4.. run scoreboard players set #followStraightUp value 1