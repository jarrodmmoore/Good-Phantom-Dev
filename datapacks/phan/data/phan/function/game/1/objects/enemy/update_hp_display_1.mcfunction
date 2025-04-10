#..1 hp bar
execute if score @s enemyHP matches ..500 run data merge entity @s {CustomNameVisible:1b,CustomName:["",{text:"\uE987",color:"dark_gray"}]}
execute if score @s enemyHP matches 501.. run data merge entity @s {CustomNameVisible:1b,CustomName:["",{text:"\uE987",color:"red"}]}
