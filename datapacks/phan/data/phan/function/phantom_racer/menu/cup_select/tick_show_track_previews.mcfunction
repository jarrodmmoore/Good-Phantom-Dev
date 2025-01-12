#get ready! we're about to go 3 level deep with macros

#tvShowingCup -- the storage we should be looking into
#tvShowTrackTimer -- variable tracking when to summon the next preview
#tvShowTrack -- what number track we're on within some cup

scoreboard players remove #tvShowTrackTimer value 1
execute if score #tvShowTrackTimer value matches ..0 store result storage phan:gp_index cup int 1 run scoreboard players get #tvShowingCup value
execute if score #tvShowTrackTimer value matches ..0 store result storage phan:gp_index round int 1 run scoreboard players get #tvShowTrack value
execute if score #tvShowTrackTimer value matches ..0 positioned ~ ~-1.5 ~2.5 run function phan:phantom_racer/menu/cup_select/generate_next_track with storage phan:gp_index
