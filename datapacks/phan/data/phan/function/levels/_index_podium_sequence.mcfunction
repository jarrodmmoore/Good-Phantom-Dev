#load from storage
scoreboard players set #success value 0
function phan:level_manager/load/load_podium_data with storage phan_dream_active:pr_podium
execute if score #success value matches 0 run tellraw @a ["",{"text":"[ ! ] Something went wrong while loading the data for this act! Please make sure your dream's data is formatted correctly.","color":"red"}]
