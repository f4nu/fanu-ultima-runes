tellraw @p {"text":"You create a rune attuned to this location."}
execute at @s run kill @e[nbt={Item:{id:"minecraft:netherite_ingot"}},sort=nearest,limit=1,distance=..0.5]

execute at @s run particle cloud ~ ~ ~ 0 0 0 0.4 200 normal
execute at @s run particle witch ~ ~ ~ 0 0 0 3 1 normal

execute at @s run summon minecraft:item ~ ~ ~ {Age:200,Item:{id:"minecraft:compass",Count:1b,tag:{display:{Name:'{"text":"Marked Rune","color":"gold"}'},HideFlags:4,Unbreakable:1b,CustomModelData:123456,markedRune:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:7,Y:7,Z:7}}}}
data modify entity @e[nbt={Item:{tag:{markedRune:1b}}},distance=..1,limit=1] Item.tag.LodestonePos.X set from entity @p Pos[0]
data modify entity @e[nbt={Item:{tag:{markedRune:1b}}},distance=..1,limit=1] Item.tag.LodestonePos.Y set from entity @p Pos[1]
data modify entity @e[nbt={Item:{tag:{markedRune:1b}}},distance=..1,limit=1] Item.tag.LodestonePos.Z set from entity @p Pos[2]

# execute if entity @p[nbt={Dimension:"minecraft:overworld"}] run say @s is in the overworld
execute if entity @p[nbt={Dimension:"minecraft:overworld"},distance=..15,limit=1] run data modify entity @e[nbt={Item:{tag:{markedRune:1b}}},distance=..1,limit=1] Item.tag.runeDimension set value 0s
execute if entity @p[nbt={Dimension:"minecraft:the_nether"},distance=..15,limit=1] run data modify entity @e[nbt={Item:{tag:{markedRune:1b}}},distance=..1,limit=1] Item.tag.runeDimension set value -1s
execute if entity @p[nbt={Dimension:"minecraft:the_end"},distance=..15,limit=1] run data modify entity @e[nbt={Item:{tag:{markedRune:1b}}},distance=..1,limit=1] Item.tag.runeDimension set value 1s
execute if entity @p[nbt={Dimension:"fanu:old_world"},distance=..15,limit=1] run data modify entity @e[nbt={Item:{tag:{markedRune:1b}}},distance=..1,limit=1] Item.tag.runeDimension set value 2s

execute if entity @p[nbt={Dimension:"minecraft:overworld"},distance=..15,limit=1] run data modify entity @e[nbt={Item:{tag:{markedRune:1b}}},distance=..1,limit=1] Item.tag.LodestoneDimension set value "minecraft:overworld"
execute if entity @p[nbt={Dimension:"minecraft:the_nether"},distance=..15,limit=1] run data modify entity @e[nbt={Item:{tag:{markedRune:1b}}},distance=..1,limit=1] Item.tag.LodestoneDimension set value "minecraft:the_nether"
execute if entity @p[nbt={Dimension:"minecraft:the_end"},distance=..15,limit=1] run data modify entity @e[nbt={Item:{tag:{markedRune:1b}}},distance=..1,limit=1] Item.tag.LodestoneDimension set value "minecraft:the_end"
execute if entity @p[nbt={Dimension:"fanu:old_world"},distance=..15,limit=1] run data modify entity @e[nbt={Item:{tag:{markedRune:1b}}},distance=..1,limit=1] Item.tag.LodestoneDimension set value "fanu:old_world"

kill @s

experience add @p -25 levels
execute as @p run say Kal Por Ylem