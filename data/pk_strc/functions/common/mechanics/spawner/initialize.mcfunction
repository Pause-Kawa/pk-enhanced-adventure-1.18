scoreboard players add %pk_current_spawner_id PKValue 1
scoreboard players operation @s PKSpawner = %pk_current_spawner_id PKValue

tag @s[nbt={data:{Resetable:1b}}] add pk_resetable

execute store result score @s PKSpawnerEntLen run data get entity @s data.Entities
execute store result score @s PKSpawnerEntMax run data get entity @s data.MaxEntitiesAtSameTime
execute store result score @s PKSpawnerWave run data get entity @s data.Waves
execute unless score @s PKSpawnerWave matches -1.. run scoreboard players set @s PKSpawnerWave -1