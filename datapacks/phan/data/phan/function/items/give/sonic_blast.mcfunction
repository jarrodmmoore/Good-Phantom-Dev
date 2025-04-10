$give @s minecraft:quartz[custom_name={translate:"gp.item.sonic_blast",color:"#BBBBBB",bold:true,italic:false},custom_data={item:1b,rightclick:1b,sonicBlast:1b,stay:1b}] $(count)

scoreboard players set @s picksSinceUtility 0
scoreboard players set @s lastItemPicked 12

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem12 $(count)