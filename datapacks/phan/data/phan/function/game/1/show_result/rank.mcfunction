#quickly transfer all points if not already done
execute if score @s pGameTime matches 100060 run scoreboard players operation @s scoreShow += @s scoreCurrent
execute if score @s pGameTime matches 100060 run scoreboard players set @s scoreCurrent 0

#we show the title display to anyone spectating us
function phan:tell_spectators

#subtitle
#display "scoreShow" on subtitle using the nicer looking custom font characters
scoreboard players operation #arg value = @s scoreShow
function phan:game/1/show_result/subtitle_custom_font
#title @s subtitle ["",{"score":{"name":"@s","objective":"scoreShow"},"bold":false}]

#random letter
scoreboard players add @s prevRandom 0
execute if score @s pGameTime matches 100060 run function phan:game/1/show_result/rank_random_get
execute if score @s pGameTime matches 100061..100119 if score #5Hz value matches 0 run function phan:game/1/show_result/rank_random_get
#REAL letter
execute if score @s pGameTime matches 100120 run function phan:game/1/show_result/rank_get

#show fake letter
execute if score @s pGameTime matches ..100119 if score @s prevRandom matches 1 run title @a[tag=tellMe] title ["",{"text":"|  ","bold":false,"color":"white"},{"text":"A","bold":true,"color":"#A030F0"},{"text":"  |","bold":false,"color":"white"}]
execute if score @s pGameTime matches ..100119 if score @s prevRandom matches 2 run title @a[tag=tellMe] title ["",{"text":"|  ","bold":false,"color":"white"},{"text":"B","bold":true,"color":"#8030D0"},{"text":"  |","bold":false,"color":"white"}]
execute if score @s pGameTime matches ..100119 if score @s prevRandom matches 3 run title @a[tag=tellMe] title ["",{"text":"|  ","bold":false,"color":"white"},{"text":"C","bold":true,"color":"#6030B0"},{"text":"  |","bold":false,"color":"white"}]
execute if score @s pGameTime matches ..100119 if score @s prevRandom matches 4 run title @a[tag=tellMe] title ["",{"text":"|  ","bold":false,"color":"white"},{"text":"D","bold":true,"color":"#403090"},{"text":"  |","bold":false,"color":"white"}]

#show the real letter
execute if score @s pGameTime matches 100120.. if score @s prevRandom matches 0 run title @a[tag=tellMe] title ["",{"text":"| ","bold":false,"color":"white"},{"text":"☆","bold":false,"color":"#FFFF22"},{"text":" |","bold":false,"color":"white"}]
execute if score @s pGameTime matches 100120.. if score @s prevRandom matches 1 run title @a[tag=tellMe] title ["",{"text":"| ","bold":false,"color":"white"},{"text":"A","bold":true,"color":"#A030F0"},{"text":" |","bold":false,"color":"white"}]
execute if score @s pGameTime matches 100120.. if score @s prevRandom matches 2 run title @a[tag=tellMe] title ["",{"text":"| ","bold":false,"color":"white"},{"text":"B","bold":true,"color":"#8030D0"},{"text":" |","bold":false,"color":"white"}]
execute if score @s pGameTime matches 100120.. if score @s prevRandom matches 3 run title @a[tag=tellMe] title ["",{"text":"| ","bold":false,"color":"white"},{"text":"C","bold":true,"color":"#6030B0"},{"text":" |","bold":false,"color":"white"}]
execute if score @s pGameTime matches 100120.. if score @s prevRandom matches 4 run title @a[tag=tellMe] title ["",{"text":"| ","bold":false,"color":"white"},{"text":"D","bold":true,"color":"#403090"},{"text":" |","bold":false,"color":"white"}]
tag @a[tag=tellMe] remove tellMe