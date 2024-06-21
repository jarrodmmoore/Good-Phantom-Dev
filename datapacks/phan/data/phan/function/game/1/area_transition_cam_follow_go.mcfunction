#approach the desired value smoothly
scoreboard players set #test2 value 0
execute if score @s soulMoveSpeed < @s soulDesiredSpeed run scoreboard players set #test2 value 1
execute if score @s soulMoveSpeed > @s soulDesiredSpeed run scoreboard players set #test2 value -1
scoreboard players operation @s soulMoveSpeed += #test2 value
execute if score @s soulDesiredSpeed matches 7.. if score @s soulMoveSpeed < @s soulDesiredSpeed run scoreboard players add @s soulMoveSpeed 1
execute if score @s soulDesiredSpeed matches 14.. if score @s soulMoveSpeed < @s soulDesiredSpeed run scoreboard players add @s soulMoveSpeed 1

#still ahead and at a high speed? slow down faster.
execute if score @s soulMoveSpeed matches 6.. if score @s soulMoveSpeed > @s soulDesiredSpeed run scoreboard players operation @s soulMoveSpeed = @s soulDesiredSpeed

#this should result in a happy medium following distance. hopefully.
execute if score @s soulMoveSpeed matches 33.. facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^3 ~ ~

execute if score @s soulMoveSpeed matches 32 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^2.9 ~ ~
execute if score @s soulMoveSpeed matches 31 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^2.8 ~ ~
execute if score @s soulMoveSpeed matches 30 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^2.7 ~ ~

execute if score @s soulMoveSpeed matches 29 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^2.6 ~ ~
execute if score @s soulMoveSpeed matches 28 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^2.5 ~ ~
execute if score @s soulMoveSpeed matches 27 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^2.4 ~ ~

execute if score @s soulMoveSpeed matches 26 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^2.3 ~ ~
execute if score @s soulMoveSpeed matches 25 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^2.2 ~ ~
execute if score @s soulMoveSpeed matches 24 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^2.1 ~ ~

execute if score @s soulMoveSpeed matches 23 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^2.0 ~ ~
execute if score @s soulMoveSpeed matches 22 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^1.9 ~ ~
execute if score @s soulMoveSpeed matches 21 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^1.8 ~ ~

execute if score @s soulMoveSpeed matches 20 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^1.7 ~ ~
execute if score @s soulMoveSpeed matches 19 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^1.6 ~ ~
execute if score @s soulMoveSpeed matches 18 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^1.5 ~ ~

execute if score @s soulMoveSpeed matches 17 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^1.4 ~ ~
execute if score @s soulMoveSpeed matches 16 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^1.3 ~ ~
execute if score @s soulMoveSpeed matches 15 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^1.2 ~ ~

execute if score @s soulMoveSpeed matches 14 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^1.1 ~ ~
execute if score @s soulMoveSpeed matches 13 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^1.0 ~ ~
execute if score @s soulMoveSpeed matches 12 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^0.9 ~ ~

execute if score @s soulMoveSpeed matches 11 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^0.8 ~ ~
execute if score @s soulMoveSpeed matches 10 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^0.7 ~ ~
execute if score @s soulMoveSpeed matches 9 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^0.6 ~ ~

execute if score @s soulMoveSpeed matches 8 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^0.5 ~ ~
execute if score @s soulMoveSpeed matches 7 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^0.4 ~ ~
execute if score @s soulMoveSpeed matches 6 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^0.3 ~ ~

execute if score @s soulMoveSpeed matches 5 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^0.2 ~ ~
execute if score @s soulMoveSpeed matches 4 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^0.1 ~ ~
execute if score @s soulMoveSpeed matches 3 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^0.08 ~ ~

execute if score @s soulMoveSpeed matches 2 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^0.06 ~ ~
execute if score @s soulMoveSpeed matches 1 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^0.04 ~ ~
execute if score @s soulMoveSpeed matches ..0 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ^ ^ ^ ~ ~