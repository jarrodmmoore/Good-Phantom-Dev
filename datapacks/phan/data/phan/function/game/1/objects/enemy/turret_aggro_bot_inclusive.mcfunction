#find target
scoreboard players operation #findTarget value = @s targetID
execute as @e[tag=playing,distance=..38] if score @s playerID = #findTarget value run tag @s add turretTarget

#face target via /rotate
execute facing entity @e[limit=1,tag=turretTarget,distance=..38] feet rotated ~ 0 run rotate @s ~ ~

#make noise when we first notice player
execute if score @s editArg2 matches 0 run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 3.5 1.4

#shoot
scoreboard players add @s editArg2 1
execute if score @s editArg2 matches 14.. facing entity @e[limit=1,tag=turretTarget,distance=..38] eyes rotated ~ 0 run function phan:game/1/objects/enemy/turret_shoot

#cleanup
tag @e[tag=turretTarget,distance=..38] remove turretTarget

#there's currently no situation where bots and turrets will ever interact, but i figured it would be good to write this for parity with the other projectile-firing mobs
#and for anyone getting freaky with custom dreams... if that ever happens!