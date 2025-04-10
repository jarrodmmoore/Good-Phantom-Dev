$give @s minecraft:prismarine_shard[custom_name={translate:"gp.item.swiftness_potion",color:"white",bold:true,italic:false},custom_data={item:1b,rightclick:1b,swiftnessPotion:1b,stay:1b}] $(count)

scoreboard players set @s picksSinceSpeed 0
scoreboard players set @s lastItemPicked 5

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem5 $(count)