#must have a dream selected
execute unless score @s levelUID matches -2147483648..2147483647 run return run tellraw @s ["",{"translate":"gp.level_manager.error.no_dream_is_selected","color":"red"}]
execute if score @s levelUID matches 0 run return run tellraw @s ["",{"translate":"gp.level_manager.error.no_dream_is_selected","color":"red"}]
#=====

#can't choose an illegal filename!
scoreboard players set #success value 1
$function phan:level_manager/export_check_for_illegal_storage {filename:'$(filename)'}
execute if score #success value matches 0 run return run tellraw @s ["",{"translate":"gp.level_manager.error.illegal_storage","color":"red"}]
#=====

#do it
scoreboard players set #success value 0
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
$data modify storage phan:level_index filename set value '$(filename)'
function phan:level_manager/export_dream_go with storage phan:level_index

#tell player if it worked or not
execute if score #success value matches 0 run tellraw @s ["",{"translate":"gp.level_manager.error.illegal_filename","color":"red"}]
$execute if score #success value matches 1 run tellraw @s ["",{"translate":"gp.level_manager.successful_export","color":"green","with":[{"text":"saves/.../data/command_storage_$(filename).dat","color":"white"}]}]