#can't modify a read-only level
$execute store result score #test4 value run data get storage phan_dream_$(level_id):dream_data read_only 1
execute unless score #test4 value matches 0 run return run function phan:level_manager/warn_read_only
#======

#generic dream data
$data modify storage phan_dream_$(level_id):dream_data read_only set value 0
$data modify storage phan_dream_$(level_id):dream_data selectable set value 0
$data modify storage phan_dream_$(level_id):dream_data name_text set value '{"text":"Custom Dream"}'
$data modify storage phan_dream_$(level_id):dream_data name_display set value '["",{"text":"\\uE399","color":"white"}]'
$data modify storage phan_dream_$(level_id):dream_data function_namespace set value "phan"
$data modify storage phan_dream_$(level_id):dream_data function_path set value "levels/custom_dream_1"
$data modify storage phan_dream_$(level_id):dream_data sleeping_player_model set value "gp/object/sleeping_player_1"



#SCORE ATTACK

#generic score attack data
$data modify storage phan_dream_$(level_id):score_attack selectable set value 0
$data modify storage phan_dream_$(level_id):score_attack time_bronze set value [6,0,0]
$data modify storage phan_dream_$(level_id):score_attack time_silver set value [5,0,0]
$data modify storage phan_dream_$(level_id):score_attack time_gold set value [4,0,0]
$data modify storage phan_dream_$(level_id):score_attack time_diamond set value [3,0,0]
#$data modify storage phan_dream_$(level_id):score_attack high_skill_music_track set value 0
#$data modify storage phan_dream_$(level_id):score_attack high_skill_music_function set value "bgm/play_0"
#^ note: will display to user as "levels/custom_dream_x/bgm/play_0"

#score attack act 1
$data modify storage phan_dream_$(level_id):sa_act_1 playable set value 0
$data modify storage phan_dream_$(level_id):sa_act_1 act_name set value "Act 1"
$data modify storage phan_dream_$(level_id):sa_act_1 thumbnail_item set value "magenta_dye"
$data modify storage phan_dream_$(level_id):sa_act_1 thumbnail_model set value "gp/map_preview/generic"
$data modify storage phan_dream_$(level_id):sa_act_1 pearls_needed set value 16
$data modify storage phan_dream_$(level_id):sa_act_1 time_limit set value 120
$data modify storage phan_dream_$(level_id):sa_act_1 target_time set value [1,0,0]
$data modify storage phan_dream_$(level_id):sa_act_1 reset_plane set value "..-100"
$data modify storage phan_dream_$(level_id):sa_act_1 score_requirement_c set value 10000
$data modify storage phan_dream_$(level_id):sa_act_1 score_requirement_b set value 25000
$data modify storage phan_dream_$(level_id):sa_act_1 score_requirement_a set value 50000
$data modify storage phan_dream_$(level_id):sa_act_1 score_requirement_s set value 75000
$data modify storage phan_dream_$(level_id):sa_act_1 time set value 6000
$data modify storage phan_dream_$(level_id):sa_act_1 weather set value "clear"
$data modify storage phan_dream_$(level_id):sa_act_1 skybox set value 1
$data modify storage phan_dream_$(level_id):sa_act_1 use_area_transition set value 0
$data modify storage phan_dream_$(level_id):sa_act_1 music_track set value -1
$data modify storage phan_dream_$(level_id):sa_act_1 music_function set value "bgm/play_0"
$data modify storage phan_dream_$(level_id):sa_act_1 teleport_dimension set value 0
$data modify storage phan_dream_$(level_id):sa_act_1 teleport_location set value [0,100,0]
$data modify storage phan_dream_$(level_id):sa_act_1 soul_approach set value 0

