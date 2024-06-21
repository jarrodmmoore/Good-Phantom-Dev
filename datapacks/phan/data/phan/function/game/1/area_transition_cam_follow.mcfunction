scoreboard players add @s soulDesiredSpeed 0
scoreboard players add @s soulMoveSpeed 0

#check how far away we are from the soul
scoreboard players set #test value -1
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul] run scoreboard players set @s soulDesiredSpeed 99
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul,distance=..50] run scoreboard players set @s soulDesiredSpeed 33
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul,distance=..12] run scoreboard players set @s soulDesiredSpeed 30
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul,distance=..11] run scoreboard players set @s soulDesiredSpeed 27
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul,distance=..10] run scoreboard players set @s soulDesiredSpeed 24
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul,distance=..9] run scoreboard players set @s soulDesiredSpeed 21
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul,distance=..8] run scoreboard players set @s soulDesiredSpeed 18
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul,distance=..7] run scoreboard players set @s soulDesiredSpeed 15
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul,distance=..6] run scoreboard players set @s soulDesiredSpeed 12
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul,distance=..5] run scoreboard players set @s soulDesiredSpeed 9
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul,distance=..4] run scoreboard players set @s soulDesiredSpeed 6
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul,distance=..3] run scoreboard players set @s soulDesiredSpeed 0

#not within range? teleport directly to soul as a last ditch effort to keep up
execute if score @s soulDesiredSpeed matches 99 run tp @s @e[limit=1,type=armor_stand,tag=currentSoul]

#follow at a sensible distance
execute if score @s soulDesiredSpeed matches ..98 run function phan:game/1/area_transition_cam_follow_go