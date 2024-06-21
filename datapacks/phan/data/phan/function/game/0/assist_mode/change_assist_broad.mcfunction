#fail if admin required and we're not admin
execute if score #requireAdmin value matches 1 unless entity @s[tag=admin] run function phan:game/0/admin_required
execute if score #requireAdmin value matches 1 unless entity @s[tag=admin] run return 0


#acceptable values are 0-1
scoreboard players add #assist_enabled value 1
execute if score #assist_enabled value matches 2.. run scoreboard players set #assist_enabled value 0

#set all other settings depending on what value we landed at
#enabled
execute if score #assist_enabled value matches 1.. run scoreboard players set #assist_time_limit value 1
execute if score #assist_enabled value matches 1.. run scoreboard players set #assist_movement value 1
execute if score #assist_enabled value matches 1.. run scoreboard players set #assist_enemies value 1
execute if score #assist_enabled value matches 1.. run scoreboard players set #assist_energy value 1
execute if score #assist_enabled value matches 1.. run scoreboard players set #assist_combos value 1
execute if score #assist_enabled value matches 1.. run scoreboard players set #assist_navigation value 1
#disabled
execute if score #assist_enabled value matches ..0 run scoreboard players set #assist_time_limit value 0
execute if score #assist_enabled value matches ..0 run scoreboard players set #assist_movement value 0
execute if score #assist_enabled value matches ..0 run scoreboard players set #assist_enemies value 0
execute if score #assist_enabled value matches ..0 run scoreboard players set #assist_energy value 0
execute if score #assist_enabled value matches ..0 run scoreboard players set #assist_combos value 0
execute if score #assist_enabled value matches ..0 run scoreboard players set #assist_navigation value 0

#feedback sound
execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

#update display and assist mode state
function phan:game/0/summon_assist_mode_display