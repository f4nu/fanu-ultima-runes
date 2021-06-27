##
 # main.mcfunction
 # needmorecoffee
 #
 # Created by Fanuilos.
##

# /give @p compass{display:{Name:'{"text":"Marked Rune","color":"gold"}'},HideFlags:4,Unbreakable:1b,CustomModelData:123456,markedRune:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:5,Y:70,Z:2}} 64

# Player Rune Cooldown
scoreboard players remove @a[scores={runeCooldown=1..}] runeCooldown 1

# Marked rune routine
# Particles
execute as @e[nbt={Item:{tag:{markedRune:1b}}}] run tag @s add runeParticles
execute as @e[nbt={Item:{tag:{markedRune:1b}},Age:50s}] run tag @s add runeParticles2
execute as @e[nbt={Item:{tag:{markedRune:1b}},Age:100s}] run tag @s add runeParticles3

execute as @e[tag=runeParticles] at @s run particle enchant ~ ~ ~ 0 0 0 1 1 normal
execute as @e[tag=runeParticles2] at @s run particle happy_villager ~ ~ ~ 0 0.3 0 0.3 1 normal
execute as @e[tag=runeParticles3] at @s run particle witch ~ ~ ~ 0 0 0 3 1 normal

# Choose player
execute if entity @p[scores={runeCooldown=0}] as @e[nbt={Item:{tag:{markedRune:1b}},Age:150s}] at @s run tag @p[scores={runeCooldown=0}] add runeTarget
scoreboard players set @p[tag=runeTarget,scores={runeCooldown=0}] runeCooldown 600

# Prime rune
execute if entity @p[tag=runeTarget,scores={runeCooldown=600}] as @e[nbt={Item:{tag:{markedRune:1b}},Age:150s}] run tag @s add activeRune
#execute if entity @p[tag=runeTarget,scores={runeCooldown=600}] run data get entity @e[nbt={Item:{tag:{markedRune:1b}},Age:150s},limit=1]

# Set variables to initiate procedure
execute if entity @e[tag=activeRune,nbt={Item:{tag:{LodestoneDimension:"minecraft:overworld"}}}] as @p[tag=runeTarget,scores={runeCooldown=600},limit=1] at @p[tag=runeTarget,scores={runeCooldown=600},limit=1] run execute in minecraft:overworld run function fanu:needmorecoffee/teleport_overworld

# Clear rune-recognition player status
tag @p[tag=runeTarget] remove runeTarget

# If there's a tag=movingTarget, move it
#execute as @e[tag=runeDestination] at @e[tag=runeDestination] run function fanu:needmorecoffee/move_player/move_player

# Mark rune (compass + netherite ingot)
# /summon item ~ ~ ~ {Item:{id:"minecraft:compass",Count:1b,tag:{display:{Name:'{"text":"Rune of Teleportation","color":"gold"}'},HideFlags:4,Unbreakable:1b,CustomModelData:123456,runeofteleportation:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:7,Y:7,Z:7}}}}
execute as @e[nbt={Item:{id:"minecraft:compass"}}] at @s if entity @e[nbt={Item:{id:"minecraft:netherite_ingot"}},sort=nearest,limit=1,distance=..0.5] run execute as @s run function fanu:needmorecoffee/maybe_mark_rune
