#get ender eyes from this checkpoint
scoreboard players operation @a[tag=warpingPlayer] playerGetEyes += @s editArg3

#player collects checkpoint for real
execute as @a[tag=warpingPlayer] at @s run function phan:game/4/race/checkpoint/increment_player_real