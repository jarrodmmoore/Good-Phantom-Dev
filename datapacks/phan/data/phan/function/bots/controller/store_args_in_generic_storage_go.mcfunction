#while messing around i accidentally created a generic "bot_data" storage when i intended them all to be "bot_data_1", "bot_data_2", etc.
#turns out, this actually ended up being useful!
#glad i don't have to go in and clean up the files :)

$data modify storage phan:bot_data botid set value $(botid)
$data modify storage phan:bot_data colortag set value "$(colortag)"
$data modify storage phan:bot_data botteam set value "$(botteam)"
$data modify storage phan:bot_data username set value "$(username)"
execute store result storage phan:bot_data botinstance int 1 run scoreboard players get @s botInstance