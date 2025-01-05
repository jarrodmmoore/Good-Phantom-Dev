#load from storage
scoreboard players set #success value 0
function phan:level_manager/load/load_podium_data with storage phan_dream_active:pr_podium
execute if score #success value matches 0 run tellraw @a ["",{"text":"[ ! ] Something went wrong while loading the data for this act! Please make sure your dream's data is formatted correctly.","color":"red"}]

#old index
#execute if score #chosenLevel value matches 1 run function phan:levels/pastel_palace/_podium_sequence_info
#execute if score #chosenLevel value matches 2 run function phan:levels/moonlit_mountains/_podium_sequence_info
#execute if score #chosenLevel value matches 3 run function phan:levels/shattered_city/_podium_sequence_info
#execute if score #chosenLevel value matches 4 run function phan:levels/neon_nightway/_podium_sequence_info
#execute if score #chosenLevel value matches 5 run function phan:levels/deep_dive/_podium_sequence_info