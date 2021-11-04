# Spawn the current entity
data modify storage pk_strc:current_data SpawnEntity[] set from storage pk_strc:current_data RecursiveSpawnEntities[0]
execute positioned ~ ~ ~ run function pk_strc:common/mechanics/common_markers/summon_entity
data remove storage pk_strc:current_data RecursiveSpawnEntities[0]
# Recursively spawn the entities
scoreboard players remove %pk_spawn_entities_length PKValue 1
execute if score %pk_spawn_entities_length PKValue matches 1.. run function pk_strc:common/mechanics/common_markers/summon_patterns/default_recursive
