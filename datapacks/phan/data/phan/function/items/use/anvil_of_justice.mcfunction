clear @s anvil[custom_data~{anvilOfJustice:1b}] 1

#get ready to squish someun
tag @s add dontgethit
scoreboard players operation #attackerID value = @s playerID
scoreboard players set #success value 0
#versus race
execute if score #gameState value matches 4 run function phan:items/use/anvil_of_justice_versus
#not versus
execute unless score #gameState value matches 4 run function phan:items/use/anvil_of_justice_not_versus
#no success? try on more time as a fail safe
execute if score #success value matches 0 as @a[tag=playing,gamemode=adventure,tag=!dontgethit,limit=1,sort=random] at @s run function phan:items/anvil_spawn_on_player
#no target found? hit self (LOL)
execute if score #success value matches 0 at @s run function phan:items/anvil_spawn_on_player

#play sound
playsound minecraft:entity.evoker.cast_spell master @s ~ 100000 ~ 100000 1

#tell us who we hit
execute if entity @a[tag=anvilWillHit] run tellraw @s ["",{"text":"\n"},{"translate":"gp.item.justice_is_served","bold":true},{"text":"\n"},{"translate":"gp.item.justice_target","bold":false,"with":[{"selector":"@a[tag=anvilWillHit]","bold":false}]},{"text":"\n "}]

#tag cleanup
tag @s remove dontgethit
tag @a[tag=anvilWillHit] remove anvilWillHit

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 10