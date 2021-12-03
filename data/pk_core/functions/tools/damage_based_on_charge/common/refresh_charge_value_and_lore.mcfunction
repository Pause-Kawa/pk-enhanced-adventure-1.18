# Refresh Charge value in storage
execute store result storage pk_core:temp Charge short 1 run scoreboard players get %pk_temp PKCharge
# Refresh Charge lore in storage
setblock -30000000 14 1603 oak_sign{Text1:'[{"text":"Charge: ","color":"white","italic":false},{"score":{"name":"%pk_temp","objective":"PKCharge"}},{"text":" / "},{"score":{"name":"%pk_temp","objective":"PKChargeMax"}}]'}
data modify storage pk_core:temp ChargeLore set from block -30000000 14 1603 Text1
setblock -30000000 14 1603 air