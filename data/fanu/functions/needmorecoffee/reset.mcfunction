##
 # reset.mcfunction
 # needmorecoffee
 #
 # Created by Fanuilos.
##

execute run say Rune of Teleportation datapack active!

scoreboard objectives add runeX dummy "Rune target X"
scoreboard objectives add runeY dummy "Rune target Y"
scoreboard objectives add runeZ dummy "Rune target Z"
scoreboard objectives add runeCooldown dummy "Rune cooldown"
scoreboard objectives add runeLevels dummy "Rune levels"

scoreboard objectives add runeLevelsMark dummy "Rune levels mark cost"
scoreboard objectives add runeLevelsRecall dummy "Rune levels recall cost"

scoreboard players set @a runeCooldown 0
scoreboard players set @a runeLevelsMark 25
scoreboard players set @a runeLevelsRecall 3
execute as @a run tag @s remove runeTarget 

scoreboard objectives setdisplay list runeCooldown


scoreboard objectives add alreadyTp dummy 0
scoreboard players set @a alreadyTp 0