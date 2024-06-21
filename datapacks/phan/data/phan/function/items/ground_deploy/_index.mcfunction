execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{throwableTnt:1b}}}}] run function phan:items/ground_deploy/tnt
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{mineItem:1b}}}}] run function phan:items/ground_deploy/mine
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{trappedChest:1b}}}}] run function phan:items/ground_deploy/trapped_chest

#delete once we're done
scoreboard players set @s lifespan 1