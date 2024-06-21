scoreboard players set #test value -1
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul] run scoreboard players set #test value 99
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul] if score #pTransitionProgress value matches 100050..100130 run scoreboard players set #test value 100

#this should result in a happy medium following distance. hopefully.
execute if score #test value matches 100 if score #followStraightUpSpeed value matches 1 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ~ ~1 ~ ~ ~
execute if score #test value matches 100 if score #followStraightUpSpeed value matches 2 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ~ ~2 ~ ~ ~
execute if score #test value matches 99 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ~ ~ ~ ~ ~