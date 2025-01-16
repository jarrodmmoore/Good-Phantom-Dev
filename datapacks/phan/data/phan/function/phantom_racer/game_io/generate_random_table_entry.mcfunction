#executed by an armor_stand entity that is associated with a dream

#get level uid into storage
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID

#act 1
data modify storage phan:level_index act set value 1
execute if score @s randomCooldown matches ..0 run function phan:phantom_racer/game_io/generate_random_table_entry_act with storage phan:level_index
#act 2
data modify storage phan:level_index act set value 2
execute if score @s randomCooldown2 matches ..0 run function phan:phantom_racer/game_io/generate_random_table_entry_act with storage phan:level_index
#act 3
data modify storage phan:level_index act set value 3
execute if score @s randomCooldown3 matches ..0 run function phan:phantom_racer/game_io/generate_random_table_entry_act with storage phan:level_index
#act 4
data modify storage phan:level_index act set value 4
execute if score @s randomCooldown4 matches ..0 run function phan:phantom_racer/game_io/generate_random_table_entry_act with storage phan:level_index