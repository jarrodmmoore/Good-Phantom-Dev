#make sure player has the item

tag @s remove hasCarrot
tag @s remove invalidCarrot
execute if items entity @s weapon.mainhand carrot_on_a_stick run tag @s add invalidCarrot
execute if items entity @s weapon.offhand carrot_on_a_stick run tag @s add hasCarrot

execute if entity @s[tag=invalidCarrot] run clear @s minecraft:carrot_on_a_stick
#swap input
execute if entity @s[tag=invalidCarrot] run function phan:control/handle_player_input_swap

#give carrot on stick if missing
execute if entity @s[tag=!hasCarrot] run clear @s minecraft:carrot_on_a_stick
execute if entity @s[tag=!hasCarrot] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[hide_tooltip={},custom_model_data=1234567,lore=['{"translate":"gp.misc.this_detects_right_clicks","color":"#FA66FF","italic":true}'],custom_name='{"translate":"gp.misc.input_detector","bold":true,"italic":false,"color":"light_purple"}',custom_data={input_carrot:1b}] 1