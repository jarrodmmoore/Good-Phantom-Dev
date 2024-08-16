$give @s minecraft:prismarine_crystals[custom_name='{"translate":"gp.item.super_jump","color":"aqua","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,superJump:1b,stay:1b}] $(count)

scoreboard players set @s picksSinceSpeed 0
scoreboard players set @s lastItemPicked 6

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem6 $(count)