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
execute if score #vAct value matches 1 run scoreboard players set #vGameType value 1
execute if score #vAct value matches 1 run scoreboard players set #vCheckPoints value 16
execute if score #vAct value matches 1 run scoreboard players set #vLaps value 4
execute if score #vAct value matches 1 run scoreboard players set #vEyesNeeded value 24
execute if score #vAct value matches 1 run scoreboard players set #vMinTimeLimit value 2400
execute if score #vAct value matches 1 run scoreboard players set #vTimeLimit value 6000

execute if score #vAct value matches 2 run scoreboard players set #vGameType value 1
execute if score #vAct value matches 2 run scoreboard players set #vCheckPoints value 9
execute if score #vAct value matches 2 run scoreboard players set #vLaps value 3
execute if score #vAct value matches 2 run scoreboard players set #vEyesNeeded value 20
execute if score #vAct value matches 2 run scoreboard players set #vMinTimeLimit value 2400
execute if score #vAct value matches 2 run scoreboard players set #vTimeLimit value 6000

execute if score #vAct value matches 3 run scoreboard players set #vGameType value 1
execute if score #vAct value matches 3 run scoreboard players set #vCheckPoints value 15
execute if score #vAct value matches 3 run scoreboard players set #vLaps value 4
execute if score #vAct value matches 3 run scoreboard players set #vEyesNeeded value 24
execute if score #vAct value matches 3 run scoreboard players set #vMinTimeLimit value 2400
execute if score #vAct value matches 3 run scoreboard players set #vTimeLimit value 6000