#(running at 5Hz)

#count up time since our "check" score changed
scoreboard players add @s botTimeSinceCP 4

#set to 0 if "check" score changes
execute unless score @s botRememberCP = @s check run scoreboard players set @s botTimeSinceCP 0
scoreboard players operation @s botRememberCP = @s check