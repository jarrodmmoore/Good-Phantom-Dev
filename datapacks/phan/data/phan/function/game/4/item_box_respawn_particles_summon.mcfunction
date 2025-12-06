#apply data
data merge entity @s {Tags:["respawnWheel"],billboard:"center",start_interpolation:-1,alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},background:0}

#we are temporary
scoreboard players set @s lifespan 6
#kind of like a particle but dumber and less efficient

#apply the correct sprite
execute if score #test value matches 0..5 run data modify entity @s text set value [{text:"\uE088",color:white,italic:false}]
execute if score #test value matches 6..10 run data modify entity @s text set value [{text:"\uE087",color:white,italic:false}]
execute if score #test value matches 11..15 run data modify entity @s text set value [{text:"\uE086",color:white,italic:false}]
execute if score #test value matches 16..20 run data modify entity @s text set value [{text:"\uE085",color:white,italic:false}]
execute if score #test value matches 21..25 run data modify entity @s text set value [{text:"\uE084",color:white,italic:false}]
execute if score #test value matches 26..30 run data modify entity @s text set value [{text:"\uE083",color:white,italic:false}]
execute if score #test value matches 31..35 run data modify entity @s text set value [{text:"\uE082",color:white,italic:false}]
execute if score #test value matches 36..40 run data modify entity @s text set value [{text:"\uE081",color:white,italic:false}]
execute if score #test value matches 41.. run data modify entity @s text set value [{text:"\uE080",color:white,italic:false}]