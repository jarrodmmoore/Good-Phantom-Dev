#run by an entity that went through the end portal and ended up on the obsidian platform
execute if entity @s[type=player,gamemode=adventure] run scoreboard players set @s join 1
execute if entity @s[type=!player] run kill @s