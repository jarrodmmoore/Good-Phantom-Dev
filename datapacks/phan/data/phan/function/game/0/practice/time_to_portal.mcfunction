#count some time...
scoreboard players add #time2portalTicks value 1

scoreboard players add #time2portalMsec value 1
execute if score #time2portalMsec value matches 20.. run scoreboard players add #time2portalSec value 1
execute if score #time2portalMsec value matches 20.. run scoreboard players remove #time2portalMsec value 20

execute if score #time2portalSec value matches 10.. run scoreboard players add #time2portalSec10 value 1
execute if score #time2portalSec value matches 10.. run scoreboard players remove #time2portalSec value 10

execute if score #time2portalSec10 value matches 6.. run scoreboard players add #time2portalMin value 1
execute if score #time2portalSec10 value matches 6.. run scoreboard players remove #time2portalSec10 value 6