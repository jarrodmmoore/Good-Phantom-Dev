execute positioned ~ ~-0.6 ~ if entity @a[tag=playing,gamemode=adventure,distance=..3] run function phan:game/4/objects/ring_check_big
execute if score #botsEnabled value matches 1.. positioned ~ ~-0.6 ~ if entity @e[tag=ai,type=zombie,distance=..3] run function phan:game/4/objects/ring_check_big_bot
