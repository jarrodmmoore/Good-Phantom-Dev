#summon aec
summon area_effect_cloud ~ ~ ~ {Tags:["podiumData","setMe"],Duration:400}

#name is our name
tag @s add self
data modify storage phan:podium_sequence playername set value '{"selector":"@a[limit=1,tag=self]","color":"aqua"}'
data modify block 214 -16 130 front_text.messages[0] set value '{"nbt":"playername","storage":"phan:podium_sequence","interpret":true}'
data modify entity @e[tag=setMe,type=area_effect_cloud,distance=..1,limit=1] CustomName set from block 214 -16 130 front_text.messages[0]
tag @s remove self

#we are human (1 = human)
scoreboard players set @e[tag=setMe,type=area_effect_cloud,distance=..1] editArg2 1