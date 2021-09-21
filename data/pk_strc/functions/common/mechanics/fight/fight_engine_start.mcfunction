# Build the Entities temp storage to summon from the fight engine data
# - Base entities
data modify storage pk_strc:current_fight_data Entities set value []
data modify storage pk_strc:current_fight_data Entities append from entity @s data.Entities[]
# - Reinforcing entities
#   - %pk_reinforcing_count PKValue is defined from the fight trigger marker in pk_strc:common/mechanics/fight/fight_trigger_trigger
execute if score %pk_reinforcing_count PKValue matches 1.. run function pk_strc:common/mechanics/fight/fight_engine_reccursive_reinforcing_in_storage

# Init or reset SpawnEntity as an empty array 
data modify storage pk_strc:current_fight_data SpawnEntity set value []

# Choose pattern to summon entities
scoreboard players set %pk_fight_entities_count PKValue 0
execute store result score %pk_fight_entities_count PKValue run data get storage pk_strc:current_fight_data Entities
execute if score %pk_fight_entities_count PKValue matches 1 run function pk_strc:common/mechanics/fight/fight_engine_summon_patterns/1_entity
execute if score %pk_fight_entities_count PKValue matches 2 run function pk_strc:common/mechanics/fight/fight_engine_summon_patterns/2_entities
execute if score %pk_fight_entities_count PKValue matches 3 run function pk_strc:common/mechanics/fight/fight_engine_summon_patterns/3_entities
execute if score %pk_fight_entities_count PKValue matches 4 run function pk_strc:common/mechanics/fight/fight_engine_summon_patterns/4_entities
execute if score %pk_fight_entities_count PKValue matches 5 run function pk_strc:common/mechanics/fight/fight_engine_summon_patterns/5_entities
execute if score %pk_fight_entities_count PKValue matches 6 run function pk_strc:common/mechanics/fight/fight_engine_summon_patterns/6_entities
execute if score %pk_fight_entities_count PKValue matches 7 run function pk_strc:common/mechanics/fight/fight_engine_summon_patterns/7_entities
execute if score %pk_fight_entities_count PKValue matches 8 run function pk_strc:common/mechanics/fight/fight_engine_summon_patterns/8_entities
execute if score %pk_fight_entities_count PKValue matches 9.. run function pk_strc:common/mechanics/fight/fight_engine_summon_patterns/default

# Animations
execute if data entity @s data.SpawnAnimations[{Sound:"entity.evoker.cast_spell"}] run playsound entity.evoker.cast_spell ambient @a ~ ~ ~ 1 0.8

# Start Triggers
function pk_strc:common/mechanics/fight/fight_engine_start_triggers

tag @s add pk_fight_engine_start