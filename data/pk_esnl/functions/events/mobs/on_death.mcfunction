# Dispatch Event that occurs when a specified entity dies
# This will prevent every marker to be crawled if not necessary

# Higuru Skeleton
execute if entity @s[nbt={Item:{tag:{pkHiguruSkeleton:1b}}}] run function pk_esnl:entities/higuru_skeleton/behavior/common/events_death

# Kill the events_death item 
kill @s