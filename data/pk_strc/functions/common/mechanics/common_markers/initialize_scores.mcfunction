# Get score PKTrigger from data.Trigger value if it exists
execute store result score @s PKTrigger run data get entity @s data.TriggerValue
# Tag as scores initialized
tag @s add pk_scores_initialized