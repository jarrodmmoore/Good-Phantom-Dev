#this is used in the lobby cabin...
execute positioned ~ ~.5 ~ run summon item ~ ~ ~ {Tags:["checkValid","area0Spawn","area0SpawnB","act2Spawn","lobbyProp","stay","setMe","stardust","stardustYellow","groupA"],Age:-32768,NoGravity:0b,Item:{id:"minecraft:yellow_wool",count:1,components:{"minecraft:custom_name":'{"translate":"gp.game.stardust","color":"yellow","italic":false}',"minecraft:custom_model_data":1111111,"minecraft:hide_additional_tooltip":{}}}}
scoreboard players set @e[tag=setMe] area0SpawnB 1
tag @e[tag=setMe] remove setMe