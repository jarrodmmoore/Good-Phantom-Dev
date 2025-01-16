#summon act text
$execute positioned ~ ~-50 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp","rotateText"],alignment:"center",line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:'[{"nbt":"name","storage":"phan_grand_prix_$(level_id):metadata","interpret":false,"bold":false,"color":"white"}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~50.6 ~ 90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText