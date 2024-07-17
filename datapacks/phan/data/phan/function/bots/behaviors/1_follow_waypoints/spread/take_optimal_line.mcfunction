#multiply by 10, then apply to x and z

scoreboard players operation #math value = #wpOptimalX value
scoreboard players operation #math value *= #10 value
scoreboard players operation #coord_xx value += #math value

scoreboard players operation #math value = #wpOptimalZ value
scoreboard players operation #math value *= #10 value
scoreboard players operation #coord_zz value += #math value