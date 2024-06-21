tp @s 198 -3 118 -90 0
scoreboard players reset @s introProgress
gamemode adventure
effect give @s blindness 1 0 true
tag @s add doneWithIntro
tag @s remove noInventory
stopsound @s
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ 100000 ~ 100000
scoreboard players set @s musicTime 20
scoreboard players operation @s musicTrack = #bgm value

#we will now re-summon all text_display entities used in the lobby
function phan:high_score/display_start
function phan:game/0/summon_assist_mode_display
#Q: why do we do this?
#A: because translated text on text_displays won't resolve on its own if they player joined the server without the resource pack loaded beforehand
#...so we just re-summon them here to make sure things are translated properly.
#and we can be reasonably sure that the player who ran this has their resource pack loaded by the time this gets run