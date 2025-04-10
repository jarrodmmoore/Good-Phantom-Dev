setblock 194 -7 109 stone
execute unless score #commandBlockCheck value matches 1 run tellraw @a ["",{translate:"warning.command_blocks_not_enabled",color:"red","fallback":"[ ! ] Command blocks are not enabled on your server. Some parts of Good Phantom might not work properly."}]
scoreboard players reset #commandBlockCheck value