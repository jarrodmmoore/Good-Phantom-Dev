scoreboard players operation #returnItem value = @s editArg1

#transform into whatever our item is
execute unless score @s editArg1 matches 1.. run data merge entity @s {item:{id:"air",count:1}}
execute if score @s editArg1 matches 1 run data merge entity @s {item:{id:"yellow_wool",count:10,components:{"custom_model_data":1111112}}}
execute if score @s editArg1 matches 2 run data merge entity @s {item:{id:"firework_rocket",count:1}}
execute if score @s editArg1 matches 3 run data merge entity @s {item:{id:"ender_pearl",count:1}}
execute if score @s editArg1 matches 4 run data merge entity @s {item:{id:"phantom_membrane",count:1}}
execute if score @s editArg1 matches 5 run data merge entity @s {item:{id:"amethyst_shard",count:1}}
execute if score @s editArg1 matches 6 run data merge entity @s {item:{id:"prismarine_shard",count:1}}
execute if score @s editArg1 matches 7 run data merge entity @s {item:{id:"tnt",count:1}}
execute if score @s editArg1 matches 8 run data merge entity @s {item:{id:"cyan_dye",count:3,components:{"custom_model_data":1111111}}}

#full bright
data merge entity @s {brightness:{sky:0,block:15}}

#wow! a thing!
particle instant_effect ~ ~.5 ~ 0.2 0.2 0.2 1 20 force
playsound minecraft:block.chest.open master @a ~ ~.5 ~ 2.3 1.2
playsound minecraft:entity.ender_eye.death master @a ~ ~.5 ~ 2.3 0.8