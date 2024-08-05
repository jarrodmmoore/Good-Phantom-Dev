#reset players if they fall down
execute as @a[tag=playing,gamemode=adventure,scores={location_y=..70}] run function phan:game/4/race/respawn
execute if score #botsEnabled value matches 1.. run tag @e[tag=ai,type=zombie,scores={location_y=..70}] add botRespawn