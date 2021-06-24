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

# Store rune coordinates to player's scoreboard
execute as @e[tag=activeRune] store result score @p[tag=runeTarget] runeX run data get entity @s Item.tag.LodestonePos.X 1
execute as @e[tag=activeRune] store result score @p[tag=runeTarget] runeZ run data get entity @s Item.tag.LodestonePos.Z 1
execute as @e[tag=activeRune] store result score @p[tag=runeTarget] runeY run data get entity @s Item.tag.LodestonePos.Y 1

execute at @p[tag=runeTarget] run particle cloud ~ ~ ~ 0 0 0 0.4 1000 normal

# Summon an armorstand to destination
execute if entity @e[tag=activeRune,nbt={Item:{tag:{LodestoneDimension:"minecraft:overworld"}}}] run execute in minecraft:overworld run function fanu:needmorecoffee/teleport_overworld
#execute as @e[tag=runeDestination,limit=1] run function fanu:needmorecoffee/teleportstand

#execute as @p[tag=runeTarget] if score @s runeD matches 0 in minecraft:overworld run tp @s ~0.5 ~ ~0.5
#execute as @p[tag=runeTarget] if score @s runeD matches 1 in minecraft:the_end run tp @s ~0.5 ~ ~0.5
#execute as @p[tag=runeTarget] if score @s runeD matches -1 in minecraft:the_nether run tp @s ~0.5 ~ ~0.5

tag @p[tag=runeTarget] remove runeTarget

#execute as @e[nbt={Item:{tag:{markedRune:1b}}}] if data entity @s {Item:{tag:{LodestoneDimension:"minecraft:overworld"}}} in minecraft:overworld as @p run function fanu:needmorecoffee/tpEntity
#execute as @e[nbt={Item:{tag:{markedRune:1b}}}] at @s run kill @s

# Mark rune (compass + netherite ingot)
# /summon item ~ ~ ~ {Item:{id:"minecraft:compass",Count:1b,tag:{display:{Name:'{"text":"Rune of Teleportation","color":"gold"}'},HideFlags:4,Unbreakable:1b,CustomModelData:123456,runeofteleportation:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:7,Y:7,Z:7}}}}
execute as @e[nbt={Item:{id:"minecraft:compass"}}] at @s if entity @e[nbt={Item:{id:"minecraft:netherite_ingot"}},sort=nearest,limit=1,distance=..0.5] run execute as @s run function fanu:needmorecoffee/maybe_mark_rune
