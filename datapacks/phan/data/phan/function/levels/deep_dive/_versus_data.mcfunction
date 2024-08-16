#conditions
time set 6000
weather clear

#skybox
execute if score #vAct value matches ..1 run scoreboard players set @a skyboxSet 1
execute if score #vAct value matches 2.. run scoreboard players set @a skyboxSet 2

#countdown type
scoreboard players set #countdownType value 1

#night vision in act 1 only
execute if score #vAct value matches 1 run scoreboard players set #nightVision value 1

#all acts support bots
scoreboard players set #mapSupportsBots value 1

#act-specific stuff
execute if score #vAct value matches 1 run function phan:levels/deep_dive/versus_data/act_1
execute if score #vAct value matches 2 run function phan:levels/deep_dive/versus_data/act_2
execute if score #vAct value matches 3 run function phan:levels/deep_dive/versus_data/act_3