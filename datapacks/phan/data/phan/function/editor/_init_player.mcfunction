#sync with global
scoreboard players operation @s editorTick = #join_global value

#reset state for editor tools
scoreboard players reset @s AIBC_selected
scoreboard players set @s AIBC_mode 0
execute unless score @s AIBC_set_dir matches 0..5 run scoreboard players set @s AIBC_set_dir 1