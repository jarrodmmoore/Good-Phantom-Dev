#random grand prix uses id 5
scoreboard players set #grandPrixActive value 5

#set the round count! it's currently stored on tvMenuState7.
execute store result storage phan_grand_prix_5:metadata rounds int 1 run scoreboard players get #tvMenuState7 value

#kick it over to the real function
function phan:phantom_racer/game_io/start_grand_prix