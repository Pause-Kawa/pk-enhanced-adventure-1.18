tag @s add pk_prepared
# Add with the current tag since outside of tick function
tag @s add pk_current_fight_engine
# Trigger before start events
execute if data entity @s data.EventsBeforeStart run function pk_strc:common/mechanics/fight_engine/events/before_start
execute unless data entity @s data.EventsBeforeStart run function pk_strc:common/mechanics/fight_engine/start
# Remove the current tag since outside of tick function
tag @s remove pk_current_fight_engine