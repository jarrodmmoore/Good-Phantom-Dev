#throw with a different trajectory depending on how far away the player is
scoreboard players set #test value 0
execute if entity @a[limit=1,tag=tntGolemTarget,distance=..20] run scoreboard players set #test value 1
execute if entity @a[limit=1,tag=tntGolemTarget,distance=..10] run scoreboard players set #test value 2

execute if score #test value matches 2 facing entity @a[limit=1,tag=tntGolemTarget] feet rotated ~ ~3 run function phan:game/1/objects/enemy/tnt_golem_shoot
execute if score #test value matches 1 facing entity @a[limit=1,tag=tntGolemTarget] feet rotated ~ ~-2 run function phan:game/1/objects/enemy/tnt_golem_shoot
execute if score #test value matches 0 facing entity @a[limit=1,tag=tntGolemTarget] eyes rotated ~ ~-10 run function phan:game/1/objects/enemy/tnt_golem_shoot
