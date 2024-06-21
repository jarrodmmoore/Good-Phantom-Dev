#feedback for certain enemies
execute if entity @s[tag=enemyGhast] run playsound minecraft:entity.ghast.death master @a ~ ~ ~ 2.5 1.3

execute if entity @s[tag=enemyTurret] run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 3 1.3
execute if entity @s[tag=enemyTurret] run particle block{block_state:"dispenser"} ~ ~ ~ 0.2 0.2 0.2 1 15

execute if entity @s[tag=enemyTNTGolem] run playsound minecraft:block.grindstone.use master @a ~ ~ ~ 3 1.75
execute if entity @s[tag=enemyTNTGolem] run playsound minecraft:entity.skeleton.hurt master @a ~ ~ ~ 3 0.66
execute if entity @s[tag=enemyTNTGolem] run particle block{block_state:"grindstone"} ~ ~1 ~ 0.2 0.4 0.2 1 15

execute if entity @s[tag=enemyShulker] run playsound minecraft:entity.shulker.hurt master @a ~ ~ ~ 3 1
execute if entity @s[tag=enemyShulker] run particle block{block_state:"red_shulker_box"} ~ ~1 ~ 0.4 0.4 0.4 1 15