$give @s minecraft:lime_candle[custom_name={translate:"gp.item.warp",color:"green",bold:true,italic:false},custom_data={item:1b,rightclick:1b,warp:1b}] $(count)

scoreboard players set @s picksSinceSpeed 0
scoreboard players set @s picksSinceBigSpeed 0
scoreboard players set @s picksSinceWarp 0
scoreboard players set @s lastItemPicked 14

tag @s[tag=ai] add hasDataToSend
$scoreboard players add @s[tag=ai] botHasItem14 $(count)