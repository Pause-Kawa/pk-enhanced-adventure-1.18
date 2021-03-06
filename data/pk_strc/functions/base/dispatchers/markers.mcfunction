# Tick Dispatcher for structures Markers (tag pk_strc_marker)

# Common to all structures
# - Initialize scores for all pk_strc Markers
execute if entity @s[tag=!pk_initialized] unless score %pk_dev PKValue matches 1 if entity @p[distance=..50] run function pk_strc:common/mechanics/common_markers/initialize
# - Common Dispatcher
execute if entity @s[tag=pk_common_marker] run function pk_strc:common/dispatchers/markers

# Higuru Temple
execute if entity @s[tag=pk_higuru_temple_marker] run function pk_strc:higuru_temple/dispatchers/markers

# Steam Wellbore
execute if entity @s[tag=pk_steam_strays_wellbore_marker] run function pk_strc:steam_strays_wellbore/dispatchers/markers