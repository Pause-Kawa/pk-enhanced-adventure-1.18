# Trigger the ancient altar
execute if entity @s[tag=!pk_triggered] at @s if block ~ ~1 ~ #minecraft:buttons[powered=true] run function pk_strc:higuru_temple/mechanics/ancient_altar/ancient_altar_check_player_levels
execute if entity @s[tag=pk_triggered] at @s if block ~ ~1 ~ #minecraft:buttons[powered=false] run tag @s remove pk_triggered

# Animation
particle enchant ~ ~ ~ 1 1.1 1 0.01 1 normal