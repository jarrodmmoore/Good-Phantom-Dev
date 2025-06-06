scoreboard players reset @s jump

execute if entity @s[nbt={active_effects:[{id:"minecraft:jump_boost",amplifier:6b}]}] run playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 1.25 .85
execute if entity @s[nbt={active_effects:[{id:"minecraft:jump_boost",amplifier:12b}]}] run function phan:movement/player_jumped_big