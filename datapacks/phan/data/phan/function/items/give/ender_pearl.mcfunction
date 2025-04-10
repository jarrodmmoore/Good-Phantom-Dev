$give @s minecraft:ender_pearl[custom_name={translate:"gp.item.ender_pearl",color:"dark_aqua",bold:true,italic:false},custom_data={item:1b,enderPearl:1b,stay:1b}] $(count)

scoreboard players set @s picksSinceSpeed 0
scoreboard players set @s lastItemPicked 15

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem15 $(count)