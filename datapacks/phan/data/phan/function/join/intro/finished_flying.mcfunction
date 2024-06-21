tp @s ~ ~-1 ~
scoreboard players reset @s introProgress
gamemode adventure
tag @s add doneWithIntro
tag @s remove noInventory
stopsound @s

#adopt music
function phan:bgm/adopt_global_music_track
function phan:bgm/set_self_bgm_delayed

#we will now re-summon all text_display entities used in the lobby
function phan:high_score/display_start
function phan:game/0/summon_assist_mode_display
#Q: why do we do this?
#A: because translated text on text_displays won't resolve on its own if they player joined the server without the resource pack loaded beforehand
#...so we just re-summon them here to make sure things are translated properly.
#and we can be reasonably sure that the player who ran this has their resource pack loaded by the time this gets run