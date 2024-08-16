$give @s minecraft:cyan_dye[custom_model_data=1111116,custom_name='{"translate":"gp.item.enderman_thief","color":"gray","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,endermanThief:1b,stay:1b}] $(count)

scoreboard players set #cooldownEnderman value 500
scoreboard players set @s picksSinceGlobal 0
scoreboard players set @s lastItemPicked 16

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem16 $(count)