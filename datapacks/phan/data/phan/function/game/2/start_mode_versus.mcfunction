#remember that we want to play versus mode after team select
scoreboard players set #desiredGamemode value 3

#player that runs this function gets first dibs on a player slot
function phan:player_queue/enqueue_player_at_start

#go straight to team select. we can assume there's 2+ players.
function phan:game/2/go_to_team_select