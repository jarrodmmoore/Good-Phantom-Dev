#very easy and easy bots might want to find the best and worst players for rubber-banding
scoreboard players set #foundWorstHuman value 0
scoreboard players set #foundBestHuman value 2147483647

#all bot controllers do their thing (unless they have tag=botDisabled)
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=!botDisabled] run function phan:bots/controller/_controller_tick