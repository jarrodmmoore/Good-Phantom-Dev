#consume energy
scoreboard players remove @s energy 2

#feedback
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 1.8

#cooldown / input management
scoreboard players set @s inputCooldownC 15
scoreboard players set @s[scores={inputCooldown=..1}] inputCooldown 2
scoreboard players set @s[scores={inputCooldownD=..1}] inputCooldownD 2
scoreboard players set @s botHoldingItem 0

#minimum time before we're allowed to think about other items
execute if entity @s[scores={botSkill=..2,botItemThinkTime=..14}] run scoreboard players set @s botItemThinkTime 15
execute if entity @s[scores={botSkill=3,botItemThinkTime=..10}] run scoreboard players set @s botItemThinkTime 11
execute if entity @s[scores={botSkill=4,botItemThinkTime=..6}] run scoreboard players set @s botItemThinkTime 7
execute if entity @s[scores={botSkill=5..,botItemThinkTime=..1}] run scoreboard players set @s botItemThinkTime 2

#face the direction we're shooting in for a second
scoreboard players set #setTime value 10
function phan:bots/movement/face_direction_temporarily

#=====

#summon the projectile and send it on its way
summon armor_stand ~ ~ ~ {Tags:["setLife","projectile","projectileHeavy"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:light_blue_dye",count:1,components:{"minecraft:custom_model_data":1111112}}]}
scoreboard players operation @e[tag=setLife,type=armor_stand,distance=..2] playerID = @s playerID
tp @e[tag=setLife,type=armor_stand,distance=..2] ~ ~ ~ ~ ~
scoreboard players set @e[tag=setLife] lifespan 200
tag @e[tag=setLife,type=armor_stand,distance=..2] remove setLife