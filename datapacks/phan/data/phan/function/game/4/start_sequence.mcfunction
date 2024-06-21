#global intro sequence

#sync gameTime value on players
execute as @a[tag=doneWithIntro] run scoreboard players operation @s pGameTime = #gameTime value
execute as @a[tag=doneWithIntro] run scoreboard players operation @s pCurrentArea = #vAct value

#title
execute if score #gameTime value matches 80..299 run title @s actionbar ["",{"translate":"gp.game.get_ready","italic":true}]

#hold players in place for a second
execute if score #gameTime value matches ..80 if score #5Hz value matches 1 run effect give @a[tag=doneWithIntro] blindness 5 4 true
execute if score #gameTime value matches ..80 if score #5Hz value matches 1 run function phan:levels/_index_teleport_versus
execute if score #gameTime value matches ..80 if score #5Hz value matches 1 run effect give @a[tag=doneWithIntro] slow_falling 4 1 true

#halt the sequence if we're watching the tutorial
execute if score #gameTime value matches 35..39 as @a[tag=doneWithIntro,scores={tutorialProgress=..999}] run function phan:game/4/tutorial_slideshow

#halt the sequence until chunks surrounding spawnpoint are loaded
scoreboard players set #chunksAreLoaded value 0
execute if score #gameTime value matches 40..50 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1}] run scoreboard players set #chunksAreLoaded value 1
execute if score #gameTime value matches 40..50 if score #chunksAreLoaded value matches 0 if score #loadTime value matches ..140 run scoreboard players set #gameTime value 40
#possible that the server will give us the finger here and never load the chunks we need
#so if loading chunks takes more than 7 seconds, just stop caring and move on with the sequence. player will get a bad initial facing angle, but they'll just have to deal with it
execute if score #gameTime value matches ..39 run scoreboard players set #loadTime value 0
execute if score #gameTime value matches 40..50 run scoreboard players add #loadTime value 1

#show level title (multiplayer only)
execute if score #gameTime value matches 100..120 as @a[tag=doneWithIntro] run function phan:levels/_index_title

#let spectators know when we're done loading
execute if score #gameTime value matches 80.. run scoreboard players set @a specDoneLoading 400

#go to starting grid
execute if score #gameTime value matches 80 run effect clear @a[tag=doneWithIntro] blindness
execute if score #gameTime value matches 80 run effect give @a[tag=doneWithIntro,tag=playing] blindness 1 2 true
execute if score #gameTime value matches 80 run tag @a[tag=doneWithIntro] remove noInventory
execute if score #gameTime value matches 80..219 as @a[tag=playing] at @s run function phan:game/4/race/start_grid/player

#3.. 160
#2.. 180
#1.. 200
#GO! 220

#gogogo
execute if score #gameTime value matches 220.. run function phan:game/4/start_go