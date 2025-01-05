scoreboard players add #lootCycle value 1
execute if score #lootCycle value matches 11.. run scoreboard players set #lootCycle value 1

#pretend to be a node for a second so we can spawn something fun
scoreboard players set #noShoot value 1
scoreboard players set #getGravity value 1
tag @s add nodeLoadArea0
execute if entity @s[tag=act1Spawn] run tag @s add nodeArea1
execute if entity @s[tag=act2Spawn] run tag @s add nodeArea2
execute if entity @s[tag=act3Spawn] run tag @s add nodeArea3
execute if entity @s[tag=act4Spawn] run tag @s add nodeArea4
scoreboard players set @s editArg1 0
#big enemies drop better loot
execute if score #lootCycle value matches ..9 if entity @s[tag=bigLootDrop] run scoreboard players set @s editArg1 5
execute if score #gameState value matches 3 if entity @s[tag=bigLootDrop] run scoreboard players set @s editArg1 5

#mob loot is deterministic and every 10th enemy drops a clock (except in time attack mode-- clocks do nothing in time attack mode)
scoreboard players set #spawnRecursions value 0
execute if score #lootCycle value matches ..9 run function phan:game/1/spawning/spawn_stardust
execute unless score #gameState value matches 3 if score #lootCycle value matches 10.. run function phan:game/1/spawning/spawn_clock
execute if score #gameState value matches 3 if score #lootCycle value matches 10.. run function phan:game/1/spawning/spawn_stardust
#execute if score #lootCycle value matches 3 run function phan:game/1/spawning/spawn_ender_eye

#special case: drop magic potion every 10th in colosseum level
execute if score #dropMagicPotion value matches 1 if score #lootCycle value matches 5 run function phan:game/1/spawning/spawn_magic_potion

scoreboard players set #noShoot value 0
scoreboard players set #getGravity value 0
tag @s remove nodeLoadArea0
tag @s remove nodeArea1
tag @s remove nodeArea2
tag @s remove nodeArea3