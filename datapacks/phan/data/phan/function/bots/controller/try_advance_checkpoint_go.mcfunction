#reset since checkpoint
scoreboard players set @s botTimeSinceCP 0

#when bot entity respawns, it must be at the location of a checkpoint marker instead of saved coordinates (which have just been made obsolete)
tag @s add botNeedMarkerToRespawn

#increment checkpoint
scoreboard players operation @s check = #check value
scoreboard players add @s check 1
scoreboard players operation @s checkFake = @s check

#get eyes from the checkpoint
scoreboard players operation @s enderEyes += #test value

#met the checkpoint requirement for a lap? loop back around to check=0
execute if score @s check >= #vCheckPoints value run function phan:bots/controller/try_advance_checkpoint_lap_finished

#we're in the home stretch if we have enough eyes
execute if score @s enderEyes >= #vEyesNeeded value run tag @s add vsHomeStretch