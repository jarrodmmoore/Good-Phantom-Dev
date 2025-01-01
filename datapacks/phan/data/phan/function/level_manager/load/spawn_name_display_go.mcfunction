#spawn text_display exactly how we want it

$execute positioned ~ ~100 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp","rotateText","lobbyNameDisplay$(spawn_player_uid)"],alignment:"center",line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:'["",{"nbt":"name_display","storage":"phan_dream_$(spawn_player_uid):dream_data","interpret":true}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[2.65f,2.65f,2.65f]}}
$execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~$(spawn_nudge_x) ~-100$(spawn_nudge_y) ~$(spawn_nudge_z) $(spawn_text_rotation) ~
tag @e[tag=rotateText,type=text_display] remove rotateText