#score attack act 2
$data modify storage phan_dream_$(level_id):sa_act_2 playable set value 0
$data modify storage phan_dream_$(level_id):sa_act_2 act_name set value "Act 2"
$data modify storage phan_dream_$(level_id):sa_act_2 thumbnail_item set value "magenta_dye"
$data modify storage phan_dream_$(level_id):sa_act_2 thumbnail_model set value "gp/map_preview/generic"
$data modify storage phan_dream_$(level_id):sa_act_2 pearls_needed set value 16
$data modify storage phan_dream_$(level_id):sa_act_2 time_limit set value 120
$data modify storage phan_dream_$(level_id):sa_act_2 target_time set value [1,0,0]
$data modify storage phan_dream_$(level_id):sa_act_2 reset_plane set value "..-100"
$data modify storage phan_dream_$(level_id):sa_act_2 score_requirement_c set value 10000
$data modify storage phan_dream_$(level_id):sa_act_2 score_requirement_b set value 25000
$data modify storage phan_dream_$(level_id):sa_act_2 score_requirement_a set value 50000
$data modify storage phan_dream_$(level_id):sa_act_2 score_requirement_s set value 75000
$data modify storage phan_dream_$(level_id):sa_act_2 time set value 6000
$data modify storage phan_dream_$(level_id):sa_act_2 weather set value "clear"
$data modify storage phan_dream_$(level_id):sa_act_2 skybox set value 1
$data modify storage phan_dream_$(level_id):sa_act_2 use_area_transition set value 0
$data modify storage phan_dream_$(level_id):sa_act_2 music_track set value -1
$data modify storage phan_dream_$(level_id):sa_act_2 music_function set value "bgm/play_0"
$data modify storage phan_dream_$(level_id):sa_act_2 teleport_dimension set value 0
$data modify storage phan_dream_$(level_id):sa_act_2 teleport_location set value [0,100,0]
$data modify storage phan_dream_$(level_id):sa_act_2 soul_approach set value 0

#score attack act 3
$data modify storage phan_dream_$(level_id):sa_act_3 playable set value 0
$data modify storage phan_dream_$(level_id):sa_act_3 act_name set value "Act 3"
$data modify storage phan_dream_$(level_id):sa_act_3 thumbnail_item set value "magenta_dye"
$data modify storage phan_dream_$(level_id):sa_act_3 thumbnail_model set value "gp/map_preview/generic"
$data modify storage phan_dream_$(level_id):sa_act_3 pearls_needed set value 16
$data modify storage phan_dream_$(level_id):sa_act_3 time_limit set value 120
$data modify storage phan_dream_$(level_id):sa_act_3 target_time set value [1,0,0]
$data modify storage phan_dream_$(level_id):sa_act_3 reset_plane set value "..-100"
$data modify storage phan_dream_$(level_id):sa_act_3 score_requirement_c set value 10000
$data modify storage phan_dream_$(level_id):sa_act_3 score_requirement_b set value 25000
$data modify storage phan_dream_$(level_id):sa_act_3 score_requirement_a set value 50000
$data modify storage phan_dream_$(level_id):sa_act_3 score_requirement_s set value 75000
$data modify storage phan_dream_$(level_id):sa_act_3 time set value 6000
$data modify storage phan_dream_$(level_id):sa_act_3 weather set value "clear"
$data modify storage phan_dream_$(level_id):sa_act_3 skybox set value 1
$data modify storage phan_dream_$(level_id):sa_act_3 use_area_transition set value 0
$data modify storage phan_dream_$(level_id):sa_act_3 music_track set value -1
$data modify storage phan_dream_$(level_id):sa_act_3 music_function set value "bgm/play_0"
$data modify storage phan_dream_$(level_id):sa_act_3 teleport_dimension set value 0
$data modify storage phan_dream_$(level_id):sa_act_3 teleport_location set value [0,100,0]
$data modify storage phan_dream_$(level_id):sa_act_3 soul_approach set value 0




#PORTAL RACE

#generic portal race data
$data modify storage phan_dream_$(level_id):portal_race selectable set value 0
#$data modify storage phan_dream_$(level_id):portal_race high_skill_music_track set value 0
#$data modify storage phan_dream_$(level_id):portal_race high_skill_music_function set value "bgm/play_0"

