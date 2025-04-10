#if we're running this, we can safely assume there's a player with tag=specTarget
#and we also have some of their scoreboard values to reference

#don't let spectators fly super far away and gen new chunks
execute if score #2sec value matches 0 at @s run function phan:game/1/spectator/keep_near_track

#they also need the hudNode and skybox of the nearest player and need to adopt pShowHUD
function phan:game/1/spectator/spectator_inherit_from_target

#title on actionbar
title @s[scores={actionbarDelay=..0}] actionbar ["",{translate:"gp.game.spectator_viewpoint",with:[{selector:"@a[limit=1,tag=specTarget]",color:"aqua"}],color:"white"}]