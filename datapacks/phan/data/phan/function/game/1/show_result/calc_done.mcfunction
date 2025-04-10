#title @s subtitle ["",{score:{name:"@s",objective:"scoreShow"},bold:false}]

#we show the title display to anyone spectating us
function phan:player/tell_spectators

#display "scoreShow" on subtitle using the nicer looking custom font characters
scoreboard players operation #arg value = @s scoreShow
function phan:game/1/show_result/subtitle_custom_font

title @a[tag=tellMe] title [""]
tag @a[tag=tellMe] remove tellMe