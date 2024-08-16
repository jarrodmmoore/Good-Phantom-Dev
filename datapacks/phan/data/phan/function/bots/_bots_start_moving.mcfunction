#send the signal!
scoreboard players set #botsEnabled value 2

#don't clump together at the start, please
tag @e[tag=ai,type=zombie] add botUseNearestSpread

#time since checkpoint should be 0 at the start of the race!
scoreboard players set @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] botTimeSinceCP 0