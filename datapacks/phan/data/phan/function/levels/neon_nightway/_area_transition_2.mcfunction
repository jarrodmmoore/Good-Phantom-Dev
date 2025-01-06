#executed by "@e[tag=playerSoul]"
execute if score #pTransitionProgress value matches ..100120 facing 3274 100 -4 rotated ~ 0 run tp @s ^ ^0.8 ^.03
execute if score #pTransitionProgress value matches 100121..100140 facing 3274 100 -4 run tp @s ^ ^.4 ^.4
execute if score #pTransitionProgress value matches 100141.. facing 3274 100 -4 run tp @s ^ ^ ^.7