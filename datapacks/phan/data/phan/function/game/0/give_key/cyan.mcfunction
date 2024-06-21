execute store result score #invTest value run clear @s cyan_candle[custom_data~{cyanKey:1b}] 0

execute if score #dream3OpenedB value matches 0 if score #invTest value matches 0 run clear @s cyan_candle[custom_data~{cyanKey:1b}]
execute if score #dream3OpenedB value matches 0 if score #invTest value matches 0 run give @s minecraft:cyan_candle[custom_name='{"translate":"gp.lobby.cyan_key","color":"dark_aqua","italic":false,"bold":true}',custom_data={cyanKey:1b}] 1

execute if score #dream3OpenedB value matches 1 if score #invTest value matches 1.. run clear @s cyan_candle[custom_data~{cyanKey:1b}]