#d for default
scoreboard players set @s prevRandom 4

execute if score @s scoreShow > #scoreRankCT value run scoreboard players set @s prevRandom 3
execute if score @s scoreShow > #scoreRankBT value run scoreboard players set @s prevRandom 2
execute if score @s scoreShow > #scoreRankAT value run scoreboard players set @s prevRandom 1
execute if score @s scoreShow > #scoreRankST value run scoreboard players set @s prevRandom 0
execute run scoreboard players operation @s rankFinal = @s prevRandom

#feedback
execute if score @s prevRandom matches 1.. run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@a[tag=tellMe]",pitch:".7",volume:".95"}
execute if score @s prevRandom matches ..0 run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@a[tag=tellMe]",pitch:"1.3",volume:".9"}
execute if score @s prevRandom matches ..0 run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@a[tag=tellMe]",pitch:"1",volume:".9"}
execute if score @s prevRandom matches ..0 run function phan:common/playsound_positionless_macro {sound:"minecraft:ui.toast.challenge_complete",targets:"@a[tag=tellMe]",pitch:"1",volume:".95"}
function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.hat",targets:"@a[tag=tellMe]",pitch:"1.3",volume:"1"}

#mark level as complete (if we got at least 1 point)
execute if score @s scoreShow matches 1.. run function phan:levels/_index_record_completion

#player remembers best rank for this level
execute if score #assist_enabled_scoreattack value matches 0 run function phan:levels/_index_record_best_rank

#we did not fail
execute if score #multiplayer value matches 0 run scoreboard players remove @s[scores={fails=1..}] fails 1