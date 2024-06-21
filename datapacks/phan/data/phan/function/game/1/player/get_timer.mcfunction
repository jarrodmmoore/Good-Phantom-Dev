#do timer thing
scoreboard players add @s timerAdd 5
scoreboard players set @s timerAddDelay 20
scoreboard players add @s addScore 1
function phan:game/1/player/count_combo

#sound
execute at @s run playsound minecraft:entity.villager.celebrate master @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.75
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.95

execute unless score #dontConsumeItem value matches 1 run clear @s red_wool[custom_data~{redTimer:1b}] 1