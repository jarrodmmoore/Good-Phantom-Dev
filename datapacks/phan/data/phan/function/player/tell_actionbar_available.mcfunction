#useful when we want to show something to players but only if their actionbar isn't being used by something else
#(this is only being used for Portal Race finishes at the moment)
tag @a[tag=tellMe] remove tellMe
tag @s add tellMe
execute as @a[tag=doneWithIntro] unless entity @s[tag=playing,tag=vsHomeStretch] unless entity @s[tag=playing,scores={compassShowTime=10..}] unless entity @s[tag=playing,tag=navCompass] run tag @s add tellMe