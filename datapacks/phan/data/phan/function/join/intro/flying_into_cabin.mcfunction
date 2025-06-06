#spawn an armor stand that will fly us into the cabin using /specate
execute if score @s introProgress matches 143 run summon armor_stand 108 37 184 {Tags:["lobbyProp","flyMovie","setMe"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute if score @s introProgress matches 143 run scoreboard players operation @e[tag=setMe] playerID = @s playerID
execute if score @s introProgress matches 143 run tag @e[tag=setMe] remove setMe

#tag our buddy
scoreboard players operation #checkID value = @s playerID
execute if score @s introProgress matches 143.. as @e[type=armor_stand,tag=flyMovie] if score @s playerID = #checkID value run tag @s add flyBuddy
execute if score @s introProgress matches 160.. run scoreboard players set @e[limit=1,type=armor_stand,tag=flyBuddy] lifespan 20

#start spectating armor stand at 160
execute if score @s introProgress matches 160 run gamemode spectator @s
execute if score @s joinCount matches ..1 if score @s introProgress matches 160.. run spectate @e[limit=1,type=armor_stand,tag=flyBuddy] @s
execute if score @s joinCount matches 2.. if score @s introProgress matches 160..180 run spectate @e[limit=1,type=armor_stand,tag=flyBuddy] @s
execute if score @s joinCount matches 2.. if score @s introProgress matches 180 run title @s actionbar ["",{keybind:"key.sneak"},{text:" "},{text:"--",color:"gray"},{text:" "},{translate:"gp.lobby.skip_intro",color:"gray"}]
execute if score @s joinCount matches 2.. if entity @s[gamemode=spectator] if score @s introProgress matches 180.. unless entity @e[limit=1,type=armor_stand,tag=flyBuddy,distance=..2] run function phan:join/intro/finished_flying_early

#armor stand movement path
execute if score @s introProgress matches 144..257 as @e[tag=flyBuddy,type=armor_stand] at @s facing 113 37 147 run tp @s ^1 ^ ^ ~-90 20
execute if score @s introProgress matches 258..338 as @e[tag=flyBuddy,type=armor_stand] at @s facing 191 1 118 run tp @s ^ ^ ^1 ~ ~3
execute if score @s introProgress matches 339..356 as @e[tag=flyBuddy,type=armor_stand] at @s run tp @s ^ ^ ^.8 ~-0.4 ~-3

#sound effects
#wind?
execute if score @s introProgress matches 161 run playsound minecraft:item.elytra.flying master @s ~ ~ ~ .3 .5
#flap wings
execute if score @s introProgress matches 170 run playsound minecraft:entity.phantom.flap master @s ~ ~ ~ 1.25 1.7
execute if score @s introProgress matches 185 run playsound minecraft:entity.phantom.flap master @s ~ ~ ~ 1.25 1.6
execute if score @s introProgress matches 201 run playsound minecraft:entity.phantom.flap master @s ~ ~ ~ 1.25 1.7
execute if score @s introProgress matches 217 run playsound minecraft:entity.phantom.flap master @s ~ ~ ~ 1.25 1.5
execute if score @s introProgress matches 230 run playsound minecraft:entity.phantom.flap master @s ~ ~ ~ 1.25 1.7
execute if score @s introProgress matches 257 run playsound minecraft:entity.phantom.swoop master @s ~ ~ ~ 1.25 1.2
#screech
execute if score @s introProgress matches 190 run playsound minecraft:entity.phantom.ambient master @s ~ ~ ~ 1.25 1.2
execute if score @s introProgress matches 240 run playsound minecraft:entity.phantom.ambient master @s ~ ~ ~ 1.25 1.2

#end
execute if score @s introProgress matches 357 run function phan:join/intro/finished_flying

#un-tag our buddy
tag @e[tag=flyBuddy] remove flyBuddy

#gameState isn't 0 anymore? interrupt the sequence and go right into spectator mode
execute if score #gameState value matches 1 run function phan:join/intro/mid_game_join_gameplay
execute if score #gameState value matches 2 run function phan:join/intro/mid_game_join_mode_select
execute if score #gameState value matches 3.. run function phan:join/intro/mid_game_join_gameplay