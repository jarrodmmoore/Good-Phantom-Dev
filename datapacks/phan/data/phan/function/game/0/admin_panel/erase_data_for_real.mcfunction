scoreboard players reset @a
execute as @a run function phan:join/reset_player_data
function phan:__erase_data
scoreboard players reset * playerID
scoreboard players set #bgm value 6