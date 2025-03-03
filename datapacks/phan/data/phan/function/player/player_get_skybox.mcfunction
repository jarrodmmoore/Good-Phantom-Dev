#sync value
scoreboard players operation @s skybox = @s skyboxSet
scoreboard players reset @s skyboxSet

#now get a skybox

#SKYBOX 1:
#DAY = Deep Dive (sky)
#NIGHT = Lobby / Phantom Forest
execute if score @s skybox matches ..1 run particle entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.0039215686274509803921568627451,0.0]} ~ -64 ~ 0 0 0 1 0 force @s
#^ these also make very good "default" skyboxes

#SKYBOX 2:
#DAY = Deep Dive (underwater)
#NIGHT = Neon Nightway
execute if score @s skybox matches 2 run particle entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.007843137254901960784314,0.0]} ~ -64 ~ 0 0 0 1 0 force @s

#SKYBOX 3:
#DAY = Pastel Palace
#NIGHT = Moonlit Mountains
execute if score @s skybox matches 3 run particle entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.01176470588235294117647,0.0]} ~ -64 ~ 0 0 0 1 0 force @s

#SKYBOX 4:
#DAY = Afterlife
#NIGHT = Lobby (unused)
execute if score @s skybox matches 4 run particle entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.01568627450980392156863,0.0]} ~ -64 ~ 0 0 0 1 0 force @s
