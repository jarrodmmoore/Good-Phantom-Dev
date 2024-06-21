#remove 1 sec from timer
scoreboard players set @s timerAddDelay 3
execute at @s run playsound minecraft:block.note_block.hat master @s[tag=playing] ~ 100000 ~ 100000 0.8
execute at @s run playsound minecraft:block.note_block.hat master @a[tag=!playing] ~ ~ ~ 2 0.8
scoreboard players add @s timerAdd 1
scoreboard players remove @s pTimeRemaining 20