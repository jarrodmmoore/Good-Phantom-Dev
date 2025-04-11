#reset objectives
function phan:game/1/spawning/reset/reset0a
function phan:game/1/spawning/reset/reset0b
function phan:game/1/spawning/reset/reset0c
function phan:game/1/spawning/reset/reset0d

function phan:game/1/spawning/reset/reset1a
function phan:game/1/spawning/reset/reset1b
function phan:game/1/spawning/reset/reset1c
function phan:game/1/spawning/reset/reset1d

function phan:game/1/spawning/reset/reset2a
function phan:game/1/spawning/reset/reset2b
function phan:game/1/spawning/reset/reset2c
function phan:game/1/spawning/reset/reset2d

function phan:game/1/spawning/reset/reset3a
function phan:game/1/spawning/reset/reset3b
function phan:game/1/spawning/reset/reset3c
function phan:game/1/spawning/reset/reset3d

function phan:game/1/spawning/reset/reset4a
function phan:game/1/spawning/reset/reset4b
function phan:game/1/spawning/reset/reset4c
function phan:game/1/spawning/reset/reset4d

function phan:game/1/spawning/reset/reset5a
function phan:game/1/spawning/reset/reset5b
function phan:game/1/spawning/reset/reset5c
function phan:game/1/spawning/reset/reset5d

#ok
#so
#about the practice of removing and re-adding objectives during runtime...
#this is kind of a ratchet thing to do

#i didn't do benchmarks on whether doing this is faster than doing "scoreboard players reset * <objective>" (which is a stupidly expensive command)
#i just have a gut feeling that it IS, in fact, faster

#THERE'S (MAYBE) A PROBLEM, THOUGH:
#Sprint Racer and Good Phantom both experience fatal scoreboard failures on certain Minecraft servers.
#i have a strong suspicion that the remove/re-add objective trick is the cause of this.

#ah well. it works fine in singleplayer, vanilla servers, and Realms, so that's good enough for me

#reset state
scoreboard players set #area0SpawnA value -1
scoreboard players set #area0SpawnB value -1
scoreboard players set #area0SpawnC value -1
scoreboard players set #area0SpawnD value -1

scoreboard players set #area1SpawnA value -1
scoreboard players set #area1SpawnB value -1
scoreboard players set #area1SpawnC value -1
scoreboard players set #area1SpawnD value -1

scoreboard players set #area2SpawnA value -1
scoreboard players set #area2SpawnB value -1
scoreboard players set #area2SpawnC value -1
scoreboard players set #area2SpawnD value -1

scoreboard players set #area3SpawnA value -1
scoreboard players set #area3SpawnB value -1
scoreboard players set #area3SpawnC value -1
scoreboard players set #area3SpawnD value -1

scoreboard players set #area4SpawnA value -1
scoreboard players set #area4SpawnB value -1
scoreboard players set #area4SpawnC value -1
scoreboard players set #area4SpawnD value -1

scoreboard players set #area5SpawnA value -1
scoreboard players set #area5SpawnB value -1
scoreboard players set #area5SpawnC value -1
scoreboard players set #area5SpawnD value -1