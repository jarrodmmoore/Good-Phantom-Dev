#basic check
execute store result score #test value run clear @s red_dye[custom_data~{assistMenu:1b}] 0
execute if score #test value matches 1.. run function phan:game/0/assist_mode/player_handle_option