#we show the title display to anyone spectating us
function phan:player/tell_spectators

#subtitle
title @a[tag=tellMe] subtitle [""]

#random letter
scoreboard players add @s prevRandom 0
execute if score @s pGameTime matches 1000041 run function phan:game/1/show_result/rank_random_get
execute if score @s pGameTime matches 1000042..1000089 if score #5Hz value matches 0 run function phan:game/1/show_result/rank_random_get

execute if score @s pGameTime matches ..1000089 if score @s prevRandom matches 1 run title @a[tag=tellMe] title ["",{text:"|  ",bold:false,color:"white"},{text:"A",bold:true,color:"#A030F0"},{text:"  |",bold:false,color:"white"}]
execute if score @s pGameTime matches ..1000089 if score @s prevRandom matches 2 run title @a[tag=tellMe] title ["",{text:"|  ",bold:false,color:"white"},{text:"B",bold:true,color:"#8030D0"},{text:"  |",bold:false,color:"white"}]
execute if score @s pGameTime matches ..1000089 if score @s prevRandom matches 3 run title @a[tag=tellMe] title ["",{text:"|  ",bold:false,color:"white"},{text:"C",bold:true,color:"#6030B0"},{text:"  |",bold:false,color:"white"}]
execute if score @s pGameTime matches ..1000089 if score @s prevRandom matches 4 run title @a[tag=tellMe] title ["",{text:"|  ",bold:false,color:"white"},{text:"D",bold:true,color:"#403090"},{text:"  |",bold:false,color:"white"}]
tag @a[tag=tellMe] remove tellMe

#REAL letter
execute if score @s pGameTime matches 1000090 run function phan:game/1/show_result/rank_fail_get