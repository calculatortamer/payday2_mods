local ctamer_CopLogicInactive_set_interaction=CivilianLogicInactive._set_interaction
local ctamer_CivilianLogicInactive_register_attention=CivilianLogicInactive._register_attention

function CivilianLogicInactive._register_attention(data, my_data)
	if data.unit:character_damage():dead() and not managers.groupai:state():whisper_mode() then
		data.unit:brain():set_attention_settings({
			"civ_enemy_corpse_sneak"
		})
	else
		ctamer_CivilianLogicInactive_register_attention(data, my_data)
	end
end

function CivilianLogicInactive._set_interaction(data, my_data)
        if data.unit:character_damage():dead() and not managers.groupai:state():whisper_mode() then
                data.unit:interaction():set_tweak_data("corpse_dispose")
                data.unit:interaction():set_active(true, true, true)
	else
                ctamer_CopLogicInactive_set_interaction(data, my_data)
        end
end
