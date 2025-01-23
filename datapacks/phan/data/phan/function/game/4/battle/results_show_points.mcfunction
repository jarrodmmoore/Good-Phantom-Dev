#calculate points based on player count

scoreboard players set @a vsAddPoints 0
#the hudPeakPlayers variable is a good measure, here
scoreboard players operation @a[tag=playerReservation] vsAddPoints = #hudPeakPlayers value
#guaranteed one point if you managed to finish
scoreboard players add @a[tag=playerReservation] vsAddPoints 1
execute as @a[tag=playerReservation] run scoreboard players operation @s vsAddPoints -= @s finishPos
#just to be safe, make sure everyone gets a point
scoreboard players set @a[tag=playerReservation,scores={vsAddPoints=..0}] vsAddPoints 1
#no points for DNF'd players
scoreboard players set @a[tag=playerReservation,scores={finishPos=-1}] vsAddPoints 0

#if peak player count was 0, give 0 points to everyone
execute if score #hudPeakPlayers value matches ..1 run scoreboard players set @a[tag=playerReservation] vsAddPoints 0

#points operations for bots
execute if score #botsEnabled value matches 1.. run function phan:bots/race/assign_bot_points
execute if score #botsEnabled value matches ..0 run scoreboard players set @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] vsAddPoints 0

#less global points if we have DNF'd players
execute as @a[tag=playerReservation,scores={vsAddPoints=..0}] run function phan:game/4/battle/results_reduce_global_points_for_dnfs
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={vsAddPoints=..0}] run function phan:game/4/battle/results_reduce_global_points_for_dnfs
#this prevents huge dropoffs in points, like if most of the players dnf'd on a really hard map (Shattered City III, for instance)


#print level title
tellraw @a[tag=doneWithIntro] ["",{"text":" "}]
execute as @a run function phan:levels/_index_title_act

#print the points of the top 4 players to everyone
execute as @a[tag=playerReservation,scores={finishPos=1}] if score @s vsAddPoints matches 1 run tellraw @a[tag=doneWithIntro] ["",{"text":"[","color":"yellow","bold":true},{"translate":"gp.versus.pos.1st","color":"yellow","bold":true},{"text":"]","color":"yellow","bold":true},{"text":" "},{"translate":"gp.versus.got_point","with":[{"score":{"name":"@s","objective":"vsAddPoints"},"color":"yellow","bold":true}],"color":"yellow","bold":true},{"text":" -- ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"  "},{"text":"(","color":"green"},{"score":{"name":"@s","objective":"KOs"},"color":"green"},{"text":")","color":"green"}]
execute as @a[tag=playerReservation,scores={finishPos=1}] unless score @s vsAddPoints matches 1 run tellraw @a[tag=doneWithIntro] ["",{"text":"[","color":"yellow","bold":true},{"translate":"gp.versus.pos.1st","color":"yellow","bold":true},{"text":"]","color":"yellow","bold":true},{"text":" "},{"translate":"gp.versus.got_points","with":[{"score":{"name":"@s","objective":"vsAddPoints"},"color":"yellow","bold":true}],"color":"yellow","bold":true},{"text":" -- ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"  "},{"text":"(","color":"green"},{"score":{"name":"@s","objective":"KOs"},"color":"green"},{"text":")","color":"green"}]
execute if score #botsEnabled value matches 1.. as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=finished,scores={finishPos=1}] run function phan:bots/controller/results/show_1st

execute as @a[tag=playerReservation,scores={finishPos=2}] if score @s vsAddPoints matches 1 run tellraw @a[tag=doneWithIntro] ["",{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.2nd","color":"white","bold":true},{"text":"]","color":"white","bold":true},{"text":" "},{"translate":"gp.versus.got_point","with":[{"score":{"name":"@s","objective":"vsAddPoints"},"color":"white","bold":true}],"color":"white","bold":true},{"text":" -- ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"  "},{"text":"(","color":"green"},{"score":{"name":"@s","objective":"KOs"},"color":"green"},{"text":")","color":"green"}]
execute as @a[tag=playerReservation,scores={finishPos=2}] unless score @s vsAddPoints matches 1 run tellraw @a[tag=doneWithIntro] ["",{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.2nd","color":"white","bold":true},{"text":"]","color":"white","bold":true},{"text":" "},{"translate":"gp.versus.got_points","with":[{"score":{"name":"@s","objective":"vsAddPoints"},"color":"white","bold":true}],"color":"white","bold":true},{"text":" -- ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"  "},{"text":"(","color":"green"},{"score":{"name":"@s","objective":"KOs"},"color":"green"},{"text":")","color":"green"}]
execute if score #botsEnabled value matches 1.. as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=finished,scores={finishPos=2}] run function phan:bots/controller/results/show_2nd

execute as @a[tag=playerReservation,scores={finishPos=3}] if score @s vsAddPoints matches 1 run tellraw @a[tag=doneWithIntro] ["",{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.3rd","color":"white","bold":true},{"text":"]","color":"white","bold":true},{"text":" "},{"translate":"gp.versus.got_point","with":[{"score":{"name":"@s","objective":"vsAddPoints"},"color":"white","bold":true}],"color":"white","bold":true},{"text":" -- ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"  "},{"text":"(","color":"green"},{"score":{"name":"@s","objective":"KOs"},"color":"green"},{"text":")","color":"green"}]
execute as @a[tag=playerReservation,scores={finishPos=3}] unless score @s vsAddPoints matches 1 run tellraw @a[tag=doneWithIntro] ["",{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.3rd","color":"white","bold":true},{"text":"]","color":"white","bold":true},{"text":" "},{"translate":"gp.versus.got_points","with":[{"score":{"name":"@s","objective":"vsAddPoints"},"color":"white","bold":true}],"color":"white","bold":true},{"text":" -- ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"  "},{"text":"(","color":"green"},{"score":{"name":"@s","objective":"KOs"},"color":"green"},{"text":")","color":"green"}]
execute if score #botsEnabled value matches 1.. as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=finished,scores={finishPos=3}] run function phan:bots/controller/results/show_3rd

