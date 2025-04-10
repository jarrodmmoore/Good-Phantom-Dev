execute store result score #invTest value run clear @s purple_candle[custom_data~{purpleKey:1b}] 0

execute if score #dream2Opened value matches 0 if score #invTest value matches 0 run clear @s purple_candle[custom_data~{purpleKey:1b}]
execute if score #dream2Opened value matches 0 if score #invTest value matches 0 run give @s minecraft:purple_candle[custom_name={translate:"gp.lobby.purple_key",color:"#AA00FF",italic:false,bold:true},custom_data={purpleKey:1b,lobbyKey:1b}] 1

execute if score #dream2Opened value matches 1 if score #invTest value matches 1.. run clear @s purple_candle[custom_data~{purpleKey:1b}]