#snazzy particle!
particle enchanted_hit ~ ~ ~ 0 0 0 0 1 force

#get ID from player that threw pearl
execute unless score @s playerID matches 1.. run function phan:items/ender_pearl_get_playerid

#listen for checkpoints in versus mode
execute if score #gameState value matches 4 if score #vGameType value matches 1 if score @s playerID matches 1.. run function phan:items/ender_pearl_listen_for_cp

#don't put our owner inside an end portal block, please...
execute if entity @s[tag=!botEnderPearl,scores={playerID=1..}] if block ~ ~-1 ~ #phan:ender_pearl_problematic run function phan:items/ender_pearl_avoid_dunking_player_in_portal

#if owned by a bot, keep them up to date on what coordinates they should be teleported to
execute if entity @s[tag=botEnderPearl] run function phan:items/ender_pearl_update_bot_teleport_location

#delete if out of bounds (stops players from going to other acts of a dream when they shouldn't)
execute if score #checkLoadHeight value matches -64 if block ~ -63 ~ #phan:area_check unless score @s lifespan matches ..1 run function phan:items/ender_pearl_delete
execute if score #checkLoadHeight value matches 0 if block ~ 1 ~ #phan:area_check unless score @s lifespan matches ..1 run function phan:items/ender_pearl_delete

#delete if the game session we were born in is no longer valid
execute if score @s playerID matches 1.. unless score @s itemValidSpawn matches 1.. run function phan:items/ender_pearl_delete
#in 1.20.2 and later: ender pearls force load chunks and unload while their owner is disconnected
#so this is needed to prevent bugs and exploits