#sound
execute as @a[tag=doneWithIntro] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.portal.travel",targets:"@s",pitch:"1",volume:".3"}

#gamemode
execute if score #desiredGamemode value matches 1 run function phan:game/1/_1_init
execute if score #desiredGamemode value matches 2 run function phan:game/3/_3_init
execute if score #desiredGamemode value matches 3 run function phan:game/4/_4_init
execute unless score #desiredGamemode value matches 1..3 run function phan:game/0/_0_init