execute if entity @s[tag=massiveRadius] anchored eyes if entity @a[tag=playing,gamemode=adventure,distance=..100] run function phan:game/1/objects/spawner_go
execute if entity @s[tag=largeRadius] anchored eyes if entity @a[tag=playing,gamemode=adventure,distance=..25] run function phan:game/1/objects/spawner_go
execute if entity @s[tag=mediumRadius] anchored eyes if entity @a[tag=playing,gamemode=adventure,distance=..20] run function phan:game/1/objects/spawner_go
execute if entity @s[tag=smallRadius] anchored eyes if entity @a[tag=playing,gamemode=adventure,distance=..15] run function phan:game/1/objects/spawner_go
execute if entity @s[tag=tinyRadius] anchored eyes if entity @a[tag=playing,gamemode=adventure,distance=..10] run function phan:game/1/objects/spawner_go
execute if entity @s[tag=repeatSpawn] anchored eyes run function phan:game/1/objects/spawner_repeat