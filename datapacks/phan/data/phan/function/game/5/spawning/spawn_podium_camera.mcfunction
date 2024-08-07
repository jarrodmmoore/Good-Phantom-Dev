#spawn the armor stand which will hold players
summon armor_stand ~ ~.5 ~ {Tags:["checkValid","setMe","podiumPlayerCamera"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
tp @e[tag=setMe,type=armor_stand,distance=..2] ~ ~ ~ ~ ~

function phan:game/1/spawning/spawn__give_generic_data

tag @e[tag=setMe,type=armor_stand,distance=..2] remove setMe