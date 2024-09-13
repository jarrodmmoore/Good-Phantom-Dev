#die
execute unless entity @s[scores={lifespan=..1}] run scoreboard players set @s lifespan 1
execute on passengers if entity @s[tag=!stayAfterKill] run scoreboard players set @s lifespan 1

#attacker gets points
scoreboard players operation #findAttacker value = @s attackerID
execute if score @s attackerID matches 1.. unless entity @s[tag=enemyMine] as @a[gamemode=adventure,tag=playing] if score @s playerID = #findAttacker value at @s run function phan:game/1/player/score_enemy

#feedback
execute unless entity @s[tag=enemyMine] run function phan:game/1/objects/enemy_generic_die_feedback

#nearest player gets points
execute unless entity @s[tag=enemyMine] unless score @s attackerID matches 1.. as @a[limit=1,sort=nearest,gamemode=adventure,tag=playing] at @s run function phan:game/1/player/score_enemy

#spawn loot
execute unless entity @s[tag=declawed] unless entity @s[tag=enemyMine] run function phan:game/1/objects/spawn_random_loot

#re-sync player loot cycle variable
scoreboard players operation @a[tag=playerGotLoot] pLootCycle = #lootCycle value
tag @a[tag=playerGotLoot] remove playerGotLoot

#behavior specific to certain enemy types
#=====
#tnt golem drops tnt if holding one
#(note: enemy behavior is processed before this runs)
#execute if entity @s[tag=enemyTNTGolem,scores={editArg3=..1}] run function phan:game/1/objects/enemy/tnt_golem_drop_tnt
#^ (THIS WAS CUT BECAUSE IT WAS AN ANNOYING MECHANIC)

#mine explodes
execute if entity @s[tag=enemyMine] run function phan:game/1/objects/enemy/mine_explode
#=====

#cleanup
tag @s remove baddy