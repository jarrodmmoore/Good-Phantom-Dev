$execute unless score #brightMines value matches 1 run give @s minecraft:red_wool[custom_model_data=1111141,custom_name='{"translate":"gp.item.mine","color":"red","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,mineItem:1b,stay:1b,groundDeploy:1b}] $(count)
$execute if score #brightMines value matches 1 run give @s minecraft:red_wool[custom_model_data=1111149,custom_name='{"translate":"gp.item.mine","color":"red","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,mineItem:1b,stay:1b,groundDeploy:1b}] $(count)

scoreboard players set @s picksSinceTrap 0
scoreboard players set @s lastItemPicked 13