$give @s minecraft:cyan_dye[custom_model_data=1111111,custom_name='{"translate":"gp.item.red_rocket","color":"red","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,redRocket:1b,stay:1b}] $(count)

scoreboard players add #givenRockets value 4
scoreboard players set @s picksSinceOffense 0
scoreboard players set @s lastItemPicked 1