# Check if the tool is a bow and doesn't have the bewitchement yet
# - If success: apply bewitchement
execute if data storage pk_temp Items[{"id":"minecraft:bow"}] unless data storage pk_temp Items[1].tag.pkRobustness run function pk_strc:higuru_temple/mechanics/ancient_altar/enchant_item/robustness