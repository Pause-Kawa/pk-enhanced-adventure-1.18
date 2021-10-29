# Add tag to the marker
tag @s add pk_triggered
# Retrieve the button pusher and check its current XP
execute as @p[advancements={pk_strc:triggers/press_stone_button=true}] run tag @s add pk_use_ancient_altar
# If level over 40, continue the process, else run fail
execute if entity @p[tag=pk_use_ancient_altar,level=..39] run function pk_strc:higuru_temple/mechanics/ancient_altar/fail/player_not_enough_levels
execute if entity @p[tag=pk_use_ancient_altar,level=40..] run function pk_strc:higuru_temple/mechanics/ancient_altar/ancient_altar_check_content
tag @s remove pk_use_ancient_altar