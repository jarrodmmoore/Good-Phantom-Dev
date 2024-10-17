#do nothing if a player is already at 1 vsAddPoints (finished players should get 1 point no matter what!)
execute if entity @a[tag=playerReservation,scores={vsAddPoints=1}] run return 0
execute if score #botsEnabled value matches 1.. if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={vsAddPoints=1}] run return 0
#=====

#remove 1 point from all players that are getting points
scoreboard players remove @a[tag=playerReservation,scores={vsAddPoints=2..}] vsAddPoints 1
execute if score #botsEnabled value matches 1.. run scoreboard players remove @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={vsAddPoints=2..}] vsAddPoints 1