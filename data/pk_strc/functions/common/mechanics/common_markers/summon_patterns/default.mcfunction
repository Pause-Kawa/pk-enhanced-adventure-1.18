# Clone entities in storage
data modify storage pk_strc:current_data RecursiveSpawnEntities set value []
data modify storage pk_strc:current_data RecursiveSpawnEntities set from storage pk_strc:current_data Entities
# Get entities array length
scoreboard players set %pk_recursive_spawn_entities_length PKValue 0
execute store result score %pk_recursive_spawn_entities_length PKValue run data get storage pk_strc:current_data RecursiveSpawnEntities
# Recursively spawn the entities
execute if score %pk_recursive_spawn_entities_length PKValue matches 1.. run function pk_strc:common/mechanics/common_markers/summon_patterns/default_recursive
# Apply motion to one entity in order to spread them