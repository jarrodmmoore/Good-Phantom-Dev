scoreboard players set #movePoints value 1

#we show the title display to anyone spectating us
function phan:player/tell_spectators

#calculate sound
execute if score #10Hz value matches 1 run function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.bit",targets:"@a[tag=tellMe]",pitch:"1.65",volume:"1"}

scoreboard players operation @s scoreCurrent -= #movePoints value
scoreboard players operation @s scoreShow += #movePoints value

#title @s subtitle ["",{score:{name:"@s",objective:"scoreShow"},bold:false}]

#display "scoreShow" on subtitle using the nicer looking custom font characters
scoreboard players operation #arg value = @s scoreShow
function phan:game/1/show_result/subtitle_custom_font_bumped

title @a[tag=tellMe] title [""]
tag @a[tag=tellMe] remove tellMe