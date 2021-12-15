# Teleport player to marker
tp @p[tag=pk_consumed_tp_potion] @s

# If no memorized point but bed, teleport the player in overworld
execute as @p[tag=pk_consumed_tp_potion] unless score @s PKMemorizedDim matches -1.. at @s in minecraft:overworld positioned as @s run tp @s ~ ~ ~

# If a memorized point has been set, teleport the player in the right dimension
execute as @p[tag=pk_consumed_tp_potion,scores={PKMemorizedDim=0}] at @s in minecraft:overworld positioned as @s run tp @s ~ ~ ~
execute as @p[tag=pk_consumed_tp_potion,scores={PKMemorizedDim=-1}] at @s in minecraft:the_nether positioned as @s run tp @s ~ ~ ~
execute as @p[tag=pk_consumed_tp_potion,scores={PKMemorizedDim=1}] at @s in minecraft:the_end positioned as @s run tp @s ~ ~ ~

# Clear tag and add a tag for waiting animation
# This prevents issues if two players are consuming the teleportation potion in the exact same tick
tag @p[tag=pk_consumed_tp_potion] add pk_waiting_for_tp_potion_animation

# Apply animation after teleporation (need to wait for 1 tick)
schedule function pk_esnl:items/teleportation_potion/schedule_gateway_teleport_successfuly 1t