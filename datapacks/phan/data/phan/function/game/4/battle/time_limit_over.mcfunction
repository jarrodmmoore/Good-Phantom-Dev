#go to subGameState 1 and start showing results
scoreboard players set #subGameState value 1

#tell unfinished players they've been had
execute as @a[tag=playing] run function phan:game/4/race/player_time_up