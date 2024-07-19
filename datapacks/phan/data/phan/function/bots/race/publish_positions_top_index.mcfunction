#reset score if we're not top 8
execute if entity @s[tag=!showTopPlayers] run return run function phan:bots/race/publish_positions_reset with storage phan:bot_data

#1-8
execute if score @s racePosDisplay matches 1 run function phan:bots/race/publish_positions_top_1 with storage phan:bot_data
execute if score @s racePosDisplay matches 2 run function phan:bots/race/publish_positions_top_2 with storage phan:bot_data
execute if score @s racePosDisplay matches 3 run function phan:bots/race/publish_positions_top_3 with storage phan:bot_data
execute if score @s racePosDisplay matches 4 run function phan:bots/race/publish_positions_top_4 with storage phan:bot_data
execute if score @s racePosDisplay matches 5 run function phan:bots/race/publish_positions_top_5 with storage phan:bot_data
execute if score @s racePosDisplay matches 6 run function phan:bots/race/publish_positions_top_6 with storage phan:bot_data
execute if score @s racePosDisplay matches 7 run function phan:bots/race/publish_positions_top_7 with storage phan:bot_data
execute if score @s racePosDisplay matches 8 run function phan:bots/race/publish_positions_top_8 with storage phan:bot_data

#replace number with flag if we're finished
execute if entity @s[tag=finished] run function phan:bots/race/publish_positions_top_finished with storage phan:bot_data