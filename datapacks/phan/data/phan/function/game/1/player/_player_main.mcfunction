#keep track what area we're in
execute if score #checkLoadHeight value matches -64 if block ~ -64 ~ #phan:area_check run function phan:game/1/player_area_check
execute if score #checkLoadHeight value matches 0 if block ~ 0 ~ #phan:area_check run function phan:game/1/player_area_check_y0


#combo
scoreboard players remove @s[scores={comboTime=1..}] comboTime 1
execute if entity @s[scores={comboTime=..0,combo=1..}] run function phan:game/1/player/combo_terminate
#only display in score attack mode
execute if score #gameState value matches 1 run function phan:game/1/player/combo_display


#item pickup
#stardust
scoreboard players remove @s[scores={stardustDelay=1..}] stardustDelay 1
execute store result score #test value run clear @s yellow_wool 0
execute if score #test value matches 1.. if score @s stardustDelay matches ..0 run function phan:game/1/player/score_stardust
#timer
execute store result score #test value run clear @s red_wool[custom_data~{redTimer:1b}] 0
execute if score #test value matches 1.. run function phan:game/1/player/get_timer
execute store result score #test value run clear @s red_wool[custom_data~{goldTimer:1b}] 0
execute if score #test value matches 1.. run function phan:game/1/player/get_timer_golden

#present?
execute if score @s presentGoal matches -1.. run function phan:game/1/player/handle_present
execute unless score @s presentGoal matches -1.. if score @s showEnemyCount matches 1 run function phan:game/1/player/show_enemy_count

#add to score
execute if score @s addScore matches 1.. run function phan:game/1/player/add_to_score


#take damage?
execute if entity @s[scores={damage=1..,hitstun=..0}] run function phan:game/1/player/take_damage

#time changes
execute unless score @s timerAdd matches 0 run function phan:game/1/player/time_changes

#handle respawn trigger
execute if score @s respawn matches 1.. run function phan:game/1/player_respawn


#xp bar (energy display)
function phan:game/1/player/xp_bar/xp_main

#inventory
effect give @s minecraft:strength 5 5 true
#effect give @s[scores={strengthTime=101..}] minecraft:strength 5 8 false
execute unless score @s strengthTime matches 1.. run function phan:game/1/player/inventory
execute if score @s strengthTime matches 1.. run function phan:game/1/player/inventory_powered_up

#use item?
execute if entity @s[scores={carrotInput=1..,strengthTime=..0}] if items entity @s weapon.mainhand *[custom_data~{rmb:1b}] run function phan:game/1/player/item/_index
execute if entity @s[scores={carrotInput=1..,strengthTime=1..}] if items entity @s weapon.mainhand *[custom_data~{rmb:1b}] run function phan:game/1/player/item/_index_strength
execute if score @s strengthTime matches ..0 run function phan:game/1/player/item/_index_buffer_inputs
execute if score @s strengthTime matches 1.. run function phan:game/1/player/item/_index_strength_buffer_inputs