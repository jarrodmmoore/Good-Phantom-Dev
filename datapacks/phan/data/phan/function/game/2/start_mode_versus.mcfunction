#all bot controllers that are still active need to spawn their entities to indicate they're active
scoreboard players set #beQuiet value 1
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] positioned 203 -30 112 rotated 45 0 run function phan:game/2/bots/spawn_bot_in_team_select
scoreboard players set #beQuiet value 0

#remember that we want to play versus mode after team select
scoreboard players set #desiredGamemode value 3

#player that runs this function gets first dibs on a player slot
function phan:player_queue/enqueue_player_at_start

#go straight to team select. we can assume there's 2+ players.
function phan:game/2/go_to_team_select