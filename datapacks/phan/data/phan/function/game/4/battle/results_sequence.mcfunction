#gameTime to 100000 if not there already
execute if score #gameTime value matches ..99999 run scoreboard players set #gameTime value 100000

#hide sidebar so the switch to the points display is more noticable
execute if score #gameTime value matches 100000 run scoreboard objectives setdisplay sidebar
execute if score #gameTime value matches 100000 run scoreboard players set @a[tag=doneWithIntro] pShowHUD 0

#show points
execute if score #gameTime value matches 100100 run function phan:game/4/battle/results_show_points

#add points incrementally
execute if score #gameTime value matches 100140 run function phan:game/4/race/results_add_points

#next act? or kick back to lobby?
execute if score #gameTime value matches 100240.. run function phan:game/4/race/end_round