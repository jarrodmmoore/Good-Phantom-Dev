#centisecond digit (0 or 5)
execute if score #showTimeMsec2 value matches ..-1 run data merge entity 00000000-0000-0328-0000-00000000000f {CustomName:{text:"\uE921\uF001",italic:false,color:"white"}}

execute if score #showTimeMsec2 value matches 0..4 run data merge entity 00000000-0000-0328-0000-00000000000f {CustomName:{text:"\uE922\uF001",italic:false,color:"white"}}
execute if score #showTimeMsec2 value matches 5.. run data merge entity 00000000-0000-0328-0000-00000000000f {CustomName:{text:"\uE927\uF001",italic:false,color:"white"}}

#store previous value
scoreboard players operation #hudPrev15 value = #showTimeMsec2 value