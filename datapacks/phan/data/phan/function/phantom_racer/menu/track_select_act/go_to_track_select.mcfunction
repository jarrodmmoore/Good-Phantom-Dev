#no load impulse, here!
#we'll just quietly clean up the stuff from act select and return ticking to menu page 4

scoreboard players set #tvMenuPage value 4

#don't play any animations again!
scoreboard players set #tvAnimation value 100
scoreboard players set #tvCooldown value 10
scoreboard players set #tvLastOperation value 0

#clean up the stuff we summoned for act select
scoreboard players set @e[type=text_display,tag=tvSubtitle7,distance=..10] lifespan 0
execute as @e[type=item_display,tag=tvActHighlight,distance=..10] run scoreboard players set @s lifespan 0
execute as @e[type=text_display,tag=tvActDisplay,tag=!tvActsBackground,distance=..10] run scoreboard players set @s lifespan 0
execute as @e[type=item_display,tag=tvActsBackground,distance=..10] run data merge entity @s {start_interpolation:-1,interpolation_duration:6,transformation:{scale:[0.0f,0.0f,1.0f]}}
execute as @e[type=item_display,tag=tvActsBackground,distance=..10] run scoreboard players set @s lifespan 6

#re-select whatever dream we were looking at
function phan:phantom_racer/menu/track_select/update_highlighted_item