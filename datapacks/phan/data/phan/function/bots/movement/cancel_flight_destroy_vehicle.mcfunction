#get velocity so we can apply it back to bot
execute store result score #xVelocity value run data get entity @s Motion[0] 100000
execute store result score #yVelocity value run data get entity @s Motion[1] 100000
execute store result score #zVelocity value run data get entity @s Motion[2] 100000

#perish
item replace entity @s armor.chest with air
tag @s remove botElytra
scoreboard players set @s lifespan 0