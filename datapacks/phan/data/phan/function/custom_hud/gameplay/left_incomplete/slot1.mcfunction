#no pearl digit?
execute unless score #hudIndEnderA value matches 1.. run data merge entity 00000000-0000-0328-0000-000000000001 {CustomName:{text:"\uE903\uF001\uE905\uF001",italic:false,color:"white"}}

#extra pearl digit
execute if score #hudIndEnderA value matches 1 run data merge entity 00000000-0000-0328-0000-000000000001 {CustomName:{text:"\uE903\uF001\uE905\uF001\uE907\uF001",italic:false,color:"white"}}
execute if score #hudIndEnderA value matches 2 run data merge entity 00000000-0000-0328-0000-000000000001 {CustomName:{text:"\uE903\uF001\uE905\uF001\uE908\uF001",italic:false,color:"white"}}
execute if score #hudIndEnderA value matches 3 run data merge entity 00000000-0000-0328-0000-000000000001 {CustomName:{text:"\uE903\uF001\uE905\uF001\uE909\uF001",italic:false,color:"white"}}
execute if score #hudIndEnderA value matches 4 run data merge entity 00000000-0000-0328-0000-000000000001 {CustomName:{text:"\uE903\uF001\uE905\uF001\uE910\uF001",italic:false,color:"white"}}
execute if score #hudIndEnderA value matches 5 run data merge entity 00000000-0000-0328-0000-000000000001 {CustomName:{text:"\uE903\uF001\uE905\uF001\uE911\uF001",italic:false,color:"white"}}
execute if score #hudIndEnderA value matches 6 run data merge entity 00000000-0000-0328-0000-000000000001 {CustomName:{text:"\uE903\uF001\uE905\uF001\uE912\uF001",italic:false,color:"white"}}
execute if score #hudIndEnderA value matches 7 run data merge entity 00000000-0000-0328-0000-000000000001 {CustomName:{text:"\uE903\uF001\uE905\uF001\uE913\uF001",italic:false,color:"white"}}
execute if score #hudIndEnderA value matches 8 run data merge entity 00000000-0000-0328-0000-000000000001 {CustomName:{text:"\uE903\uF001\uE905\uF001\uE914\uF001",italic:false,color:"white"}}
execute if score #hudIndEnderA value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000001 {CustomName:{text:"\uE903\uF001\uE905\uF001\uE915\uF001",italic:false,color:"white"}}

#store previous value
scoreboard players operation #hudPrev1 value = #hudIndEnderA value