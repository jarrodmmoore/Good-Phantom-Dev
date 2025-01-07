#old, de-referenced

#conditions
#time set 18000
#weather clear

#skybox
#scoreboard players set @a skyboxSet 2

#night vision in this level
#scoreboard players set #nightVision value 1
#mines are bright so they don't blend in with the road
#scoreboard players set #brightMines value 1

#state for acts
#scoreboard players set #nnAct1State value 0

#countdown type
#scoreboard players set #countdownType value 1

#all acts support bots
#scoreboard players set #mapSupportsBots value 1

#act-specific stuff
#execute if score #vAct value matches 1 run function phan:levels/neon_nightway/versus_data/act_1
#execute if score #vAct value matches 2 run function phan:levels/neon_nightway/versus_data/act_2
#execute if score #vAct value matches 3 run function phan:levels/neon_nightway/versus_data/act_3