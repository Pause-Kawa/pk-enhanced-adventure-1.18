# Since in the trigger function, the siblings fight triggers are marked as triggered, we check again if a previous relative fight trigger has already been triggered
execute unless entity @s[tag=pk_triggered] run function pk_strc:common/mechanics/fight_trigger/trigger