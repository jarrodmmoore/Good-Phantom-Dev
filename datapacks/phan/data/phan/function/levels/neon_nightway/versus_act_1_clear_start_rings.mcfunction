#get rid of the rings from the level's on-ramp to avoid confusing players
scoreboard players set @e[tag=checkValid,tag=ring,x=-3225,y=83,z=83,dx=20,dy=10,dz=5] lifespan 1
scoreboard players set @e[tag=checkValid,tag=ring,x=-3212,y=74,z=104,dx=20,dy=10,dz=5] lifespan 1

#advance state
scoreboard players set #nnAct1State value 1