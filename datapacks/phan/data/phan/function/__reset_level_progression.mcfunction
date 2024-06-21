#erase progress
scoreboard players set #dreamsCompleted value 0
scoreboard players set #dream1Completed value 0
scoreboard players set #dream2Completed value 0
scoreboard players set #dream3Completed value 0
scoreboard players set #dream4Completed value 0
scoreboard players set #dream5Completed value 0
#acts unlocked
scoreboard players set #d1a1Unlocked value 0
scoreboard players set #d1a2Unlocked value 0
scoreboard players set #d1a3Unlocked value 0

scoreboard players set #d2a1Unlocked value 0
scoreboard players set #d2a2Unlocked value 0
scoreboard players set #d2a3Unlocked value 0

scoreboard players set #d3a1Unlocked value 0
scoreboard players set #d3a2Unlocked value 0
scoreboard players set #d3a3Unlocked value 0

scoreboard players set #d4a1Unlocked value 0
scoreboard players set #d4a2Unlocked value 0
scoreboard players set #d4a3Unlocked value 0

scoreboard players set #d5a1Unlocked value 0
scoreboard players set #d5a2Unlocked value 0
scoreboard players set #d5a3Unlocked value 0
#dreams discovered
scoreboard players set #dream1Discovered value 0
scoreboard players set #dream2Discovered value 0
scoreboard players set #dream3Discovered value 0
scoreboard players set #dream4Discovered value 0
scoreboard players set #dream5Discovered value 0
#opened doors
scoreboard players set #dream2Opened value 0
scoreboard players set #dream3OpenedA value 0
scoreboard players set #dream3OpenedB value 0
scoreboard players set #dream4Opened value 0
scoreboard players set #dream5Opened value 0
#spawn point in cabin...
scoreboard players set #lastLevelPlayed value 0
#unlocks
scoreboard players set #timeAttackUnlocked value 0
#guide players with stardust trails in the cabin
scoreboard players set #lobbyTrailGuide value 1

#update visuals (texts) if we're in the lobby
execute if score #gameState value matches 0 run function phan:game/0/summon_props