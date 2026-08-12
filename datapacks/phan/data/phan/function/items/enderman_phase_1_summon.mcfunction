summon enderman ~ ~ ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Tags:["endermanProp","setMe"]}
scoreboard players operation @e[type=enderman,tag=setMe,distance=..1] originalID = #thisEndermanOG value
scoreboard players set @e[type=enderman,tag=setMe,distance=..1] lifespan 4
tag @e[type=enderman,tag=setMe,distance=..1] remove setMe