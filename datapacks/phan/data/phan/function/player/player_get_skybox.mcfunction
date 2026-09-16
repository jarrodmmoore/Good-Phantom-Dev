#sync value
scoreboard players operation @s skybox = @s skyboxSet


#now get a skybox

posteffect clear @s

#SKYBOX 1:
#Lobby / Phantom Forest
execute if score @s skyboxSet matches 1 run posteffect add @s minecraft:skybox1
#particle entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.01568627450980392156863,0.0]} ~ ~ ~ 0 0 0 1 0 force @s
#^ this also makes a good "default" skyboxes

#SKYBOX 2:
#Deep Dive (sky)
execute if score @s skyboxSet matches 2 run posteffect add @s minecraft:skybox2
#particle entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.0039215686274509803921568627451,0.0]} ~ ~ ~ 0 0 0 1 0 force @s

#SKYBOX 3:
#Pastel Palace
execute if score @s skyboxSet matches 3 run posteffect add @s minecraft:skybox3
#particle entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.01176470588235294117647,0.0]} ~ ~ ~ 0 0 0 1 0 force @s

#SKYBOX 4:
#Moonlit Mountains
execute if score @s skyboxSet matches 4 run posteffect add @s minecraft:skybox4
#particle entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.0235294118,0.0]} ~ ~ ~ 0 0 0 1 0 force @s

#SKYBOX 5:
#Neon Nightway
execute if score @s skyboxSet matches 5 run posteffect add @s minecraft:skybox5
#particle entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.0196078431,0.0]} ~ ~ ~ 0 0 0 1 0 force @s

#SKYBOX 6:
#Deep Dive (underwater)
execute if score @s skyboxSet matches 6 run posteffect add @s minecraft:skybox6
#particle entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.007843137254901960784314,0.0]} ~ ~ ~ 0 0 0 1 0 force @s

#SKYBOX 7:
#Afterlife (unfinished level. boo!)
execute if score @s skyboxSet matches 7 run posteffect add @s minecraft:skybox7

#SKYBOX 8:
#unused
execute if score @s skyboxSet matches 8 run posteffect add @s minecraft:skybox8
