#dismount
execute at @s run tp @s ~ ~ ~

#shrink and delete
item replace entity @s contents with stone[item_model="gp/tv_gui/square"]
data merge entity @s {start_interpolation:-1,interpolation_duration:5,transformation:{scale:[0.0f,0.25f,1.0f]}}
scoreboard players set @s lifespan 10
tag @s remove tvTextHighlight