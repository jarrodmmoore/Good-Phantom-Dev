#do a jump, yeah?
function phan:bots/movement/jump/low_pad_no_spam
particle splash ~ ~.25 ~ 1.0 0.5 1.0 1 20
particle dust{color:[0.75,0.75,1.0],scale:1.5} ~ ~.3 ~ 0.1 0.25 0.1 0.02 3
particle dust{color:[0.65,0.65,1.0],scale:1.15} ~ ~.2 ~ 0.6 0.25 0.6 0.02 7
particle dust{color:[0.5,0.5,1.0],scale:0.75} ~ ~.1 ~ 1.3 0.25 1.3 0.02 15
playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1.25 1