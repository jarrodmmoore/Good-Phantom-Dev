#6 = left end + position number

#position
execute if score #playerPosition value matches ..9 run function phan:custom_hud/versus_race/slot6_2digit_0_9
execute if score #playerPosition value matches 10..19 run function phan:custom_hud/versus_race/slot6_2digit_10_19
execute if score #playerPosition value matches 20..32 run function phan:custom_hud/versus_race/slot6_2digit_20_32

#store previous value
scoreboard players operation #hudPrev6 value = #playerPosition value