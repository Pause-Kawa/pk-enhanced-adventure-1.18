# Clone the current block Items to storage
data modify storage pk_container_clone Items set from block ~ ~ ~ Items

# Temp Storage
# - Clear temp storage
data modify storage pk_temp Items set value []
# - Searching for the ancient tablet in the cloned container
data modify storage pk_temp Items insert 0 from storage pk_container_clone Items[{tag:{pkAncientTablet:1b},Count:1b}]
# - Remove the ancient tablet from the cloned container
data remove storage pk_container_clone Items[{tag:{pkAncientTablet:1b}}]
# - At this stage, the only remaining item is the item wanted to be enchanted
data modify storage pk_temp Items insert 1 from storage pk_container_clone Items[{Count:1b}]

# Check for the ancient tablet
function pk_strc:higuru_temple/mechanics/ancient_altar/temp_container_ancient_tablet_dispatcher