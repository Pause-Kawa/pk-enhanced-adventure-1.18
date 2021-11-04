# Check if spawner relative entities still exist (in a max radius of 50 blocks)
scoreboard players set @s PKCounter 0
execute as @e[type=#pk_esnl:mobs,tag=pk_spawner_relative_entity,distance=..50] if score @s PKSpawner = @e[type=marker,tag=pk_current_spawner,limit=1] PKSpawner run scoreboard players add @e[type=marker,tag=pk_current_spawner,limit=1] PKCounter 1 

# Check if sum of current relative entities and entities to summon on next wave exceed the max simultanous entities value
scoreboard players set %pk_potentials_spawner_entities PKValue 0
scoreboard players operation %pk_potentials_spawner_entities PKValue += @s PKCounter
scoreboard players operation %pk_potentials_spawner_entities PKValue += @s PKSpawnerEntLen
execute if score %pk_potentials_spawner_entities PKValue <= @s PKSpawnerEntMax run function pk_strc:common/mechanics/spawner/next_wave