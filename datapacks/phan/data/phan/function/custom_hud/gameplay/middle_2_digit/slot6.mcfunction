#left end + timer icon

#timer is gold if assist mode modified the time limit
execute if score #assist_time_limit value matches 0 run data merge entity 00000000-0000-0328-0000-000000000006 {CustomName:{text:"\uE903\uF001\uE942\uF001",italic:false,color:"white"}}
execute if score #assist_time_limit value matches 1.. run data merge entity 00000000-0000-0328-0000-000000000006 {CustomName:{text:"\uE903\uF001\uE988\uF001",italic:false,color:"white"}}

#store previous value
scoreboard players set #hudPrev6 value -80808