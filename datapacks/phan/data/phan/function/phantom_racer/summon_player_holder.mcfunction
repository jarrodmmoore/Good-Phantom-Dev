#clear old holder if it exists
kill @e[type=armor_stand,tag=gameControllerPlayerHolder]

#summon it
execute positioned 239 -9 118 run summon armor_stand ~ ~-0.4 ~ {Tags:["lobbyProp","gameControllerPlayerHolder"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Rotation:[270.0f,0.0f]}