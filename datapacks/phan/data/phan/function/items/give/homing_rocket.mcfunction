$give @s minecraft:cyan_dye[custom_model_data=1111112,custom_name='{"translate":"gp.item.homing_rocket","color":"dark_purple","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,homingRocket:1b,stay:1b}] $(count)

scoreboard players add #givenRockets value 4
scoreboard players set @s picksSinceOffense 0
scoreboard players set @s lastItemPicked 2