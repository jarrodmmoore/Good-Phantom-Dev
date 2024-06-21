#have we been claimed yet?
execute if entity @s[tag=!claimedPresent] if entity @a[tag=playing,gamemode=adventure,distance=..2] run function phan:game/1/objects/present_grab
execute if entity @s[tag=claimedPresent] run function phan:game/1/objects/present_follow_player
