#tag and get data of nearest player
gamemode spectator @s[gamemode=adventure]
scoreboard players set #foundSpec value 0
#if using player POV mode: we first attempt to find the player we spectated last tick. if they aren't nearby, find nearest instead
#(this avoids random POV swaps when players get really close to one another in Versus mode)
execute if score @s prevSpectateID matches -2147483648..2147483647 run scoreboard players operation #prevSpecID value = @s prevSpectateID
execute unless score @s spectateMode matches 1.. if score @s prevSpectateID matches -2147483648..2147483647 as @a[tag=playing,distance=..8] if score @s playerID = #prevSpecID value run function phan:game/1/spectator/spectator_target_player
execute if score #foundSpec value matches 0 as @a[limit=1,sort=nearest,tag=playing] run function phan:game/1/spectator/spectator_target_player


#what spectate mode are we in?
#player-pov (default)
execute unless score @s spectateMode matches 1.. run function phan:game/1/spectator/spectator_player_pov
#free-cam
execute if score @s spectateMode matches 1 run function phan:game/1/spectator/spectator_free_cam
#cinematic-cam
#execute if score @s spectateMode matches 2 run function phan:game/1/spectator/spectator_cinematic_cam

# ^ cinematic cam was cut.
#it would've functioned similar to the kind of spec view seen in other racing games where it shifts between fixed camera points on the level and cameras attached to players
#i primarily cut this due to laziness.
#but this feature also would've added extra work for level designers who would have to place tons of camera points in their levels and make sure they don't result in a big fat view of a wall
#and that's a lot of work for a feature that most players probably wouldn't have used anyway.

#clear some variables if we lost our spec target
execute if score #foundSpec value matches 0 run function phan:game/1/spectator/spectator_forget_target

#cleanup
tag @a[tag=specTarget] remove specTarget