#become spectator temporarily until all other players are done
execute unless score #gameState value matches 0 run gamemode spectator @s
scoreboard players set @s pSubGameState 4
tag @s remove playing
tag @s add playerReservation

#clear night vision
execute if score #nightVision value matches 0 run effect clear @s night_vision

#reset scoreCurrent to avoid any problems if a player flunked a level in multiplayer
scoreboard players set @s scoreCurrent 0

#if assist mode disabled the time limit, re-enable it now to prevent the other players from stalling.
#we'll give players 120 seconds to follow-up the leading player. that should be enough.
scoreboard players set @a[tag=playing,scores={pTimeRemaining=800000000..}] pTimeRemaining 2419