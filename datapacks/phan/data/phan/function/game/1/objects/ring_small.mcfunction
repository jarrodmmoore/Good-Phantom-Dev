#detect player
execute unless score #gameState value matches 4 positioned ~ ~-0.6 ~ if entity @a[tag=playing,gamemode=adventure,distance=..2] run function phan:game/1/objects/ring_check
execute if score #gameState value matches 4 run function phan:game/1/objects/ring_small_versus
#boost arrow visual
execute if score #5Hz value matches 1 if entity @s[tag=ringBoost] run particle block_marker{block_state:"green_glazed_terracotta"} ~ ~ ~