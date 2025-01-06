#executed by "@e[tag=playerSoul]"
execute if score #pCurrentArea value matches ..2 if score #pTransitionProgress value matches ..100120 facing 3280 62 172 run tp @s ^ ^.3 ^.6
execute if score #pCurrentArea value matches ..2 if score #pTransitionProgress value matches 100121.. facing 3280 62 172 run tp @s ^ ^ ^.7

execute if score #pCurrentArea value matches 3 if score #pTransitionProgress value matches ..100120 facing 3274 100 -4 rotated ~ 0 run tp @s ^ ^0.8 ^.03
execute if score #pCurrentArea value matches 3 if score #pTransitionProgress value matches 100121..100140 facing 3274 100 -4 run tp @s ^ ^.4 ^.4
execute if score #pCurrentArea value matches 3 if score #pTransitionProgress value matches 100141.. facing 3274 100 -4 run tp @s ^ ^ ^.7

execute if score #pCurrentArea value matches 4.. run tp @s ~ ~1 ~
execute if score #pCurrentArea value matches 4.. run scoreboard players set #followStraightUp value 1