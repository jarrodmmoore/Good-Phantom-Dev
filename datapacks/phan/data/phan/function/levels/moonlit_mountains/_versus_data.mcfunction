#conditions
time set 18000
weather clear

#skybox
scoreboard players set @a skyboxSet 3

#countdown type
scoreboard players set #countdownType value 2

#all acts support bots
scoreboard players set #mapSupportsBots value 1

#act-specific stuff
execute if score #vAct value matches 1 run scoreboard players set #vGameType value 1
execute if score #vAct value matches 1 run scoreboard players set #vCheckPoints value 13
execute if score #vAct value matches 1 run scoreboard players set #vLaps value 4
execute if score #vAct value matches 1 run scoreboard players set #vEyesNeeded value 16
execute if score #vAct value matches 1 run scoreboard players set #vMinTimeLimit value 2400
execute if score #vAct value matches 1 run scoreboard players set #vTimeLimit value 6000

execute if score #vAct value matches 2 run scoreboard players set #vGameType value 1
execute if score #vAct value matches 2 run scoreboard players set #vCheckPoints value 9
execute if score #vAct value matches 2 run scoreboard players set #vLaps value 5
execute if score #vAct value matches 2 run scoreboard players set #vEyesNeeded value 20
execute if score #vAct value matches 2 run scoreboard players set #vMinTimeLimit value 2400
execute if score #vAct value matches 2 run scoreboard players set #vTimeLimit value 6000

execute if score #vAct value matches 3 run scoreboard players set #vGameType value 1
execute if score #vAct value matches 3 run scoreboard players set #vCheckPoints value 17
execute if score #vAct value matches 3 run scoreboard players set #vLaps value 2
execute if score #vAct value matches 3 run scoreboard players set #vEyesNeeded value 16
execute if score #vAct value matches 3 run scoreboard players set #vMinTimeLimit value 2400
execute if score #vAct value matches 3 run scoreboard players set #vTimeLimit value 6000