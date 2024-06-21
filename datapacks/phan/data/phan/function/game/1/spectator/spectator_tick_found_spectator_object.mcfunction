#player is currently spectating a camera for the purpose of watching a cutscene
#so instead of spectating that player, we spectate the same camera entity that the player is using
#(otherwise things get insanely buggy)

#identify the camera
execute as @e[tag=camera,type=armor_stand] if score @s playerID = #spectatingID value run tag @s add specTargetObj

#spectate the camera
spectate @e[limit=1,tag=specTargetObj,type=armor_stand] @s
#need the hudNode and skybox of the target player and need to adopt pShowHUD
function phan:game/1/spectator/spectator_inherit_from_target

#title on actionbar
title @s[scores={actionbarDelay=..0}] actionbar ["",{"translate":"gp.game.spectator_viewpoint","with":[{"selector":"@a[limit=1,tag=specTarget]","color":"aqua"}],"color":"white"}]

#spectator buck check
execute if score #5Hz value matches 1 run function phan:game/1/spectator/spectator_buck_check

#tag clean-up
tag @e[tag=specTargetObj,type=armor_stand] remove specTargetObj