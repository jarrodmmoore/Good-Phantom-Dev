scoreboard players set #lapRecursion value 0
#this messes up the position calculator, but at least we stopped the game from exploding
scoreboard players set @a lap 1
scoreboard players set @e[tag=ai,type=zombie] lap 1
scoreboard players set @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] lap 1
tellraw @a ["",{"text":"[ ! ] Player tampered with lap count! All players have been set to lap 1 to avoid blocking the server due to function recursion.","color":"red"}]