#count some time...
scoreboard players add @s time2portalTicks 1

scoreboard players add @s time2portalMsec 1
execute if score @s time2portalMsec matches 20.. run scoreboard players add @s time2portalSec 1
execute if score @s time2portalMsec matches 20.. run scoreboard players remove @s time2portalMsec 20

execute if score @s time2portalSec matches 10.. run scoreboard players add @s time2portalSec10 1
execute if score @s time2portalSec matches 10.. run scoreboard players remove @s time2portalSec 10

execute if score @s time2portalSec10 matches 6.. run scoreboard players add @s time2portalMin 1
execute if score @s time2portalSec10 matches 6.. run scoreboard players remove @s time2portalSec10 6