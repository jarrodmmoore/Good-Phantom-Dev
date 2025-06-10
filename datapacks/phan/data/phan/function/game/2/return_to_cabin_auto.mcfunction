#cancel noise
execute as @a[tag=doneWithIntro] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.ender_dragon.hurt",targets:"@s",pitch:".5"}

#go back to lobby
function phan:game/0/_0_init