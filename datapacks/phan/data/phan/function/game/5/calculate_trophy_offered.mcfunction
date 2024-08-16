#use "math" player to determine what trophy we should offer
scoreboard players set #math value 0

#count how many bots we have of each difficulty
execute store result score #botCountVEasy value run execute if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botSkill=1..}]
execute store result score #botCountEasy value run execute if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botSkill=2..}]
execute store result score #botCountNormal value run execute if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botSkill=3..}]
execute store result score #botCountHard value run execute if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botSkill=4..}]
execute store result score #botCountTryhard value run execute if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botSkill=5..}]

#need 3 bots of a minimum skill level to offer a trophy
execute if score #botCountVEasy value matches 3.. run scoreboard players set #math value 1
execute if score #botCountEasy value matches 3.. run scoreboard players set #math value 2
execute if score #botCountNormal value matches 3.. run scoreboard players set #math value 3
execute if score #botCountHard value matches 3.. run scoreboard players set #math value 4
execute if score #botCountTryhard value matches 3.. run scoreboard players set #math value 5

#never offer trophy if assist mode enabled
execute if score #assist_enabled_portalrace value matches 1.. run scoreboard players set #math value 0