#summon act text
$execute positioned ~ ~-50 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp","rotateText"],alignment:"center",line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:'[{"nbt":"act_name","storage":"phan_dream_$(level_id):sa_act_$(act)","bold":false,"color":"white"}]'}
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~50.6 ~ 90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText