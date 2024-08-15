#effects
execute if score @s moveVelocity matches ..199 run particle sweep_attack ^ ^-.5 ^1.5 0 0 0 0 1 force @a
execute if score @s moveVelocity matches 200.. run particle sweep_attack ^ ^-.5 ^2 0 0 0 0 1 force @a
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.8
playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.8

#summon super-bite projectile


#do damage
#(fun fact: the player's bite is actually a projectile attack)
tag @s add attacker
scoreboard players operation #projID value = @s playerID
scoreboard players operation #projUID value = @s projectileID
scoreboard players set #projDamage value 6
execute positioned ^ ^ ^2 positioned ~ ~-2 ~ run tag @e[tag=shootable,distance=..2] add biteHit
execute positioned ^ ^ ^2 positioned ~ ~-1 ~ run tag @e[tag=shootable,distance=..2] add biteHit
execute positioned ^ ^ ^2 positioned ~ ~ ~ run tag @e[tag=shootable,distance=..2] add biteHit
execute positioned ~ ~ ~ run tag @e[tag=shootable,distance=..1] add biteHit
execute positioned ~ ~1 ~ run tag @e[tag=shootable,distance=..1] add biteHit
execute as @e[tag=biteHit,distance=..5] run function phan:game/1/projectile/get_hit_index
tag @e[tag=biteHit,distance=..5] remove biteHit
tag @s remove attacker

#versus mode: do damage
execute if score #gameState value matches 4 run function phan:game/4/projectile/detect_player_bite
execute if score #gameState value matches 4 if score #botsEnabled value matches 1.. run function phan:game/4/projectile/detect_player_bite_bot

#make a projectile to do additional bites

#figure out where to spawn the projectile so it appears to come out of our eyes
function phan:game/1/player/item/determine_projectile_spawn_location

#summon based on the position we picked
execute if score #test value matches 0 run summon armor_stand ~ ~ ~ {Tags:["setLife","projectile","projectileStrongBite","strongerProjectile"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{}]}
execute if score #test value matches 1 run summon armor_stand ~ ~-1.1 ~ {Tags:["setLife","projectile","projectileStrongBite","strongerProjectile"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{}]}
scoreboard players operation @e[tag=setLife,type=armor_stand,distance=..4] playerID = @s playerID
execute if score #test value matches 0 at @s run tp @e[tag=setLife,type=armor_stand,distance=..4] ~ ~ ~ ~ ~
execute if score #test value matches 1 at @s positioned ~ ~-1.1 ~ run tp @e[tag=setLife,type=armor_stand,distance=..4] ~ ~ ~ ~ ~
scoreboard players set @e[tag=setLife,type=armor_stand,distance=..4] lifespan 120
tag @e[tag=setLife,type=armor_stand,distance=..4] remove setLife


#asdf
scoreboard players set @s inputCooldownA 15
scoreboard players set @s bufferInput1 0
scoreboard players reset @s carrotInput