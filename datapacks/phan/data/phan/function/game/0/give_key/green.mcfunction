#key A
execute store result score #invTest value run clear @s green_candle[custom_data~{greenKeyA:1b}] 0

execute if score #dream4Opened value matches 0 if score #invTest value matches 0 run clear @s green_candle[custom_data~{greenKeyA:1b}]
execute if score #dream4Opened value matches 0 if score #invTest value matches 0 run give @s minecraft:green_candle[custom_name='{"translate":"gp.lobby.green_key","color":"dark_green","italic":false,"bold":true}',custom_data={greenKeyA:1b,lobbyKey:1b}] 1

execute if score #dream4Opened value matches 1 if score #invTest value matches 1.. run clear @s green_candle[custom_data~{greenKeyA:1b}]

#key B
execute store result score #invTest value run clear @s green_candle[custom_data~{greenKeyB:1b}] 0

execute if score #dream5Opened value matches 0 if score #invTest value matches 0 run clear @s green_candle[custom_data~{greenKeyB:1b}]
execute if score #dream5Opened value matches 0 if score #invTest value matches 0 run give @s minecraft:green_candle[custom_name='{"translate":"gp.lobby.green_key","color":"dark_green","italic":false,"bold":true}',custom_data={greenKeyB:1b,lobbyKey:1b}] 1

execute if score #dream5Opened value matches 1 if score #invTest value matches 1.. run clear @s green_candle[custom_data~{greenKeyB:1b}]