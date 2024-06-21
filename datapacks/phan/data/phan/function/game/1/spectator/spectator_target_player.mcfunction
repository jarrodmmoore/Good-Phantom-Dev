#we exist
tag @a[tag=specTarget] remove specTarget
tag @s add specTarget
scoreboard players set #foundSpec value 1

#store our scores
scoreboard players set #specHudNode value 0
scoreboard players operation #spectatingID value = @s playerID
scoreboard players operation #specHudNode value = @s hudNode
scoreboard players operation #specHudActive value = @s pShowHUD
scoreboard players operation #spectator_current_x value = @s location_x
scoreboard players operation #spectator_current_y value = @s location_y
scoreboard players operation #spectator_current_z value = @s location_z
scoreboard players operation #spectatorSkybox value = @s skybox
scoreboard players operation #spectatingObject value = @s spectatingObject
scoreboard players operation #spectatorMusic value = @s musicTrack
scoreboard players operation #spectatorEyes value = @s enderEyes
scoreboard players operation #spectatorCheck value = @s check