#timer digit 2

#extra pearl digit
execute if score #timeRem10 value matches ..0 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE906\uF001",italic:false,color:"white"}}
execute if score #timeRem10 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE907\uF001",italic:false,color:"white"}}
execute if score #timeRem10 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE908\uF001",italic:false,color:"white"}}
execute if score #timeRem10 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE909\uF001",italic:false,color:"white"}}
execute if score #timeRem10 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE910\uF001",italic:false,color:"white"}}
execute if score #timeRem10 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE911\uF001",italic:false,color:"white"}}
execute if score #timeRem10 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE912\uF001",italic:false,color:"white"}}
execute if score #timeRem10 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE913\uF001",italic:false,color:"white"}}
execute if score #timeRem10 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE914\uF001",italic:false,color:"white"}}
execute if score #timeRem10 value matches 9 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE915\uF001",italic:false,color:"white"}}
#flash red
execute if score #timeRem10 value matches 10 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE906\uF001",italic:false,color:"red"}}
execute if score #timeRem10 value matches 11 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE907\uF001",italic:false,color:"red"}}
execute if score #timeRem10 value matches 12 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE908\uF001",italic:false,color:"red"}}
execute if score #timeRem10 value matches 13 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE909\uF001",italic:false,color:"red"}}
execute if score #timeRem10 value matches 14 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE910\uF001",italic:false,color:"red"}}
execute if score #timeRem10 value matches 15 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE911\uF001",italic:false,color:"red"}}
execute if score #timeRem10 value matches 16 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE912\uF001",italic:false,color:"red"}}
execute if score #timeRem10 value matches 17 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE913\uF001",italic:false,color:"red"}}
execute if score #timeRem10 value matches 18 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE914\uF001",italic:false,color:"red"}}
execute if score #timeRem10 value matches 19.. run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uE915\uF001",italic:false,color:"red"}}

#store previous value
scoreboard players operation #hudPrev7 value = #timeRem10 value