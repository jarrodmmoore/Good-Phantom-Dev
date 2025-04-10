#7 = tiny slash + player count

#position
execute if score #hudPeakPlayers value matches ..0 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uA901\uF001\uA902\uF001",italic:false,color:"gray"}}
execute if score #hudPeakPlayers value matches 1 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uA901\uF001\uA903\uF001",italic:false,color:"gray"}}
execute if score #hudPeakPlayers value matches 2 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uA901\uF001\uA904\uF001",italic:false,color:"gray"}}
execute if score #hudPeakPlayers value matches 3 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uA901\uF001\uA905\uF001",italic:false,color:"gray"}}
execute if score #hudPeakPlayers value matches 4 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uA901\uF001\uA906\uF001",italic:false,color:"gray"}}
execute if score #hudPeakPlayers value matches 5 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uA901\uF001\uA907\uF001",italic:false,color:"gray"}}
execute if score #hudPeakPlayers value matches 6 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uA901\uF001\uA908\uF001",italic:false,color:"gray"}}
execute if score #hudPeakPlayers value matches 7 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uA901\uF001\uA909\uF001",italic:false,color:"gray"}}
execute if score #hudPeakPlayers value matches 8 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uA901\uF001\uA910\uF001",italic:false,color:"gray"}}
execute if score #hudPeakPlayers value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:{text:"\uA901\uF001\uA911\uF001",italic:false,color:"gray"}}

#store previous value
scoreboard players operation #hudPrev7 value = #hudPeakPlayers value