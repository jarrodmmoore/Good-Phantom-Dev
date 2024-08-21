clear @s[type=player] blaze_rod[custom_data~{lightningStrike:1b}] 1

#strike up to 5 players
#if in versus mode, only target top 5
#also don't target anyone who is really far behind (itemLuck=5..)
tag @s add dontgethit
scoreboard players operation #attackerID value = @s playerID
execute if score #gameState value matches 4 as @a[tag=playing,tag=!dontgethit] if score @s itemPosition matches ..5 if score @s itemLuck matches ..4 at @s run function phan:items/lightning_strike_hit_player
execute if score #gameState value matches 4 if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,tag=!dontgethit] if score @s itemPosition matches ..5 if score @s itemLuck matches ..4 at @s run function phan:items/lightning_strike_hit_player
execute unless score #gameState value matches 4 as @a[gamemode=adventure,tag=doneWithIntro,tag=!dontgethit,limit=5,sort=random] at @s run function phan:items/lightning_strike_hit_player
schedule function phan:items/lightning_strike_remove_resist_tag 50t

#play sound
playsound minecraft:entity.evoker.cast_spell master @s ~ 100000 ~ 100000 1.3
execute anchored eyes run particle instant_effect ^ ^ ^4 0.2 0.2 0.2 0.07 10 force @s
execute anchored eyes run particle instant_effect ^ ^ ^4 0.2 0.2 0.2 0.07 10 force @a[tag=!dontgethit]

#everyone sees this
execute as @a[tag=doneWithIntro] at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ 100000 ~ 100000 0.75 1
effect give @a[tag=doneWithIntro] minecraft:night_vision 1 201 true

#tag cleanup
tag @s remove dontgethit

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 12