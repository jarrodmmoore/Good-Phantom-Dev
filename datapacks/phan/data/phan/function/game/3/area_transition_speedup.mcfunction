#expend stardust to make the movie play faster
scoreboard players remove @s stardustCollected 1
scoreboard players remove @s[scores={stardustCollected=1..}] stardustCollected 1
execute as @e[tag=currentSoul,type=armor_stand] at @s run function phan:levels/_index_area_transition
execute as @e[tag=currentSoul,type=armor_stand] at @s if entity @e[type=marker,tag=startPoint,distance=..5] run scoreboard players set #pGameTime value 100500
execute if score #10Hz value matches 0 as @e[tag=currentSoul,type=armor_stand] at @s run playsound minecraft:entity.allay.item_thrown master @a[tag=doneWithIntro,distance=..20] ~ ~ ~ 1 1.8 .5
execute if score #10Hz value matches 0 as @e[tag=currentSoul,type=armor_stand] at @s run particle dust{color:[1,1,0],scale:0.8} ~ ~ ~ 0.4 0.4 0.4 0 1 force @a

#camera goes up faster if told to go straight up
scoreboard players set #followStraightUpSpeed value 2