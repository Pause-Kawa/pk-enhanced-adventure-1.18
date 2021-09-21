# Check if fight engine relative entities still exist (in a max radius of 50 blocks)
execute unless entity @s[tag=pk_fight_engine_relative_entities_defeated] run function pk_strc:common/mechanics/fight/fight_engine_check_for_relative_entities

# When relative entities has been defeat : resolve within a dispatcher
execute if entity @s[tag=pk_fight_engine_relative_entities_defeated] run function pk_strc:common/mechanics/fight/fight_engine_resolve_triggers