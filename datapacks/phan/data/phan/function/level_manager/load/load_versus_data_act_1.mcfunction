#conditions
$weather $(weather)
$time set $(time)
$scoreboard players set @a skyboxSet $(skybox)

#start countdown type
execute store result score #countdownType value run data get storage phan_dream_active:pr_act_1 countdown_type

#important game variables
execute store result score #mapSupportsBots value run data get storage phan_dream_active:pr_act_1 supports_bots
execute store result score #vGameType value run data get storage phan_dream_active:pr_act_1 game_type
execute store result score #vCheckPoints value run data get storage phan_dream_active:pr_act_1 checkpoints
execute store result score #vLaps value run data get storage phan_dream_active:pr_act_1 laps
execute store result score #vEyesNeeded value run data get storage phan_dream_active:pr_act_1 pearls_needed

#time limit (need to convert minutes to ticks)
execute store result score #vMinTimeLimit value run data get storage phan_dream_active:pr_act_1 time_limit_minimum
scoreboard players operation #vMinTimeLimit value *= #20 value
scoreboard players operation #vMinTimeLimit value *= #60 value
execute store result score #vTimeLimit value run data get storage phan_dream_active:pr_act_1 time_limit
scoreboard players operation #vTimeLimit value *= #20 value
scoreboard players operation #vTimeLimit value *= #60 value

#record what dimension we're supposed to be in
execute store result score #activeDimension value run data get storage phan_dream_active:pr_act_1 teleport_dimension
#non-overworld dimensions must check boundaries at y=0 instead of y=-64
execute unless score #activeDimension value matches 1 run scoreboard players set #checkLoadHeight value 0

#night vision
execute store result score #nightVision value run data get storage phan_dream_active:pr_act_1 night_vision

#bright mines
execute store result score #brightMines value run data get storage phan_dream_active:pr_act_1 bright_mines

#bot checkpoint data
execute store result score #botTimeBetweenCPs value run data get storage phan_dream_active:pr_act_1 time_between_checkpoints

execute store result score #botDataCP1 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[0]
execute store result score #botDataCP2 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[1]
execute store result score #botDataCP3 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[2]
execute store result score #botDataCP4 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[3]
execute store result score #botDataCP5 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[4]
execute store result score #botDataCP6 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[5]
execute store result score #botDataCP7 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[6]
execute store result score #botDataCP8 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[7]
execute store result score #botDataCP9 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[8]
execute store result score #botDataCP10 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[9]

execute store result score #botDataCP11 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[10]
execute store result score #botDataCP12 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[11]
execute store result score #botDataCP13 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[12]
execute store result score #botDataCP14 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[13]
execute store result score #botDataCP15 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[14]
execute store result score #botDataCP16 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[15]
execute store result score #botDataCP17 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[16]
execute store result score #botDataCP18 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[17]
execute store result score #botDataCP19 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[18]
execute store result score #botDataCP20 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[19]

execute store result score #botDataCP21 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[20]
execute store result score #botDataCP22 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[21]
execute store result score #botDataCP23 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[22]
execute store result score #botDataCP24 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[23]
execute store result score #botDataCP25 value run data get storage phan_dream_active:pr_act_1 bot_checkpoint_data[24]


#this was run without compile errors. good job.
scoreboard players set #success value 1