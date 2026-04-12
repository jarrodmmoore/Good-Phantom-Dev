#restrict any unallowed directions
execute if score #wpAllowDirBT1 value matches ..0 run tag 00000000-0000-0328-0000-000000000001 remove directionViable
execute if score #wpAllowDirBT2 value matches ..0 run tag 00000000-0000-0328-0000-000000000002 remove directionViable
execute if score #wpAllowDirBT3 value matches ..0 run tag 00000000-0000-0328-0000-000000000003 remove directionViable
execute if score #wpAllowDirBT4 value matches ..0 run tag 00000000-0000-0328-0000-000000000004 remove directionViable

#clean up flag
scoreboard players set #wpRestrictDirectionsBT value 0