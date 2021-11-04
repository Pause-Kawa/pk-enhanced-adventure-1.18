# pk_spawner

# This marker is the engine that manage a spawner. When a player approches a reasonnable radius (<50 blocks) it will be triggered.

# ----------------------------------
# Properties:
# ----------------------------------

# TriggerValue : The identifiant that link spawner with its entities

# Entities (array of objects): List of mobs to summon on start event.
# - Type (string): Type of entity to summon. 
# - ActiveEffects : Effects to add on this entity.

# MaxEntitiesAtSameTime (integer): Prevent the spawner to trigger another wave if there's already too many entities.

# SpawnAnimations (array of objects): List of animations to run when entities spawn
# - Particles (string): Type of particles to run on each entity
# - Sound (string): Type of sound to run from the marker

# Resetable (boolean): If true, if there's no alive player near the fight engine anymore, the fight engine and its relative fight triggers will be reset. The relative mobs will be removed from the terrain.

# Waves (integer) : Max waves to summon. Infinite if -1

# WavesDelay (integer) : Time between each waves (in ticks).

# ----------------------------------
# Hooks:
# ----------------------------------

# EventsOnWave (object / optional): Events to run when an new wave is triggered
# - Events (array of objects): Event to run
# -- Name : name of event

# EventsOnReset (object / optional): Extra events to run when reset
# - Events (array of objects): Event to run
# -- Name : name of event

summon marker ~ ~ ~ {Tags:["pk_strc_marker","pk_common_marker","pk_spawner"],data:{Waves:4,WavesDelay:200,MaxEntitiesAtSameTime:6,Entities:[{Type:"higuru_skeleton_random"},{Type:"higuru_skeleton_random"},{Type:"higuru_skeleton_random"},{Type:"higuru_skeleton_random"}],SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],EventsOnWave:{Events:[{Name:"a"}]},EventsOnReset:{Events:[{Name:"a"}]},Resetable:1b}}