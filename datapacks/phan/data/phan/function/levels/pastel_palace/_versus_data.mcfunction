#conditions
time set 6000
weather clear

#skybox
scoreboard players set @a skyboxSet 3

#countdown type
scoreboard players set #countdownType value 1

#all acts support bots
scoreboard players set #mapSupportsBots value 1

#act-specific stuff
execute if score #vAct value matches 1 run function phan:levels/pastel_palace/versus_data/act_1
execute if score #vAct value matches 2 run function phan:levels/pastel_palace/versus_data/act_2
execute if score #vAct value matches 3 run function phan:levels/pastel_palace/versus_data/act_3