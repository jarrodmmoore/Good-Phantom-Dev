#executed by "@e[tag=playerSoul]"
execute if score #pCurrentArea value matches ..2 if score #pTransitionProgress value matches ..100120 facing 4045 -14 1 run tp @s ^ ^.08 ^.22
execute if score #pCurrentArea value matches ..2 if score #pTransitionProgress value matches 100121.. facing 4045 -14 1 run tp @s ^ ^ ^0.35

execute if score #pCurrentArea value matches 3 if score #pTransitionProgress value matches ..100120 facing 4235 10 -36 run tp @s ^ ^.07 ^.13
execute if score #pCurrentArea value matches 3 if score #pTransitionProgress value matches 100121.. facing 4235 10 -36 run tp @s ^ ^ ^0.12

execute if score #pCurrentArea value matches 4.. run tp @s ~ ~0.9 ~
execute if score #pCurrentArea value matches 4.. run scoreboard players set #followStraightUp value -1

#gate between act 1 and 2 opens up
execute if score #pCurrentArea value matches ..2 run function phan:levels/deep_dive/gate_animation_1
execute if score #pCurrentArea value matches 3 run function phan:levels/deep_dive/gate_animation_2

#music transition!
execute if score #pCurrentArea value matches ..2 as @a[tag=playing] if score @s playerID = #findID value run function phan:bgm/stop_bgm_self