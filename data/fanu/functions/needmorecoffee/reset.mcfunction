##
 # reset.mcfunction
 # needmorecoffee
 #
 # Created by Fanuilos.
##

execute run say Rune of Teleportation datapack active!

scoreboard objectives add currentX dummy "Player current X"
scoreboard objectives add currentY dummy "Player current Y"
scoreboard objectives add currentZ dummy "Player current Z"

scoreboard objectives add deltaX dummy "Player delta X"
scoreboard objectives add deltaY dummy "Player delta Y"
scoreboard objectives add deltaZ dummy "Player delta Z"

scoreboard objectives add oneK dummy "1000"
scoreboard objectives add oneH dummy "100"
scoreboard objectives add oneD dummy "10"
scoreboard objectives add one dummy "1"
scoreboard objectives add zero dummy "0"
scoreboard objectives add minusOne dummy "-1"
scoreboard objectives add minusOneD dummy "-10"
scoreboard objectives add minusOneH dummy "-100"
scoreboard objectives add minusOneK dummy "-1000"

scoreboard players set @a oneK 1000
scoreboard players set @a oneH 100
scoreboard players set @a oneD 10
scoreboard players set @a one 1
scoreboard players set @a zero 0
scoreboard players set @a minusOne -1
scoreboard players set @a minusOneD -10
scoreboard players set @a minusOneH -100
scoreboard players set @a minusOneK -1000

scoreboard objectives add scanXFrom dummy "Scan X From"
scoreboard objectives add scanZFrom dummy "Scan Z From"
scoreboard objectives add scanXTo dummy "Scan X To"
scoreboard objectives add scanZTo dummy "Scan Z To"

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