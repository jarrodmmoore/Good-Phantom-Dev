#keep track of how many viable options there are
scoreboard players set #randomLength value 0

#randomSetting 0 = any
#randomSetting 1 = race only
#randomSetting 2 = battle only

#we're going to populate this table with every selectable dream/act combo
data remove storage phan:data random_table
execute as @e[type=armor_stand,tag=randomViable] run function phan:phantom_racer/game_io/generate_random_table_entry_ignore_cooldown