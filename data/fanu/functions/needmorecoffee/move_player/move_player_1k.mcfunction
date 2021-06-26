function fanu:needmorecoffee/move_player/update_delta

execute if score @s deltaX < @s zero if score @s deltaX <= @s minusOneK run spreadplayers ~1000 ~ 0 1 false @s
execute if score @s deltaX > @s zero if score @s deltaX >= @s oneK run spreadplayers ~-1000 ~ 0 1 false @s

execute if score @s deltaZ < @s zero if score @s deltaZ <= @s minusOneK run spreadplayers ~ ~1000 0 1 false @s
execute if score @s deltaZ > @s zero if score @s deltaZ >= @s oneK run spreadplayers ~ ~-1000 0 1 false @s