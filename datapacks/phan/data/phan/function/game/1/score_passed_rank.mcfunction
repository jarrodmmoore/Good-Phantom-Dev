scoreboard players remove @s currentGrade 1
scoreboard players set @s hudFlashTime 40

#sound!
function phan:player/tell_spectators
execute if score @s currentGrade matches 4 as @a[tag=tellMe] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@s",pitch:".5",volume:"1"}
execute if score @s currentGrade matches 3 as @a[tag=tellMe] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@s",pitch:".7",volume:"1"}
execute if score @s currentGrade matches 2 as @a[tag=tellMe] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@s",pitch:".9",volume:"1"}
execute if score @s currentGrade matches 1 as @a[tag=tellMe] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@s",pitch:"1.1",volume:"1"}
execute if score @s currentGrade matches ..0 as @a[tag=tellMe] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@s",pitch:"1.3",volume:"1"}