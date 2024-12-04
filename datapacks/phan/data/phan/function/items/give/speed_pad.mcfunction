$give @s minecraft:cyan_dye[item_model="gp/item_entity/speed_pad",custom_name='{"translate":"gp.item.speed_pad","color":"yellow","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,speedPad:1b,stay:1b}] $(count)

scoreboard players set @s picksSinceSpeed 0
scoreboard players set @s lastItemPicked 7

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem7 $(count)