scoreboard players set @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=finished] vsAddPoints 0
#the hudPeakPlayers variable is a good measure, here
scoreboard players operation @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=finished] vsAddPoints = #hudPeakPlayers value
#guaranteed one point if you managed to finish
scoreboard players add @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=finished] vsAddPoints 1
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=finished] run scoreboard players operation @s vsAddPoints -= @s finishPos

#just to be safe, make sure everyone gets a point
scoreboard players set @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=finished,scores={vsAddPoints=..0}] vsAddPoints 1