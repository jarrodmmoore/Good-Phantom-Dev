summon enderman ~ ~ ~ {AngerTime:99999,NoAI:1b,Invulnerable:1b,Silent:1b,Tags:["endermanProp","setMe"],carriedBlockState:{Name:"minecraft:dark_oak_sapling"}}
scoreboard players operation @e[tag=setMe] originalID = #thisEndermanOG value
scoreboard players set @e[tag=setMe] lifespan 4