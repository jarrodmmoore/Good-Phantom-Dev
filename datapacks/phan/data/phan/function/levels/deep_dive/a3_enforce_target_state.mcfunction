#be green AND hittable! :)
tag @s add shootable
data merge entity @s {item:{}}
data merge entity @s {item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/object/big_target_green"}}}
scoreboard players set @s editArg1 3