#executed by "@e[tag=playerSoul]"
execute if score #pTransitionProgress value matches ..100090 facing 1139 96 51 run tp @s ^.15 ^1 ^.1
execute if score #pTransitionProgress value matches 100091..100120 facing 1139 96 51 run tp @s ^ ^0.8 ^0.8
execute if score #pTransitionProgress value matches 100121.. facing 1139 96 51 run tp @s ^ ^ ^1.2
