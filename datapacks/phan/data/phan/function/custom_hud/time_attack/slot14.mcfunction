#period + decisecond digit
execute if score #showTimeMsec value matches ..-1 run data merge entity 00000000-0000-0328-0000-00000000000e {CustomName:{text:"\uE921\uF001\uE921\uF001",italic:false}}

execute if score #showTimeMsec value matches 0 run data merge entity 00000000-0000-0328-0000-00000000000e {CustomName:{text:"\uE989\uF001\uE922\uF001",italic:false}}
execute if score #showTimeMsec value matches 1 run data merge entity 00000000-0000-0328-0000-00000000000e {CustomName:{text:"\uE989\uF001\uE923\uF001",italic:false}}
execute if score #showTimeMsec value matches 2 run data merge entity 00000000-0000-0328-0000-00000000000e {CustomName:{text:"\uE989\uF001\uE924\uF001",italic:false}}
execute if score #showTimeMsec value matches 3 run data merge entity 00000000-0000-0328-0000-00000000000e {CustomName:{text:"\uE989\uF001\uE925\uF001",italic:false}}
execute if score #showTimeMsec value matches 4 run data merge entity 00000000-0000-0328-0000-00000000000e {CustomName:{text:"\uE989\uF001\uE926\uF001",italic:false}}
execute if score #showTimeMsec value matches 5 run data merge entity 00000000-0000-0328-0000-00000000000e {CustomName:{text:"\uE989\uF001\uE927\uF001",italic:false}}
execute if score #showTimeMsec value matches 6 run data merge entity 00000000-0000-0328-0000-00000000000e {CustomName:{text:"\uE989\uF001\uE928\uF001",italic:false}}
execute if score #showTimeMsec value matches 7 run data merge entity 00000000-0000-0328-0000-00000000000e {CustomName:{text:"\uE989\uF001\uE929\uF001",italic:false}}
execute if score #showTimeMsec value matches 8 run data merge entity 00000000-0000-0328-0000-00000000000e {CustomName:{text:"\uE989\uF001\uE930\uF001",italic:false}}
execute if score #showTimeMsec value matches 9.. run data merge entity 00000000-0000-0328-0000-00000000000e {CustomName:{text:"\uE989\uF001\uE931\uF001",italic:false}}

#store previous value
scoreboard players operation #hudPrev14 value = #showTimeMsec value