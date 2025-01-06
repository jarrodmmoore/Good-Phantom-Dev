#executed by "@e[tag=playerSoul]"
execute if score #pTransitionProgress value matches ..100120 facing 4045 -14 1 run tp @s ^ ^.08 ^.22
execute if score #pTransitionProgress value matches 100121.. facing 4045 -14 1 run tp @s ^ ^ ^0.35

#gate between act 1 and 2 opens up
function phan:levels/deep_dive/gate_animation_1