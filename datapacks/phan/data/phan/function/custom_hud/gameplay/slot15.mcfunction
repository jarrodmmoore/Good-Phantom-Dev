#possible digit, otherwise nothing
execute if score @s scoreDigit2 matches ..-1 run data merge entity 00000000-0000-0328-0000-00000000000f {CustomName:'{"text":"\\u200c","italic":false}'}

execute if score @s scoreDigit2 matches 0 run data merge entity 00000000-0000-0328-0000-00000000000f {CustomName:'{"text":"\\uE922\\uF001","italic":false}'}
execute if score @s scoreDigit2 matches 1 run data merge entity 00000000-0000-0328-0000-00000000000f {CustomName:'{"text":"\\uE923\\uF001","italic":false}'}
execute if score @s scoreDigit2 matches 2 run data merge entity 00000000-0000-0328-0000-00000000000f {CustomName:'{"text":"\\uE924\\uF001","italic":false}'}
execute if score @s scoreDigit2 matches 3 run data merge entity 00000000-0000-0328-0000-00000000000f {CustomName:'{"text":"\\uE925\\uF001","italic":false}'}
execute if score @s scoreDigit2 matches 4 run data merge entity 00000000-0000-0328-0000-00000000000f {CustomName:'{"text":"\\uE926\\uF001","italic":false}'}
execute if score @s scoreDigit2 matches 5 run data merge entity 00000000-0000-0328-0000-00000000000f {CustomName:'{"text":"\\uE927\\uF001","italic":false}'}
execute if score @s scoreDigit2 matches 6 run data merge entity 00000000-0000-0328-0000-00000000000f {CustomName:'{"text":"\\uE928\\uF001","italic":false}'}
execute if score @s scoreDigit2 matches 7 run data merge entity 00000000-0000-0328-0000-00000000000f {CustomName:'{"text":"\\uE929\\uF001","italic":false}'}
execute if score @s scoreDigit2 matches 8 run data merge entity 00000000-0000-0328-0000-00000000000f {CustomName:'{"text":"\\uE930\\uF001","italic":false}'}
execute if score @s scoreDigit2 matches 9 run data merge entity 00000000-0000-0328-0000-00000000000f {CustomName:'{"text":"\\uE931\\uF001","italic":false}'}
execute if score @s scoreDigit2 matches 10..19 run function phan:custom_hud/gameplay/points_positive/slot15
execute if score @s scoreDigit2 matches 20.. run function phan:custom_hud/gameplay/points_negative/slot15

#store previous value
scoreboard players operation #hudPrev15 value = @s scoreDigit2