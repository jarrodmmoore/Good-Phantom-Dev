#failure sound
execute at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.bass",targets:"@s",pitch:"1.8"}
scoreboard players set @s inputCooldownC 7