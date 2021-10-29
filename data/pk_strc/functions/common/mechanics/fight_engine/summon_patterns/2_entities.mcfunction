data modify storage pk_strc:current_fight_data SpawnEntity[] set from storage pk_strc:current_fight_data Entities[0]
execute positioned ~0.75 ~ ~0.75 run function pk_strc:common/mechanics/fight_engine/summon_entity
data modify storage pk_strc:current_fight_data SpawnEntity[] set from storage pk_strc:current_fight_data Entities[1]
execute positioned ~-0.75 ~ ~-0.75 run function pk_strc:common/mechanics/fight_engine/summon_entity
