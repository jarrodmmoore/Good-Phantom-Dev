#find player with highest points and give them the crown
scoreboard players set #test value 0
execute as @a[tag=doneWithIntro,scores={versusPoints=1..}] run function phan:game/4/give_crown_to_point_leader_check
execute if score #botCount value matches 1.. in overworld as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={versusPoints=1..}] run function phan:game/4/give_crown_to_point_leader_check

#tag leader (only if 2+ players existed in the last game)
tag @a[tag=vsCrown] remove vsCrown
execute if score #hudPeakPlayers value matches 2.. as @a[tag=doneWithIntro,scores={versusPoints=1..}] if score @s versusPoints >= #test value run tag @s add vsCrown