# Reset player PKOnShotWithBow score
scoreboard players set @s PKOnShotWithBow 0

# Bewitchment Robustness
execute if entity @s[predicate=pk_esnl:bewitchment/robustness/holding_mainhand] run function pk_esnl:mechanics/bewitchment/robustness/trigger