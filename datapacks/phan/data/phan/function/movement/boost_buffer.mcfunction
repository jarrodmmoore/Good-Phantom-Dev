scoreboard players remove @s boostBuffer 1

#apply boost the moment we touch the ground
execute if score @s airTime matches ..0 if score @s boostBuffer matches 1..99 run function phan:movement/boost_buffer_go
execute if score @s airTime matches ..0 if score @s boostBuffer matches 101.. run function phan:movement/boost_buffer_go_strong

#boost and strong boost share this same variable so we need to manage that here...
execute if score @s boostBuffer matches 100 run scoreboard players set @s boostBuffer 0