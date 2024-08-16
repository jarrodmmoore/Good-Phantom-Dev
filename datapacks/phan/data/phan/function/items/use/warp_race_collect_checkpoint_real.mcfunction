#get ender eyes from this checkpoint
execute unless score #botWarping value matches 1 run scoreboard players operation @a[tag=warpingPlayer] playerGetEyes += @s editArg3
execute if score #botWarping value matches 1 run scoreboard players operation @e[tag=warpingPlayer,tag=ai,type=zombie] playerGetEyes += @s editArg3

#player collects checkpoint for real
execute unless score #botWarping value matches 1 as @a[tag=warpingPlayer] at @s run function phan:game/4/race/checkpoint/increment_player_real
execute if score #botWarping value matches 1 as @e[tag=warpingPlayer,type=zombie] at @s run function phan:bots/race/checkpoint/increment_player_real