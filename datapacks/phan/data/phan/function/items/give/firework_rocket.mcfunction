$give @s minecraft:firework_rocket[custom_name={translate:"gp.item.firework_rocket",color:"white",bold:true,italic:false},custom_data={item:1b,fireworkRocket:1b,stay:1b}] $(count)

scoreboard players set @s picksSinceBigSpeed 0
scoreboard players set @s picksSinceSpeed 0
scoreboard players set @s lastItemPicked 17

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem17 $(count)