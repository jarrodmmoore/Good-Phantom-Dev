#old, de-referenced
#respawn if fallen down
#execute as @a[tag=playing,gamemode=adventure,scores={location_y=..35}] run function phan:game/4/race/respawn
#execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,scores={location_y=..35}] run tag @s add botRespawn