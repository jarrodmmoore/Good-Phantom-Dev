#announce what we found
tellraw @a[tag=doneWithIntro] ["",{"text":" "}]
tellraw @a[tag=doneWithIntro] ["",{"translate":"gp.game.found_music_disc","bold":true}]
execute if entity @s[tag=discShimmer] run tellraw @a[tag=doneWithIntro] ["",{"text":"01 - Shimmer","color":"gold","italic":true}]
execute if entity @s[tag=discEcho] run tellraw @a[tag=doneWithIntro] ["",{"text":"02 - Echo Dance","color":"gold","italic":true}]
execute if entity @s[tag=discShadow] run tellraw @a[tag=doneWithIntro] ["",{"text":"03 - Shadow Puppets","color":"gold","italic":true}]
execute if entity @s[tag=discPurple] run tellraw @a[tag=doneWithIntro] ["",{"text":"04 - Purple Dreams","color":"gold","italic":true}]
execute if entity @s[tag=discSoap] run tellraw @a[tag=doneWithIntro] ["",{"text":"05 - Soap","color":"gold","italic":true}]
execute if entity @s[tag=discHeart] run tellraw @a[tag=doneWithIntro] ["",{"text":"06 - Heart Nebula","color":"gold","italic":true}]
execute if entity @s[tag=discWatching] run tellraw @a[tag=doneWithIntro] ["",{"text":"07 - Watching the Sun Fall with You","color":"gold","italic":true}]
execute if entity @s[tag=discPillars] run tellraw @a[tag=doneWithIntro] ["",{"text":"08 - Pillars (Instrumental)","color":"gold","italic":true}]
execute if entity @s[tag=discMitosis] run tellraw @a[tag=doneWithIntro] ["",{"text":"09 - Mitosis","color":"gold","italic":true}]
execute if entity @s[tag=discStranded] run tellraw @a[tag=doneWithIntro] ["",{"text":"10 - Stranded (Instrumental)","color":"gold","italic":true}]
execute if entity @s[tag=discShine] run tellraw @a[tag=doneWithIntro] ["",{"text":"11 - Shine","color":"gold","italic":true}]
execute if entity @s[tag=discWhimsy] run tellraw @a[tag=doneWithIntro] ["",{"text":"12 - Whimsy Forest (Instrumental)","color":"gold","italic":true}]
tellraw @a[tag=doneWithIntro] ["",{"text":" "}]

#noise
execute as @a[tag=doneWithIntro] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ 100000 ~ 100000 2