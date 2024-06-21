#this function is used in custom levels
#also used in that one odd transition in Shattered City where we don't "properly" travel to the next start position

#clear the parameter so we don't do this again
scoreboard players set #replayStartAnim value 0

#stop the time attack timer... temporarily
tag @s remove trackPlayerTime

#play, not spectate
tag @s add playing
tag @s remove playerReservation

#let the loading sequence take us again
scoreboard players set @s pGameTime 0
scoreboard players set @s pSubGameState -1
execute unless score #gameState value matches 3 run scoreboard players set @s pShowHUD 0
scoreboard players set @s enderEyes 0

#set global gameTime to 0 again
scoreboard players set #gameTime value 0