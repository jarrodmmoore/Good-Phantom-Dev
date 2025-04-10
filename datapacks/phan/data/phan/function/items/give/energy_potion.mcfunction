$give @s minecraft:amethyst_shard[custom_name={translate:"gp.item.energy_potion",color:"blue",bold:true,italic:false},custom_data={item:1b,rightclick:1b,energyPotion:1b,stay:1b}] $(count)

scoreboard players set @s picksSinceSpeed 0
scoreboard players set @s lastItemPicked 4

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem4 $(count)