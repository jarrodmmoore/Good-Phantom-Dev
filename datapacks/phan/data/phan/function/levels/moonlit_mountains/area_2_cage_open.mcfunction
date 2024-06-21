#let me in
fill 1868 81 -28 1873 84 -23 structure_void replace barrier

#animate the bars going down (and then getting erased)
scoreboard players set @e[tag=moonlitCageVisual,type=item_display] lifespan 32
execute as @e[tag=moonlitCageVisual,type=item_display] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-6f,0f],scale:[0.66f,0.66f,0.66f]}}

#roof is air
fill 1868 85 -28 1873 85 -23 air destroy

#we're open now! don't do this every tick, please
scoreboard players set #act2cage value 1