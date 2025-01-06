#executed by "@e[tag=playerSoul]"
execute if score #pTransitionProgress value matches ..100120 facing 4235 10 -36 run tp @s ^ ^.07 ^.13
execute if score #pTransitionProgress value matches 100121.. facing 4235 10 -36 run tp @s ^ ^ ^0.12

#gate between act 2 and 3 opens up
function phan:levels/deep_dive/gate_animation_2