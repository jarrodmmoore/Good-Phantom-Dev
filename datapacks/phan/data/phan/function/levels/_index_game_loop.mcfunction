#handle reset height
execute if entity @a[tag=playing,gamemode=adventure,scores={pCurrentArea=1}] run function phan:level_manager/load/player_reset_height_sa1 with storage phan_dream_active:sa_act_1
execute if entity @a[tag=playing,gamemode=adventure,scores={pCurrentArea=2}] run function phan:level_manager/load/player_reset_height_sa2 with storage phan_dream_active:sa_act_2
execute if entity @a[tag=playing,gamemode=adventure,scores={pCurrentArea=3}] run function phan:level_manager/load/player_reset_height_sa3 with storage phan_dream_active:sa_act_3

#game loop function, if defined
function phan:level_manager/load/function_game_loop with storage phan_dream_active:dream_data
