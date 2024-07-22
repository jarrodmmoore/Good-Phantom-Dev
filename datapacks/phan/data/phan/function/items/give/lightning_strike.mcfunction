$give @s minecraft:blaze_rod[custom_name='{"translate":"gp.item.lightning_strike","color":"yellow","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,lightningStrike:1b,stay:1b}] $(count)

scoreboard players set #cooldownLightning value 2400
scoreboard players set @s picksSinceGlobal 0
scoreboard players set @s lastItemPicked 9

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem9 $(count)