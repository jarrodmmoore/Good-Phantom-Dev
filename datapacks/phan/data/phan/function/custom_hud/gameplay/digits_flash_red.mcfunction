scoreboard players add #timeRemSec value 10
scoreboard players add #timeRem10 value 10

#also play sound for spectators
function phan:player/tell_spectators

#sound effect
execute if score @s timerAdd matches 0 if score @s pSubGameState matches 1 if score #timeRemMsec value matches 19 if score #timeRemaining value matches 1.. as @a[tag=tellMe] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.hat",targets:"@s",pitch:"1.65"}
execute if score @s timerAdd matches 0 if score @s pSubGameState matches 1 if score #timeRemMsec value matches 19 if score #timeRemaining value matches 1..130 as @a[tag=tellMe] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.breath",targets:"@s",pitch:"1.2"}
tag @a[tag=tellMe] remove tellMe