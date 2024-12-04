$execute unless score #brightMines value matches 1 run give @s minecraft:red_wool[item_model="gp/enemy/mine_black",custom_name='{"translate":"gp.item.mine","color":"red","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,mineItem:1b,stay:1b,groundDeploy:1b}] $(count)
$execute if score #brightMines value matches 1 run give @s minecraft:red_wool[item_model="gp/enemy/mine_tech",custom_name='{"translate":"gp.item.mine","color":"red","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,mineItem:1b,stay:1b,groundDeploy:1b}] $(count)

scoreboard players set @s picksSinceTrap 0
scoreboard players set @s lastItemPicked 13

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem13 $(count)