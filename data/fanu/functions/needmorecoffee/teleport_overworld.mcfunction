say Teleporting to overworld...

# Store rune coordinates to player's scoreboard
execute as @e[tag=activeRune] store result score @p[tag=runeTarget] runeX run data get entity @s Item.tag.LodestonePos.X 1
execute as @e[tag=activeRune] store result score @p[tag=runeTarget] runeZ run data get entity @s Item.tag.LodestonePos.Z 1
execute as @e[tag=activeRune] store result score @p[tag=runeTarget] runeY run data get entity @s Item.tag.LodestonePos.Y 1

# Effects
execute at @s run particle cloud ~ ~ ~ 0 0 0 0.4 1000 normal

# Set the player as the moving target
tag @s add movingTarget

# Teleport the player to the correct dimension
tp @s ~ 500 ~

# The rune should follow the player
tp @e[tag=activeRune] @s