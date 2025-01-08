#cancel noise
execute as @a[tag=doneWithIntro] at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 100000 ~ 100000 0.5

#go back to lobby
function phan:game/0/_0_init