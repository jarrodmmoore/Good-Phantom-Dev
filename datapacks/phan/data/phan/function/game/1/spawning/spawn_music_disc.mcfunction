#spawn the disc (which is an item display)
#we're piggybacking on the code we already wrote for the Ever Eye pickup. Just replacing the display item and adding some tags.

#1=shimmer (mellohi)
execute if score @s editArg1 matches 1 run summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","hiddenMusicDisc","discShimmer","groupB"],billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:music_disc_mellohi",count:1b}}
#2=echo dance (strad)
execute if score @s editArg1 matches 2 run summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","hiddenMusicDisc","discEcho","groupB"],billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:music_disc_strad",count:1b}}
#3=shadow puppets (stal)
execute if score @s editArg1 matches 3 run summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","hiddenMusicDisc","discShadow","groupB"],billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:music_disc_stal",count:1b}}
#4=purple dreams (mall)
execute if score @s editArg1 matches 4 run summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","hiddenMusicDisc","discPurple","groupB"],billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:music_disc_mall",count:1b}}
#5=soap (far)
execute if score @s editArg1 matches 5 run summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","hiddenMusicDisc","discSoap","groupB"],billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:music_disc_far",count:1b}}
#6=heart nebula (blocks)
execute if score @s editArg1 matches 6 run summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","hiddenMusicDisc","discHeart","groupB"],billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:music_disc_blocks",count:1b}}
#7=watching the sun (pigstep)
execute if score @s editArg1 matches 7 run summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","hiddenMusicDisc","discWatching","groupB"],billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:music_disc_pigstep",count:1b}}
#8=pillars (wait)
execute if score @s editArg1 matches 8 run summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","hiddenMusicDisc","discPillars","groupB"],billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:music_disc_wait",count:1b}}
#9=mitosis (otherside)
execute if score @s editArg1 matches 9 run summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","hiddenMusicDisc","discMitosis","groupB"],billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:music_disc_otherside",count:1b}}
#10=stranded (13)
execute if score @s editArg1 matches 10 run summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","hiddenMusicDisc","discStranded","groupB"],billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:music_disc_13",count:1b}}
#11=shine (cat)
execute if score @s editArg1 matches 11 run summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","hiddenMusicDisc","discShine","groupB"],billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:music_disc_cat",count:1b}}
#12=whimsy forest (ward)
execute if score @s editArg1 matches 12 run summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","enderEye","hiddenMusicDisc","discWhimsy","groupB"],billboard:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:music_disc_ward",count:1b}}

function phan:game/1/spawning/spawn__give_generic_data

#50% chance we start the bobbing animation going down instead of up
execute store result score #random value run random value 1..2
execute if score #random value matches 1 run tag @e[tag=setMe] add goUp

tag @e[tag=setMe] remove setMe