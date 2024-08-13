#conditions
time set 18000
weather clear

#skybox
scoreboard players set @a skyboxSet 3

#state for acts
scoreboard players set #mmAct3State value 0

#countdown type
scoreboard players set #countdownType value 2

#all acts support bots
scoreboard players set #mapSupportsBots value 1

#act-specific stuff
execute if score #vAct value matches 1 run function phan:levels/moonlit_mountains/versus_data/act_1
execute if score #vAct value matches 2 run function phan:levels/moonlit_mountains/versus_data/act_2
execute if score #vAct value matches 3 run function phan:levels/moonlit_mountains/versus_data/act_3