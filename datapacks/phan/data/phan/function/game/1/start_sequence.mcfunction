#player-specific intro sequence

#ok, i know i dunked on function macros before but this is a situation where they'd be genuinely useful
#maybe a bit laggier with low player counts but less of a headache
#still not gonna use minecraft snapshots, though. :(

#need a reference to ourself
tag @s add self

#only mess with the camera and soul that has our ID
scoreboard players operation #cameraID value = @s playerID
execute as @e[type=armor_stand,tag=camera] if score @s playerID = #cameraID value run tag @s add currentCamera
execute as @e[type=armor_stand,tag=playerSoul] if score @s playerID = #cameraID value run tag @s add currentSoul

#paranoia code
execute if score @s pGameTime matches ..-101 run scoreboard players set @s pGameTime -100
#during testing someone seemed like they got caught in the intro sequence forever... possible due to having a very low negative pGameTime value

#respawn objects and stuff (so nothing looks out of place during the soul flying animation)
execute if score @s pGameTime matches 60 run function phan:game/1/start_loading_area

#title
execute if score @s pGameTime matches 80..299 run title @s actionbar ["",{translate:"gp.game.get_ready",italic:true}]

#don't let game music start while this is running!
execute if score @s musicTime matches ..19 run scoreboard players set @s musicTime 20

#hold players in place for a second
execute if score @s pGameTime matches ..80 if score #5Hz value matches 1 run effect give @a[distance=..5] blindness 5 4 true
execute if score @s pGameTime matches ..80 if score #5Hz value matches 1 run function phan:levels/_index_teleport
execute if score @s pGameTime matches ..80 if score #5Hz value matches 1 run effect give @a[distance=..5] slow_falling 4 1 true

#halt the sequence if we're watching the tutorial
execute if score @s pGameTime matches 35..39 unless score @s tutorialProgress matches 1000.. run function phan:game/1/tutorial_slideshow

#halt the sequence until chunks surrounding spawnpoint are loaded
scoreboard players set #chunksAreLoaded value 0
execute if score @s pGameTime matches 40..50 at @s if loaded ~-16 ~ ~-16 if loaded ~-16 ~ ~ if loaded ~-16 ~ ~16 if loaded ~ ~ ~-16 if loaded ~ ~ ~ if loaded ~ ~ ~16 if loaded ~16 ~ ~-16 if loaded ~16 ~ ~ if loaded ~16 ~ ~16 run scoreboard players set #chunksAreLoaded value 1
execute if score @s pGameTime matches 40..50 if score #chunksAreLoaded value matches 0 if score @s pLoadTime matches ..140 run scoreboard players set @s pGameTime 40
#possible that the server will give us the finger here and never load the chunks we need
#so if loading chunks takes more than 7 seconds, just stop caring and move on with the sequence. player will get a bad initial facing angle, but they'll just have to deal with it
execute if score @s pGameTime matches ..39 run scoreboard players set @s pLoadTime 0
execute if score @s pGameTime matches 40..50 run scoreboard players add @s pLoadTime 1

#summon camera
execute if score @s pGameTime matches 70 at @s run function phan:game/1/start_sequence_camera_spawn
execute if score @s pGameTime matches 70 run function phan:game/1/start_sequence_soul_angle

#keep camera alive while this runs
execute if score @s pGameTime matches 71..200 as @e[type=armor_stand,tag=currentCamera] run scoreboard players set @s lifespan 20
execute if score @s pGameTime matches 71..200 as @e[type=armor_stand,tag=currentSoul] run scoreboard players set @s lifespan 20
execute if score @s pGameTime matches 71..200 as @e[type=armor_stand,tag=currentSoul] on passengers run scoreboard players set @s lifespan 20

#show level title (multiplayer only)
execute if score @s pGameTime matches 100..120 if score #multiplayer value matches 1 run function phan:levels/_index_title

#let spectators know when we're done loading
execute if score @s pGameTime matches 80.. run scoreboard players set @s specDoneLoading 600

#make sure area info loaded...
execute if score @s pGameTime matches 70 run function phan:game/1/load_area_info

#spectate the camera
execute if score @s pGameTime matches 80 run effect clear @a[distance=..5] blindness
execute if score @s pGameTime matches 80 run gamemode spectator @s
execute if score @s pGameTime matches 80..180 run spectate @e[limit=1,type=armor_stand,tag=currentCamera] @s
execute if score @s pGameTime matches 80..180 run scoreboard players set @s spectatingObject 2

#camera spawns the soul, which flies to the start so the game can begin
execute if score @s pGameTime matches 80 as @e[type=armor_stand,tag=currentCamera] at @s positioned ^ ^ ^70 run function phan:game/1/start_sequence_soul_spawn

#camera faces entity while entity flies towards camera
execute if score @s pGameTime matches 80.. as @e[type=armor_stand,tag=currentCamera] at @s facing entity @e[tag=currentSoul,type=armor_stand,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute if score @s pGameTime matches 81.. unless score @s soulAngle matches 10.. as @e[tag=currentSoul,type=armor_stand] at @s facing entity @e[type=armor_stand,tag=currentCamera,limit=1] eyes run tp @s ^.23 ^ ^1
execute if score @s pGameTime matches 81.. if score @s soulAngle matches 10.. as @e[tag=currentSoul,type=armor_stand] at @s facing entity @e[type=armor_stand,tag=currentCamera,limit=1] eyes run tp @s ^.03 ^-.03 ^1
execute if score @s pGameTime matches 81.. as @e[tag=currentSoul,type=armor_stand] at @s run function phan:game/1/player_soul_visuals
execute if score @s pGameTime matches 121.. as @e[tag=currentSoul,type=armor_stand] at @s if entity @e[type=armor_stand,tag=currentCamera,distance=..2] run scoreboard players set @a[tag=self] pGameTime 500
execute if score @s pGameTime matches 81.. if score #10Hz value matches 0 as @e[tag=currentSoul,type=armor_stand] at @s run playsound minecraft:entity.allay.item_thrown master @a[distance=..60] ~ ~ ~ 1 2 .5
execute if score @s pGameTime matches 80 as @a[distance=..5] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.beacon.activate",targets:"@s",pitch:"1"}

#if we're at pGameTime=150 and the camera never spawned, let's just get started already...
execute if score @s pGameTime matches 150 unless entity @e[type=armor_stand,tag=currentCamera] run scoreboard players add @s pGameTime 350

#gogogo
execute if score @s pGameTime matches 500.. run function phan:game/1/start_go
tag @s remove self

#clean up tags
tag @e[tag=currentCamera] remove currentCamera
tag @e[tag=currentSoul] remove currentSoul