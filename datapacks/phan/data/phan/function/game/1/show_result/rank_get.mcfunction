#multiplayer quirk: we don't increment the player's "pCurrentArea" score until later
#so that means we need to temporarily shift it up for this function
execute if score #multiplayer value matches 1 run scoreboard players add @s pCurrentArea 1

#d for default
scoreboard players set @s prevRandom 4

#figure out what rank we got, then record it
execute if score @s pCurrentArea matches 2 if score @s scoreShow > #scoreRankC1 value run scoreboard players set @s prevRandom 3
execute if score @s pCurrentArea matches 2 if score @s scoreShow > #scoreRankB1 value run scoreboard players set @s prevRandom 2
execute if score @s pCurrentArea matches 2 if score @s scoreShow > #scoreRankA1 value run scoreboard players set @s prevRandom 1
execute if score @s pCurrentArea matches 2 if score @s scoreShow > #scoreRankS1 value run scoreboard players set @s prevRandom 0
execute if score @s pCurrentArea matches 2 run scoreboard players operation @s rankArea1 = @s prevRandom

execute if score @s pCurrentArea matches 3 if score @s scoreShow > #scoreRankC2 value run scoreboard players set @s prevRandom 3
execute if score @s pCurrentArea matches 3 if score @s scoreShow > #scoreRankB2 value run scoreboard players set @s prevRandom 2
execute if score @s pCurrentArea matches 3 if score @s scoreShow > #scoreRankA2 value run scoreboard players set @s prevRandom 1
execute if score @s pCurrentArea matches 3 if score @s scoreShow > #scoreRankS2 value run scoreboard players set @s prevRandom 0
execute if score @s pCurrentArea matches 3 run scoreboard players operation @s rankArea2 = @s prevRandom

execute if score @s pCurrentArea matches 4 if score @s scoreShow > #scoreRankC3 value run scoreboard players set @s prevRandom 3
execute if score @s pCurrentArea matches 4 if score @s scoreShow > #scoreRankB3 value run scoreboard players set @s prevRandom 2
execute if score @s pCurrentArea matches 4 if score @s scoreShow > #scoreRankA3 value run scoreboard players set @s prevRandom 1
execute if score @s pCurrentArea matches 4 if score @s scoreShow > #scoreRankS3 value run scoreboard players set @s prevRandom 0
execute if score @s pCurrentArea matches 4 run scoreboard players operation @s rankArea3 = @s prevRandom

#shift back down
execute if score #multiplayer value matches 1 run scoreboard players remove @s pCurrentArea 1

#feedback noise
execute if score @s prevRandom matches 1.. run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@a[tag=tellMe]",pitch:".7",volume:".95"}
execute if score @s prevRandom matches ..0 run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@a[tag=tellMe]",pitch:"1.3",volume:".9"}
execute if score @s prevRandom matches ..0 run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@a[tag=tellMe]",pitch:"1",volume:".9"}
function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.hat",targets:"@a[tag=tellMe]",pitch:"1.3",volume:"1"}

#decrement fail counter in multiplayer
execute if score #multiplayer value matches 1 run scoreboard players remove @s[scores={fails=1..}] fails 1