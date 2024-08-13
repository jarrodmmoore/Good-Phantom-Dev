#use damage command if we have real HP
execute if entity @s[tag=!artificialHP] if score #projDamage value matches 1 run damage @s 10 generic at ~ ~ ~
execute if entity @s[tag=!artificialHP] if score #projDamage value matches 2 run damage @s 20 generic at ~ ~ ~
execute if entity @s[tag=!artificialHP] if score #projDamage value matches 3 run damage @s 30 generic at ~ ~ ~
execute if entity @s[tag=!artificialHP] if score #projDamage value matches 4 run damage @s 40 generic at ~ ~ ~
execute if entity @s[tag=!artificialHP] if score #projDamage value matches 5 run damage @s 50 generic at ~ ~ ~
execute if entity @s[tag=!artificialHP] if score #projDamage value matches 6.. run damage @s 60 generic at ~ ~ ~
#need to use "generic" damage type because it ignores armor.
#we also made this damage type bypass damage cooldown.
#   hopefully this doesn't cause any japes later on!
#   i have no idea where else "generic" damage is used in Minecraft i'm just crossing my fingers and hoping player doesn't encounter it

#reduce score if we have artificial HP
execute if entity @s[tag=artificialHP] if score #projDamage value matches 1 run scoreboard players remove @s enemyHP 10
execute if entity @s[tag=artificialHP] if score #projDamage value matches 2 run scoreboard players remove @s enemyHP 20
execute if entity @s[tag=artificialHP] if score #projDamage value matches 3 run scoreboard players remove @s enemyHP 30
execute if entity @s[tag=artificialHP] if score #projDamage value matches 4 run scoreboard players remove @s enemyHP 40
execute if entity @s[tag=artificialHP] if score #projDamage value matches 5 run scoreboard players remove @s enemyHP 50
execute if entity @s[tag=artificialHP] if score #projDamage value matches 6.. run scoreboard players remove @s enemyHP 60

#attacker is attacker
scoreboard players operation @s attackerID = #projID value

#remember the last two projectiles that hit us. we won't take damage from them again.
scoreboard players add @s hitByProjectileH 1
execute if score @s hitByProjectileH matches 3.. run scoreboard players set @s hitByProjectileH 1
execute if score @s hitByProjectileH matches ..1 run scoreboard players operation @s hitByProjectile1 = #projUID value
execute if score @s hitByProjectileH matches 2.. run scoreboard players operation @s hitByProjectile2 = #projUID value
#yes, this implies that you can deal damage 20x per second to an enemy if you get 3 projectiles in their hitbox the same time.
#(but, i mean, you'd die too if you got shot with 3 bullets at once)
#anyways, i don't think this scenario is plausible enough to worry about

#is this needed anymore? probably not. projectile ID system was a better solution
scoreboard players set @s hitstun 5

#feedback for certain enemies
execute at @s run function phan:game/1/objects/enemy/take_damage_feedback