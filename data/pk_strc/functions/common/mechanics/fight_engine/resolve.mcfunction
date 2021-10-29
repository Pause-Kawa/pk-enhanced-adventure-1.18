# Remove relative fight triggers
execute positioned ~-40 -64 ~-40 as @e[type=marker,tag=pk_fight_trigger,dx=80,dy=512,dz=80] if score @s PKTrigger = @e[type=marker,tag=pk_current_fight_engine,limit=1] PKTrigger run kill @s

# Trigger on resolve events
execute if data entity @s data.EventsOnResolve run function pk_strc:common/mechanics/fight_engine/events/on_resolve

# Remove the fight engine
kill @s