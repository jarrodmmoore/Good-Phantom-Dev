#check for duplicate
scoreboard players set #test2 value 0
execute if score #disc_found_1 value matches 1 if entity @s[tag=discShimmer] run scoreboard players set #test2 value 1
execute if score #disc_found_2 value matches 1 if entity @s[tag=discEcho] run scoreboard players set #test2 value 1
execute if score #disc_found_3 value matches 1 if entity @s[tag=discShadow] run scoreboard players set #test2 value 1
execute if score #disc_found_4 value matches 1 if entity @s[tag=discPurple] run scoreboard players set #test2 value 1
execute if score #disc_found_5 value matches 1 if entity @s[tag=discSoap] run scoreboard players set #test2 value 1
execute if score #disc_found_6 value matches 1 if entity @s[tag=discHeart] run scoreboard players set #test2 value 1
execute if score #disc_found_7 value matches 1 if entity @s[tag=discWatching] run scoreboard players set #test2 value 0
execute if score #disc_found_8 value matches 1 if entity @s[tag=discPillars] run scoreboard players set #test2 value 1
execute if score #disc_found_9 value matches 1 if entity @s[tag=discMitosis] run scoreboard players set #test2 value 1
execute if score #disc_found_10 value matches 1 if entity @s[tag=discStranded] run scoreboard players set #test2 value 1
execute if score #disc_found_11 value matches 1 if entity @s[tag=discShine] run scoreboard players set #test2 value 1
execute if score #disc_found_12 value matches 1 if entity @s[tag=discWhimsy] run scoreboard players set #test2 value 1

#mark disc as found
execute if entity @s[tag=discShimmer] run scoreboard players set #disc_found_1 value 1
execute if entity @s[tag=discEcho] run scoreboard players set #disc_found_2 value 1
execute if entity @s[tag=discShadow] run scoreboard players set #disc_found_3 value 1
execute if entity @s[tag=discPurple] run scoreboard players set #disc_found_4 value 1
execute if entity @s[tag=discSoap] run scoreboard players set #disc_found_5 value 1
execute if entity @s[tag=discHeart] run scoreboard players set #disc_found_6 value 1
execute if entity @s[tag=discWatching] run scoreboard players set #disc_found_7 value 1
execute if entity @s[tag=discPillars] run scoreboard players set #disc_found_8 value 1
execute if entity @s[tag=discMitosis] run scoreboard players set #disc_found_9 value 1
execute if entity @s[tag=discStranded] run scoreboard players set #disc_found_10 value 1
execute if entity @s[tag=discShine] run scoreboard players set #disc_found_11 value 1
execute if entity @s[tag=discWhimsy] run scoreboard players set #disc_found_12 value 1

#get advancements for finding discs
execute if entity @s[tag=discShimmer] run scoreboard players set @a[tag=catcher] discFound1 1
execute if entity @s[tag=discEcho] run scoreboard players set @a[tag=catcher] discFound2 1
execute if entity @s[tag=discShadow] run scoreboard players set @a[tag=catcher] discFound3 1
execute if entity @s[tag=discPurple] run scoreboard players set @a[tag=catcher] discFound4 1
execute if entity @s[tag=discSoap] run scoreboard players set @a[tag=catcher] discFound5 1
execute if entity @s[tag=discHeart] run scoreboard players set @a[tag=catcher] discFound6 1
execute if entity @s[tag=discWatching] run scoreboard players set @a[tag=catcher] discFound7 1
execute if entity @s[tag=discPillars] run scoreboard players set @a[tag=catcher] discFound8 1
execute if entity @s[tag=discMitosis] run scoreboard players set @a[tag=catcher] discFound9 1
execute if entity @s[tag=discStranded] run scoreboard players set @a[tag=catcher] discFound10 1
execute if entity @s[tag=discShine] run scoreboard players set @a[tag=catcher] discFound11 1
execute if entity @s[tag=discWhimsy] run scoreboard players set @a[tag=catcher] discFound12 1
execute as @a[limit=1,tag=catcher] run function phan:game/1/objects/hidden_music_disc/player_disc_advancement

#announce new disc if we didn't alread have it
execute if score #test2 value matches 0 run function phan:game/1/objects/hidden_music_disc/announce_new_find