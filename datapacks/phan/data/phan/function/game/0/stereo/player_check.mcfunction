#basic check
execute store result score #test value run clear @s red_dye[custom_data~{musicDiscSelect:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/stereo/player_handle_selection