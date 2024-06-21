#useful when we tag both the player and all players spectating them for shared visuals / sound effects
tag @a[tag=tellMe] remove tellMe
tag @s add tellMe
scoreboard players operation #findID value = @s playerID
execute as @a[tag=!playing] if score @s spectatingID = #findID value run tag @s add tellMe