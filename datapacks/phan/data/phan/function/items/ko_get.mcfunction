#count it
scoreboard players add @s KOs 1
scoreboard players set @s deathsSinceKO 0

#bot has data to send! they also don't need to see any feedback stuff, so kick them out now
execute if entity @s[tag=ai] run return run tag @s add hasDataToSend
#=====

#feedback
execute if score #botsEnabled value matches ..0 run tellraw @s ["",{"translate":"gp.versus.got_ko","color":"green","bold":true,"with":[{"selector":"@a[tag=ded_self]","bold":false}]}]
execute if score #botsEnabled value matches 1.. run tellraw @s ["",{"translate":"gp.versus.got_ko","color":"green","bold":true,"with":[{"selector":"@e[tag=ded_self]","bold":false}]}]
tellraw @a[tag=ded_self] ["",{"translate":"gp.versus.got_kod_by_player","color":"red","bold":true,"with":[{"selector":"@s","bold":false}]}]
function phan:player/tell_spectators
execute as @a[tag=tellMe] at @s run playsound minecraft:custom_sfx/ko master @s ~ 100000 ~ 100000 1.5