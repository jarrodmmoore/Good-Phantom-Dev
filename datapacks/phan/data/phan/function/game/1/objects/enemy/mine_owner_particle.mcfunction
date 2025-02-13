tag @a[tag=tellMe] remove tellMe
scoreboard players operation #findID value = @s playerID
execute as @a[tag=playing] if score @s playerID = #findID value run tag @s add tellMe
particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"9"}}} ~ ~1 ~ 0 0 0 0 1 force @a[tag=tellMe]