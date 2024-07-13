#visual effects and sound here
#playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 2 1
particle instant_effect ~ ~.5 ~ 0.2 0.2 0.2 0.1 4 force

#spawn the eye (which is an item display)
summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","shootable","groupB"],billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:flint",count:1b}}

#purple color
team join colorPurple @e[tag=setMe]

#glow!
data merge entity @e[limit=1,tag=setMe] {Glowing:1b}

#glow in battle mode
#execute if score #assist_navigation value matches ..0 if score #gameState value matches 4 if score #vGameType value matches 2 run data merge entity @e[limit=1,tag=setMe] {Glowing:1b}

#get proper scores and tags
execute if score #vAct value matches 1 run tag @e[tag=setMe] add area0Spawn
execute if score #vAct value matches 1 run scoreboard players set @e[tag=setMe] area0SpawnA 1
execute if score #vAct value matches 1 run tag @e[tag=setMe] add act1Spawn

execute if score #vAct value matches 2 run tag @e[tag=setMe] add area0Spawn
execute if score #vAct value matches 2 run scoreboard players set @e[tag=setMe] area0SpawnB 1
execute if score #vAct value matches 2 run tag @e[tag=setMe] add act2Spawn

execute if score #vAct value matches 3 run tag @e[tag=setMe] add area0Spawn
execute if score #vAct value matches 3 run scoreboard players set @e[tag=setMe] area0SpawnC 1
execute if score #vAct value matches 3 run tag @e[tag=setMe] add act3Spawn

#50% chance we start the bobbing animation going down instead of up
execute store result score #random value run random value 1..2
execute if score #random value matches 1 run tag @e[tag=setMe] add goUp

#clean up tag
tag @e[tag=setMe] remove setMe