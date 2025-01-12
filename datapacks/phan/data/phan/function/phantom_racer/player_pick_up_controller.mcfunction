#set state
scoreboard players set #tvControlState value 1

#player sits on the couch
gamemode adventure @s
scoreboard players set @s actionbarDelay 60
execute at @s run rotate @s 270 10
ride @s mount @e[limit=1,distance=..10,type=armor_stand,tag=gameControllerPlayerHolder]
execute at @s run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 1.5 0.9

#no inputs for a second
execute if score #tvCooldown value matches ..0 run scoreboard players add #tvCooldown value 10

#kill controller
scoreboard players set @e[type=item,distance=..1,tag=gameController] lifespan 0

#summon a fake controller so it looks like we're holding it
execute positioned 239 -8 118 positioned ~.75 ~.75 ~ run summon item_display ~ ~ ~ {Tags:["lobbyProp","gameControllerVisual"],item_display:"head",item:{id:"stone",components:{"item_model":"gp/object/console_controller"}},Rotation:[270.0f,-45.0f]}