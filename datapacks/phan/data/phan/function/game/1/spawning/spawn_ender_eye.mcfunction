#deal with recursions
scoreboard players remove #spawnRecursions value 1


#=====
#ACTUAL SPAWN CODE
#(everything else is for recursion)

#spawn the eye (which is an item display)
summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","shootable","groupB"],billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:flint",Count:1b}}

#purple color
team join colorPurple @e[tag=setMe]

#glow in assist mode
execute if score #assist_navigation value matches 1.. run data merge entity @e[limit=1,tag=setMe] {Glowing:1b}

function phan:game/1/spawning/spawn__give_generic_data

#execute if score #noShoot value matches 1 run tag @e[tag=setMe] remove shootable
execute if score #noShoot value matches 1 run scoreboard players set @e[tag=setMe] hitstun 10

#50% chance we start the bobbing animation going down instead of up
scoreboard players operation #random value = @e[limit=1,tag=randomize,sort=random,type=armor_stand,scores={r=1..2}] r
execute if score #random value matches 1 run tag @e[tag=setMe] add goUp

tag @e[tag=setMe] remove setMe
#=====


#no recursions left? tell the rest of the recursive command stack to get bent
execute if score #spawnRecursions value matches ..0 run scoreboard players set #tempRecursions value -1

#keep going if we still have more recursions left
execute if score #spawnRecursions value matches 1.. run scoreboard players operation #tempRecursions value = #spaceRecursions value
execute if score #spawnRecursions value matches 1.. positioned ^ ^ ^1 run function phan:game/1/spawning/spawn_ender_eye_prep