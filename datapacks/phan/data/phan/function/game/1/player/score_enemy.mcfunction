#big money?
scoreboard players add @s addScore 400
function phan:game/1/player/count_combo_long

#while we're here, pass in our pLootCycle as an argument for loot spawning
scoreboard players operation #lootCycle value = @s pLootCycle
scoreboard players set #dropMagicPotion value 0
execute if score #chosenLevel value matches 3 if score @s pCurrentArea matches 3 run scoreboard players set #dropMagicPotion value 1
tag @s add playerGotLoot

#we're the latest killer
tag @a[tag=lastEnemyScore] remove lastEnemyScore
tag @s add lastEnemyScore

#count how many enemies we've beat while under the influence of strength power
execute if score @s strengthTime matches 1.. run scoreboard players add @s enemiesBeatRed 1
#give advancement if we beat 10 enemies while using strength
execute if score #assist_enabled_scoreattack value matches 0 if score #gameState value matches 1.. run advancement grant @s[scores={enemiesBeatRed=7..}] only phan:score_attack/rip_and_tear