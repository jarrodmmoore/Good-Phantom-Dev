#spawn
execute if score @s age matches 0..5 run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"7"}}} ~ ~ ~ 0 0 0 1 1
execute if score @s age matches 6..10 run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"6"}}} ~ ~ ~ 0 0 0 1 1
execute if score @s age matches 11..15 run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"5"}}} ~ ~ ~ 0 0 0 1 1
execute if score @s age matches 16..20 run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"4"}}} ~ ~ ~ 0 0 0 1 1
execute if score @s age matches 21..25 run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"3"}}} ~ ~ ~ 0 0 0 1 1
execute if score @s age matches 26..30 run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"2"}}} ~ ~ ~ 0 0 0 1 1
execute if score @s age matches 31..35 run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"1"}}} ~ ~ ~ 0 0 0 1 1
execute if score @s age matches 36.. run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"0"}}} ~ ~ ~ 0 0 0 1 1