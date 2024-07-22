#gameTime to 100000 if not there already
execute if score #gameTime value matches ..99999 run scoreboard players set #gameTime value 100000

#hide sidebar so the switch to the points display is more noticable
execute if score #gameTime value matches 100000 run scoreboard objectives setdisplay sidebar
execute if score #gameTime value matches 100000 run scoreboard players set @a[tag=doneWithIntro] pShowHUD 0

#any bots that aren't finished or disabled should immediately save their position as their finish position
execute if score #gameTime value matches 100000 as @e[tag=ai,type=zombie,scores={racePosDisplay=1..}] run function phan:bots/disable_race_give_position
execute if score #gameTime value matches 100000 run tag @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] add botDisabled

#show points
execute if score #gameTime value matches 100100 run function phan:game/4/race/results_show_points

#add points incrementally
execute if score #gameTime value matches 100140 run function phan:game/4/race/results_add_points

#next act? or kick back to lobby?
execute if score #gameTime value matches 100240.. run function phan:game/4/race/end_round