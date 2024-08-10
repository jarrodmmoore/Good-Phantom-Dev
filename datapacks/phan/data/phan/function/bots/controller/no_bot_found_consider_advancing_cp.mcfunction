#if it's been long enough since we've hit a checkpoint, try to advance forward
scoreboard players operation #math value = @s botTimeSinceCP

#higher level bots advance faster
execute if score @s botSkill matches 1 run scoreboard players remove #math value 24
execute if score @s botSkill matches 2 run scoreboard players remove #math value 16
execute if score @s botSkill matches 3 run scoreboard players remove #math value 8
#lvl 4: use the unmodified value
execute if score @s botSkill matches 5 run scoreboard players add #math value 6
execute if score @s botSkill matches 6 run scoreboard players add #math value 16

#longer wait for the end portal
execute if score @s enderEyes >= #vEyesNeeded value run scoreboard players remove #math value 60

scoreboard players operation #math value -= #botTimeBetweenCPs value
execute if score #math value matches 0.. run function phan:bots/controller/try_advance_checkpoint

#=====

#while we're here, tell the position calculator to assign us a position proper for our checkpoint and lap
#(because of the order things get run in, this may cause us to blip to the bottom of the scoreboard for 1 tick. oh well.)

execute if entity @s[tag=vsHomeStretch] run return run scoreboard players set #checkDoMissingPlayersHS value 1

scoreboard players set #checkMissingPlayerLaps value 1

execute if score @s checkFake matches 0 run scoreboard players set #checkDoMissingPlayers0 value 1
execute if score @s checkFake matches 1 run scoreboard players set #checkDoMissingPlayers1 value 1
execute if score @s checkFake matches 2 run scoreboard players set #checkDoMissingPlayers2 value 1
execute if score @s checkFake matches 3 run scoreboard players set #checkDoMissingPlayers3 value 1
execute if score @s checkFake matches 4 run scoreboard players set #checkDoMissingPlayers4 value 1
execute if score @s checkFake matches 5 run scoreboard players set #checkDoMissingPlayers5 value 1
execute if score @s checkFake matches 6 run scoreboard players set #checkDoMissingPlayers6 value 1
execute if score @s checkFake matches 7 run scoreboard players set #checkDoMissingPlayers7 value 1
execute if score @s checkFake matches 8 run scoreboard players set #checkDoMissingPlayers8 value 1
execute if score @s checkFake matches 9 run scoreboard players set #checkDoMissingPlayers9 value 1

execute if score @s checkFake matches 10 run scoreboard players set #checkDoMissingPlayers10 value 1
execute if score @s checkFake matches 11 run scoreboard players set #checkDoMissingPlayers11 value 1
execute if score @s checkFake matches 12 run scoreboard players set #checkDoMissingPlayers12 value 1
execute if score @s checkFake matches 13 run scoreboard players set #checkDoMissingPlayers13 value 1
execute if score @s checkFake matches 14 run scoreboard players set #checkDoMissingPlayers14 value 1
execute if score @s checkFake matches 15 run scoreboard players set #checkDoMissingPlayers15 value 1
execute if score @s checkFake matches 16 run scoreboard players set #checkDoMissingPlayers16 value 1
execute if score @s checkFake matches 17 run scoreboard players set #checkDoMissingPlayers17 value 1
execute if score @s checkFake matches 18 run scoreboard players set #checkDoMissingPlayers18 value 1
execute if score @s checkFake matches 19 run scoreboard players set #checkDoMissingPlayers19 value 1

execute if score @s checkFake matches 20 run scoreboard players set #checkDoMissingPlayers20 value 1
execute if score @s checkFake matches 21 run scoreboard players set #checkDoMissingPlayers21 value 1
execute if score @s checkFake matches 22 run scoreboard players set #checkDoMissingPlayers22 value 1
execute if score @s checkFake matches 23 run scoreboard players set #checkDoMissingPlayers23 value 1
execute if score @s checkFake matches 24 run scoreboard players set #checkDoMissingPlayers24 value 1
#execute if score @s checkFake matches 25 run scoreboard players set #checkDoMissingPlayers25 value 1