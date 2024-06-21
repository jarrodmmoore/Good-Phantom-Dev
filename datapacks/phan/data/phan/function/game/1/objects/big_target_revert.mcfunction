#change state using editArg1
scoreboard players set @s editArg1 0
data merge entity @s {item:{id:"minecraft:air",count:1}}
data merge entity @s {item:{id:"minecraft:red_wool",count:1,components:{"custom_model_data":1111147}}}

#we can be shot once again
tag @s add shootable