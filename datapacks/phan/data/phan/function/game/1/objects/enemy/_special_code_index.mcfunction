execute if entity @s[tag=enemySkeleton] if entity @a[tag=playing,gamemode=adventure,distance=..22] run function phan:game/1/objects/enemy/skeleton
execute if entity @s[tag=enemyVindicator] if entity @a[tag=playing,gamemode=adventure,distance=..24] run function phan:game/1/objects/enemy/vindicator
execute if entity @s[tag=enemyGhast] run function phan:game/1/objects/enemy/baby_ghast
execute if entity @s[tag=enemyTurret] run function phan:game/1/objects/enemy/turret
execute if entity @s[tag=enemyIronGolem] if entity @a[tag=playing,gamemode=adventure,distance=..24] run function phan:game/1/objects/enemy/iron_golem
execute if entity @s[tag=enemyTNTGolem] run function phan:game/1/objects/enemy/tnt_golem
execute if entity @s[tag=enemyShulker] run function phan:game/1/objects/enemy/shulker
execute if entity @s[tag=enemyMine] run function phan:game/1/objects/enemy/mine