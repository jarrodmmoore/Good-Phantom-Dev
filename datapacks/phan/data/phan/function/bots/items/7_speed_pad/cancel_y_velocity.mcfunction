#(note: this will NOT be called if the bot is swimming)

#cancel velocity
scoreboard players set #editArg1 value 0
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #editArg1 value

#stop gliding if we're gliding
function phan:bots/movement/cancel_flight

#we're grounded now. trust.
scoreboard players set @s onGround 2
scoreboard players set @s botMoveState 0
scoreboard players set @s airTime 0