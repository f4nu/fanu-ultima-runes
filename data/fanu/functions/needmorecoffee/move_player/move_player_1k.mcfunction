function fanu:needmorecoffee/move_player/update_delta
execute if score @s deltaX < @s zero run execute if score @s deltaX <= @s minusOneK run tp @s ~1000 ~ ~
#execute if score @s deltaX > @s zero if score @s deltaX >= @s oneK run tp @s ~-1000 ~ ~

execute if score @s deltaZ < @s zero run execute if score @s deltaZ <= @s minusOneK run tp @s ~1000 ~ ~
#execute if score @s deltaZ > @s zero if score @s deltaZ >= @s oneK run tp @s ~-1000 ~ ~