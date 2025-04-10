$give @s minecraft:cyan_dye[item_model="gp/item_entity/speed_pad_super",custom_name={translate:"gp.item.super_speed_pad",color:"aqua",bold:true,italic:false},custom_data={item:1b,rightclick:1b,superSpeedPad:1b,stay:1b}] $(count)

scoreboard players set @s picksSinceSpeed 0
scoreboard players set @s lastItemPicked 8

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem8 $(count)