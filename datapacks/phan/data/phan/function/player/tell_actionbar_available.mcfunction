#useful when we tag both the player and all players spectating them for shared visuals / sound effects
tag @a[tag=tellMe] remove tellMe
tag @s add tellMe
execute as @a[tag=doneWithIntro] unless entity @s[tag=playing,tag=vsHomeStretch] unless entity @s[tag=playing,scores={compassShowTime=10..}] unless entity @s[tag=playing,tag=navCompass] run tag @s add tellMe