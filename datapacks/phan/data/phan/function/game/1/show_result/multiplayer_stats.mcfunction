#show player stats in a sequence
execute if score #gameTime value matches 1000020 run function phan:game/1/show_result/multiplayer_show_act1
execute if score #gameTime value matches 1000050 run function phan:game/1/show_result/multiplayer_show_act2
execute if score #gameTime value matches 1000080 run function phan:game/1/show_result/multiplayer_show_act3
execute if score #gameTime value matches 1000110 run function phan:game/1/show_result/multiplayer_show_combo
execute if score #gameTime value matches 1000140 run function phan:game/1/show_result/multiplayer_show_total
#return to lobby at the end
execute if score #gameTime value matches 1000200.. run function phan:game/0/_0_init