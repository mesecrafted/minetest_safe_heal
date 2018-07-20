if(minetest.setting_getbool("enable_damage") == true) then
	minetest.register_privilege("heal", {
		description = "Allows player to set own hp to 20 with /heal",
		give_to_singleplayer = true
	})
end
if(minetest.setting_getbool("enable_damage") == true) then
	minetest.register_chatcommand("heal", {
		description = "usage: \"/heal <name>\" desciption: heals <name> to 20 hp",
		privs = {heal=true},
		func = function(name)
			local player = minetest.get_player_by_name(name)
			if not player then
				return
			end
			player:set_hp(20)
                        minetest.chat_send_player(name, "You have been healed!")
		end,
	})
end
