$execute if score #vGameType value matches 1 run function phan:bots/controller/results/show_1st_go with storage phan:bot_data_$(id)
$execute if score #vGameType value matches 2 run function phan:bots/controller/results/show_1st_go_battle with storage phan:bot_data_$(id)
