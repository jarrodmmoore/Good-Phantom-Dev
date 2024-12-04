$give @s minecraft:red_wool[item_model="gp/object/phantom_chest",custom_name='{"translate":"block.minecraft.trapped_chest","color":"light_purple","bold":true,"italic":false}',custom_data={item:1b,rightclick:1b,trappedChest:1b,stay:1b,groundDeploy:1b}] $(count)

scoreboard players set @s picksSinceTrap 0
scoreboard players set @s lastItemPicked 18

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem18 $(count)