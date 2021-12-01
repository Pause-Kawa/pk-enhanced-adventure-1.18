# Place marker to memorized point coordinates
execute store result entity @s Pos[0] double 1 run scoreboard players get @p[tag=pk_consumed_tp_potion] PKMemorizedX
execute store result entity @s Pos[1] double 1 run scoreboard players get @p[tag=pk_consumed_tp_potion] PKMemorizedY
execute store result entity @s Pos[2] double 1 run scoreboard players get @p[tag=pk_consumed_tp_potion] PKMemorizedZ
# Teleport the player
function pk_esnl:items/teleportation_potion/teleport_player_to_marker
# Remove the marker
kill @s