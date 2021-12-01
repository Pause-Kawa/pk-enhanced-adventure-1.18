# Reset when the timer ends
tag @s[scores={PKImpetuousTimer=0}] remove pk_under_impetuousity_bewitchment
scoreboard players set @s[scores={PKImpetuousTimer=0}] PKImpetuousLevel 0

# Apply modifiers
attribute @s generic.attack_damage modifier remove 1-1-16-11-1
attribute @s[scores={PKImpetuousLevel=1}] generic.attack_damage modifier add 1-1-16-11-1 "Impetuousity Bonus" 1 add
attribute @s[scores={PKImpetuousLevel=2}] generic.attack_damage modifier add 1-1-16-11-1 "Impetuousity Bonus" 2 add
attribute @s[scores={PKImpetuousLevel=3}] generic.attack_damage modifier add 1-1-16-11-1 "Impetuousity Bonus" 3 add

# Animations
function pk_core:randomizer/next1
execute if entity @s[scores={PKImpetuousLevel=1..2}] if score %pk_RNG_1 PKValue matches ..50 run particle ambient_entity_effect ~ ~ ~ 0.890 0.149 0.001 1 0 normal
execute if entity @s[scores={PKImpetuousLevel=3..}] if score %pk_RNG_1 PKValue matches ..200 run particle ambient_entity_effect ~ ~ ~ 0.890 0.149 0.001 1 0 normal

# Decrement pkImpetousTimer
scoreboard players remove @s[scores={PKImpetuousTimer=1..}] PKImpetuousTimer 1