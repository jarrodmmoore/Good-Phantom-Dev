#reset some data if not looking at a level
execute if score @s levelUID matches 0 run scoreboard players set @s levelManagerPage 0

#adopt levelUID of nearest
execute unless score @s nearPlayer matches 0 run scoreboard players operation @s levelUID = @s nearPlayer

#highlight level if we're editing it
execute unless score @s levelUID matches 0 as @e[type=armor_stand,tag=levelEntry,distance=..4,scores={levelUID=-2147483648..2147483647},limit=1,sort=nearest] at @s run particle portal ~ ~2 ~ 0 0 0 0.3 1 force @s

#show item on hotbar if we're are able to edit stuff
execute unless score @s nearPlayer matches 0 unless items entity @s hotbar.5 *[custom_data~{dream_edit:1b}] run function phan:level_manager/link/give_edit_stick
execute if score @s nearPlayer matches 0 if items entity @s hotbar.5 *[custom_data~{dream_edit:1b}] run item replace entity @s hotbar.5 with air

#right click to edit stuff
execute if entity @s[scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{dream_edit:1b}] run function phan:level_manager/panel/_open_page_index