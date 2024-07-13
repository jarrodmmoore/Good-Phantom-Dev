#conditions
time set 6000
weather clear

#countdown type
scoreboard players set #countdownType value 1

#check for stuff at y=0 in the end dimension
scoreboard players set #checkLoadHeight value 0
scoreboard players set #activeDimension value 3

#act-specific stuff
execute if score #vAct value matches 1 run scoreboard players set #vGameType value 1
execute if score #vAct value matches 1 run scoreboard players set #vCheckPoints value 16
execute if score #vAct value matches 1 run scoreboard players set #vLaps value 4
execute if score #vAct value matches 1 run scoreboard players set #vEyesNeeded value 24
execute if score #vAct value matches 1 run scoreboard players set #vMinTimeLimit value 2400
execute if score #vAct value matches 1 run scoreboard players set #vTimeLimit value 6000

execute if score #vAct value matches 2 run scoreboard players set #vGameType value 1
execute if score #vAct value matches 2 run scoreboard players set #vCheckPoints value 16
execute if score #vAct value matches 2 run scoreboard players set #vLaps value 3
execute if score #vAct value matches 2 run scoreboard players set #vEyesNeeded value 20
execute if score #vAct value matches 2 run scoreboard players set #vMinTimeLimit value 2400
execute if score #vAct value matches 2 run scoreboard players set #vTimeLimit value 6000

execute if score #vAct value matches 3 run scoreboard players set #vGameType value 2
execute if score #vAct value matches 3 run scoreboard players set #vEyesNeeded value 24
execute if score #vAct value matches 3 run scoreboard players set #vMinTimeLimit value 5000
execute if score #vAct value matches 3 run scoreboard players set #vTimeLimit value 7200