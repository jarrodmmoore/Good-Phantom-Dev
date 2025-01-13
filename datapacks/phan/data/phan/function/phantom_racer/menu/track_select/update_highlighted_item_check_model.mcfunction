#look up what we're supposed to be
$execute store result score #test value run data get storage phan:level_index level_select[$(index)]

#red highlight on the back button
#white on everything else
execute if score #test value matches -1 on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square_big_red
execute unless score #test value matches -1 on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square_big
