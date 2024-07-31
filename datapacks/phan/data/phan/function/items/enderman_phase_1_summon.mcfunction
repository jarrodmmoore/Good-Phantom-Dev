summon enderman ~ ~ ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Tags:["endermanProp","setMe"]}
scoreboard players operation @e[tag=setMe,type=enderman,distance=..1] originalID = #thisEndermanOG value
scoreboard players set @e[tag=setMe,type=enderman,distance=..1] lifespan 4
tag @e[tag=setMe,type=enderman,distance=..1] remove setMe