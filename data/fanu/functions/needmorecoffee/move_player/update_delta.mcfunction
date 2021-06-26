# Set current player's coords in the scoreboard
execute as @s store result score @s currentX run data get entity @s Pos[0] 1
execute as @s store result score @s currentY run data get entity @s Pos[1] 1
execute as @s store result score @s currentZ run data get entity @s Pos[2] 1

scoreboard players operation @s deltaX = @s currentX
scoreboard players operation @s deltaX -= @s runeX

scoreboard players operation @s deltaY = @s currentY
scoreboard players operation @s deltaY -= @s runeY

scoreboard players operation @s deltaZ = @s currentZ
scoreboard players operation @s deltaZ -= @s runeZ