#if a player's join score is out of sync with the global value, they need to be initialized!
execute unless score @s join = #join_global value in minecraft:overworld run function phan:join/player_join
scoreboard players add @s join 1

#yeah, a player could technically join back in on the exact #join_global score tick they left on and cause problems
#BUT
#a) the map would need to be played for over 800 hours for this to even have a chance of happening
#b) even if good phantom does get played over 800 hours, it's still a 1 in 60 million chance that they hit the time on the dot

#it's also possible that a player disconnects on the same tick the server shuts down and reconnects on the same tick it reboots
#...but in that case, they're playing singleplayer and it doesn't matter. we can just let them resume whatever they were doing.



#while we're in here, let's do a bunch of stuff
#(these used to be in _main and other looped functions, but I realized inlining them here would avoid a lot of @a's)
function phan:player_tick