# Tiny Blocks Painter
execute if entity @s[tag=pk_tiny_blocks_painter] run function pk_strc:steam_strays_wellbore/mechanics/tiny_blocks_painter/tick

# Structure generator
execute unless score %pk_dev PKValue matches 1.. if entity @s[tag=pk_strc_generator] if entity @p[distance=..128] run function pk_strc:steam_strays_wellbore/mechanics/manual_generation/trigger