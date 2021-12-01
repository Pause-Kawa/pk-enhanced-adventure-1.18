# Decrease Safeguard Instinct effect delay
scoreboard players remove @s[scores={PKSGINDelay=1..}] PKSGINDelay 1
# Trigger the Safeguard Instinct effect
execute if entity @s[scores={PKPlayerHealth=1..6}] unless score @s PKSGINDelay matches 1.. run function pk_esnl:mechanics/bewitchment/safeguard_instinct/trigger