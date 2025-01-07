#key A
execute store result score #invTest value run clear @s pink_candle[custom_data~{rainbowKeyA:1b}] 0

execute if score #dreamCOpened value matches 0 if score #invTest value matches 0 run clear @s pink_candle[custom_data~{rainbowKeyA:1b}]
execute if score #dreamCOpened value matches 0 if score #invTest value matches 0 run give @s minecraft:pink_candle[custom_name='{"translate":"gp.lobby.rainbow_key","color":"light_purple","italic":false,"bold":true}',custom_data={rainbowKeyA:1b,lobbyKey:1b}] 1

execute if score #dreamCOpened value matches 1 if score #invTest value matches 1.. run clear @s pink_candle[custom_data~{rainbowKeyA:1b}]

#key B
execute store result score #invTest value run clear @s pink_candle[custom_data~{rainbowKeyB:1b}] 0

execute if score #dreamPOpened value matches 0 if score #invTest value matches 0 run clear @s pink_candle[custom_data~{rainbowKeyB:1b}]
execute if score #dreamPOpened value matches 0 if score #invTest value matches 0 run give @s minecraft:pink_candle[custom_name='{"translate":"gp.lobby.rainbow_key","color":"light_purple","italic":false,"bold":true}',custom_data={rainbowKeyB:1b,lobbyKey:1b}] 1

execute if score #dreamPOpened value matches 1 if score #invTest value matches 1.. run clear @s pink_candle[custom_data~{rainbowKeyB:1b}]