data modify storage pk_strc:current_data SpawnEntity[] set from storage pk_strc:current_data Entities[0]
execute positioned ~0.75 ~ ~ run function pk_strc:common/mechanics/common_markers/summon_entity
data modify storage pk_strc:current_data SpawnEntity[] set from storage pk_strc:current_data Entities[1]
execute positioned ~-0.75 ~ ~0.75 run function pk_strc:common/mechanics/common_markers/summon_entity
data modify storage pk_strc:current_data SpawnEntity[] set from storage pk_strc:current_data Entities[2]
execute positioned ~-0.75 ~ ~-0.75 run function pk_strc:common/mechanics/common_markers/summon_entity