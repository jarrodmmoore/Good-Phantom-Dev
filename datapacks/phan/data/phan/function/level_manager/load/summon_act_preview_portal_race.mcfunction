#relevant arguments:
#(rotation)
#(tag)

$summon text_display ~ ~-10 ~ {Tags:["lobbyProp","actPreviewImage","rotateMe"],brightness:{block:15,sky:15},alignment:"center",text:'["",{"nbt":"thumbnail_text","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":true}]',background:16711680}
$execute as @e[type=text_display,tag=rotateMe] at @s run tp @s ~ ~10 ~ $(rotation) ~
tag @e[type=text_display,tag=rotateMe] remove rotateMe