#check if there's a player nearby. if so, don't do anything yet
execute store result score #test value run execute if entity @a[tag=playing,gamemode=adventure,distance=..5]
execute if score #test value matches 1 store result score @s editArg3 run random value 2..100
execute if score #test value matches 1 run return 0

#=====

#visual effects and sound here
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 2 1
particle instant_effect ~ ~.5 ~ 0.2 0.2 0.2 0.1 10 force


#random number. might spawn 1, 2, 3, or 4 eyes
execute store result score #random value run random value 1..100
#spawn more eyes as we get closer to time
execute if score #vTimeLimit value matches ..6000 run scoreboard players remove #random value 10
execute if score #vTimeLimit value matches ..5000 run scoreboard players remove #random value 10
execute if score #vTimeLimit value matches ..4000 run scoreboard players remove #random value 10
execute if score #vTimeLimit value matches ..3000 run scoreboard players remove #random value 10
execute if score #vTimeLimit value matches ..2000 run scoreboard players remove #random value 10
execute if score #vTimeLimit value matches ..1000 run scoreboard players remove #random value 10

#spawn the eye (which is an item display)
summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","shootable","groupB"],teleport_duration:2,billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:flint",count:1b}}
execute if score #random value matches ..10 if block ~ ~1.25 ~ #phan:not_solid run summon item_display ~ ~1.25 ~ {Tags:["checkValid","setMe","enderEye","shootable","groupB"],teleport_duration:2,billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:flint",count:1b}}
execute if score #random value matches ..-20 if block ~ ~2 ~ #phan:not_solid run summon item_display ~ ~2 ~ {Tags:["checkValid","setMe","enderEye","shootable","groupB"],teleport_duration:2,billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:flint",count:1b}}
execute if score #random value matches ..-40 if block ~ ~2.75 ~ #phan:not_solid run summon item_display ~ ~2.75 ~ {Tags:["checkValid","setMe","enderEye","shootable","groupB"],teleport_duration:2,billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:flint",count:1b}}

#purple color
team join colorPurple @e[tag=setMe,type=item_display,distance=..4]

#glow in assist mode
execute if score #assist_navigation value matches 1.. as @e[tag=setMe,type=item_display,distance=..4] run data merge entity @s {Glowing:1b}

#glow in battle mode
execute if score #assist_navigation value matches ..0 if score #gameState value matches 4 if score #vGameType value matches 2 as @e[tag=setMe,type=item_display,distance=..4] run data merge entity @s {Glowing:1b}

function phan:game/1/spawning/spawn__give_generic_data

#50% chance we start the bobbing animation going down instead of up
execute store result score #random value run random value 1..2
execute if score #random value matches 1 run tag @e[tag=setMe,type=item_display,distance=..4] add goUp


#eye gets our eyeSpawnerID
execute if entity @s[tag=vsEyeSpawner] run scoreboard players operation @e[tag=setMe,type=item_display,distance=..4] eyeSpawnerID = @s eyeSpawnerID
scoreboard players set @e[tag=setMe,type=item_display,distance=..4] hitstun 10

#clean up tag
tag @e[tag=setMe,type=item_display,distance=..4] remove setMe



#node will wait for signal until it can spawn another one
execute if entity @s[tag=vsEyeSpawner] run scoreboard players set @s editArg3 -1