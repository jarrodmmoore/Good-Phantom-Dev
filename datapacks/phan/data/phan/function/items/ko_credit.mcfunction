#give credit to whoever ko'd us
scoreboard players operation #attackerID value = @s attackerID
tag @s add ded_self
execute if score @s attackerID matches 1.. as @a[tag=doneWithIntro,tag=!ded_self] if score @s playerID = #attackerID value at @s run function phan:items/ko_get
tag @s remove ded_self

#reset our attackerID
scoreboard players set @s attackTime 0
scoreboard players reset @s attackerID