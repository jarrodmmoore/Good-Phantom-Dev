#destroy any existing bot controllers
scoreboard players set #beQuiet value 1
execute in overworld as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,sort=random] run function phan:game/2/bots/destroy_bot_controller
scoreboard players set #botCount value 0
scoreboard players set #beQuiet value 0

#make sure all bot usernames are free
execute in overworld run tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,tag=nameTaken] remove nameTaken
execute in overworld run tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,tag=nameTakenTryhard] remove nameTakenTryhard
execute in overworld run tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,tag=nameTakenGlobal] remove nameTakenGlobal