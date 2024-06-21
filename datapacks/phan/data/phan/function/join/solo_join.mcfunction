scoreboard players set #queueHead value 1
scoreboard players set #lastLevelPlayed value 0
tag @s remove playing

#clear out any previous versus mode points
function phan:game/4/new_versus_session

#reset game state
scoreboard objectives setdisplay sidebar
function phan:game/0/_0_init

#clean up some variables while we're here...
scoreboard players reset * hitRing1a
scoreboard players reset * hitRing2a
scoreboard players reset * hitRing3a
scoreboard players reset * hitRing4a
scoreboard players reset * hitRing5a
scoreboard players reset * hitRing6a
scoreboard players reset * hitRing7a
scoreboard players reset * hitRing8a
scoreboard players reset * hitRing9a
scoreboard players reset * hitRing10a
scoreboard players reset * hitRing1b
scoreboard players reset * hitRing2b
scoreboard players reset * hitRing3b
scoreboard players reset * hitRing4b
scoreboard players reset * hitRing5b
scoreboard players reset * hitRing6b
scoreboard players reset * hitRing7b
scoreboard players reset * hitRing8b
scoreboard players reset * hitRing9b
scoreboard players reset * hitRing10b

scoreboard players reset * hitBox1a
scoreboard players reset * hitBox2a
scoreboard players reset * hitBox3a
scoreboard players reset * hitBox4a
scoreboard players reset * hitBox5a
scoreboard players reset * hitBox1b
scoreboard players reset * hitBox2b
scoreboard players reset * hitBox3b
scoreboard players reset * hitBox4b
scoreboard players reset * hitBox5b