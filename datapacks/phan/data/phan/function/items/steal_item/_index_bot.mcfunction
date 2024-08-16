#executed by bot who is getting their item stolen

#this should get overridden
scoreboard players set #stolenItem value 0
scoreboard players set #stealQty value 0

#steal the thing
execute if score @s botHoldingItem matches 1 run function phan:items/steal_item/01_red_rocket
execute if score @s botHoldingItem matches 2 run function phan:items/steal_item/02_homing_rocket
execute if score @s botHoldingItem matches 3 run function phan:items/steal_item/03_throw_tnt
execute if score @s botHoldingItem matches 4 run function phan:items/steal_item/04_energy_potion
execute if score @s botHoldingItem matches 5 run function phan:items/steal_item/05_swiftness_potion
execute if score @s botHoldingItem matches 6 run function phan:items/steal_item/06_super_jump
execute if score @s botHoldingItem matches 7 run function phan:items/steal_item/07_speed_pad
execute if score @s botHoldingItem matches 8 run function phan:items/steal_item/08_super_speed_pad
execute if score @s botHoldingItem matches 9 run function phan:items/steal_item/09_lightning_strike
execute if score @s botHoldingItem matches 10 run function phan:items/steal_item/10_blinding_squid
execute if score @s botHoldingItem matches 11 run function phan:items/steal_item/11_anvil_of_justice
execute if score @s botHoldingItem matches 12 run function phan:items/steal_item/12_sonic_blast
execute if score @s botHoldingItem matches 13 run function phan:items/steal_item/13_mine
execute if score @s botHoldingItem matches 14 run function phan:items/steal_item/14_warp
execute if score @s botHoldingItem matches 15 run function phan:items/steal_item/15_ender_pearl
execute if score @s botHoldingItem matches 16 run function phan:items/steal_item/16_enderman_thief
execute if score @s botHoldingItem matches 17 run function phan:items/steal_item/17_firework_rocket
execute if score @s botHoldingItem matches 18 run function phan:items/steal_item/18_trapped_chest
execute if score @s botHoldingItem matches 19 run function phan:items/steal_item/19_shield

#remember our id
scoreboard players operation #victimID value = @s playerID

#give item to player who stole the thing
tag @s add gotRobbed
execute as @a[tag=doneWithIntro] if score @s playerID = #thisEndermanID value run function phan:items/steal_item/give_to_stealer
execute as @e[tag=ai,type=zombie] if score @s playerID = #thisEndermanID value run function phan:items/steal_item/give_to_stealer
tag @s remove gotRobbed

#tell controller our inventory changed
tag @s add hasDataToSend

#i'd like to report a robbery
scoreboard players set #success value 1