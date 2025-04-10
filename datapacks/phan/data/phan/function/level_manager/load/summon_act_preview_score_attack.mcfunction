#relevant arguments:
#(rotation)
#(tag)

$summon text_display ~ ~-10 ~ {Tags:["lobbyProp","actPreviewImage","rotateMe"],brightness:{block:15,sky:15},alignment:"center",text:["",{nbt:"thumbnail_text",storage:"phan_dream_$(level_id):sa_act_$(act)",interpret:true}],background:16711680}
$execute as @e[type=text_display,tag=rotateMe] at @s run tp @s ~ ~10 ~ $(rotation) ~
tag @e[type=text_display,tag=rotateMe] remove rotateMe

#these were originally item_display models with a custom model
#but unfortunately the lighting on flat item_model entities made them look absolutely hideous from most angles
#so we switched to text_display which always renders full bright regardless of what the camera is doing