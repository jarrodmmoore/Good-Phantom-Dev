#note: game/5 is started at gameTime=30

#wait a second before loading objects
execute if score #gameTime value matches 35 run function phan:game/1/spawning/reset_all
execute if score #gameTime value matches 37.. run function phan:game/5/handle_object_loading

#teleport to proper area and hold players in place for a second
execute if score #gameTime value matches ..80 if score #5Hz value matches 1 run function phan:game/5/players_teleport_to_podium_area

#halt the sequence until chunks surrounding camera are loaded
scoreboard players set #chunksAreLoaded value 0
execute if score #gameTime value matches 40..50 if entity @e[type=armor_stand,tag=podiumPlayerCamera] run scoreboard players set #chunksAreLoaded value 1
execute if score #gameTime value matches 40..50 if score #chunksAreLoaded value matches 0 if score #loadTime value matches ..140 run scoreboard players set #gameTime value 40
#possible that the server will give us the finger here and never load the chunks we need
#so if loading chunks takes more than 7 seconds, just stop caring and move on with the sequence. player will get a bad initial facing angle, but they'll just have to deal with it
execute if score #gameTime value matches ..39 run scoreboard players set #loadTime value 0
execute if score #gameTime value matches 40..50 run scoreboard players add #loadTime value 1

#go to camera
execute if score #gameTime value matches 80 run effect clear @a[tag=doneWithIntro] blindness
execute if score #gameTime value matches 80..319 as @e[type=armor_stand,tag=podiumPlayerCamera,limit=1] at @s run function phan:game/5/podium_camera_hold_players

#calculate who got top 3
execute if score #gameTime value matches 80 run function phan:game/5/top_3/calculate_point_placements
#and keep data for top 3 alive
execute if score #gameTime value matches 80..250 in overworld as @e[type=area_effect_cloud,tag=podiumData,x=197,y=0,z=117,distance=..2] run scoreboard players set @s lifespan 10

#show top 3
execute if score #gameTime value matches 120 run function phan:game/5/top_3/show_3rd
execute if score #gameTime value matches 180 run function phan:game/5/top_3/show_2nd
execute if score #gameTime value matches 240 run function phan:game/5/top_3/show_1st
#keep puppets alive
execute if score #gameTime value matches 120.. as @e[type=skeleton,tag=podiumPuppet] run scoreboard players set @s lifespan 10

#end
execute if score #gameTime value matches 380 run function phan:game/5/_5_end