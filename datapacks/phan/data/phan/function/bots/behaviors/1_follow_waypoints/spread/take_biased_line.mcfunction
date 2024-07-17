#x
#first, store range into "math"
scoreboard players operation #math value = #wpMaxX value
scoreboard players operation #math value -= #wpMinX value
#use range to solve proportion and get the number of 10ths of blocks we need to offset from the minimum
scoreboard players operation #math value *= @s botBiasX
scoreboard players operation #math value /= #10 value
#target = minimum coordinate + what we just calculated
scoreboard players operation #coord_xx value = #wpMinX value
scoreboard players operation #coord_xx value += #math value

#z
#same as above
scoreboard players operation #math value = #wpMaxZ value
scoreboard players operation #math value -= #wpMinZ value
#
scoreboard players operation #math value *= @s botBiasZ
scoreboard players operation #math value /= #10 value
#
scoreboard players operation #coord_zz value = #wpMinZ value
scoreboard players operation #coord_zz value += #math value