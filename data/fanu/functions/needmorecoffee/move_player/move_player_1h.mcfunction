function fanu:needmorecoffee/move_player/update_delta

execute if score @s deltaX < @s zero if score @s deltaX > @s minusOneK if score @s deltaX <= @s minusOneH run spreadplayers ~100 ~ 0 1 false @s
execute if score @s deltaX > @s zero if score @s deltaX < @s oneK if score @s deltaX >= @s oneH run spreadplayers ~-100 ~ 0 1 false @s

execute if score @s deltaZ < @s zero if score @s deltaZ > @s minusOneK if score @s deltaZ <= @s minusOneH run spreadplayers ~ ~100 0 1 false @s
execute if score @s deltaZ > @s zero if score @s deltaZ < @s oneK if score @s deltaZ >= @s oneH run spreadplayers ~ ~-100 0 1 false @s