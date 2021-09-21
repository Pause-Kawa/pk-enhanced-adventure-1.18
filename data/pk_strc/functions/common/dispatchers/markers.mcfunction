# Tick Dispatcher for structures common Markers (tags pk_strc_marker, pk_common_marker)

# Fight Markers
execute if entity @s[tag=pk_fight_trigger] if entity @p[gamemode=!spectator,distance=..2] unless score %pk_dev PKValue matches 1.. run function pk_strc:common/mechanics/fight/fight_trigger_trigger
execute if entity @s[tag=pk_fight_engine_start] run function pk_strc:common/mechanics/fight/fight_engine_tick