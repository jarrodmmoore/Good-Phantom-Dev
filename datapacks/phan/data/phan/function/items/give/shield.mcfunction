$give @s minecraft:light_gray_candle[custom_name='{"translate":"gp.item.shield","color":"aqua","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,shield:1b}] $(count)

scoreboard players set @s picksSinceUtility 0
scoreboard players set @s lastItemPicked 19

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem19 $(count)