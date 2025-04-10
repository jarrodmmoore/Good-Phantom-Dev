execute if entity @s[tag=!shortDisplayHP,tag=!tallDisplayHP] run summon text_display ~ ~ ~ {Tags:["setDisplay","fakeHP"],alignment:"center",see_through:true,billboard:"vertical",line_width:400,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,1.0f,0.0f],scale:[1.0f,1.0f,1.0f]},text:{text:""}}
execute if entity @s[tag=shortDisplayHP] run summon text_display ~ ~ ~ {Tags:["setDisplay","fakeHP"],alignment:"center",see_through:true,billboard:"vertical",line_width:400,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.5f,0.0f],scale:[1.0f,1.0f,1.0f]},text:{text:""}}
execute if entity @s[tag=tallDisplayHP] run summon text_display ~ ~ ~ {Tags:["setDisplay","fakeHP"],alignment:"center",see_through:true,billboard:"vertical",line_width:400,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,3.5f,0.0f],scale:[1.0f,1.0f,1.0f]},text:{text:""}}
ride @e[type=text_display,tag=setDisplay,limit=1] mount @s
scoreboard players set @e[tag=setDisplay] lifespan 20
tag @e[tag=setDisplay] remove setDisplay

tag @s remove needsDisplayHP
tag @s add hasDisplayHP

#force update
execute unless entity @s[tag=startHideHP] run scoreboard players set @s dEnemyHP -1
tag @s[tag=startHideHP] remove startHideHP