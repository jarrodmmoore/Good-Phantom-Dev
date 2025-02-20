clear @s[type=player] cyan_dye[custom_data~{blindingSquid:1b}] 1

#blind all players ahead of our position
#if not in versus mode, blind up to 5 people
tag @s add dontgethit
scoreboard players operation #attackerID value = @s playerID
scoreboard players operation #test value = @s itemPosition
#versus race
execute if score #gameState value matches 4 if score #vGameType value matches 1 unless score @s itemPosition matches ..1 as @a[tag=playing,tag=!dontgethit] if score @s itemPosition < #test value at @s run function phan:items/squid_blind_player
execute if score #gameState value matches 4 if score #vGameType value matches 1 unless score @s itemPosition matches ..1 if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,tag=!dontgethit] if score @s itemPosition < #test value at @s run function phan:items/squid_blind_player
execute if score #gameState value matches 4 if score #vGameType value matches 1 if score @s itemPosition matches ..1 if score #botsEnabled value matches ..0 as @a[tag=playing,tag=!dontgethit,limit=5,sort=nearest] at @s run function phan:items/squid_blind_player
execute if score #gameState value matches 4 if score #vGameType value matches 1 if score @s itemPosition matches ..1 if score #botsEnabled value matches 1.. as @e[tag=playing,tag=!dontgethit,limit=5,sort=nearest] at @s run function phan:items/squid_blind_player
#versus battle
execute if score #gameState value matches 4 unless score #vGameType value matches 1 if score #botsEnabled value matches ..0 as @a[tag=playing,tag=!dontgethit,limit=5,sort=nearest] at @s run function phan:items/squid_blind_player
execute if score #gameState value matches 4 unless score #vGameType value matches 1 if score #botsEnabled value matches 1.. as @e[tag=playing,tag=!dontgethit,limit=5,sort=nearest] at @s run function phan:items/squid_blind_player
#not versus mode
execute unless score #gameState value matches 4 as @a[gamemode=adventure,tag=!dontgethit,tag=doneWithIntro,limit=5,sort=random] at @s run function phan:items/squid_blind_player

#play sound
playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 .5

#summon squid to indicate that we did the thing
execute anchored eyes positioned ^ ^ ^4 run summon squid ~ ~ ~ {Tags:["tickObject","blindingSquidEntity","squidSummonedByPlayer","giveID"],NoGravity:1b,NoAI:1b}
execute anchored eyes positioned ^ ^ ^4 rotated as @s as @e[tag=giveID,type=squid,distance=..5] run tp @s ~ ~ ~ ~ ~
scoreboard players operation @e[tag=giveID,type=squid,distance=..5] playerID = @s playerID
scoreboard players set @e[tag=giveID,type=squid,distance=..5] itemValidSpawn 1
scoreboard players set @e[tag=giveID,type=squid,distance=..5] lifespan 10

#tag cleanup
tag @e[tag=giveID,type=squid,distance=..5] remove giveID
tag @s remove dontgethit

#secretly clear item from bot inventories to curb spam
execute if score #botsEnabled value matches 1.. run scoreboard players set @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botSkill=..5}] botHasItem10 0
execute if score #botsEnabled value matches 1.. run scoreboard players set @e[tag=ai,type=zombie,scores={botSkill=..5}] botHasItem10 0
execute if score #botsEnabled value matches 1.. run scoreboard players set @e[tag=ai,type=zombie,scores={botHoldingItem=10}] botHoldingItem 0

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 15