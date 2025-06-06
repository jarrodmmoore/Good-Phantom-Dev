#remove 1 sec from timer
scoreboard players set @s timerAddDelay 3
execute at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.hat",targets:"@s[tag=playing]",pitch:".8",volume:"1"}
execute at @s run playsound minecraft:block.note_block.hat master @a[tag=!playing] ~ ~ ~ 2 0.8
scoreboard players add @s timerAdd 1
scoreboard players remove @s pTimeRemaining 20