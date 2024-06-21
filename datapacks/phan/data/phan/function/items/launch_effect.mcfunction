#hopefully this will help bad connection players
execute if block ~ ~1 ~ #phan:not_solid if block ~ ~2 ~ #phan:not_solid at @s run tp @s ~ ~1 ~

#effect
effect give @s levitation 1 50 true
scoreboard players set @s levitateTime 10
scoreboard players set @s elytraTimer 1

#feedback
playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 .5
particle cloud ~ ~.1 ~ 0.5 0.1 0.5 .1 25 force