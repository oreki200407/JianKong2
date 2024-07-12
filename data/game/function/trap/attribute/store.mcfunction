#儲存原本的attribute
#不可以用data 因為jump_strength有可能不存在
$execute store result storage jk2:data root.game.trap.$(uuid0).movement_speed double 0.000001 run attribute @s generic.movement_speed get 1000000
$execute store result storage jk2:data root.game.trap.$(uuid0).jump_strength double 0.000001 run attribute @s generic.jump_strength get 1000000