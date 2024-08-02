#if we're in the home stretch, just finish right away
execute if entity @s[tag=vsHomeStretch] run return run function phan:bots/controller/controller_player_finish
#=====

#-2 = doesn't exist
#-1 = optional (we can skip over these)
#0 = mandatory, gives 0 ever eyes
#X.. = mandatory, gives X ever eyes

#test = whether to grant cp & how many ender pearls to give
scoreboard players set #test value -2
#check = what checkpoint we're on
scoreboard players operation #check value = @s check

#look up data on the checkpoint we're going at
execute if score #check value matches 0 if score #botDataCP1 value matches 0.. run scoreboard players operation #test value = #botDataCP1 value
execute if score #check value matches 0 if score #botDataCP1 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 1 if score #botDataCP2 value matches 0.. run scoreboard players operation #test value = #botDataCP2 value
execute if score #check value matches 1 if score #botDataCP2 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 2 if score #botDataCP3 value matches 0.. run scoreboard players operation #test value = #botDataCP3 value
execute if score #check value matches 2 if score #botDataCP3 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 3 if score #botDataCP4 value matches 0.. run scoreboard players operation #test value = #botDataCP4 value
execute if score #check value matches 3 if score #botDataCP4 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 4 if score #botDataCP5 value matches 0.. run scoreboard players operation #test value = #botDataCP5 value
execute if score #check value matches 4 if score #botDataCP5 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 5 if score #botDataCP6 value matches 0.. run scoreboard players operation #test value = #botDataCP6 value
execute if score #check value matches 5 if score #botDataCP6 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 6 if score #botDataCP7 value matches 0.. run scoreboard players operation #test value = #botDataCP7 value
execute if score #check value matches 6 if score #botDataCP7 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 7 if score #botDataCP8 value matches 0.. run scoreboard players operation #test value = #botDataCP8 value
execute if score #check value matches 7 if score #botDataCP8 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 8 if score #botDataCP9 value matches 0.. run scoreboard players operation #test value = #botDataCP9 value
execute if score #check value matches 8 if score #botDataCP9 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 9 if score #botDataCP10 value matches 0.. run scoreboard players operation #test value = #botDataCP10 value
execute if score #check value matches 9 if score #botDataCP10 value matches -1 run scoreboard players add #check value 1


execute if score #check value matches 10 if score #botDataCP11 value matches 0.. run scoreboard players operation #test value = #botDataCP11 value
execute if score #check value matches 10 if score #botDataCP11 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 11 if score #botDataCP12 value matches 0.. run scoreboard players operation #test value = #botDataCP12 value
execute if score #check value matches 11 if score #botDataCP12 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 12 if score #botDataCP13 value matches 0.. run scoreboard players operation #test value = #botDataCP13 value
execute if score #check value matches 12 if score #botDataCP13 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 13 if score #botDataCP14 value matches 0.. run scoreboard players operation #test value = #botDataCP14 value
execute if score #check value matches 13 if score #botDataCP14 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 14 if score #botDataCP15 value matches 0.. run scoreboard players operation #test value = #botDataCP15 value
execute if score #check value matches 14 if score #botDataCP15 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 15 if score #botDataCP16 value matches 0.. run scoreboard players operation #test value = #botDataCP16 value
execute if score #check value matches 15 if score #botDataCP16 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 16 if score #botDataCP17 value matches 0.. run scoreboard players operation #test value = #botDataCP17 value
execute if score #check value matches 16 if score #botDataCP17 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 17 if score #botDataCP18 value matches 0.. run scoreboard players operation #test value = #botDataCP18 value
execute if score #check value matches 17 if score #botDataCP18 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 18 if score #botDataCP19 value matches 0.. run scoreboard players operation #test value = #botDataCP19 value
execute if score #check value matches 18 if score #botDataCP19 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 19 if score #botDataCP20 value matches 0.. run scoreboard players operation #test value = #botDataCP20 value
execute if score #check value matches 19 if score #botDataCP20 value matches -1 run scoreboard players add #check value 1


execute if score #check value matches 20 if score #botDataCP21 value matches 0.. run scoreboard players operation #test value = #botDataCP21 value
execute if score #check value matches 20 if score #botDataCP21 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 21 if score #botDataCP22 value matches 0.. run scoreboard players operation #test value = #botDataCP22 value
execute if score #check value matches 21 if score #botDataCP22 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 22 if score #botDataCP23 value matches 0.. run scoreboard players operation #test value = #botDataCP23 value
execute if score #check value matches 22 if score #botDataCP23 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 23 if score #botDataCP24 value matches 0.. run scoreboard players operation #test value = #botDataCP24 value
execute if score #check value matches 23 if score #botDataCP24 value matches -1 run scoreboard players add #check value 1

execute if score #check value matches 24 if score #botDataCP25 value matches 0.. run scoreboard players operation #test value = #botDataCP25 value
execute if score #check value matches 24 if score #botDataCP25 value matches -1 run scoreboard players add #check value 1


#found mandatory checkpoint? hit it
execute if score #test value matches 0.. run function phan:bots/controller/try_advance_checkpoint_go