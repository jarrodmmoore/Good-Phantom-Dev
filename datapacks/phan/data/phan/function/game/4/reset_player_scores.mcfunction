#generic stuff
clear @s
scoreboard players set @s energy 0
scoreboard players set @s moveVelocity 0

#game variables
scoreboard players set @s check -1
scoreboard players set @s checkFake -1
scoreboard players set @s enderEyes 0
scoreboard players set @s lap 0
scoreboard players set @s finishPos -1
scoreboard players set @s startGrid -1
scoreboard players set @s rawTime 0
scoreboard players set @s eyeAddDelay 0
scoreboard players set @s eyesToAdd 0
scoreboard players set @s eyesToDeposit 0
scoreboard players set @s hudFlashTime 0
scoreboard players set @s spectateDelay 0
scoreboard players set @s KOs 0
scoreboard players set @s deathsSinceKO 0
tag @s[tag=noSpecDataAdopt] remove noSpecDataAdopt
tag @s[tag=vsHomeStretch] remove vsHomeStretch
scoreboard players set @s itemLuck 1
scoreboard players set @s timeBehind1st 0
scoreboard players operation @s compassClock = @s playerID
scoreboard players operation @s compassClock %= #4 value
scoreboard players set @s compassShowTime 0
tag @s[tag=incrementCheckReal] remove incrementCheckReal
tag @s[tag=incrementCheckOptional] remove incrementCheckOptional
scoreboard players set @s playerGetEyes 0
scoreboard players set @s walkDistance 0
scoreboard players set @s sprintDistance 0
scoreboard players set @s timeInFirst 0
scoreboard players set @s firstDingCooldown 0
scoreboard players set @s airCheckpoints 0
scoreboard players set @s shieldTime 0
scoreboard players set @s[scores={strengthTime=3..}] strengthTime 2

#reset player lists for objects they've collected
scoreboard players reset @s hitRing1a
scoreboard players reset @s hitRing2a
scoreboard players reset @s hitRing3a
scoreboard players reset @s hitRing4a
scoreboard players reset @s hitRing5a
scoreboard players reset @s hitRing6a
scoreboard players reset @s hitRing7a
scoreboard players reset @s hitRing8a
scoreboard players reset @s hitRing9a
scoreboard players reset @s hitRing10a
scoreboard players reset @s hitRing1b
scoreboard players reset @s hitRing2b
scoreboard players reset @s hitRing3b
scoreboard players reset @s hitRing4b
scoreboard players reset @s hitRing5b
scoreboard players reset @s hitRing6b
scoreboard players reset @s hitRing7b
scoreboard players reset @s hitRing8b
scoreboard players reset @s hitRing9b
scoreboard players reset @s hitRing10b
scoreboard players reset @s hitBox1a
scoreboard players reset @s hitBox2a
scoreboard players reset @s hitBox3a
scoreboard players reset @s hitBox4a
scoreboard players reset @s hitBox5a
scoreboard players reset @s hitBox1b
scoreboard players reset @s hitBox2b
scoreboard players reset @s hitBox3b
scoreboard players reset @s hitBox4b
scoreboard players reset @s hitBox5b