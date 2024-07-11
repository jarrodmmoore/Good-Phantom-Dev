#destroy any existing bot controllers
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] run function phan:game/2/bots/destroy_bot_controller
scoreboard players set #botCount value 0

#make sure all bot usernames are free
tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,tag=nameTaken] remove nameTaken
tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,tag=nameTakenTryhard] remove nameTakenTryhard