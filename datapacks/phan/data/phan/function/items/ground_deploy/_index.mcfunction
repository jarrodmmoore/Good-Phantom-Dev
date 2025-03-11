execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{throwableTnt:1b}}}}] run function phan:items/ground_deploy/tnt
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{mineItem:1b}}}}] run function phan:items/ground_deploy/mine
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{trappedChest:1b}}}}] run function phan:items/ground_deploy/trapped_chest

#fizzle on ground?
execute if entity @s[tag=fizzleOnGround] at @s run particle large_smoke ~ ~.25 ~ 0.1 0.1 0.1 0.05 5

#delete once we're done
scoreboard players set @s lifespan 1
scoreboard players reset @s age