#be green AND hittable! :)
tag @s add shootable
data merge entity @s {item:{id:"minecraft:air",count:1}}
data merge entity @s {item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111148}}}
scoreboard players set @s editArg1 3