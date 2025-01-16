#get the party started
scoreboard players set #subGameState value 0

#allow spectators to join
scoreboard players enable @a[tag=doneWithIntro,tag=!playing] joinGame

#set variables
scoreboard players set @a check 0
scoreboard players set @a checkFake 0
scoreboard players set @a lap 1
scoreboard players set @a rawTime 0
scoreboard players set @a timeSinceOpenBox 0
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] at @s run function phan:bots/bot_set_self_scores_at_start
scoreboard players set @a[tag=debugCheckpointTimes] debug 0

#players get spawn invulnerability!
scoreboard players set @a[tag=playing] spawnInvulnerability 40
execute if score #botsEnabled value matches 1.. run scoreboard players set @e[tag=ai,type=zombie] spawnInvulnerability 40

#reset speeds and energy
function phan:movement/reset_speeds
scoreboard players set @a energy 0
execute if score #vGameType value matches 2 run scoreboard players set @a energy 6
execute if score #vGameType value matches 2 if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] run scoreboard players set @s energy 6

#curb projectile spam toward the start of the game
scoreboard players operation #givenRockets value = #hudPeakPlayers value
execute if score #givenRockets value matches 16.. run scoreboard players set #givenRockets value 15

#start showing the HUD
bossbar set general_bossbar players
bossbar set general_buffer players
scoreboard players set @a pShowHUD 1

#show player names
team modify player nametagVisibility always
execute if score #vGameType value matches 2 run team modify player friendlyFire true

#start music
execute as @a run scoreboard players operation @s pCurrentArea = #vAct value
execute as @a run function phan:levels/_index_music_individual
function phan:bgm/set_bgm_delayed

#prepare sidebar display
scoreboard players set #showingRacePositions value 0

#bots should start doing stuff
execute if score #botsEnabled value matches 1.. run function phan:bots/_bots_start_moving

#set spawnpoint
execute as @a at @s run spawnpoint @s ~ ~1 ~

#respawn point is right here
execute as @a[tag=playing] at @s run function phan:game/4/race/player_set_respawn_location
execute as @a[limit=1,tag=playing,sort=random] at @s run function phan:game/4/race/player_set_fallback_respawn_location