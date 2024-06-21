#default to all 0s
scoreboard players set #editNode value 0
scoreboard players set #editYaw value 0
scoreboard players set #editPitch value 0
scoreboard players set #editLoadArea value 0
scoreboard players set #editArea value 0
scoreboard players set #editArg1 value 0
scoreboard players set #editArg2 value 0
scoreboard players set #editArg3 value 0

#get values from player
execute as @a[limit=1,sort=nearest,tag=phan_edit] run function phan:editor/spawn/get_values_from_player

#summon the node and give it the proper data
execute if score #editNode value matches 1.. unless score #editNode value matches 16 run summon marker ~ ~ ~ {Tags:["node","setMe"]}
execute if score #editNode value matches 16 run function phan:editor/spawn/arrow_sign
execute if score #editNode value matches 18 as @e[type=marker,tag=setMe] run function phan:editor/spawn/checkpoint
execute if score #editNode value matches 20..21 as @e[type=marker,tag=setMe] run function phan:editor/spawn/reset_zone
execute if score #editNode value matches 22 as @e[type=marker,tag=setMe] run function phan:editor/spawn/loading_zone
execute as @e[type=marker,tag=setMe] at @s run function phan:editor/spawn/node_inherit_values

#now we perish
scoreboard players set @s lifespan 1
tag @s remove nodeSpawn