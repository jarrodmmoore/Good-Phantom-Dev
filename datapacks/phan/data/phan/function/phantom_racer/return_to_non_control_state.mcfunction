scoreboard players set #tvControlState value 0

#kill and re-summon the player holder to avoid issues that would arise from the controlling player disconnecting
function phan:phantom_racer/summon_player_holder

#kill the controller item display
scoreboard players set @e[type=item_display,tag=gameControllerVisual] lifespan 0

#move all players away from where the controller will be
execute as @a[gamemode=!spectator,x=239,y=-9,z=118,distance=..3] run tp @s 241 -9 120 -110 0