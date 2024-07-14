$execute if items entity @s weapon.$(hand) golden_axe[damage=32] run return run function gun:reloading
$item modify entity @s weapon.$(hand) {"function": "set_damage", "add": true, damage: -0.0333}
function gun:smg/use