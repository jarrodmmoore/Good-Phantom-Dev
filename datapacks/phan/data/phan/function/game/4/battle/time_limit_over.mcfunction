#go to subGameState 1 and start showing results
scoreboard players set #subGameState value 1

#tell unfinished players they've been had
execute as @a[tag=playing] run function phan:game/4/race/player_time_up
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=!botDisabled,tag=!finished] run function phan:bots/controller/disable_no_points