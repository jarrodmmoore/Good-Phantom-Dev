#reset music progress to 0 if listening to a song that only has 1 part
execute unless score @s musicTrack matches 2 run scoreboard players set @s musicProgress 0

#stop any previous music
stopsound @s record

#get the song
execute if score @s musicTrack matches -4..-1 run function phan:bgm/play_index_custom
execute if score @s musicTrack matches 0 run function phan:bgm/play_0
execute if score @s musicTrack matches 1 run function phan:bgm/play_1
execute if score @s musicTrack matches 2 run function phan:bgm/play_2
execute if score @s musicTrack matches 3 run function phan:bgm/play_3
execute if score @s musicTrack matches 4 run function phan:bgm/play_4
execute if score @s musicTrack matches 5 run function phan:bgm/play_5
execute if score @s musicTrack matches 6 run function phan:bgm/play_6
execute if score @s musicTrack matches 7 run function phan:bgm/play_7
execute if score @s musicTrack matches 8 run function phan:bgm/play_8
execute if score @s musicTrack matches 9 run function phan:bgm/play_9
execute if score @s musicTrack matches 10 run function phan:bgm/play_10
execute if score @s musicTrack matches 11 run function phan:bgm/play_11
execute if score @s musicTrack matches 12 run function phan:bgm/play_12
execute if score @s musicTrack matches 13 run function phan:bgm/play_13
execute if score @s musicTrack matches 14.. run function phan:bgm/play_0