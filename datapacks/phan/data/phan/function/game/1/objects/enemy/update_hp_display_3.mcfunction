#3 hp bars
execute if score @s enemyHP matches ..500 run data merge entity @s {CustomNameVisible:1b,CustomName:["",{text:"\uE987",color:"dark_gray"},{text:"\uE987",color:"dark_gray"},{text:"\uE987",color:"dark_gray"}]}
execute if score @s enemyHP matches 501..510 run data merge entity @s {CustomNameVisible:1b,CustomName:["",{text:"\uE987",color:"red"},{text:"\uE987",color:"dark_gray"},{text:"\uE987",color:"dark_gray"}]}
execute if score @s enemyHP matches 511..520 run data merge entity @s {CustomNameVisible:1b,CustomName:["",{text:"\uE987",color:"red"},{text:"\uE987",color:"red"},{text:"\uE987",color:"dark_gray"}]}
execute if score @s enemyHP matches 521.. run data merge entity @s {CustomNameVisible:1b,CustomName:["",{text:"\uE987",color:"red"},{text:"\uE987",color:"red"},{text:"\uE987",color:"red"}]}
