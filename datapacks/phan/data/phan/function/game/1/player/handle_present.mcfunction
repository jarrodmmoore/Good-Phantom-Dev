#another hilariously over-engineered display function. love to see it

#we show the title display to anyone spectating us
function phan:player/tell_spectators

#count down time
scoreboard players remove @s presentTime 1

#calculate % of time remaining for the meter thingy
scoreboard players operation #percent value = @s presentTime
scoreboard players operation #percent value *= #100 value
scoreboard players operation #percent value /= @s presentTimeMax

#goal display digits
scoreboard players operation #presentGoalA value = @s presentGoal
scoreboard players operation #presentGoalA value /= #10 value
scoreboard players operation #presentGoalB value = @s presentGoal
scoreboard players operation #presentGoalB value %= #10 value
execute if score @s presentGoal matches ..-1 run scoreboard players set #presentGoalA value 0
execute if score @s presentGoal matches ..-1 run scoreboard players set #presentGoalB value 0

#store chest display
#normal
execute if entity @s[scores={presentTime=1..,presentGoal=1..}] run data modify storage phan:data display.present.chest set value [{text:"\uE821"}]
#chest opened successfully
execute if entity @s[scores={presentGoal=..0}] run data modify storage phan:data display.present.chest set value [{text:"\uE822"}]
#time's up, failed to open
execute if score #5Hz value matches ..1 if entity @s[scores={presentTime=..0,presentGoal=1..}] run data modify storage phan:data display.present.chest set value [{text:"\uE823"}]
execute if score #5Hz value matches 2.. if entity @s[scores={presentTime=..0,presentGoal=1..}] run data modify storage phan:data display.present.chest set value [{text:"\uF021"}]

#store digits A
execute if score #presentGoalA value matches 0 if score @s presentGoal matches ..9 run data modify storage phan:data display.present.a set value [{text:"\uF020"}]
execute if score #presentGoalA value matches 0 if score @s presentGoal matches 10.. run data modify storage phan:data display.present.a set value [{text:"\uE800"}]
execute if score #presentGoalA value matches 1 run data modify storage phan:data display.present.a set value [{text:"\uE801"}]
execute if score #presentGoalA value matches 2 run data modify storage phan:data display.present.a set value [{text:"\uE802"}]
execute if score #presentGoalA value matches 3 run data modify storage phan:data display.present.a set value [{text:"\uE803"}]
execute if score #presentGoalA value matches 4 run data modify storage phan:data display.present.a set value [{text:"\uE804"}]
execute if score #presentGoalA value matches 5 run data modify storage phan:data display.present.a set value [{text:"\uE805"}]
execute if score #presentGoalA value matches 6 run data modify storage phan:data display.present.a set value [{text:"\uE806"}]
execute if score #presentGoalA value matches 7 run data modify storage phan:data display.present.a set value [{text:"\uE807"}]
execute if score #presentGoalA value matches 8 run data modify storage phan:data display.present.a set value [{text:"\uE808"}]
execute if score #presentGoalA value matches 9.. run data modify storage phan:data display.present.a set value [{text:"\uE809"}]

#store digit B
execute if score #presentGoalB value matches -1 run data modify storage phan:data display.present.b set value [{text:"\uF020"}]
execute if score #presentGoalB value matches 0 run data modify storage phan:data display.present.b set value [{text:"\uE800"}]
execute if score #presentGoalB value matches 1 run data modify storage phan:data display.present.b set value [{text:"\uE801"}]
execute if score #presentGoalB value matches 2 run data modify storage phan:data display.present.b set value [{text:"\uE802"}]
execute if score #presentGoalB value matches 3 run data modify storage phan:data display.present.b set value [{text:"\uE803"}]
execute if score #presentGoalB value matches 4 run data modify storage phan:data display.present.b set value [{text:"\uE804"}]
execute if score #presentGoalB value matches 5 run data modify storage phan:data display.present.b set value [{text:"\uE805"}]
execute if score #presentGoalB value matches 6 run data modify storage phan:data display.present.b set value [{text:"\uE806"}]
execute if score #presentGoalB value matches 7 run data modify storage phan:data display.present.b set value [{text:"\uE807"}]
execute if score #presentGoalB value matches 8 run data modify storage phan:data display.present.b set value [{text:"\uE808"}]
execute if score #presentGoalB value matches 9.. run data modify storage phan:data display.present.b set value [{text:"\uE809"}]

