#format it
scoreboard players operation #arg value = @s rawTime
function phan:game/1/show_result/time_format_white

#print it
tellraw @a ["",{text:" "},{text:"\uE001"},{text:" "},{nbt:"print.time",storage:"phan:data",interpret:true}]