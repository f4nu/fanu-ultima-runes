say Teleporting to overworld...

# Store rune coordinates to player's scoreboard
execute as @e[tag=activeRune] store result score @p[tag=runeTarget] runeX run data get entity @s Item.tag.LodestonePos.X 1
execute as @e[tag=activeRune] store result score @p[tag=runeTarget] runeZ run data get entity @s Item.tag.LodestonePos.Z 1
execute as @e[tag=activeRune] store result score @p[tag=runeTarget] runeY run data get entity @s Item.tag.LodestonePos.Y 1

# Effects
execute at @s run particle cloud ~ ~ ~ 0 0 0 0.4 1000 normal

# Set the player as the moving target
tag @s add movingTarget

summon minecraft:armor_stand 0 -10 0 {Tags:["runeDestination"],Marker:1b} 
execute as @e[tag=runeDestination] run say Armor Stand summoned.

execute as @e[tag=activeRune] store result score @e[tag=runeDestination] runeX run data get entity @s Item.tag.LodestonePos.X 1
execute as @e[tag=activeRune] store result score @e[tag=runeDestination] runeZ run data get entity @s Item.tag.LodestonePos.Z 1
execute as @e[tag=activeRune] store result score @e[tag=runeDestination] runeY run data get entity @s Item.tag.LodestonePos.Y 1

execute as @e[tag=runeDestination] run function fanu:needmorecoffee/generated/0__16000__16000_16000_16000

#execute store result entity @e[tag=runeDestination,limit=1] Pos[0] double 1 run scoreboard players get @p[tag=runeTarget] runeX
#execute store result entity @e[tag=runeDestination,limit=1] Pos[1] double 1 run scoreboard players get @p[tag=runeTarget] runeY
#execute store result entity @e[tag=runeDestination,limit=1] Pos[2] double 1 run scoreboard players get @p[tag=runeTarget] runeZ
#execute as @e[tag=runeDestination] run say Villager moved.

# Teleport the player to the correct dimension
tp @s ~ 500 ~

# The rune should follow the player
tp @e[tag=activeRune] @s