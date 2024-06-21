#nothing -- 1..8
#mine (2x) -- 9..10
#trapped chest -- 11

#clean up temporary item bans again
#(note: there are 27 randomize armor stands)
tag @e[type=armor_stand,tag=randomize,tag=tempItemBan] remove tempItemBan

#cooldown on rolling trap items
execute if score @s picksSinceTrap matches ..2 run tag @e[tag=randomize,type=armor_stand,scores={r=9..11}] add tempItemBan

#don't get a bonus mine if we're on the final(ish) lap
scoreboard players operation #eyeCheck value = #vEyesNeeded value
scoreboard players operation #eyeCheck value -= @s enderEyes
execute if score #eyeCheck value matches ..4 run tag @e[tag=randomize,type=armor_stand,scores={r=9..11}] add tempItemBan
#the point of this is to give 1st place a hard time. can't do that if we're on the final lap ;(


#pick random number
scoreboard players operation #randomRoll value = @e[limit=1,sort=random,tag=randomize,tag=!tempItemBan,type=armor_stand,scores={r=1..11}] r

#get the item
#execute if score #randomRoll value matches 1..8 run function phan:YOU_GET_NOTHING____YOU_LOSE____GOOD_DAY_SIR
execute if score #randomRoll value matches 9..10 run function phan:items/give/mine {count:2}
execute if score #randomRoll value matches 11 run function phan:items/give/trapped_chest {count:1}

execute if score #randomRoll value matches 9..11 run tag @s add pickedBonusMine