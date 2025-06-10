#init

#kill lobby props
kill @e[tag=lobbyProp]

#stop music for a second
scoreboard players set #bgm value 0
scoreboard players set @a musicTrack 0
function phan:bgm/set_bgm

#nobody is a player until they start a level
tag @a[tag=playing] remove playing
tag @a remove noInventory
xp set @a 100 levels
xp set @a 0 points
clear @a

#no sidebar please
scoreboard objectives setdisplay sidebar

#don't show act number unless a function called in the stack after this one said we should show it
scoreboard players set #showActNumber value 0

#clear bossbars and HUD
execute as @a run function phan:player/set_title_times
scoreboard players set #showHUD value 0
function phan:custom_hud/clear_bossbars

#bots don't exist anymore
scoreboard players set #botsEnabled value 0

#time and weather
time set 18000
weather clear

#clear night vision
effect clear @a night_vision
tag @a[tag=getNightVisionInSA] remove getNightVisionInSA

#titles
title @a[tag=doneWithIntro] actionbar [""]
title @a[tag=doneWithIntro] subtitle [""]
title @a[tag=doneWithIntro] title [""]
scoreboard players reset @a restart
scoreboard players reset @a exit
scoreboard players reset @a spectatorView
scoreboard players reset @a respawn

#game state is now 2
scoreboard players set #gameState value 2
scoreboard players set #subGameState value 0
scoreboard players set #desiredGamemode value 0

#force spectators if an admin is online
scoreboard players set #forceSpecAdmin value 0
execute if score #requireAdmin value matches 1.. run scoreboard players set #forceSpecAdmin value 1

#count players in the world
scoreboard players set #playerCount value 0
execute as @a run scoreboard players add #playerCount value 1

#give the player options or start the level right away?
scoreboard players set #goToModeSelect value 1
#execute if score #timeAttackUnlocked value matches 0 if score #playerCount value matches ..1 run scoreboard players set #goToModeSelect value 0
execute if score #chosenLevel value matches 1 if score #dream1Completed value matches 1.. run scoreboard players set #goToModeSelect value 1
execute if score #chosenLevel value matches 2 if score #dream2Completed value matches 1.. run scoreboard players set #goToModeSelect value 1
execute if score #chosenLevel value matches 3 if score #dream3Completed value matches 1.. run scoreboard players set #goToModeSelect value 1
execute if score #chosenLevel value matches 4 if score #dream4Completed value matches 1.. run scoreboard players set #goToModeSelect value 1
execute if score #chosenLevel value matches 5 if score #dream5Completed value matches 1.. run scoreboard players set #goToModeSelect value 1
#DON'T SKIP if we're in free play mode
execute if score #freePlay value matches 1 run scoreboard players set #goToModeSelect value 1
execute if score #goToModeSelect value matches 0 as @a[tag=doneWithIntro] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.portal.travel",targets:"@s",pitch:"1"}
execute if score #goToModeSelect value matches 0 as @a[tag=doneWithIntro] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.beacon.activate",targets:"@s",pitch:"1.8"}
execute if score #goToModeSelect value matches 0 run tag @s[type=player] add playing
execute if score #goToModeSelect value matches 0 run function phan:game/1/_1_init
execute if score #goToModeSelect value matches 1 as @a[tag=doneWithIntro] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.enderman.teleport",targets:"@s",pitch:"1"}
execute if score #goToModeSelect value matches 1 unless score #freePlay value matches 1 run function phan:game/2/start_mode_select