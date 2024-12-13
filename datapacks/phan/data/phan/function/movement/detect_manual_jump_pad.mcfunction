#this is how it always used to work, now is opt-in with the /trigger
execute if block ~ ~-1 ~ #phan:jump_short run function phan:movement/jump_pad_short
execute if block ~ ~-.2 ~ #phan:jump_short run function phan:movement/jump_pad_short
execute rotated ~ 0 positioned ^ ^ ^.75 if block ~ ~-.9 ~ #phan:jump_short run function phan:movement/jump_pad_short
execute rotated ~ 0 positioned ^ ^ ^1.5 if block ~ ~-.9 ~ #phan:jump_short run function phan:movement/jump_pad_short
execute if block ~ ~1 ~ #phan:jump_high run function phan:movement/jump_pad_high
execute if block ~ ~-.2 ~ #phan:jump_high run function phan:movement/jump_pad_high
execute rotated ~ 0 positioned ^ ^ ^.75 if block ~ ~-.9 ~ #phan:jump_high run function phan:movement/jump_pad_high
execute rotated ~ 0 positioned ^ ^ ^1.5 if block ~ ~-.9 ~ #phan:jump_high run function phan:movement/jump_pad_high