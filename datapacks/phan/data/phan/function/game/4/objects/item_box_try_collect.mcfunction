#did a player already already open the box before we got our turn to run this? exit right away!
execute if score #test value matches 1 run return 0

#count how many ticks we've tried this (note: player_tick loop decrements this variable by 4 each tick so it decays really fast)
scoreboard players add @s[scores={timeSinceOpenBox=..50}] timeSinceOpenBox 5

#player remembers the last 5 box groups they went through in 2 seperate areas. (so that's up to 10 total)
#if they try to go through a box who's group ID already exists in their lists, they can't collect it
#note: one of these lists (A or B) gets reset when the player hits a checkpoint

#(this is how we thwart item hoarding without having to introduce a clunky cooldown system like Sprint Racer had)

scoreboard players set #test2 value 0
#list a
execute if score @s hitBox1a = #thisGroupID value run scoreboard players set #test2 value 1
execute if score @s hitBox2a = #thisGroupID value run scoreboard players set #test2 value 1
execute if score @s hitBox3a = #thisGroupID value run scoreboard players set #test2 value 1
execute if score @s hitBox4a = #thisGroupID value run scoreboard players set #test2 value 1
execute if score @s hitBox5a = #thisGroupID value run scoreboard players set #test2 value 1
#list b
execute if score @s hitBox1b = #thisGroupID value run scoreboard players set #test2 value 1
execute if score @s hitBox2b = #thisGroupID value run scoreboard players set #test2 value 1
execute if score @s hitBox3b = #thisGroupID value run scoreboard players set #test2 value 1
execute if score @s hitBox4b = #thisGroupID value run scoreboard players set #test2 value 1
execute if score @s hitBox5b = #thisGroupID value run scoreboard players set #test2 value 1

#tell player they can't open this box if they keep trying and failing
execute if score @s timeSinceOpenBox matches 40.. if score #5Hz value matches 0 if score #test2 value matches 1 run particle block_marker{block_state:"barrier"} ~ ~1 ~ 0 0 0 1 1 force @s

#kick player out of this function if they can't open this box
execute if score #test2 value matches 1 run return 0


#if we made it this far, we should collect the ring and record its id
scoreboard players add @s boxID 0
scoreboard players add @s[scores={boxID=..0}] hitBoxA_head 1
scoreboard players set @s[scores={hitBoxA_head=6..}] hitBoxA_head 1
scoreboard players add @s[scores={boxID=1..}] hitBoxB_head 1
scoreboard players set @s[scores={hitBoxB_head=6..}] hitBoxB_head 1

execute if entity @s[scores={boxID=..0,hitBoxA_head=1}] run scoreboard players operation @s hitBox1a = #thisGroupID value
execute if entity @s[scores={boxID=..0,hitBoxA_head=2}] run scoreboard players operation @s hitBox2a = #thisGroupID value
execute if entity @s[scores={boxID=..0,hitBoxA_head=3}] run scoreboard players operation @s hitBox3a = #thisGroupID value
execute if entity @s[scores={boxID=..0,hitBoxA_head=4}] run scoreboard players operation @s hitBox4a = #thisGroupID value
execute if entity @s[scores={boxID=..0,hitBoxA_head=5}] run scoreboard players operation @s hitBox5a = #thisGroupID value

execute if entity @s[scores={boxID=1..,hitBoxB_head=1}] run scoreboard players operation @s hitBox1b = #thisGroupID value
execute if entity @s[scores={boxID=1..,hitBoxB_head=2}] run scoreboard players operation @s hitBox2b = #thisGroupID value
execute if entity @s[scores={boxID=1..,hitBoxB_head=3}] run scoreboard players operation @s hitBox3b = #thisGroupID value
execute if entity @s[scores={boxID=1..,hitBoxB_head=4}] run scoreboard players operation @s hitBox4b = #thisGroupID value
execute if entity @s[scores={boxID=1..,hitBoxB_head=5}] run scoreboard players operation @s hitBox5b = #thisGroupID value

#get item
function phan:items/random/pick_index

#player successfully got the box
scoreboard players set @s timeSinceOpenBox 0
scoreboard players set #test value 1