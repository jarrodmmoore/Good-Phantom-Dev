#run by the enderman controller

#nab item in mainhand from player that isn't us
scoreboard players set #success value 0
execute as @a[gamemode=adventure,tag=doneWithIntro] unless score @s playerID = #thisEndermanID value run function phan:items/enderman_phase_2_check_mainhand
execute if score #success value matches 1 run scoreboard players operation @s targetID = #victimID value
execute if score #success value matches 1 run scoreboard players set @s age 500

#nothing found? skip phase 3. we're done.
execute if score #endermanAge value matches 499 if score #success value matches 0 run scoreboard players set @s age 1000