# Trigger before resolve events
execute if data entity @s data.EventsBeforeResolve run function pk_strc:common/mechanics/fight_engine/events/before_resolve
execute unless data entity @s data.EventsBeforeResolve run function pk_strc:common/mechanics/fight_engine/resolve