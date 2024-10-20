clear @s[type=player] quartz[custom_data~{sonicBlast:1b}] 1
tag @s add blastSelf
scoreboard players operation #attackerID value = @s playerID

#visuals/sound
playsound minecraft:item.goat_horn.sound.7 master @a ~ ~ ~ 3 1.7
playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 2 1.2
particle flash ~ ~1 ~ 0 0 0 1 1 force @a[tag=!blastSelf]
execute anchored eyes positioned ^ ^ ^3 run particle flash ~ ~ ~ 0 0 0 1 1 force @a[tag=blastSelf]

#get advancement for destroying an anvil that is targeting us
execute if entity @s[type=player] as @e[tag=anvilEntity,type=armor_stand,distance=..9] if score @s playerID = #attackerID value run advancement grant @a[tag=blastSelf,distance=..1] only phan:portal_race/not_today_thank_you

#destroy some items
execute as @e[tag=sonicBlastDestroys,distance=..9] run function phan:items/use/sonic_blast_destroy_item

#redirect rockets
execute as @e[tag=rocket,type=armor_stand,distance=..12] run function phan:items/sonic_blast_redirect_rocket

#hit nearby players
execute if loaded ~ ~ ~ run summon marker ~ ~ ~ {UUID:[I;777,0,0,2]}
execute as @a[gamemode=adventure,tag=!blastSelf,distance=..7] at @s run function phan:items/use/sonic_blast_hit_player
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,tag=!blastSelf,distance=..7] at @s run function phan:items/use/sonic_blast_hit_player
kill 00000309-0000-0000-0000-000000000002

#cleanup
tag @s remove blastSelf