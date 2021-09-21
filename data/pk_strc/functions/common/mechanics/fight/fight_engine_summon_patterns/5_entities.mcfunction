data modify storage pk_strc:current_fight_data SpawnEntity[] set from storage pk_strc:current_fight_data Entities[0]
execute positioned ~ ~ ~0.75 run function pk_strc:common/mechanics/fight/fight_engine_summon_entity
data modify storage pk_strc:current_fight_data SpawnEntity[] set from storage pk_strc:current_fight_data Entities[1]
execute positioned ~0.71 ~ ~0.23 run function pk_strc:common/mechanics/fight/fight_engine_summon_entity
data modify storage pk_strc:current_fight_data SpawnEntity[] set from storage pk_strc:current_fight_data Entities[2]
execute positioned ~0.44 ~ ~-0.60 run function pk_strc:common/mechanics/fight/fight_engine_summon_entity
data modify storage pk_strc:current_fight_data SpawnEntity[] set from storage pk_strc:current_fight_data Entities[3]
execute positioned ~-0.44 ~ ~-0.60 run function pk_strc:common/mechanics/fight/fight_engine_summon_entity
data modify storage pk_strc:current_fight_data SpawnEntity[] set from storage pk_strc:current_fight_data Entities[4]
execute positioned ~-0.71 ~ ~0.23 run function pk_strc:common/mechanics/fight/fight_engine_summon_entity