# pk_strc main tick

# ----------------------------------------
# Dispatchers
# ----------------------------------------
# Dispatch markers behavior for pk_strc Markers being in loaded area (performances saving)
execute as @e[type=marker,tag=pk_strc_marker] at @s run function pk_strc:base/dispatchers/markers

# ----------------------------------------
# Events
# ----------------------------------------
# Remove advancement when a player press a button (after previous execution)
advancement revoke @a[advancements={pk_strc:triggers/press_button=true}] only pk_strc:triggers/press_button

# ----------------------------------------
# Player Effect
# ----------------------------------------
# Luck IV (adventure mode)
execute as @a[predicate=pk_core:effects/luck_iv,gamemode=survival] run function pk_strc:higuru_temple/mechanics/structure_core/player_set_gamemode_adventure
execute as @a[tag=pk_forced_gamemode_adventure,predicate=!pk_core:effects/luck_iv] run function pk_strc:higuru_temple/mechanics/structure_core/player_remove_forced_gamemode

# ----------------------------------------
# Swamp Mansory
# ----------------------------------------
# Generate a Swamp Mansory over a Swamp Hut
execute as @e[type=witch,tag=!pk_mob,predicate=pk_strc:location/swamp_hut] unless entity @e[type=marker,tag=pk_swamp_mansory,distance=..50] at @s run function pk_strc:swamp_mansory/generate