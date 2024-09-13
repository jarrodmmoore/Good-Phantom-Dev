#executed by the enderman controller

#active enderman thief exists! let the record show.
scoreboard players set #activeEnderman value 2
tag @s[tag=!endermanIsDangerous] add endermanIsDangerous

#nab item in mainhand from player that isn't us
scoreboard players set #success value 0
#try to be fair by alternating between checking humans and bots each tick
#yeah, we could just do @e[tag=playing] with an extra index afterwards, but that @e is pretty nasty and we can do better
execute if score #10Hz value matches 0 as @a[gamemode=adventure,tag=doneWithIntro] unless score @s playerID = #thisEndermanID value run function phan:items/enderman_phase_2_check_mainhand
execute if score #10Hz value matches 1 if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] unless score @s playerID = #thisEndermanID value run function phan:items/enderman_phase_2_check_mainhand_bot
execute if score #success value matches 1 run scoreboard players operation @s targetID = #victimID value
execute if score #success value matches 1 run scoreboard players set @s age 500

#nothing found? skip phase 3. we're done.
execute if score #endermanAge value matches 499 if score #success value matches 0 run scoreboard players set @s age 1000