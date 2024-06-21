scoreboard players operation #random value = @e[limit=1,sort=random,type=armor_stand,tag=randomize,scores={r=1..6}] r
scoreboard players operation #random2 value = @e[limit=1,sort=random,type=armor_stand,tag=randomize,scores={r=1..7}] r

execute if score #random2 value matches 1 positioned ~.2 ~ ~.2 run summon armor_stand ~ ~ ~ {CustomName:'["",{"text":"z"}]',CustomNameVisible:1b,Tags:["lobbyProp","floatUp","setLife"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959}
execute if score #random2 value matches 2 positioned ~.2 ~ ~-.2 run summon armor_stand ~ ~ ~ {CustomName:'["",{"text":"z"}]',CustomNameVisible:1b,Tags:["lobbyProp","floatUp","setLife"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959}
execute if score #random2 value matches 3 positioned ~-.2 ~ ~-.2 run summon armor_stand ~ ~ ~ {CustomName:'["",{"text":"z"}]',CustomNameVisible:1b,Tags:["lobbyProp","floatUp","setLife"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959}
execute if score #random2 value matches 4 positioned ~-.2 ~ ~.2 run summon armor_stand ~ ~ ~ {CustomName:'["",{"text":"z"}]',CustomNameVisible:1b,Tags:["lobbyProp","floatUp","setLife"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959}
execute if score #random2 value matches 5..6 positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {CustomName:'["",{"text":"z"}]',CustomNameVisible:1b,Tags:["lobbyProp","floatUp","setLife"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959}

scoreboard players set @e[tag=setLife] lifespan 20
tag @e[tag=setLife] remove setLife

#do it again in a random amount of time (slower if the sleeping player is unhappy)
execute if entity @s[tag=happySleep] run scoreboard players operation #random value *= #10 value
execute if entity @s[tag=!happySleep] run scoreboard players operation #random value *= #20 value
scoreboard players operation @s editArg1 += #random value