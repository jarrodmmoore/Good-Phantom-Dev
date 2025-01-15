#tvMenuState1,2,3,4 retain their previous value.
scoreboard players set #tvMenuState5 value 0
scoreboard players set #tvMenuState6 value -99
scoreboard players set #tvAnimation value 0
scoreboard players set #tvCooldown value 10
scoreboard players set #tvLastOperation value 0

#use menuState8 to track whether we can push the "play" button
scoreboard players set #tvMenuState8 value 1
execute store result storage phan:gp_index gp_id int 1 run scoreboard players get #tvChosenGP value
function phan:phantom_racer/menu/cup_select_custom/determine_if_gp_playable with storage phan:gp_index
#1 or higher means yes