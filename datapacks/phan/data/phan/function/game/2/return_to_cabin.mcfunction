#multiple people online? say who did this
execute store result score #test value run execute if entity @a[tag=doneWithIntro]
execute if score #test value matches ..1 run tellraw @a[tag=doneWithIntro] ["",{translate:"gp.message.returned_to_cabin",color:"#964B33"}]
execute if score #test value matches 2.. run tellraw @a[tag=doneWithIntro] ["",{text:"(",color:"gray"},{selector:"@s",color:"gray"},{text:")",color:"gray"},{text:" "},{translate:"gp.message.returned_to_cabin",color:"#964B33"}]

#cancel noise
execute as @a[tag=doneWithIntro] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.ender_dragon.hurt",targets:"@s",pitch:".5"}

#go back to lobby
execute store result score #test2 value run execute if entity @a[tag=doneWithIntro]
execute if score #test2 value matches 5.. run scoreboard players set #lastLevelPlayed value 0
function phan:game/0/_0_init