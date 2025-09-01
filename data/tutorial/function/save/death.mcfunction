summon item_display ~ ~ ~ \
{\
	item: {id: "player_head",components:{profile:{name:oreki20}}}, billboard: "vertical", Tags: ["tutorial_tomb","tutorial_marker"],\
	transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 180f, 0f, 1f], translation: [0f, 1f, 0f], scale: [1f, 1f, 1f]},\
	Passengers:\
	[\
		{\
			id: "text_display", text: ["按住", {keybind: "key.sneak"}, "救援"], billboard: "vertical", Tags: ["tutorial_tomb_text","tutorial_marker"],\
			transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 1.2f, 0f], scale: [1.2f, 1.2f, 1.2f]}\
		}\
	]\
}

kill @e[type=item_display, tag=tutorial_player]
kill