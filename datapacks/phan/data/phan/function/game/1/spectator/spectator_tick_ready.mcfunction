#tag and get data of nearest player
gamemode spectator @s[gamemode=adventure]
scoreboard players set #foundSpec value 0
#if using player POV mode: we first attempt to find the player we spectated last tick. if they aren't nearby, find nearest instead
#(this avoids random POV swaps when players get really close to one another in Versus mode)
execute unless score @s spectateMode matches 1.. if score @s prevSpectateID matches -2147483648..2147483647 as @a[tag=playing,distance=..8] if score @s playerID = #prevSpecID value run function phan:game/1/spectator/spectator_target_player
execute if score #foundSpec value matches 0 as @a[limit=1,sort=nearest,tag=playing] run function phan:game/1/spectator/spectator_target_player


#what spectate mode are we in?
#player-pov (default)
execute unless score @s spectateMode matches 1.. run function phan:game/1/spectator/spectator_player_pov
#free-cam
execute if score @s spectateMode matches 1 run function phan:game/1/spectator/spectator_free_cam
#cinematic-cam
execute if score @s spectateMode matches 2 run function phan:game/1/spectator/spectator_cinematic_cam


#clear some variables if we lost our spec target
execute if score #foundSpec value matches 0 run function phan:game/1/spectator/spectator_forget_target

#cleanup
tag @a[tag=specTarget] remove specTarget