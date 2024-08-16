#d for default
scoreboard players set @s prevRandom 4

execute if score @s scoreShow > #scoreRankCT value run scoreboard players set @s prevRandom 3
execute if score @s scoreShow > #scoreRankBT value run scoreboard players set @s prevRandom 2
execute if score @s scoreShow > #scoreRankAT value run scoreboard players set @s prevRandom 1
execute if score @s scoreShow > #scoreRankST value run scoreboard players set @s prevRandom 0
execute run scoreboard players operation @s rankFinal = @s prevRandom

#feedback
execute if score @s prevRandom matches 1.. run playsound minecraft:entity.player.levelup master @a[tag=tellMe] ~ 100000 ~ 100000 0.7
execute if score @s prevRandom matches ..0 run playsound minecraft:entity.player.levelup master @a[tag=tellMe] ~ 100000 ~ 100000 1.3
execute if score @s prevRandom matches ..0 run playsound minecraft:entity.player.levelup master @a[tag=tellMe] ~ 100000 ~ 100000 1
execute if score @s prevRandom matches ..0 run playsound minecraft:ui.toast.challenge_complete master @a[tag=tellMe] ~ 100000 ~ 100000 1
playsound minecraft:block.note_block.hat master @a[tag=tellMe] ~ 100000 ~ 100000 1.3

#mark level as complete (if we got at least 1 point)
execute if score @s scoreShow matches 1.. run function phan:levels/_index_record_completion

#player remembers best rank for this level
execute if score #assist_enabled_scoreattack value matches 0 run function phan:levels/_index_record_best_rank

#we did not fail
execute if score #multiplayer value matches 0 run scoreboard players remove @s[scores={fails=1..}] fails 1