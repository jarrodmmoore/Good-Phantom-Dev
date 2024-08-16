#feedback
execute at @s run playsound block.lava.extinguish master @a ~ ~ ~ 2 1

#reset versus session and points
function phan:game/4/new_versus_session
scoreboard objectives setdisplay sidebar