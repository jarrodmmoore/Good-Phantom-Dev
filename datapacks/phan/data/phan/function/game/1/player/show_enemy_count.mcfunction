#another hilariously over-engineered display function. love to see it

#we show the title display to anyone spectating us
function phan:player/tell_spectators

#count enemies alive in our area
scoreboard players set #enemiesAlive value 0
execute if score @s pCurrentArea matches 1 as @e[tag=representBaddy,tag=act1Spawn] run scoreboard players add #enemiesAlive value 1
execute if score @s pCurrentArea matches 2 as @e[tag=representBaddy,tag=act2Spawn] run scoreboard players add #enemiesAlive value 1
execute if score @s pCurrentArea matches 3 as @e[tag=representBaddy,tag=act3Spawn] run scoreboard players add #enemiesAlive value 1

#goal display digits
scoreboard players operation #presentGoalA value = #enemiesAlive value
scoreboard players operation #presentGoalA value /= #10 value
scoreboard players operation #presentGoalB value = #enemiesAlive value
scoreboard players operation #presentGoalB value %= #10 value
execute if score #enemiesAlive value matches ..-1 run scoreboard players set #presentGoalA value 0
execute if score #enemiesAlive value matches ..-1 run scoreboard players set #presentGoalB value 0

#store enemy head display
#normal
data modify storage phan:data display.present.chest set value [{text:"\uE824"}]

#store digits A
execute if score #presentGoalA value matches 0 if score @s presentGoal matches ..9 run data modify storage phan:data display.present.a set value [{text:"\uF020"}]
execute if score #presentGoalA value matches 0 if score @s presentGoal matches 10.. run data modify storage phan:data display.present.a set value [{text:"\uE800"}]
execute if score #presentGoalA value matches 1 run data modify storage phan:data display.present.a set value [{text:"\uE801"}]
execute if score #presentGoalA value matches 2 run data modify storage phan:data display.present.a set value [{text:"\uE802"}]
execute if score #presentGoalA value matches 3 run data modify storage phan:data display.present.a set value [{text:"\uE803"}]
execute if score #presentGoalA value matches 4 run data modify storage phan:data display.present.a set value [{text:"\uE804"}]
execute if score #presentGoalA value matches 5 run data modify storage phan:data display.present.a set value [{text:"\uE805"}]
execute if score #presentGoalA value matches 6 run data modify storage phan:data display.present.a set value [{text:"\uE806"}]
execute if score #presentGoalA value matches 7 run data modify storage phan:data display.present.a set value [{text:"\uE807"}]
execute if score #presentGoalA value matches 8 run data modify storage phan:data display.present.a set value [{text:"\uE808"}]
execute if score #presentGoalA value matches 9.. run data modify storage phan:data display.present.a set value [{text:"\uE809"}]

#store digit B
execute if score #presentGoalB value matches -1 run data modify storage phan:data display.present.b set value [{text:"\uF020"}]
execute if score #presentGoalB value matches 0 run data modify storage phan:data display.present.b set value [{text:"\uE800"}]
execute if score #presentGoalB value matches 1 run data modify storage phan:data display.present.b set value [{text:"\uE801"}]
execute if score #presentGoalB value matches 2 run data modify storage phan:data display.present.b set value [{text:"\uE802"}]
execute if score #presentGoalB value matches 3 run data modify storage phan:data display.present.b set value [{text:"\uE803"}]
execute if score #presentGoalB value matches 4 run data modify storage phan:data display.present.b set value [{text:"\uE804"}]
execute if score #presentGoalB value matches 5 run data modify storage phan:data display.present.b set value [{text:"\uE805"}]
execute if score #presentGoalB value matches 6 run data modify storage phan:data display.present.b set value [{text:"\uE806"}]
execute if score #presentGoalB value matches 7 run data modify storage phan:data display.present.b set value [{text:"\uE807"}]
execute if score #presentGoalB value matches 8 run data modify storage phan:data display.present.b set value [{text:"\uE808"}]
execute if score #presentGoalB value matches 9.. run data modify storage phan:data display.present.b set value [{text:"\uE809"}]

#show on screen?
title @a[tag=tellMe] subtitle ["",{text:"\uF005"},{nbt:"display.present.chest",storage:"phan:data",interpret:true},{nbt:"display.present.a",storage:"phan:data",interpret:true},{nbt:"display.present.b",storage:"phan:data",interpret:true}]

#no enemies left? get rid of display
execute if score #enemiesAlive value matches ..0 run title @a[tag=tellMe] subtitle [""]
execute if score #enemiesAlive value matches ..0 run scoreboard players set @s showEnemyCount 0

#put thing on screen
title @a[tag=tellMe] title [""]

#cleanup
tag @a[tag=tellMe] remove tellMe