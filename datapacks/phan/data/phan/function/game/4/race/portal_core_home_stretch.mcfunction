#executed by the portalCore node when someone has enough eyes to enter the portal

#hand out positions to players that meet the eye requirement to enter
execute as @a[tag=playing,tag=vsHomeStretch,sort=nearest] run function phan:game/4/race/checkpoint/player_get_position

#render portal if we haven't already
execute if score #vsPortalOpen value matches 0 run function phan:game/4/race/portal_core_render