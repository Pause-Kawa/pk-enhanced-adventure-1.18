# Tick Dispatcher for structures common Markers (tags pk_strc_marker, pk_common_marker)

# Fight Markers
execute unless score %pk_dev PKValue matches 1.. if entity @s[tag=pk_fight_trigger,tag=!pk_triggered] if entity @p[gamemode=!spectator,distance=..2] run function pk_strc:common/mechanics/fight_trigger/check_before_trigger
execute if entity @s[tag=pk_fight_engine,tag=pk_prepared] run function pk_strc:common/mechanics/fight_engine/tick

# Spawner Markers
execute unless score %pk_dev PKValue matches 1.. if entity @s[tag=pk_spawner] run function pk_strc:common/mechanics/spawner/tick