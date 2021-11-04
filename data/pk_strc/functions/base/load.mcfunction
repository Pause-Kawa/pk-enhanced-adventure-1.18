# ----------------------------------------
# Scores
# ----------------------------------------
# Simple value score used to link structure mechanics markers
scoreboard objectives add PKTrigger dummy
scoreboard objectives add PKSpawner dummy
scoreboard objectives add PKSpawnerWave dummy
scoreboard objectives add PKSpawnerEntLen dummy
scoreboard objectives add PKSpawnerEntMax dummy
# Default fake players values
# - %pk_current_spawner_id : id for spawner marker
execute unless score %pk_current_spawner_id PKValue matches 0.. run scoreboard players set %pk_current_spawner_id PKValue 0