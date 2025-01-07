#conditions
#time set 6000
#weather clear

#countdown type
#scoreboard players set #countdownType value 1

#check for stuff at y=0 in the end dimension
#scoreboard players set #checkLoadHeight value 0
#scoreboard players set #activeDimension value 3

#all acts support bots
#scoreboard players set #mapSupportsBots value 1

#act-specific stuff
#execute if score #vAct value matches 1 run function phan:levels/shattered_city/versus_data/act_1
#execute if score #vAct value matches 2 run function phan:levels/shattered_city/versus_data/act_2
#execute if score #vAct value matches 3 run function phan:levels/shattered_city/versus_data/act_3