# Remove wave defeated tag and decrease the waves counter if not infinite
scoreboard players remove @s[scores={PKSpawnerWave=1..}] PKSpawnerWave 1
execute store result score @s PKDelay run data get entity @s data.WavesDelay

# Build the Entities temp storage to summon from the spawner data
data modify storage pk_strc:current_data Entities set value []
# Init or reset SpawnEntity as an empty array 
data modify storage pk_strc:current_data SpawnEntity set value []

# Base entities
data modify storage pk_strc:current_data Entities append from entity @s data.Entities[]

# Choose pattern to summon entities
scoreboard players set %pk_current_entities_count PKValue 0
execute store result score %pk_current_entities_count PKValue run data get storage pk_strc:current_data Entities
execute if score %pk_current_entities_count PKValue matches 1 run function pk_strc:common/mechanics/common_markers/summon_patterns/1_entity
execute if score %pk_current_entities_count PKValue matches 2 run function pk_strc:common/mechanics/common_markers/summon_patterns/2_entities
execute if score %pk_current_entities_count PKValue matches 3 run function pk_strc:common/mechanics/common_markers/summon_patterns/3_entities
execute if score %pk_current_entities_count PKValue matches 4 run function pk_strc:common/mechanics/common_markers/summon_patterns/4_entities
execute if score %pk_current_entities_count PKValue matches 5 run function pk_strc:common/mechanics/common_markers/summon_patterns/5_entities
execute if score %pk_current_entities_count PKValue matches 6 run function pk_strc:common/mechanics/common_markers/summon_patterns/6_entities
execute if score %pk_current_entities_count PKValue matches 7 run function pk_strc:common/mechanics/common_markers/summon_patterns/7_entities
execute if score %pk_current_entities_count PKValue matches 8 run function pk_strc:common/mechanics/common_markers/summon_patterns/8_entities
execute if score %pk_current_entities_count PKValue matches 9.. run function pk_strc:common/mechanics/common_markers/summon_patterns/default

# Spawn animations on fight engine
execute if data entity @s data.SpawnAnimations[{Sound:"entity.evoker.cast_spell"}] run playsound entity.evoker.cast_spell ambient @a ~ ~ ~ 1 0.8

# Trigger on start events
execute if data entity @s data.EventsOnWave run function pk_strc:common/mechanics/spawner/events/on_wave

# Remove the marker if last wave
kill @s[scores={PKSpawnerWave=0}]