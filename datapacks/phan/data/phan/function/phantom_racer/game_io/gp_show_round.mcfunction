#show round
bossbar set general_bossbar color purple
bossbar set general_bossbar name ["",{"text":"\uE046","shadow_color":[0,0,0,0]},{"text":"  "},{"translate":"gp.phantom_racer.round_display","with":[{"score":{"name":"#grandPrixRound","objective":"value"}},{"score":{"name":"#grandPrixMaxRounds","objective":"value"}}],"bold":true},{"text":"  "},{"text":"\uE046","shadow_color":[0,0,0,0]}]
bossbar set general_buffer players @a[tag=doneWithIntro]
bossbar set general_bossbar players @a[tag=doneWithIntro]