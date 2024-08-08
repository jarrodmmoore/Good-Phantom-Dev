#we need to check the bottom four corners of our collision box
#because minecraft's check for OnGround:1b couldn't be bothered to do it properly >:/

#still grounded if block below us solid and not a bottom slab/stair
execute positioned ~0.3 ~ ~0.3 unless block ~ ~-0.1 ~ #phan:not_solid unless block ~ ~ ~ #minecraft:stairs[half=bottom] unless block ~ ~ ~ #minecraft:slabs[type=bottom] run return run scoreboard players set @s onGround 2
execute positioned ~-0.3 ~ ~0.3 unless block ~ ~-0.1 ~ #phan:not_solid unless block ~ ~ ~ #minecraft:stairs[half=bottom] unless block ~ ~ ~ #minecraft:slabs[type=bottom] run return run scoreboard players set @s onGround 2
execute positioned ~-0.3 ~ ~-0.3 unless block ~ ~-0.1 ~ #phan:not_solid unless block ~ ~ ~ #minecraft:stairs[half=bottom] unless block ~ ~ ~ #minecraft:slabs[type=bottom] run return run scoreboard players set @s onGround 2
execute positioned ~0.3 ~ ~-0.3 unless block ~ ~-0.1 ~ #phan:not_solid unless block ~ ~ ~ #minecraft:stairs[half=bottom] unless block ~ ~ ~ #minecraft:slabs[type=bottom] run return run scoreboard players set @s onGround 2

#still grounded if we're standing on slabs or the lower part of stairs
execute positioned ~0.3 ~0.4 ~0.3 if block ~ ~ ~ #minecraft:slabs[type=bottom] run return run scoreboard players set @s onGround 2
execute positioned ~0.3 ~0.4 ~0.3 if block ~ ~ ~ #minecraft:stairs[half=bottom] run return run scoreboard players set @s onGround 2

execute positioned ~-0.3 ~0.4 ~0.3 if block ~ ~ ~ #minecraft:slabs[type=bottom] run return run scoreboard players set @s onGround 2
execute positioned ~-0.3 ~0.4 ~0.3 if block ~ ~ ~ #minecraft:stairs[half=bottom] run return run scoreboard players set @s onGround 2

execute positioned ~-0.3 ~0.4 ~-0.3 if block ~ ~ ~ #minecraft:slabs[type=bottom] run return run scoreboard players set @s onGround 2
execute positioned ~-0.3 ~0.4 ~-0.3 if block ~ ~ ~ #minecraft:stairs[half=bottom] run return run scoreboard players set @s onGround 2

execute positioned ~0.3 ~0.4 ~-0.3 if block ~ ~ ~ #minecraft:slabs[type=bottom] run return run scoreboard players set @s onGround 2
execute positioned ~0.3 ~0.4 ~-0.3 if block ~ ~ ~ #minecraft:stairs[half=bottom] run return run scoreboard players set @s onGround 2

#still grounded if we're standing on carpet
execute if block ~ ~0.8 ~ #minecraft:wool_carpets run return run scoreboard players set @s onGround 2
execute if block ~ ~0.8 ~ moss_carpet run return run scoreboard players set @s onGround 2