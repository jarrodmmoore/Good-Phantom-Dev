#rapidly change to air and then the proper model. had to add the "air" step due to an issue (bug?) in minecraft 1.20.6
data merge entity @s {item:{}}
data merge entity @s {item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/enemy/baby_ghast"}}}