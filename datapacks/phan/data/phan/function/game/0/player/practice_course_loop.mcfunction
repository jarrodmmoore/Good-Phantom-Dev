#keep track what area we're in
execute if block ~ -64 ~ #phan:area_check run function phan:game/1/player_area_check

#area transition
execute if score @s pGameTime matches 100000.. if score @s pSubGameState matches 2 run function phan:game/0/player/area_transition

#show tutorial messages
execute if entity @s[scores={currentLoad=1,scoreCurrent=..4999}] at @s if block ~ -64 ~ #phan:area_check run function phan:game/0/player/tutorial_message_glide
execute if entity @s[scores={currentLoad=2,scoreCurrent=..4999}] if score #practiceGate1 value matches 0 run function phan:game/0/player/tell_player_to_shoot_targets

#combo
scoreboard players remove @s[scores={comboTime=1..}] comboTime 1
execute if score @s comboTime matches ..0 run scoreboard players set @s combo 0
function phan:game/1/player/combo_display

#add to score
execute if score @s addScore matches 1.. run function phan:game/1/player/add_to_score

#present?
execute if score @s presentGoal matches -1.. run function phan:game/1/player/handle_present
execute unless score @s presentGoal matches -1.. if score @s showEnemyCount matches 1 run function phan:game/1/player/show_enemy_count

#take damage?
execute if entity @s[scores={damage=1..,hitstun=..0}] run function phan:game/1/player/take_damage

#time changes
execute unless score @s timerAdd matches 0 run function phan:game/1/player/time_changes

#count down the timer
execute if score @s timerAdd matches 0 if score @s pSubGameState matches 1 run function phan:game/0/player/timer_count_down

#step into portal to finish
execute at @s if block ~ ~-1 ~ end_portal if entity @s[gamemode=!spectator] run function phan:game/0/player/practice_course_finished