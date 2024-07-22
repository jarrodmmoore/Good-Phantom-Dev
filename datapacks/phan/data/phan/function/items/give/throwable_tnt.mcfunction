$give @s minecraft:tnt[custom_name='{"translate":"gp.item.throwable_tnt","color":"red","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,groundDeploy:1b,stay:1b,throwableTnt:1b}] $(count)

scoreboard players add #givenRockets value 3
scoreboard players set @s picksSinceOffense 0
scoreboard players set @s lastItemPicked 3

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem3 $(count)