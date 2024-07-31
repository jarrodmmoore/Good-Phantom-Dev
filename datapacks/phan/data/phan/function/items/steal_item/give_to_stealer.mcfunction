#messages

#success! stole item
execute if entity @s[type=player] run tellraw @s ["",{"text":"\n"},{"translate":"gp.item.enderman_thief_steal_item_success","with":[{"selector":"@e[tag=gotRobbed]"}]},{"text":"\n"}]

#oh no! item stolen
tellraw @a[tag=gotRobbed] ["",{"text":"\n"},{"translate":"gp.item.enderman_thief_stolen_item","with":[{"selector":"@s"}]},{"text":"\n"}]

#use quantity we just calculated
execute store result storage phan:give_item_args count int 1 run scoreboard players get #stealQty value
#give item
execute if score #stolenItem value matches 1 run function phan:items/give/red_rocket with storage phan:give_item_args
execute if score #stolenItem value matches 2 run function phan:items/give/homing_rocket with storage phan:give_item_args
execute if score #stolenItem value matches 3 run function phan:items/give/throwable_tnt with storage phan:give_item_args
execute if score #stolenItem value matches 4 run function phan:items/give/energy_potion with storage phan:give_item_args
execute if score #stolenItem value matches 5 run function phan:items/give/swiftness_potion with storage phan:give_item_args
execute if score #stolenItem value matches 6 run function phan:items/give/super_jump with storage phan:give_item_args
execute if score #stolenItem value matches 7 run function phan:items/give/speed_pad with storage phan:give_item_args
execute if score #stolenItem value matches 8 run function phan:items/give/speed_pad_super with storage phan:give_item_args
execute if score #stolenItem value matches 9 run function phan:items/give/lightning_strike with storage phan:give_item_args
execute if score #stolenItem value matches 10 run function phan:items/give/blinding_squid with storage phan:give_item_args
execute if score #stolenItem value matches 11 run function phan:items/give/anvil_of_justice with storage phan:give_item_args
execute if score #stolenItem value matches 12 run function phan:items/give/sonic_blast with storage phan:give_item_args
execute if score #stolenItem value matches 13 run function phan:items/give/mine with storage phan:give_item_args
execute if score #stolenItem value matches 14 run function phan:items/give/warp with storage phan:give_item_args
execute if score #stolenItem value matches 15 run function phan:items/give/ender_pearl with storage phan:give_item_args
execute if score #stolenItem value matches 16 run function phan:items/give/enderman_thief with storage phan:give_item_args
execute if score #stolenItem value matches 17 run function phan:items/give/firework_rocket with storage phan:give_item_args
execute if score #stolenItem value matches 18 run function phan:items/give/trapped_chest with storage phan:give_item_args
execute if score #stolenItem value matches 19 run function phan:items/give/shield with storage phan:give_item_args

#feedback
function phan:tell_spectators
execute at @s anchored eyes positioned ^ ^ ^5 run particle happy_villager ~ ~ ~ 0.25 0.25 0.25 1 20 force @a[tag=tellMe]
execute as @a[tag=tellMe] at @s run playsound entity.ender_eye.death master @s ~ 100000 ~ 100000 1.2