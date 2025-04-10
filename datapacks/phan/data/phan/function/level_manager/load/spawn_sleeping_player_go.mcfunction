#spawn armor_stand with specified uid and rotation
#and with the assigned item_model from storage
$summon armor_stand ~ ~ ~ {Tags:["lobbyProp","lobbyPlayer$(spawn_player_uid)","levelEntry"],Marker:1b,Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:$(spawn_player_head_rotation)},equipment:{head:{id:"minecraft:red_wool",count:1,components:{"item_model":"$(spawn_player_model)"}}}}
$scoreboard players set @e[type=armor_stand,distance=..1,tag=lobbyPlayer$(spawn_player_uid)] nearPlayer $(spawn_player_uid)
$scoreboard players set @e[type=armor_stand,distance=..1,tag=lobbyPlayer$(spawn_player_uid)] levelUID $(spawn_player_uid)

#also apply custom name for editing while we're here
$execute as @e[type=armor_stand,distance=..1,tag=lobbyPlayer$(spawn_player_uid)] run data modify entity @s CustomName set from storage phan_dream_$(spawn_player_uid):dream_data name_text