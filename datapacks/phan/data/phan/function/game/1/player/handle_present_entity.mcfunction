#set brightness of present based on how much time is left on it
#(really neat effect!)
execute if score #percent value matches 94.. run data merge entity @s {brightness:{sky:0,block:15}}
execute if score #percent value matches 87..93 run data merge entity @s {brightness:{sky:0,block:14}}
execute if score #percent value matches 80..86 run data merge entity @s {brightness:{sky:0,block:13}}
execute if score #percent value matches 73..79 run data merge entity @s {brightness:{sky:0,block:12}}
execute if score #percent value matches 66..72 run data merge entity @s {brightness:{sky:0,block:11}}
execute if score #percent value matches 59..65 run data merge entity @s {brightness:{sky:0,block:10}}
execute if score #percent value matches 52..58 run data merge entity @s {brightness:{sky:0,block:9}}
execute if score #percent value matches 45..51 run data merge entity @s {brightness:{sky:0,block:8}}
execute if score #percent value matches 38..44 run data merge entity @s {brightness:{sky:0,block:7}}
execute if score #percent value matches 31..37 run data merge entity @s {brightness:{sky:0,block:6}}
execute if score #percent value matches 24..30 run data merge entity @s {brightness:{sky:0,block:5}}
execute if score #percent value matches 17..23 run data merge entity @s {brightness:{sky:0,block:4}}
execute if score #percent value matches 10..16 run data merge entity @s {brightness:{sky:0,block:3}}
execute if score #percent value matches 3..9 run data merge entity @s {brightness:{sky:0,block:2}}
execute if score #percent value matches ..2 run data merge entity @s {brightness:{sky:0,block:1}}

#stay alive
scoreboard players set @s lifespan 20