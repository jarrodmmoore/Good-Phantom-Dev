#if all players are done with their assigned act, move onto the next one
execute store result score #test value run execute if entity @a[tag=playing]
execute if score #gameTime value matches 10..999999 if score #test value matches ..0 if entity @a[tag=playerReservation] run function phan:game/1/next_act_multiplayer

#show final results
execute if score #gameTime value matches 1000000.. run function phan:game/1/show_result/multiplayer_stats