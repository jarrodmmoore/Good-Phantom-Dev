#delete if we don't have the "stay" tag
execute if entity @s[tag=!stay] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{stay:1b}}}}] run scoreboard players set @s lifespan 1
execute if score @s lifespan matches ..1 run return 0

#item belongs to a specific game session. we delete items from any outdated sessions
execute if entity @s[tag=!stay,tag=!itemAssignSession] run function phan:items/item_assign_session
execute if entity @s[tag=itemAssignSession] unless score @s itemValidSpawn matches 1 run scoreboard players set @s lifespan 1

#handle deploy on ground behavior
execute if entity @s[tag=groundDeploy] if entity @s[nbt={OnGround:1b}] at @s run function phan:items/ground_deploy/_index