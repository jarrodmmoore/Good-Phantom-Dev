#fun sound for player
execute if entity @s[type=player] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@s",pitch:"1",volume:"1"}

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
scoreboard players set #d5a4Unlocked value 1

scoreboard players set #d6a1Unlocked value 1
scoreboard players set #d6a2Unlocked value 1
scoreboard players set #d6a3Unlocked value 1
scoreboard players set #d6a4Unlocked value 1

scoreboard players set #d7a1Unlocked value 1
scoreboard players set #d7a2Unlocked value 1
scoreboard players set #d7a3Unlocked value 1

scoreboard players set #d8a1Unlocked value 1
scoreboard players set #d8a2Unlocked value 1
scoreboard players set #d8a3Unlocked value 1

scoreboard players set #d9a1Unlocked value 1
scoreboard players set #d9a2Unlocked value 1
scoreboard players set #d9a3Unlocked value 1

scoreboard players set #d10a1Unlocked value 1
scoreboard players set #d10a2Unlocked value 1
scoreboard players set #d10a3Unlocked value 1
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
scoreboard players set #unlockedNightmare value 1
#scoreboard players set #unlockedUltranightmare value 1
#^ i've decided that the admin menu shouldn't unlock this. this is only for the most insane and dedicated players who beat all cups on nightmare >:)
scoreboard players set #unlockedCupDiamond value 1
scoreboard players set #unlockedCupRandom value 1
scoreboard players set #unlockedBonusRooms value 1

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
scoreboard players set #disc_found_13 value 1

#update visuals (texts) if we're in the lobby
execute if score #gameState value matches 0 run function phan:game/0/summon_props