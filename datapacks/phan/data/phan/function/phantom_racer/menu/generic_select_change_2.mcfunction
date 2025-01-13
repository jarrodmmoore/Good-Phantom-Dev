#add whatever we wanted to add to the variable we specified
$scoreboard players set #test value $(add)
$scoreboard players operation #tvMenuState$(menu_state) value += #test value

#forget what the last horizontal operation we did was
scoreboard players set #tvLastOperation value 0

#apply modulus
$scoreboard players set #mod value $(mod)
$scoreboard players operation #tvMenuState$(menu_state) value %= #mod value

#set cooldown
$scoreboard players set #tvCooldown value $(cooldown)

#sound effect (played from the tv)
execute if score #test value matches 1.. run playsound minecraft:custom_sfx/bit_dink master @a ~ ~ ~ 1 0.88
execute if score #test value matches ..0 run playsound minecraft:custom_sfx/bit_dink master @a ~ ~ ~ 1 0.88

#make the console power blink as a fun detail
setblock 245 -11 117 air