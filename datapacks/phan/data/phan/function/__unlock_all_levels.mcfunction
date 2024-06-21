#set clear flag for all levels
scoreboard players set #dreamsCompleted value 5
scoreboard players set #dream1Completed value 1
scoreboard players set #dream2Completed value 1
scoreboard players set #dream3Completed value 1
scoreboard players set #dream4Completed value 1
scoreboard players set #dream5Completed value 1
#unlock all acts
scoreboard players set #d1a1Unlocked value 1
scoreboard players set #d1a2Unlocked value 1
scoreboard players set #d1a3Unlocked value 1

scoreboard players set #d2a1Unlocked value 1
scoreboard players set #d2a2Unlocked value 1
scoreboard players set #d2a3Unlocked value 1

scoreboard players set #d3a1Unlocked value 1
scoreboard players set #d3a2Unlocked value 1
scoreboard players set #d3a3Unlocked value 1

scoreboard players set #d4a1Unlocked value 1
scoreboard players set #d4a2Unlocked value 1
scoreboard players set #d4a3Unlocked value 1

scoreboard players set #d5a1Unlocked value 1
scoreboard players set #d5a2Unlocked value 1
scoreboard players set #d5a3Unlocked value 1
#discover all dreams
scoreboard players set #dream1Discovered value 1
scoreboard players set #dream2Discovered value 1
scoreboard players set #dream3Discovered value 1
scoreboard players set #dream4Discovered value 1
scoreboard players set #dream5Discovered value 1
#spawn point in cabin...
scoreboard players set #lastLevelPlayed value 0
#unlocks
scoreboard players set #timeAttackUnlocked value 1

#unlock all music discs
scoreboard players set #disc_found_1 value 1
scoreboard players set #disc_found_2 value 1
scoreboard players set #disc_found_3 value 1
scoreboard players set #disc_found_4 value 1
scoreboard players set #disc_found_5 value 1
scoreboard players set #disc_found_6 value 1
scoreboard players set #disc_found_7 value 1
scoreboard players set #disc_found_8 value 1
scoreboard players set #disc_found_9 value 1
scoreboard players set #disc_found_10 value 1
scoreboard players set #disc_found_11 value 1
scoreboard players set #disc_found_12 value 1

#update visuals (texts) if we're in the lobby
execute if score #gameState value matches 0 run function phan:game/0/summon_props