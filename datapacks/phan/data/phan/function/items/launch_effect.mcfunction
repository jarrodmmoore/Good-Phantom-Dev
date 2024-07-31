#hopefully this will help bad connection players
execute if block ~ ~1 ~ #phan:not_solid if block ~ ~2 ~ #phan:not_solid at @s run tp @s ~ ~1 ~

#effect
effect give @s levitation 1 50 true
scoreboard players set @s elytraTimer 1

#bot behavior management
tag @s[tag=ai] add botUsingSuperJump
tag @s[tag=ai] add botFlyWhenInAir

#we're not stuck! don't try to re-route
scoreboard players set @s botTimeSinceProgress -40

#if we're a bot, apply levitation to elyta as well
execute if entity @s[tag=ai] run function phan:bots/items/6_super_jump/manage_vehicle_levitation

#feedback
playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 .5
particle cloud ~ ~.1 ~ 0.5 0.1 0.5 .1 25 force