#if we're running this, we can safely assume there's a player with tag=specTarget
#and we also have some of their scoreboard values to reference

#spectators need to spectate nearest player and reload chunks every once in a while
#execute if score #5Hz value matches 0 at @s run spectate @a[limit=1,tag=specTarget,distance=..50] @s
#execute if score #5Hz value matches 0 at @s unless entity @a[limit=1,tag=specTarget,distance=..50] run tp @s @a[limit=1,tag=specTarget]
execute if score #5Hz value matches 0 run spectate @a[limit=1,tag=specTarget,distance=..50] @s
#they also need the hudNode and skybox of the nearest player and need to adopt pShowHUD
function phan:game/1/spectator/spectator_inherit_from_target

#title on actionbar
title @s[scores={actionbarDelay=..0}] actionbar ["",{translate:"gp.game.spectator_viewpoint",with:[{selector:"@a[limit=1,tag=specTarget]",color:"aqua"}],color:"white"}]

#if the player moves more than 90 blocks in x or z axis away from where they first spectated, force un-spectate for 1 tick to force new chunks to load
#(one day mojang will fix this...)
execute if score #5Hz value matches 1 run function phan:game/1/spectator/spectator_buck_check