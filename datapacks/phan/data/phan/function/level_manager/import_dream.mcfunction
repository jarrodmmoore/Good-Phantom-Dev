#must have a dream selected
execute unless score @s levelUID matches -2147483648..2147483647 run return run tellraw @s ["",{"translate":"gp.level_manager.error.no_dream_is_selected","color":"red"}]
execute if score @s levelUID matches 0 run return run tellraw @s ["",{"translate":"gp.level_manager.error.no_dream_is_selected","color":"red"}]
#=====

#check to see if storage exists (and get map version, too)
scoreboard players set #success value 0
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
$data modify storage phan:level_index filename set value '$(filename)'
function phan:level_manager/import_dream_check_version with storage phan:level_index

#let player know if something went wrong
execute if score #mapVersionRead value matches 0 run return run tellraw @a ["",{"translate":"gp.level_manager.error.storage_not_found","color":"red"}]
execute if score #success value matches 0 run return run tellraw @a ["",{"translate":"gp.level_manager.error.storage_not_found","color":"red"}]
#=====

#do it!
scoreboard players set #success value 0
#may use different import functions depending on what version the map was made in
execute if score #mapVersionRead value matches ..102002 run function phan:level_manager/import_dream_go with storage phan:level_index
execute if score #mapVersionRead value matches 102003.. run function phan:level_manager/import_dream_go with storage phan:level_index

#tell player if it worked or not
execute if score #success value matches 0 run tellraw @s ["",{"translate":"gp.level_manager.error.unexpected_import_error","color":"red"}]
$execute if score #success value matches 1 run tellraw @s ["",{"translate":"gp.level_manager.successful_import","color":"green","with":[{"text":"saves/.../data/command_storage_$(filename).dat","color":"white"}]}]

#resummon any relevant props in lobby
function phan:level_manager/import_dream_do_resummon with storage phan:level_index