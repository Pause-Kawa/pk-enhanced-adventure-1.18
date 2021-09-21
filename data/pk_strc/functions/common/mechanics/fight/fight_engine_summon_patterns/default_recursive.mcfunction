# Spawn the current entity
data modify storage pk_strc:current_fight_data SpawnEntity[] set from storage pk_strc:current_fight_data RecursiveSpawnEntities[0]
execute positioned ~ ~ ~ run function pk_strc:common/mechanics/fight/fight_engine_summon_entity
data remove storage pk_strc:current_fight_data RecursiveSpawnEntities[0]
# Recursively spawn the entities
scoreboard players remove %pk_recursive_spawn_entities_length PKValue 1
execute if score %pk_recursive_spawn_entities_length PKValue matches 1.. run function pk_strc:common/mechanics/fight/fight_engine_summon_patterns/default_recursive
