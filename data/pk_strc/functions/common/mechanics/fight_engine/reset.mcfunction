# Free relative fight triggers
execute positioned ~-40 -64 ~-40 as @e[type=marker,tag=pk_fight_trigger,dx=80,dy=512,dz=80] if score @s PKTrigger = @e[type=marker,tag=pk_current_fight_engine,limit=1] PKTrigger run tag @s remove pk_triggered
# Remove entities
execute as @e[type=#pk_esnl:mobs,tag=pk_fight_engine_relative_entity,distance=..50] if score @s PKTrigger = @e[type=marker,tag=pk_current_fight_engine,limit=1] PKTrigger run tp @s ~ -1000 ~
# Remove prepared and resolved events tags
tag @s remove pk_prepared
tag @s remove pk_start
# On Reset event
function pk_strc:common/mechanics/fight_engine/events/on_reset