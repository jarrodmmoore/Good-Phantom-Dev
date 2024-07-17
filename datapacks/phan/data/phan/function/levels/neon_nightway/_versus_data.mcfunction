#conditions
time set 18000
weather clear

#skybox
scoreboard players set @a skyboxSet 2

#night vision in this level
scoreboard players set #nightVision value 1
#mines are bright so they don't blend in with the road
scoreboard players set #brightMines value 1

#state for acts
scoreboard players set #nnAct1State value 0

#countdown type
scoreboard players set #countdownType value 1

#all acts support bots
scoreboard players set #mapSupportsBots value 1

#act-specific stuff
execute if score #vAct value matches 1 run scoreboard players set #vGameType value 1
execute if score #vAct value matches 1 run scoreboard players set #vCheckPoints value 12
execute if score #vAct value matches 1 run scoreboard players set #vLaps value 4
execute if score #vAct value matches 1 run scoreboard players set #vEyesNeeded value 20
execute if score #vAct value matches 1 run scoreboard players set #vMinTimeLimit value 3600
execute if score #vAct value matches 1 run scoreboard players set #vTimeLimit value 6500

execute if score #vAct value matches 2 run scoreboard players set #vGameType value 1
execute if score #vAct value matches 2 run scoreboard players set #vCheckPoints value 14
execute if score #vAct value matches 2 run scoreboard players set #vLaps value 4
execute if score #vAct value matches 2 run scoreboard players set #vEyesNeeded value 20
execute if score #vAct value matches 2 run scoreboard players set #vMinTimeLimit value 3600
execute if score #vAct value matches 2 run scoreboard players set #vTimeLimit value 6500

execute if score #vAct value matches 3 run scoreboard players set #vGameType value 1
execute if score #vAct value matches 3 run scoreboard players set #vCheckPoints value 12
execute if score #vAct value matches 3 run scoreboard players set #vLaps value 5
execute if score #vAct value matches 3 run scoreboard players set #vEyesNeeded value 24
execute if score #vAct value matches 3 run scoreboard players set #vMinTimeLimit value 2400
execute if score #vAct value matches 3 run scoreboard players set #vTimeLimit value 6000