#portal race act 1
$data modify storage phan_dream_$(level_id):pr_act_1 playable set value 0
$data modify storage phan_dream_$(level_id):pr_act_1 act_name set value "Act 1"
$data modify storage phan_dream_$(level_id):pr_act_1 thumbnail_item set value "magenta_dye"
$data modify storage phan_dream_$(level_id):pr_act_1 thumbnail_model set value "gp/map_preview/generic"
$data modify storage phan_dream_$(level_id):pr_act_1 supports_bots set value 0
$data modify storage phan_dream_$(level_id):pr_act_1 countdown_type set value 0
$data modify storage phan_dream_$(level_id):pr_act_1 game_type set value 1
$data modify storage phan_dream_$(level_id):pr_act_1 checkpoints set value 3
$data modify storage phan_dream_$(level_id):pr_act_1 laps set value 4
$data modify storage phan_dream_$(level_id):pr_act_1 pearls_needed set value 12
$data modify storage phan_dream_$(level_id):pr_act_1 time_limit set value 5
$data modify storage phan_dream_$(level_id):pr_act_1 time_limit_minimum set value 3
$data modify storage phan_dream_$(level_id):pr_act_1 reset_plane set value "..-100"
$data modify storage phan_dream_$(level_id):pr_act_1 time_between_checkpoints set value 150
$data modify storage phan_dream_$(level_id):pr_act_1 bot_checkpoint_data set value [-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2]
$data modify storage phan_dream_$(level_id):pr_act_1 time set value 6000
$data modify storage phan_dream_$(level_id):pr_act_1 weather set value "clear"
$data modify storage phan_dream_$(level_id):pr_act_1 skybox set value 1
$data modify storage phan_dream_$(level_id):pr_act_1 music_track set value -1
$data modify storage phan_dream_$(level_id):pr_act_1 music_function set value "bgm/play_0"
$data modify storage phan_dream_$(level_id):pr_act_1 teleport_dimension set value 0
$data modify storage phan_dream_$(level_id):pr_act_1 teleport_location set value [0,100,0]

#portal race act 2
$data modify storage phan_dream_$(level_id):pr_act_2 playable set value 0
$data modify storage phan_dream_$(level_id):pr_act_2 act_name set value "Act 2"
$data modify storage phan_dream_$(level_id):pr_act_2 thumbnail_item set value "magenta_dye"
$data modify storage phan_dream_$(level_id):pr_act_2 thumbnail_model set value "gp/map_preview/generic"
$data modify storage phan_dream_$(level_id):pr_act_2 supports_bots set value 0
$data modify storage phan_dream_$(level_id):pr_act_2 countdown_type set value 0
$data modify storage phan_dream_$(level_id):pr_act_2 game_type set value 1
$data modify storage phan_dream_$(level_id):pr_act_2 checkpoints set value 3
$data modify storage phan_dream_$(level_id):pr_act_2 laps set value 4
$data modify storage phan_dream_$(level_id):pr_act_2 pearls_needed set value 12
$data modify storage phan_dream_$(level_id):pr_act_2 time_limit set value 5
$data modify storage phan_dream_$(level_id):pr_act_2 time_limit_minimum set value 3
$data modify storage phan_dream_$(level_id):pr_act_2 reset_plane set value "..-100"
$data modify storage phan_dream_$(level_id):pr_act_2 time_between_checkpoints set value 150
$data modify storage phan_dream_$(level_id):pr_act_2 bot_checkpoint_data set value [-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2]
$data modify storage phan_dream_$(level_id):pr_act_2 time set value 6000
$data modify storage phan_dream_$(level_id):pr_act_2 weather set value "clear"
$data modify storage phan_dream_$(level_id):pr_act_2 skybox set value 1
$data modify storage phan_dream_$(level_id):pr_act_2 music_track set value -1
$data modify storage phan_dream_$(level_id):pr_act_2 music_function set value "bgm/play_0"
$data modify storage phan_dream_$(level_id):pr_act_2 teleport_dimension set value 0
$data modify storage phan_dream_$(level_id):pr_act_2 teleport_location set value [0,100,0]

#portal race act 3
$data modify storage phan_dream_$(level_id):pr_act_3 playable set value 0
$data modify storage phan_dream_$(level_id):pr_act_3 act_name set value "Act 3"
$data modify storage phan_dream_$(level_id):pr_act_3 thumbnail_item set value "magenta_dye"
$data modify storage phan_dream_$(level_id):pr_act_3 thumbnail_model set value "gp/map_preview/generic"
$data modify storage phan_dream_$(level_id):pr_act_3 supports_bots set value 0
$data modify storage phan_dream_$(level_id):pr_act_3 countdown_type set value 0
$data modify storage phan_dream_$(level_id):pr_act_3 game_type set value 1
$data modify storage phan_dream_$(level_id):pr_act_3 checkpoints set value 3
$data modify storage phan_dream_$(level_id):pr_act_3 laps set value 4
$data modify storage phan_dream_$(level_id):pr_act_3 pearls_needed set value 12
$data modify storage phan_dream_$(level_id):pr_act_3 time_limit set value 5
$data modify storage phan_dream_$(level_id):pr_act_3 time_limit_minimum set value 3
$data modify storage phan_dream_$(level_id):pr_act_3 reset_plane set value "..-100"
$data modify storage phan_dream_$(level_id):pr_act_3 time_between_checkpoints set value 150
$data modify storage phan_dream_$(level_id):pr_act_3 bot_checkpoint_data set value [-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2]
$data modify storage phan_dream_$(level_id):pr_act_3 time set value 6000
$data modify storage phan_dream_$(level_id):pr_act_3 weather set value "clear"
$data modify storage phan_dream_$(level_id):pr_act_3 skybox set value 1
$data modify storage phan_dream_$(level_id):pr_act_3 music_track set value -1
$data modify storage phan_dream_$(level_id):pr_act_3 music_function set value "bgm/play_0"
$data modify storage phan_dream_$(level_id):pr_act_3 teleport_dimension set value 0
$data modify storage phan_dream_$(level_id):pr_act_3 teleport_location set value [0,100,0]

