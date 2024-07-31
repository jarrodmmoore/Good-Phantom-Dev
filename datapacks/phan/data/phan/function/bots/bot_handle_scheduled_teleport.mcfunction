scoreboard players remove @s botTeleportTimer 1
execute if score @s botTeleportTimer matches 0 run function phan:bots/bot_handle_scheduled_teleport_go