scoreboard players set #test value -1
execute if entity @e[limit=1,type=armor_stand,tag=currentSoul] run scoreboard players set #test value 99
#execute if entity @e[limit=1,type=armor_stand,tag=currentSoul] if score #pGameTime value matches 100050..100130 run scoreboard players set #test value 100

#look at the soul as it flies away without us ;(
execute if score #test value matches 99 facing entity @e[limit=1,type=armor_stand,tag=currentSoul] eyes run tp @s ~ ~ ~ ~ ~