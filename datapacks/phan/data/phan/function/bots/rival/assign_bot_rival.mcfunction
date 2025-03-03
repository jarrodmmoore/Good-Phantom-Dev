#executed by system

#clear any old rivals
tag @e[type=block_display,tag=botRival,x=197,y=-11,z=117,dx=1,dy=1,dz=1] remove botRival
#restore the original assigned skill level of each bot
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] run function phan:game/2/bots/update_bot_difficulty

#no rival if only 1 bot
execute if score #botCount value matches ..1 run return 0

#no rival if rivals are disabled
execute if score #assist_rival_bot value matches 1.. run return 0
#=====

#find highest skill bot
scoreboard players set #botHighestSkill value 0
scoreboard players operation #botHighestSkill value > @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] botSkill

#find bot with the most points
scoreboard players set #botHighestScore value 0
scoreboard players operation #botHighestScore value > @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] versusPoints

#find highest score held by a player
scoreboard players set #highestPlayerScore value 0
scoreboard players operation #highestPlayerScore value > @a[tag=doneWithIntro,scores={versusPoints=1..}] versusPoints

#find difference between max player score and max bot score
scoreboard players operation #humanPointsAhead value = #highestPlayerScore value
scoreboard players operation #humanPointsAhead value -= #botHighestScore value

#do NOT assign a rival if there are no humans with points!
execute if score #highestPlayerScore value matches ..0 run return 0
#same for bots
execute if score #botHighestScore value matches ..0 run return 0
#=====

#assign rival to one bot and possibly bump up their skill level
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] if score @s versusPoints >= #botHighestScore value run tag @s add possibleRival
execute as @e[limit=1,sort=random,type=block_display,tag=possibleRival,x=197,y=-11,z=117,dx=1,dy=1,dz=1] run function phan:bots/rival/assign_bot_rival_go
tag @e[type=block_display,tag=possibleRival,x=197,y=-11,z=117,dx=1,dy=1,dz=1] remove possibleRival