#portal race act 4
$data modify storage phan_dream_$(level_id):pr_act_4 playable set value 0
$data modify storage phan_dream_$(level_id):pr_act_4 act_name set value "Act 4"
$data modify storage phan_dream_$(level_id):pr_act_4 thumbnail_item set value "magenta_dye"
$data modify storage phan_dream_$(level_id):pr_act_4 thumbnail_model set value "gp/map_preview/generic"
$data modify storage phan_dream_$(level_id):pr_act_4 supports_bots set value 0
$data modify storage phan_dream_$(level_id):pr_act_4 countdown_type set value 0
$data modify storage phan_dream_$(level_id):pr_act_4 game_type set value 1
$data modify storage phan_dream_$(level_id):pr_act_4 checkpoints set value 3
$data modify storage phan_dream_$(level_id):pr_act_4 laps set value 4
$data modify storage phan_dream_$(level_id):pr_act_4 pearls_needed set value 12
$data modify storage phan_dream_$(level_id):pr_act_4 time_limit set value 5
$data modify storage phan_dream_$(level_id):pr_act_4 time_limit_minimum set value 3
$data modify storage phan_dream_$(level_id):pr_act_4 reset_plane set value "..-100"
$data modify storage phan_dream_$(level_id):pr_act_4 time_between_checkpoints set value 150
$data modify storage phan_dream_$(level_id):pr_act_4 bot_checkpoint_data set value [-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2]
$data modify storage phan_dream_$(level_id):pr_act_4 time set value 6000
$data modify storage phan_dream_$(level_id):pr_act_4 weather set value "clear"
$data modify storage phan_dream_$(level_id):pr_act_4 skybox set value 1
$data modify storage phan_dream_$(level_id):pr_act_4 music_track set value -1
$data modify storage phan_dream_$(level_id):pr_act_4 music_function set value "bgm/play_0"
$data modify storage phan_dream_$(level_id):pr_act_4 teleport_dimension set value 0
$data modify storage phan_dream_$(level_id):pr_act_4 teleport_location set value [0,100,0]

#portal race podium sequence
$data modify storage phan_dream_$(level_id):pr_podium time set value 6000
$data modify storage phan_dream_$(level_id):pr_podium weather set value "clear"
$data modify storage phan_dream_$(level_id):pr_podium skybox set value 1
$data modify storage phan_dream_$(level_id):pr_podium teleport_dimension set value 0
$data modify storage phan_dream_$(level_id):pr_podium teleport_location set value [0,100,0]


#if not #gameState=0, exit out now
execute unless score #gameState value matches 0 run return 0
#=====

#modify level props if they currently exist

#set level name of associated armor_stand
$execute as @e[tag=levelEntry,type=armor_stand,scores={levelUID=$(level_id)}] run data modify entity @s CustomName set from storage phan_dream_$(level_id):dream_data name_text

#change model of sleeping player
$data modify storage phan:data spawn_player_model set from storage phan_dream_$(level_id):dream_data sleeping_player_model
$execute as @e[limit=1,type=armor_stand,tag=lobbyPlayer$(level_id)] run function phan:level_manager/load/replace_sleeping_player_model with storage phan:data

#change display text above level
$execute as @e[limit=1,type=text_display,tag=lobbyNameDisplay$(level_id)] run data merge entity @s {text:'["",{"nbt":"name_display","storage":"phan_dream_$(level_id):dream_data","interpret":true}]'}