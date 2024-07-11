#executed by player who is getting their item stolen

#this should get overridden
scoreboard players set #stolenItem value 0
scoreboard players set #stealQty value 0

#steal the thing
execute if items entity @s weapon.mainhand *[custom_data~{redRocket:1b}] run function phan:items/steal_item/01_red_rocket
execute if items entity @s weapon.mainhand *[custom_data~{homingRocket:1b}] run function phan:items/steal_item/02_homing_rocket
execute if items entity @s weapon.mainhand *[custom_data~{throwableTnt:1b}] run function phan:items/steal_item/03_throw_tnt
execute if items entity @s weapon.mainhand *[custom_data~{energyPotion:1b}] run function phan:items/steal_item/04_energy_potion
execute if items entity @s weapon.mainhand *[custom_data~{swiftnessPotion:1b}] run function phan:items/steal_item/05_swiftness_potion
execute if items entity @s weapon.mainhand *[custom_data~{superJump:1b}] run function phan:items/steal_item/06_super_jump
execute if items entity @s weapon.mainhand *[custom_data~{speedPad:1b}] run function phan:items/steal_item/07_speed_pad
execute if items entity @s weapon.mainhand *[custom_data~{superSpeedPad:1b}] run function phan:items/steal_item/08_super_speed_pad
execute if items entity @s weapon.mainhand *[custom_data~{lightningStrike:1b}] run function phan:items/steal_item/09_lightning_strike
execute if items entity @s weapon.mainhand *[custom_data~{blindingSquid:1b}] run function phan:items/steal_item/10_blinding_squid
execute if items entity @s weapon.mainhand *[custom_data~{anvilOfJustice:1b}] run function phan:items/steal_item/11_anvil_of_justice
execute if items entity @s weapon.mainhand *[custom_data~{sonicBlast:1b}] run function phan:items/steal_item/12_sonic_blast
execute if items entity @s weapon.mainhand *[custom_data~{mineItem:1b}] run function phan:items/steal_item/13_mine
execute if items entity @s weapon.mainhand *[custom_data~{warp:1b}] run function phan:items/steal_item/14_warp
execute if items entity @s weapon.mainhand *[custom_data~{enderPearl:1b}] run function phan:items/steal_item/15_ender_pearl
execute if items entity @s weapon.mainhand *[custom_data~{endermanThief:1b}] run function phan:items/steal_item/16_enderman_thief
execute if items entity @s weapon.mainhand *[custom_data~{fireworkRocket:1b}] run function phan:items/steal_item/17_firework_rocket
execute if items entity @s weapon.mainhand *[custom_data~{trappedChest:1b}] run function phan:items/steal_item/18_trapped_chest
execute if items entity @s weapon.mainhand *[custom_data~{shieldItem:1b}] run function phan:items/steal_item/19_shield

#remember our id
scoreboard players operation #victimID value = @s playerID

#give item to player who stole the thing
tag @s add gotRobbed
execute as @a[tag=doneWithIntro] if score @s playerID = #thisEndermanID value run function phan:items/steal_item/give_to_stealer
tag @a[tag=gotRobbed] remove gotRobbed


#i'd like to report a robbery
scoreboard players set #success value 1