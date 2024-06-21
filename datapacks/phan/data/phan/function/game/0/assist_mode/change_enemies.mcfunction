#fail if admin required and we're not admin
execute if score #requireAdmin value matches 1 unless entity @s[tag=admin] run function phan:game/0/admin_required
execute if score #requireAdmin value matches 1 unless entity @s[tag=admin] run return 0


#acceptable values are 0-2
scoreboard players add #assist_enemies value 1
execute if score #assist_enemies value matches 3.. run scoreboard players set #assist_enemies value 0

#feedback sound
execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

#update display and assist mode state
function phan:game/0/summon_assist_mode_display