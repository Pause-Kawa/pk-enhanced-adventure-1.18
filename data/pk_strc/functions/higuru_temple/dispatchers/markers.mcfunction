# Tick Dispatcher for structures Markers (tags pk_strc_marker)

# Main Entrance
execute unless score %pk_dev PKValue matches 1.. if entity @s[tag=pk_main_entrance] if entity @p[distance=..5] if score %pk_wither_beaten PKValue matches 1 run function pk_strc:higuru_temple/mechanics/main_entrance/tick

# Inner Doors
execute if entity @s[tag=pk_statue_lever] if block ~ ~ ~ lever[powered=true] run function pk_strc:higuru_temple/mechanics/statue_lever/trigger

# Urns
execute if entity @s[tag=pk_urn] positioned ~ ~ ~ unless predicate pk_strc:location/urn run function pk_strc:higuru_temple/mechanics/urn/break

# Falling trap 
execute unless score %pk_dev PKValue matches 1.. if entity @s[tag=pk_fall_trap_tripwire] run function pk_strc:higuru_temple/mechanics/fall_trap/tick

# Boss room
execute if entity @s[tag=pk_boss_room,tag=pk_start] run function pk_strc:higuru_temple/mechanics/boss_room/tick

# Ancient Altar
execute if entity @s[tag=pk_ancient_altar] if entity @p[distance=..10] run function pk_strc:higuru_temple/mechanics/ancient_altar/tick

# Structure core
execute unless score %pk_dev PKValue matches 1.. if entity @s[tag=pk_strc_core] positioned ~-28 -64 ~-28 run function pk_strc:higuru_temple/mechanics/structure_core/tick

# Structure converter
execute unless score %pk_dev PKValue matches 1.. if entity @s[tag=pk_strc_converter] if entity @p[distance=..128] positioned ~-28 ~-1 ~-28 run function pk_strc:higuru_temple/mechanics/structure_converter/tick