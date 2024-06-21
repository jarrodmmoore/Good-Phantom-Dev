summon enderman ~ ~ ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Tags:["endermanProp","setMe"]}
scoreboard players operation @e[tag=setMe] originalID = #thisEndermanOG value
scoreboard players set @e[tag=setMe] lifespan 4