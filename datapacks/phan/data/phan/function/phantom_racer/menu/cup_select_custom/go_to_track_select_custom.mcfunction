scoreboard players set #tvLoadImpulse value 1
scoreboard players set #tvMenuPage value 4
scoreboard players set #tvAnimation value 0

scoreboard players set #tvEditingGrandPrix value 1

#send players back here next time lobby is reloaded
scoreboard players set #tvRememberPage value 4

#clean up the stuff we summoned for the random panel
execute as @e[type=text_display,tag=tvCustomPanel] run scoreboard players set @s lifespan 0
execute as @e[type=item_display,tag=tvCustomPanelBackground,distance=..10] run data merge entity @s {start_interpolation:-1,interpolation_duration:6,transformation:{scale:[0.0f,0.0f,1.0f]}}
execute as @e[type=item_display,tag=tvCustomPanelBackground,distance=..10] run scoreboard players set @s lifespan 6
scoreboard players set @e[type=item_display,tag=tvTempHighlight] lifespan 0