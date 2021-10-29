# Add resetable tag if needed 
tag @s[nbt={data:{Resetable:1b}}] add pk_resetable

# Build the Entities temp storage to summon from the fight engine data
data modify storage pk_strc:current_fight_data Entities set value []
# Init or reset SpawnEntity as an empty array 
data modify storage pk_strc:current_fight_data SpawnEntity set value []

# Base entities
data modify storage pk_strc:current_fight_data Entities append from entity @s data.Entities[]

# Reinfocring Entities
# Storing amount of players being at or less than 50 blocks from the trigger to summon reinforcing
scoreboard players set %pk_reinforcing_count PKValue 0
execute store result score %pk_reinforcing_count PKValue positioned ~-20 -64 ~-20 if entity @a[dx=40,dy=512,dz=40,gamemode=!spectator]
# Set reinforcing max amount of entities if needed
scoreboard players set %pk_reinforcing_max PKValue 2147483647
execute store result score %pk_reinforcing_max PKValue run data get entity @s data.ReinforcingMax
scoreboard players operation %pk_reinforcing_count PKValue < %pk_reinforcing_max PKValue
# Add reinforcing entities to storage
execute if score %pk_reinforcing_count PKValue matches 1.. run function pk_strc:common/mechanics/fight_engine/recursive_reinforcing_in_storage

# Choose pattern to summon entities
scoreboard players set %pk_fight_entities_count PKValue 0
execute store result score %pk_fight_entities_count PKValue run data get storage pk_strc:current_fight_data Entities
execute if score %pk_fight_entities_count PKValue matches 1 run function pk_strc:common/mechanics/fight_engine/summon_patterns/1_entity
execute if score %pk_fight_entities_count PKValue matches 2 run function pk_strc:common/mechanics/fight_engine/summon_patterns/2_entities
execute if score %pk_fight_entities_count PKValue matches 3 run function pk_strc:common/mechanics/fight_engine/summon_patterns/3_entities
execute if score %pk_fight_entities_count PKValue matches 4 run function pk_strc:common/mechanics/fight_engine/summon_patterns/4_entities
execute if score %pk_fight_entities_count PKValue matches 5 run function pk_strc:common/mechanics/fight_engine/summon_patterns/5_entities
execute if score %pk_fight_entities_count PKValue matches 6 run function pk_strc:common/mechanics/fight_engine/summon_patterns/6_entities
execute if score %pk_fight_entities_count PKValue matches 7 run function pk_strc:common/mechanics/fight_engine/summon_patterns/7_entities
execute if score %pk_fight_entities_count PKValue matches 8 run function pk_strc:common/mechanics/fight_engine/summon_patterns/8_entities
execute if score %pk_fight_entities_count PKValue matches 9.. run function pk_strc:common/mechanics/fight_engine/summon_patterns/default

# Spawn animations on fight engine
execute if data entity @s data.SpawnAnimations[{Sound:"entity.evoker.cast_spell"}] run playsound entity.evoker.cast_spell ambient @a ~ ~ ~ 1 0.8

# Trigger on start events
execute if data entity @s data.EventsOnStart run function pk_strc:common/mechanics/fight_engine/events/on_start

# Mark the fight engine as started
tag @s add pk_start