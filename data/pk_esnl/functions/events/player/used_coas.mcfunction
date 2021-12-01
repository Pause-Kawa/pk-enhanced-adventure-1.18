scoreboard players set @s PKOnUseCOAS 0

# Phenix pepper on a stick
execute if entity @s[predicate=pk_esnl:phenix_pepper_on_a_stick/holding_mainhand] anchored eyes positioned ^ ^ ^ run function pk_esnl:items/phenix_pepper_on_a_stick/start_ray
