#advance from D to C rank
execute if score @s currentGrade matches 4 if score @s scoreCurrent >= #scoreRankC1 value run function phan:game/1/score_passed_rank

#advance from C to B rank
execute if score @s currentGrade matches 3 if score @s scoreCurrent >= #scoreRankB1 value run function phan:game/1/score_passed_rank

#advance from B to A rank
execute if score @s currentGrade matches 2 if score @s scoreCurrent >= #scoreRankA1 value run function phan:game/1/score_passed_rank

#advance from A to S rank
execute if score @s currentGrade matches 1 if score @s scoreCurrent >= #scoreRankS1 value run function phan:game/1/score_passed_rank