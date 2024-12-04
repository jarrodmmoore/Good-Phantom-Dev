$give @s minecraft:cyan_dye[item_model="gp/item/red_rocket",custom_name='{"translate":"gp.item.red_rocket","color":"red","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,redRocket:1b,stay:1b}] $(count)

scoreboard players add #givenRockets value 4
scoreboard players set @s picksSinceOffense 0
scoreboard players set @s lastItemPicked 1

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem1 $(count)