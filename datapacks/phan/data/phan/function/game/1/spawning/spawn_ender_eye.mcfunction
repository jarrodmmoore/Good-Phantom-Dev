#deal with recursions
scoreboard players remove #spawnRecursions value 1


#=====
#ACTUAL SPAWN CODE
#(everything else is for recursion)

#spawn the eye (which is an item display)
summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","shootable","groupB"],teleport_duration:2,billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:light",count:1b,components:{"minecraft:block_state":{level:"14"}}}}

#purple color
team join colorPurple @e[tag=setMe,type=item_display,distance=..2]

#eye gets a unique ID in Portal Race mode
execute if score #gameState value matches 4 as @e[tag=setMe,type=item_display,distance=..2] run function phan:game/4/spawning/eye_get_unique_id

#glow in assist mode
execute if score #assist_navigation value matches 1.. run data merge entity @e[limit=1,tag=setMe,type=item_display,distance=..2] {Glowing:1b}

#get generic id
function phan:game/1/spawning/spawn__give_generic_data

#execute if score #noShoot value matches 1 run tag @e[tag=setMe] remove shootable
execute if score #noShoot value matches 1 run scoreboard players set @e[tag=setMe,type=item_display,distance=..2] hitstun 10

#50% chance we start the bobbing animation going down instead of up
execute store result score #random value run random value 1..2
execute if score #random value matches 1 run tag @e[tag=setMe,type=item_display,distance=..2] add goUp

tag @e[tag=setMe,type=item_display,distance=..2] remove setMe
#=====


#no recursions left? tell the rest of the recursive command stack to get bent
execute if score #spawnRecursions value matches ..0 run scoreboard players set #tempRecursions value -1

#keep going if we still have more recursions left
execute if score #spawnRecursions value matches 1.. run scoreboard players operation #tempRecursions value = #spaceRecursions value
execute if score #spawnRecursions value matches 1.. positioned ^ ^ ^1 run function phan:game/1/spawning/spawn_ender_eye_prep