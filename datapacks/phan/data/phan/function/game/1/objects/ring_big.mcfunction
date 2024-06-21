#detect player
execute unless score #gameState value matches 4 positioned ~ ~-0.6 ~ if entity @a[tag=playing,gamemode=adventure,distance=..3] run function phan:game/1/objects/ring_check
execute if score #gameState value matches 4 positioned ~ ~-0.6 ~ if entity @a[tag=playing,gamemode=adventure,distance=..3] run function phan:game/4/objects/ring_check_big
#boost arrow visual
execute if score #5Hz value matches 1 if entity @s[tag=ringBoost] run particle block_marker{block_state:"green_glazed_terracotta"} ~ ~ ~