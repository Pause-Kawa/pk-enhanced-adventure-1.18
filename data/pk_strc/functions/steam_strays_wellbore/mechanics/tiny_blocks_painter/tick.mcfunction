# On press button, check content
execute if block ~ ~-2 ~ #buttons[powered=true] unless entity @s[tag=pk_triggered] run function pk_strc:steam_strays_wellbore/mechanics/tiny_blocks_painter/process/check_necessary_items
execute unless block ~ ~-2 ~ #buttons[powered=true] run tag @s remove pk_triggered

# Painting
execute if score @s[tag=pk_is_painting] PKDelay matches 1.. positioned ~ ~-1 ~ run function pk_strc:steam_strays_wellbore/mechanics/tiny_blocks_painter/animation/painting/trigger
execute if score @s[tag=pk_is_painting] PKDelay matches 1 run function pk_strc:steam_strays_wellbore/mechanics/tiny_blocks_painter/process/resolve
scoreboard players remove @s[scores={PKDelay=1..}] PKDelay 1

# Dripping
execute if score @s PKTimer matches 0 positioned ~ ~-1 ~ run function pk_strc:steam_strays_wellbore/mechanics/tiny_blocks_painter/animation/dripping
scoreboard players add @s PKTimer 1
scoreboard players set @s[scores={PKTimer=40}] PKTimer 0