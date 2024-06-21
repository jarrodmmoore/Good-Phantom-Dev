scoreboard players remove #warpLimit value 1

#figure out how many total ever eyes we've got
scoreboard players operation #trackEverEyes value = @s enderEyes
scoreboard players operation #trackEverEyes value += @s eyesToAdd

#depending on the checkpoint we want
scoreboard players operation #wantCheckpoint value = @s checkFake
scoreboard players add #wantCheckpoint value 1
execute if score #wantCheckpoint value > #vCheckPoints value run scoreboard players set #wantCheckpoint value 1
execute store result storage phan:warp_race minWarpDistance int 1 run scoreboard players get #minWarpDistance value
execute store result storage phan:warp_race targetCheckpoint int 1 run scoreboard players get #wantCheckpoint value
execute if score #trackEverEyes value >= #vEyesNeeded value run function phan:items/use/warp_race_try_finish with storage phan:warp_race
execute if score #trackEverEyes value < #vEyesNeeded value run function phan:items/use/warp_race_try_checkpoint with storage phan:warp_race

execute if score #warpLimit value matches ..0 run scoreboard players set #endWarp value 1