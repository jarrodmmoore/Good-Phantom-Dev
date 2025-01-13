#add whatever we wanted to add to the variable we specified
$scoreboard players set #test value $(add)
$scoreboard players operation #tvMenuState$(menu_state) value += #test value

#remember what the last operation we did was
scoreboard players operation #tvLastOperation value = #test value

#clamp
$execute if score #tvMenuState$(menu_state) value matches ..$(min) run scoreboard players set #tvMenuState$(menu_state) value $(min)
$execute if score #tvMenuState$(menu_state) value matches $(max).. run scoreboard players set #tvMenuState$(menu_state) value $(max)

#set cooldown
$scoreboard players set #tvCooldown value $(cooldown)

#sound effect (played from the tv)
execute if score #test value matches 1.. run playsound minecraft:custom_sfx/bit_dink master @a ~ ~ ~ 1 0.88
execute if score #test value matches ..0 run playsound minecraft:custom_sfx/bit_dink master @a ~ ~ ~ 1 0.88

#make the console power blink as a fun detail
setblock 245 -11 117 air