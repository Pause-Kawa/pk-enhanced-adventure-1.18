# Get score PKTrigger from data.Trigger value if it exists
execute unless entity @s[tag=pk_spawner] store result score @s PKTrigger run data get entity @s data.TriggerValue
# Initialize spawner markers scores
execute if entity @s[tag=pk_spawner] run function pk_strc:common/mechanics/spawner/initialize
# Tag as scores initialized
tag @s add pk_initialized