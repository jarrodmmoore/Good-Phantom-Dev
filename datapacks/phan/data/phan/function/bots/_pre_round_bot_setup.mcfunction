#don't run code yet!
tag @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] add botDisabled

#all lingering bots from previous rounds should have their stuff reset
execute as @e[type=zombie,tag=formerlyAI] run function phan:bots/controller/reset_gameplay_scores
scoreboard players set #botRivalFinished value -1

#possibly assign one bot as the rival
function phan:bots/rival/assign_bot_rival

#determine if we should accommodate bots
scoreboard players set #botsEnabled value 0
execute if score #mapSupportsBots value matches 1 if score #botCount value matches 1.. run scoreboard players set #botsEnabled value 1