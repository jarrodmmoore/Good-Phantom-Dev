scoreboard players operation @s spectatingID = #spectatingID value
scoreboard players operation @s[tag=!noSpecDataAdopt] hudNode = #specHudNode value
scoreboard players operation @s[tag=!noSpecDataAdopt] pShowHUD = #specHudActive value
scoreboard players operation @s skyboxSet = #spectatorSkybox value
execute unless score @s musicTrack = #spectatorMusic value if entity @s[tag=!noSpecDataAdopt] run function phan:game/1/spectator/spectator_sync_music
scoreboard players operation @s[tag=!noSpecDataAdopt] enderEyes = #spectatorEyes value
scoreboard players operation @s prevSpectateID = #spectatingID value
scoreboard players operation @s check = #spectatorCheck value

#score attack, adopt night vision (or lack thereof) from target
execute if score #gameState value matches 1 if score #spectatorNightVision value matches 1.. run effect give @s night_vision 15 1 true
execute if score #gameState value matches 1 if score #spectatorNightVision value matches ..0 unless score #nightVision value matches 1 run effect clear @s night_vision