#use "math" player to determine what trophy we should offer
scoreboard players set #math value 0

#find average skill of bots
execute store result score #total value run execute if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botSkill=1..}]
scoreboard players set #average value 0
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botSkill=1..}] run scoreboard players operation #average value += @s botSkill
execute if score #total value matches 1.. run scoreboard players operation #average value /= #total value

#count how many bots we have of each difficulty
execute store result score #botCountVEasy value run execute if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botSkill=1..}]
execute store result score #botCountEasy value run execute if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botSkill=2..}]
execute store result score #botCountNormal value run execute if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botSkill=3..}]
execute store result score #botCountHard value run execute if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botSkill=4..}]
execute store result score #botCountTryhard value run execute if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botSkill=5..}]

#need 5 bots of a minimum skill level to offer a trophy
execute if score #botCountVEasy value matches 5.. run scoreboard players set #math value 1
execute if score #botCountEasy value matches 5.. run scoreboard players set #math value 2
execute if score #botCountNormal value matches 5.. run scoreboard players set #math value 3
execute if score #botCountHard value matches 5.. run scoreboard players set #math value 4
execute if score #botCountTryhard value matches 5.. run scoreboard players set #math value 5

#if 5+ total bots, we'll also accept the average if it's higher
#(remember, average rounds down to integer)
execute if score #total value matches 5.. if score #average value > #math value run scoreboard players operation #math value = #average value
execute if score #math value matches 6.. run scoreboard players set #math value 5

#grand prix active: override offered trophy
execute if score #grandPrixActive value matches 1..4 run scoreboard players operation #math value = #grandPrixClass value
execute if score #grandPrixActive value matches 5.. run scoreboard players set #math value 0

#inform players if trophy got blocked by assist mode
execute if score #gameState value matches 5 if score #math value matches 1.. if score #assist_enabled_portalrace value matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"[ ! ]","color":"#DD33FF","bold":true},{"text":" "},{"translate":"gp.assist.info.trophies_will_not_be_awarded","with":[{"translate":"gp.assist.assist_mode","color":"#DD33FF","bold":false,"italic":false}],"bold":false,"italic":false},{"text":"\n"}]

#never offer trophy if assist mode enabled
execute if score #assist_enabled_portalrace value matches 1.. run scoreboard players set #math value 0