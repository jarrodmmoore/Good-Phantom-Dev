#add 1 sec to timer
scoreboard players set @s timerAddDelay 3
execute at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.hat",targets:"@s[tag=playing]",pitch:"1.3",volume:"1"}
execute at @s run playsound minecraft:block.note_block.hat master @a[tag=!playing] ~ ~ ~ 2 1.3
scoreboard players remove @s timerAdd 1
scoreboard players add @s pTimeRemaining 20