execute as @a[tag=playerReservation,scores={finishPos=4}] if score @s vsAddPoints matches 1 run tellraw @a[tag=doneWithIntro] ["",{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.4th","color":"white","bold":true},{"text":"]","color":"white","bold":true},{"text":" "},{"translate":"gp.versus.got_point","with":[{"score":{"name":"@s","objective":"vsAddPoints"},"color":"white","bold":true}],"color":"white","bold":true},{"text":" -- ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"  "},{"text":"(","color":"green"},{"score":{"name":"@s","objective":"KOs"},"color":"green"},{"text":")","color":"green"}]
execute as @a[tag=playerReservation,scores={finishPos=4}] unless score @s vsAddPoints matches 1 run tellraw @a[tag=doneWithIntro] ["",{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.4th","color":"white","bold":true},{"text":"]","color":"white","bold":true},{"text":" "},{"translate":"gp.versus.got_points","with":[{"score":{"name":"@s","objective":"vsAddPoints"},"color":"white","bold":true}],"color":"white","bold":true},{"text":" -- ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"  "},{"text":"(","color":"green"},{"score":{"name":"@s","objective":"KOs"},"color":"green"},{"text":")","color":"green"}]
execute if score #botsEnabled value matches 1.. as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=finished,scores={finishPos=4}] run function phan:bots/controller/results/show_4th

execute as @a[tag=playerReservation,scores={finishPos=6..}] run tellraw @s ["",{"text":"...","bold":true}]

#players who finished 5th and below see a personalized message showing their rank and points
execute as @a[tag=playerReservation,scores={finishPos=5..}] run function phan:game/4/battle/results_show_5_plus

#dnf player sees DNF
execute as @a[tag=playerReservation,scores={finishPos=-1}] run tellraw @s ["",{"text":"[","color":"red","bold":true},{"translate":"gp.versus.pos.dnf","color":"red","bold":true},{"text":"]","color":"red","bold":true},{"text":" "},{"translate":"gp.versus.got_points","with":[{"score":{"name":"@s","objective":"vsAddPoints"},"color":"red","bold":true}],"color":"red","bold":true},{"text":" -- ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"  "},{"text":"(","color":"green"},{"score":{"name":"@s","objective":"KOs"},"color":"green"},{"text":")","color":"green"}]

#get ready to show points on a surrogate display
scoreboard objectives remove vsPointDisplay
scoreboard objectives add vsPointDisplay dummy ["",{"translate":"gp.versus.points","bold":true}]
scoreboard players add @a[tag=playerReservation] versusPoints 0
execute as @a[tag=playerReservation] run scoreboard players operation @s vsPointDisplay = @s versusPoints
execute if entity @a[tag=playerReservation] run scoreboard objectives setdisplay sidebar vsPointDisplay
execute if score #botsOnly value matches 1 run scoreboard objectives setdisplay sidebar vsPointDisplay
scoreboard players set #versusPointsShowing value 1

#get ready to show bots, too
execute if score #botsEnabled value matches 1.. as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] run function phan:bots/controller/results/update_points