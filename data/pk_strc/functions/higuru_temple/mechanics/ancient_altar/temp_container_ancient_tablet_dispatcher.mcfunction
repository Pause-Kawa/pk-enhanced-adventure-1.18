scoreboard players reset %pk_ancient_altar_applied_enchants PKValue

# Checking for ancient tablet enchantments
# - Faithfulness
execute if data storage pk_temp Items[0].tag.pkAncientTabletFaithfulness run function pk_strc:higuru_temple/mechanics/ancient_altar/check_appliable_item/faithfulness
# - Savagery 
execute if data storage pk_temp Items[0].tag.pkAncientTabletSavagery run function pk_strc:higuru_temple/mechanics/ancient_altar/check_appliable_item/savagery
# - Impetuousity 
execute if data storage pk_temp Items[0].tag.pkAncientTabletImpetuousity run function pk_strc:higuru_temple/mechanics/ancient_altar/check_appliable_item/impetuousity
# - Impetuousity 
execute if data storage pk_temp Items[0].tag.pkAncientTabletRobustness run function pk_strc:higuru_temple/mechanics/ancient_altar/check_appliable_item/robustness
# - Safeguard Instinct
execute if data storage pk_temp Items[0].tag.pkAncientTabletSafeguardInstinct run function pk_strc:higuru_temple/mechanics/ancient_altar/check_appliable_item/safeguard_instinct
# - Wild Cushioning
execute if data storage pk_temp Items[0].tag.pkAncientTabletWildCushioning run function pk_strc:higuru_temple/mechanics/ancient_altar/check_appliable_item/wild_cushioning

# If at least one enchantment has been successfully applied: replace the container Items by the storage temp Items
execute if score %pk_ancient_altar_applied_enchants PKValue matches 1.. run function pk_strc:higuru_temple/mechanics/ancient_altar/ancient_altar_replace_items
# If not, trigger the fail event
execute unless score %pk_ancient_altar_applied_enchants PKValue matches 1.. run function pk_strc:higuru_temple/mechanics/ancient_altar/fail/invalid_item_to_enchant

# Logs
#tellraw @a [{"text":"Append "},{"score":{"name":"%PK_ancient_altar_applied_enchants","objective":"value"}},{"text":" enchantments."}]