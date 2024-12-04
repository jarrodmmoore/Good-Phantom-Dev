#change state using editArg1
scoreboard players set @s editArg1 0
data merge entity @s {item:{}}
data merge entity @s {item:{id:"minecraft:red_wool",count:1,components:{"item_model":"gp/object/big_target_red"}}}

#we can be shot once again
tag @s add shootable