#show on screen?
execute if score #percent value matches 90.. run title @a[tag=tellMe] subtitle ["",{text:"\uF005\uE820 "},{nbt:"display.present.chest",storage:"phan:data",interpret:true},{nbt:"display.present.a",storage:"phan:data",interpret:true},{nbt:"display.present.b",storage:"phan:data",interpret:true}]
execute if score #percent value matches 80..89 run title @a[tag=tellMe] subtitle ["",{text:"\uF005\uE819 "},{nbt:"display.present.chest",storage:"phan:data",interpret:true},{nbt:"display.present.a",storage:"phan:data",interpret:true},{nbt:"display.present.b",storage:"phan:data",interpret:true}]
execute if score #percent value matches 70..79 run title @a[tag=tellMe] subtitle ["",{text:"\uF005\uE818 "},{nbt:"display.present.chest",storage:"phan:data",interpret:true},{nbt:"display.present.a",storage:"phan:data",interpret:true},{nbt:"display.present.b",storage:"phan:data",interpret:true}]
execute if score #percent value matches 60..69 run title @a[tag=tellMe] subtitle ["",{text:"\uF005\uE817 "},{nbt:"display.present.chest",storage:"phan:data",interpret:true},{nbt:"display.present.a",storage:"phan:data",interpret:true},{nbt:"display.present.b",storage:"phan:data",interpret:true}]
execute if score #percent value matches 50..59 run title @a[tag=tellMe] subtitle ["",{text:"\uF005\uE816 "},{nbt:"display.present.chest",storage:"phan:data",interpret:true},{nbt:"display.present.a",storage:"phan:data",interpret:true},{nbt:"display.present.b",storage:"phan:data",interpret:true}]
execute if score #percent value matches 40..49 run title @a[tag=tellMe] subtitle ["",{text:"\uF005\uE815 "},{nbt:"display.present.chest",storage:"phan:data",interpret:true},{nbt:"display.present.a",storage:"phan:data",interpret:true},{nbt:"display.present.b",storage:"phan:data",interpret:true}]
execute if score #percent value matches 30..39 run title @a[tag=tellMe] subtitle ["",{text:"\uF005\uE814 "},{nbt:"display.present.chest",storage:"phan:data",interpret:true},{nbt:"display.present.a",storage:"phan:data",interpret:true},{nbt:"display.present.b",storage:"phan:data",interpret:true}]
execute if score #percent value matches 20..29 run title @a[tag=tellMe] subtitle ["",{text:"\uF005\uE813 "},{nbt:"display.present.chest",storage:"phan:data",interpret:true},{nbt:"display.present.a",storage:"phan:data",interpret:true},{nbt:"display.present.b",storage:"phan:data",interpret:true}]
execute if score #percent value matches 10..19 run title @a[tag=tellMe] subtitle ["",{text:"\uF005\uE812 "},{nbt:"display.present.chest",storage:"phan:data",interpret:true},{nbt:"display.present.a",storage:"phan:data",interpret:true},{nbt:"display.present.b",storage:"phan:data",interpret:true}]
execute if score #percent value matches 0..9 run title @a[tag=tellMe] subtitle ["",{text:"\uF005\uE811 "},{nbt:"display.present.chest",storage:"phan:data",interpret:true},{nbt:"display.present.a",storage:"phan:data",interpret:true},{nbt:"display.present.b",storage:"phan:data",interpret:true}]
execute if score #percent value matches ..-1 run title @a[tag=tellMe] subtitle ["",{text:"\uF005\uE810 "},{nbt:"display.present.chest",storage:"phan:data",interpret:true},{nbt:"display.present.a",storage:"phan:data",interpret:true},{nbt:"display.present.b",storage:"phan:data",interpret:true}]

#the brightness of our present entity is controlled by #percent
scoreboard players operation #findID value = @s playerID
execute if entity @s[scores={presentGoal=1..}] as @e[tag=claimedPresent,type=item_display] if score @s playerID = #findID value at @s run function phan:game/1/player/handle_present_entity

#open present if we meet the goal
execute if entity @s[scores={presentGoal=0,presentTime=1..}] run function phan:game/1/player/handle_present_open

#missed the goal, play sad sound effect
execute if entity @s[scores={presentGoal=1..,presentTime=0}] as @a[tag=tellMe] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.didgeridoo",targets:"@s",pitch:".7"}

#stop animations and display after a little bit
execute if score @s presentTime matches ..-20 run function phan:game/1/player/handle_present_end

#put thing on screen
title @a[tag=tellMe] title [""]

#cleanup
tag @a[tag=tellMe] remove tellMe