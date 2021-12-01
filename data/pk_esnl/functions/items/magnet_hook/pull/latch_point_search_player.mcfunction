tag @s add pk_current
scoreboard players operation %pk_temp PKValue = @s PKHookUsingID
execute as @a[tag=pk_player_pulled] if score @s PKHookUsingID = %pk_temp PKValue at @s facing entity @e[type=marker,tag=pk_magnet_hook_latch_point,tag=pk_current] feet run function pk_esnl:items/magnet_hook/pull/player_being_pulled
tag @s remove pk_current