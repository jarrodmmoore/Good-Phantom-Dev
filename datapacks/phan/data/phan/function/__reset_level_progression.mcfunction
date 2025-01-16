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

scoreboard players set #d6a1Unlocked value 0
scoreboard players set #d6a2Unlocked value 0
scoreboard players set #d6a3Unlocked value 0

scoreboard players set #d6a1Unlocked value 0
scoreboard players set #d6a2Unlocked value 0
scoreboard players set #d6a3Unlocked value 0

scoreboard players set #d7a1Unlocked value 0
scoreboard players set #d7a2Unlocked value 0
scoreboard players set #d7a3Unlocked value 0

scoreboard players set #d8a1Unlocked value 0
scoreboard players set #d8a2Unlocked value 0
scoreboard players set #d8a3Unlocked value 0

scoreboard players set #d9a1Unlocked value 0
scoreboard players set #d9a2Unlocked value 0
scoreboard players set #d9a3Unlocked value 0

scoreboard players set #d10a1Unlocked value 0
scoreboard players set #d10a2Unlocked value 0
scoreboard players set #d10a3Unlocked value 0
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
scoreboard players set #dreamCOpened value 0
scoreboard players set #dreamPOpened value 0
#spawn point in cabin...
scoreboard players set #lastLevelPlayed value 0
#unlocks
scoreboard players set #timeAttackUnlocked value 0
scoreboard players set #unlockedNightmare value 0
scoreboard players set #unlockedUltranightmare value 0
scoreboard players set #unlockedCupDiamond value 0
scoreboard players set #unlockedCupRandom value 0
#completed cups
scoreboard players set #cup1Completed value 0
scoreboard players set #cup2Completed value 0
scoreboard players set #cup3Completed value 0
scoreboard players set #cup4Completed value 0
#guide players with stardust trails in the cabin
scoreboard players set #lobbyTrailGuide value 1

#phantom racer: unlock the first cup's levels for free so players have at least a few levels open in Free Play
scoreboard players set #d6a1Unlocked value 1
scoreboard players set #d1a1Unlocked value 1
scoreboard players set #d4a1Unlocked value 1
scoreboard players set #d2a1Unlocked value 1
#scoreboard players set #d5a2Unlocked value 1

#update visuals (texts) if we're in the lobby
execute if score #gameState value matches 0 run function phan:game/0/summon_props

#clear all keys
clear @a[gamemode=adventure]