$give @s minecraft:cyan_dye[custom_model_data=1111115,custom_name='{"translate":"gp.item.blinding_squid","color":"blue","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,blindingSquid:1b,stay:1b}] $(count)

scoreboard players set #cooldownSquid value 1600
scoreboard players set @s picksSinceGlobal 0
scoreboard players set @s lastItemPicked 10

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem10 $(count)