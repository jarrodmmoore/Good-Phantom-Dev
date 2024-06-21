#count it
scoreboard players add @s KOs 1
scoreboard players set @s deathsSinceKO 0

#feedback
tellraw @s ["",{"translate":"gp.versus.got_ko","color":"green","bold":true,"with":[{"selector":"@a[tag=ded_self]","bold":false}]}]
tellraw @a[tag=ded_self] ["",{"translate":"gp.versus.got_kod_by_player","color":"red","bold":true,"with":[{"selector":"@s","bold":false}]}]
execute at @s run playsound minecraft:custom_sfx/ko master @s ~ 100000 ~ 100000 1.5