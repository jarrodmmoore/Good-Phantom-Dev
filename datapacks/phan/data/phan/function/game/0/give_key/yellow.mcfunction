execute store result score #invTest value run clear @s yellow_candle[custom_data~{yellowKey:1b}] 0

execute if score #dream3OpenedA value matches 0 if score #invTest value matches 0 run clear @s yellow_candle[custom_data~{yellowKey:1b}]
execute if score #dream3OpenedA value matches 0 if score #invTest value matches 0 run give @s minecraft:yellow_candle[custom_name={translate:"gp.lobby.yellow_key",color:"yellow",italic:false,bold:true},custom_data={yellowKey:1b,lobbyKey:1b}] 1

execute if score #dream3OpenedA value matches 1 if score #invTest value matches 1.. run clear @s yellow_candle[custom_data~{yellowKey:1b}]