$execute unless loaded $(target_x) ~ $(target_z) run return run function phan:bots/movement/summon_move_target_bad

$execute facing $(target_x).$(target_x_dec) ~ $(target_z).$(target_z_dec) rotated ~$(yaw_offset) 0 run function phan:bots/movement/summon_move_target

#debug
#show exactly where the bot is trying to go
#$execute positioned $(target_x) ~ $(target_z) run particle dust{color:[1,1,0],scale:1} ~ ~ ~ 0 1 0 0 5 force
#$execute positioned $(target_x).$(target_x_dec) ~ $(target_z).$(target_z_dec) run particle dust{color:[1,0,1],scale:1} ~ ~ ~ 0 1 0 0 5 force