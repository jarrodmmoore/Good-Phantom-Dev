#load level data
function phan:level_manager/load/cache_active_level_data

#spectators who joined in the middle of a set of versus rounds get incorporated into the game right here
tag @a[tag=doneWithIntro,tag=vsMidGameJoin] add playing
tag @a[tag=doneWithIntro,tag=vsMidGameJoin] remove vsMidGameJoin

#no join game
scoreboard players reset @a joinGame

#players need playing tag
tag @a[tag=playerReservation] add playing
tag @a[tag=playerReservation] remove playerReservation
tag @a[tag=vsMidGameJoin] remove vsMidGameJoin

#record level completion if we're running this
execute unless score #grandPrixActive value matches 1.. as @a[tag=playing] run function phan:levels/_index_record_completion
execute if score #grandPrixActive value matches 1.. as @a[tag=playing] run function phan:phantom_racer/grand_prix/record_completion

#manage item entities
function phan:items/reset_valid_objective

#stop music
scoreboard players set #bgm value 0
scoreboard players set @a musicTrack 0
function phan:bgm/set_bgm
scoreboard players set #startMusic value 0

#players have aqua name now
team modify player color aqua
team modify observer color aqua
team modify player friendlyFire false
team modify botDisplayVEasy color aqua
team modify botDisplayEasy color aqua
team modify botDisplayNormal color aqua
team modify botDisplayHard color aqua
team modify botDisplayTryhard color aqua
team modify botDisplayTryharder color aqua

#quick clean-up on all players
function phan:player/player_displays_cleanup

#no equipment during podium sequence
execute as @a[tag=doneWithIntro] run function phan:game/1/keep_player_out_of_portal
tag @a[tag=doneWithIntro] add noInventory
gamemode adventure @a[tag=doneWithIntro]

#set up some game variables
scoreboard players set #gameTime value 30
scoreboard players set #subGameState value 0
scoreboard players set #showNametags value 0
team modify player nametagVisibility never

#load area info!
function phan:game/5/load_sequence_info
execute store result storage phan:podium_sequence location_x int 1 run scoreboard players get #podiumSequenceX value
execute store result storage phan:podium_sequence location_y int 1 run scoreboard players get #podiumSequenceY value
execute store result storage phan:podium_sequence location_z int 1 run scoreboard players get #podiumSequenceZ value

#relevant nodes will be loaded when the time comes
function phan:game/1/spawning/reset_all
function phan:game/1/spawning/reset/reset_versus

#set state
scoreboard players set #gameState value 5