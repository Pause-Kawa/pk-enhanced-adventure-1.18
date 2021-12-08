execute if score @s PKDelay matches 90
execute if score @s PKDelay matches 60..79 run function pk_strc:steam_strays_wellbore/mechanics/tiny_blocks_painter/animation/painting/painting_pattern_1
execute if score @s PKDelay matches 40..59 run function pk_strc:steam_strays_wellbore/mechanics/tiny_blocks_painter/animation/painting/painting_pattern_2
execute if score @s PKDelay matches 20..39 run function pk_strc:steam_strays_wellbore/mechanics/tiny_blocks_painter/animation/painting/painting_pattern_3
execute if score @s PKDelay matches ..19 run function pk_strc:steam_strays_wellbore/mechanics/tiny_blocks_painter/animation/painting/painting_pattern_4