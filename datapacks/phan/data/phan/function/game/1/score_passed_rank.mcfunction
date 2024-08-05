scoreboard players remove @s currentGrade 1
scoreboard players set @s hudFlashTime 40

#sound!
function phan:player/tell_spectators
execute if score @s currentGrade matches 4 as @a[tag=tellMe] at @s run playsound minecraft:entity.player.levelup master @s ~ 100000 ~ 100000 .5
execute if score @s currentGrade matches 3 as @a[tag=tellMe] at @s run playsound minecraft:entity.player.levelup master @s ~ 100000 ~ 100000 .7
execute if score @s currentGrade matches 2 as @a[tag=tellMe] at @s run playsound minecraft:entity.player.levelup master @s ~ 100000 ~ 100000 .9
execute if score @s currentGrade matches 1 as @a[tag=tellMe] at @s run playsound minecraft:entity.player.levelup master @s ~ 100000 ~ 100000 1.1
execute if score @s currentGrade matches ..0 as @a[tag=tellMe] at @s run playsound minecraft:entity.player.levelup master @s ~ 100000 ~ 100000 1.3