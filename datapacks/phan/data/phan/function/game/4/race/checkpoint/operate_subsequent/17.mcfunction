#hand out positions if we're a posCalc point.
#(if we ran this, we are a posCalc node. no need to check that again)
execute as @a[tag=playing,scores={checkFake=16},sort=nearest] if score @s lap = #lapRecursion value run function phan:game/4/race/checkpoint/player_get_position