#reset music progress to 0 if listening to a song that only has 1 part
execute unless score @s musicTrack matches 2 run scoreboard players set @s musicProgress 0

#stop any previous music
stopsound @s record

#get the song
execute if score @s musicTrack matches -104..-101 run function phan:bgm/play_index_custom
execute if score @s musicTrack matches -4..-1 run function phan:bgm/play_index_custom
execute if score @s musicTrack matches 0 run function phan:bgm/play_0_none
execute if score @s musicTrack matches 1 run function phan:bgm/play_macro {sound:"minecraft:phantom_bgm/shimmer",time:"5626"}
execute if score @s musicTrack matches 2 run function phan:bgm/play_2_echo_dance
execute if score @s musicTrack matches 3 run function phan:bgm/play_macro {sound:"minecraft:phantom_bgm/shadow_puppets",time:"4346"}
execute if score @s musicTrack matches 4 run function phan:bgm/play_macro {sound:"minecraft:phantom_bgm/purple_dreams",time:"2559"}
execute if score @s musicTrack matches 5 run function phan:bgm/play_macro {sound:"minecraft:phantom_bgm/soap",time:"900"}
execute if score @s musicTrack matches 6 run function phan:bgm/play_macro {sound:"minecraft:phantom_bgm/heart_nebula",time:"4428"}
execute if score @s musicTrack matches 7 run function phan:bgm/play_macro {sound:"minecraft:phantom_bgm/watching_the_sun_fall",time:"1800"}
execute if score @s musicTrack matches 8 run function phan:bgm/play_macro {sound:"minecraft:phantom_bgm/pillars",time:"2468"}
execute if score @s musicTrack matches 9 run function phan:bgm/play_macro {sound:"minecraft:phantom_bgm/mitosis",time:"3100"}
execute if score @s musicTrack matches 10 run function phan:bgm/play_macro {sound:"minecraft:phantom_bgm/stranded",time:"1800"}
execute if score @s musicTrack matches 11 run function phan:bgm/play_macro {sound:"minecraft:phantom_bgm/shine",time:"1800"}
execute if score @s musicTrack matches 12 run function phan:bgm/play_macro {sound:"minecraft:phantom_bgm/whimsy_forest",time:"1395"}
execute if score @s musicTrack matches 13 run function phan:bgm/play_macro {sound:"minecraft:phantom_bgm/fluidity",time:"4498"}
execute if score @s musicTrack matches 14.. run function phan:bgm/play_0_none