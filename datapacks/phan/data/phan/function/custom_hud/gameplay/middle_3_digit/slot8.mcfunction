#timer digit 3 + right end

#extra pearl digit
execute if score #timeRemSec value matches ..0 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE906\uF001\uE904\uF001",italic:false}}
execute if score #timeRemSec value matches 1 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE907\uF001\uE904\uF001",italic:false}}
execute if score #timeRemSec value matches 2 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE908\uF001\uE904\uF001",italic:false}}
execute if score #timeRemSec value matches 3 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE909\uF001\uE904\uF001",italic:false}}
execute if score #timeRemSec value matches 4 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE910\uF001\uE904\uF001",italic:false}}
execute if score #timeRemSec value matches 5 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE911\uF001\uE904\uF001",italic:false}}
execute if score #timeRemSec value matches 6 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE912\uF001\uE904\uF001",italic:false}}
execute if score #timeRemSec value matches 7 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE913\uF001\uE904\uF001",italic:false}}
execute if score #timeRemSec value matches 8 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE914\uF001\uE904\uF001",italic:false}}
execute if score #timeRemSec value matches 9 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE915\uF001\uE904\uF001",italic:false}}
#flash red
execute if score #timeRemSec value matches 10 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE906\uF001\uE904\uF001",italic:false,color:"red"}}
execute if score #timeRemSec value matches 11 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE907\uF001\uE904\uF001",italic:false,color:"red"}}
execute if score #timeRemSec value matches 12 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE908\uF001\uE904\uF001",italic:false,color:"red"}}
execute if score #timeRemSec value matches 13 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE909\uF001\uE904\uF001",italic:false,color:"red"}}
execute if score #timeRemSec value matches 14 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE910\uF001\uE904\uF001",italic:false,color:"red"}}
execute if score #timeRemSec value matches 15 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE911\uF001\uE904\uF001",italic:false,color:"red"}}
execute if score #timeRemSec value matches 16 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE912\uF001\uE904\uF001",italic:false,color:"red"}}
execute if score #timeRemSec value matches 17 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE913\uF001\uE904\uF001",italic:false,color:"red"}}
execute if score #timeRemSec value matches 18 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE914\uF001\uE904\uF001",italic:false,color:"red"}}
execute if score #timeRemSec value matches 19.. run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uE915\uF001\uE904\uF001",italic:false,color:"red"}}

#store previous value
scoreboard players operation #hudPrev8 value = #timeRemSec value