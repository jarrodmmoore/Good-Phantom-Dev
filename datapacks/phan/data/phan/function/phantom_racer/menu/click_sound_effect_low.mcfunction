playsound minecraft:ui.button.click master @a ~ ~ ~ 1 0.95

#controlling player is not afk
execute as @e[type=armor_stand,tag=gameControllerPlayerHolder,distance=..10] on passengers run scoreboard players set @s[type=player] idleTime 0