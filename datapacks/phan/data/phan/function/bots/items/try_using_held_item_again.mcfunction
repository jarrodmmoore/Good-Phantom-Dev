scoreboard players operation #improvPick value = @s botHoldingItem

execute if score #improvPick value matches 1 run function phan:bots/items/1_red_rocket/think
execute if score #improvPick value matches 2 run function phan:bots/items/2_homing_rocket/think
execute if score #improvPick value matches 3 run function phan:bots/items/3_throwable_tnt/think
execute if score #improvPick value matches 4 run function phan:bots/items/4_energy_potion/think
execute if score #improvPick value matches 5 run function phan:bots/items/5_swiftness_potion/think
execute if score #improvPick value matches 6 run function phan:bots/items/6_super_jump/think
execute if score #improvPick value matches 7 run function phan:bots/items/7_speed_pad/think
execute if score #improvPick value matches 8 run function phan:bots/items/8_super_speed_pad/think
execute if score #improvPick value matches 9 run function phan:bots/items/9_lightning_strike/think
execute if score #improvPick value matches 10 run function phan:bots/items/10_blinding_squid/think
execute if score #improvPick value matches 11 run function phan:bots/items/11_anvil_of_justice/think
execute if score #improvPick value matches 12 run function phan:bots/items/12_sonic_blast/think
execute if score #improvPick value matches 13 run function phan:bots/items/13_mine/think
execute if score #improvPick value matches 14 run function phan:bots/items/14_warp/think
execute if score #improvPick value matches 15 run function phan:bots/items/15_ender_pearl/think
execute if score #improvPick value matches 16 run function phan:bots/items/16_enderman_thief/think
execute if score #improvPick value matches 17 run function phan:bots/items/17_firework_rocket/think
execute if score #improvPick value matches 18 run function phan:bots/items/18_trapped_chest/think
execute if score #improvPick value matches 19 run function phan:bots/items/19_shield/think

tag @s[tag=botUseItemSoon] remove botUseItemSoon