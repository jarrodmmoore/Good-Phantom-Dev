#check for each individual disc select

#1
execute store result score #test value run clear @s red_dye[custom_data~{musicDisc1:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/stereo/set_song {"song":"1"}
#2
execute store result score #test value run clear @s red_dye[custom_data~{musicDisc2:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/stereo/set_song {"song":"2"}
#3
execute store result score #test value run clear @s red_dye[custom_data~{musicDisc3:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/stereo/set_song {"song":"3"}
#4
execute store result score #test value run clear @s red_dye[custom_data~{musicDisc4:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/stereo/set_song {"song":"4"}
#5
execute store result score #test value run clear @s red_dye[custom_data~{musicDisc5:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/stereo/set_song {"song":"5"}
#6
execute store result score #test value run clear @s red_dye[custom_data~{musicDisc6:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/stereo/set_song {"song":"6"}
#7
execute store result score #test value run clear @s red_dye[custom_data~{musicDisc7:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/stereo/set_song {"song":"7"}
#8
execute store result score #test value run clear @s red_dye[custom_data~{musicDisc8:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/stereo/set_song {"song":"8"}
#9
execute store result score #test value run clear @s red_dye[custom_data~{musicDisc9:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/stereo/set_song {"song":"9"}
#10
execute store result score #test value run clear @s red_dye[custom_data~{musicDisc10:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/stereo/set_song {"song":"10"}
#11
execute store result score #test value run clear @s red_dye[custom_data~{musicDisc11:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/stereo/set_song {"song":"11"}
#12
execute store result score #test value run clear @s red_dye[custom_data~{musicDisc12:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/stereo/set_song {"song":"12"}
#13
execute store result score #test value run clear @s red_dye[custom_data~{musicDisc13:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/stereo/set_song {"song":"13"}

#clear inv, just in case we picked up one that doesn't have a handler
clear @s red_dye[custom_data~{musicDiscSelect:1b}]