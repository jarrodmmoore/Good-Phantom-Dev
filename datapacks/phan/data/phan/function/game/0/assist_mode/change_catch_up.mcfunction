#fail if admin required and we're not admin
execute if score #requireAdmin value matches 1 unless entity @s[tag=admin] run function phan:game/0/admin_required
execute if score #requireAdmin value matches 1 unless entity @s[tag=admin] run return 0


#acceptable values are 0-1
scoreboard players add #assist_catch_up value 1
execute if score #assist_catch_up value matches 2.. run scoreboard players set #assist_catch_up value 0

#feedback sound
execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

#update display and assist mode state
function phan:game/0/summon_assist_mode_display