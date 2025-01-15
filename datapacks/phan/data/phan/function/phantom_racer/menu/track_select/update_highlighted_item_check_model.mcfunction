#look up what we're supposed to be
$execute store result score #test value run data get storage phan:level_index level_select[$(index)]

#red highlight on the back button and erase button
#white on everything else
execute if score #test value matches -4 on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square_big_red

execute if score #test value matches -1 unless score #tvEditingGrandPrix value matches 1.. on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square_big_red
execute if score #test value matches -1 if score #tvEditingGrandPrix value matches 1.. on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square_big

execute unless score #test value matches -1 unless score #test value matches -4 on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square_big
