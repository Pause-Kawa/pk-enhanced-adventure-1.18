advancement revoke @s only pk_esnl:consumable/teleportation_potion
scoreboard players set %pk_teleportation_potion_fail PKValue -1
tag @s add pk_consumed_tp_potion
# If player has saved a memorized point through a memorial excerpt
execute if entity @s[scores={PKMemorizedDim=-1..},predicate=!pk_esnl:teleportation_potion/blacklisted_dim] run function pk_esnl:items/teleportation_potion/player_memorized_point_initiate
# If player has a spawnpoint from bed 
execute unless entity @s[scores={PKMemorizedDim=-1..},predicate=!pk_esnl:teleportation_potion/blacklisted_dim] if data entity @s SpawnY run function pk_esnl:items/teleportation_potion/player_bed_initiate
# If player has neither bed nor memorized point
execute unless entity @s[scores={PKMemorizedDim=-1..},predicate=!pk_esnl:teleportation_potion/blacklisted_dim] unless data entity @s SpawnY run scoreboard players set %pk_teleportation_potion_fail PKValue 1
execute if entity @s[predicate=pk_esnl:teleportation_potion/blacklisted_dim] run scoreboard players set %pk_teleportation_potion_fail PKValue 2
# Fail
execute if score %pk_teleportation_potion_fail PKValue matches 0.. run function pk_esnl:items/teleportation_potion/fail
tag @s remove pk_consumed_tp_potion