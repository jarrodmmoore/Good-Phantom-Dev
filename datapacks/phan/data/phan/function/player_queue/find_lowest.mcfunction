#why is this in its own function?
#because it doesn't work otherwise
execute if score @s playQueue < #lowest value run scoreboard players operation #lowest value = @s playQueue