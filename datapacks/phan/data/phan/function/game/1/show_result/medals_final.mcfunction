#we show the title display to anyone spectating us
function phan:tell_spectators

#bronze
execute if score #pGameTime value matches 40 if score @s rawTime <= #timeBronze value run title @a[tag=tellMe] subtitle ["",{"translate":"gp.game.medal_beaten_bronze","color":"gold"}]
execute if score #pGameTime value matches 40 if score @s rawTime <= #timeBronze value run title @a[tag=tellMe] title ["",{"text":"\uE008"}]
execute if score #pGameTime value matches 40 if score @s rawTime <= #timeBronze value as @a[tag=tellMe] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ 100000 ~ 100000 .6
execute if score #pGameTime value matches 40 unless score @s rawTime <= #timeBronze value run scoreboard players set #pGameTime value 220

#silver
execute if score #pGameTime value matches 60 if score @s rawTime <= #timeSilver value run title @a[tag=tellMe] subtitle ["",{"translate":"gp.game.medal_beaten_silver","color":"gray"}]
execute if score #pGameTime value matches 60 if score @s rawTime <= #timeSilver value run title @a[tag=tellMe] title ["",{"text":"\uE008\uF010","color":"#AAAAAA"},{"text":"\uE009"}]
execute if score #pGameTime value matches 60 if score @s rawTime <= #timeSilver value as @a[tag=tellMe] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ 100000 ~ 100000 .75
execute if score #pGameTime value matches 60 unless score @s rawTime <= #timeSilver value run scoreboard players set #pGameTime value 220

#gold
execute if score #pGameTime value matches 80 if score @s rawTime <= #timeGold value run title @a[tag=tellMe] subtitle ["",{"translate":"gp.game.medal_beaten_gold","color":"yellow"}]
execute if score #pGameTime value matches 80 if score @s rawTime <= #timeGold value run title @a[tag=tellMe] title ["",{"text":"\uE008\uF010\uE009\uF010","color":"#AAAAAA"},{"text":"\uE010"}]
execute if score #pGameTime value matches 80 if score @s rawTime <= #timeGold value as @a[tag=tellMe] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ 100000 ~ 100000 .92
execute if score #pGameTime value matches 80 unless score @s rawTime <= #timeGold value run scoreboard players set #pGameTime value 220

#diamond
execute if score #pGameTime value matches 100 if score @s rawTime <= #timeDiamond value run title @a[tag=tellMe] subtitle ["",{"translate":"gp.game.medal_beaten_diamond","color":"aqua"}]
execute if score #pGameTime value matches 100 if score @s rawTime <= #timeDiamond value run title @a[tag=tellMe] title ["",{"text":"\uE008\uF010\uE009\uF010\uE010\uF010","color":"#AAAAAA"},{"text":"\uE011"}]
execute if score #pGameTime value matches 100 if score @s rawTime <= #timeDiamond value as @a[tag=tellMe] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ 100000 ~ 100000 1
execute if score #pGameTime value matches 100 if score @s rawTime <= #timeDiamond value as @a[tag=tellMe] at @s run playsound minecraft:entity.wither.death master @s ~ 100000 ~ 100000 1
execute if score #pGameTime value matches 100 run scoreboard players set #pGameTime value 220

tag @a[tag=tellMe] remove tellMe