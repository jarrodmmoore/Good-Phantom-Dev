#hand out positions if we're a posCalc point.
#(if we ran this, we are a posCalc node. no need to check that again)
execute as @e[type=interaction,tag=playerPosMarker,scores={checkFake=5},sort=nearest] if score @s lap = #lapRecursion value run function phan:game/4/race/checkpoint/player_marker_get_position