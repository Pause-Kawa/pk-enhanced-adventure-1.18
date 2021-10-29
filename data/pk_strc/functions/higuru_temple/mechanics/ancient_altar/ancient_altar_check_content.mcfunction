# Get the amount of slots taken in the container having a single item in %pk_temp
function pk_strc:higuru_temple/mechanics/ancient_altar/ancient_altar_check_single_items_amount
# If only two slots of single items, check the identity of the items

execute unless score %pk_temp PKValue matches 2 run function pk_strc:higuru_temple/mechanics/ancient_altar/fail/ancient_altar_bad_content
execute if score %pk_temp PKValue matches 2 run function pk_strc:higuru_temple/mechanics/ancient_altar/temp_container_init