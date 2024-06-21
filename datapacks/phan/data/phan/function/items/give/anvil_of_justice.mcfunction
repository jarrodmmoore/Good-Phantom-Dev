$give @s minecraft:anvil[custom_name='{"translate":"gp.item.anvil_of_justice","color":"gray","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,anvilOfJustice:1b,stay:1b}] $(count)

scoreboard players set #cooldownAnvil value 700
scoreboard players set #mandateAnvil value 0
scoreboard players set @s picksSinceGlobal 0
scoreboard players set @s lastItemPicked 11