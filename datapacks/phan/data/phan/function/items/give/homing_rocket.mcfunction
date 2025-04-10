$give @s minecraft:cyan_dye[item_model="gp/item_entity/homing_rocket",custom_name={translate:"gp.item.homing_rocket",color:"dark_purple",bold:true,italic:false},custom_data={item:1b,rightclick:1b,homingRocket:1b,stay:1b}] $(count)

scoreboard players add #givenRockets value 4
scoreboard players set @s picksSinceOffense 0
scoreboard players set @s lastItemPicked 2

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem2 $(count)