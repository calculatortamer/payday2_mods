local ctamer_CopLogicInactive_set_interaction=CopLogicInactive._set_interaction
local ctamer_CopLogicInactive_register_attention=CopLogicInactive._register_attention

function CopLogicInactive._register_attention(data, my_data)
	if data.unit:character_damage():dead() then
		data.unit:brain():set_attention_settings({
			corpse_sneak = true
		})
	else
		data.unit:brain():set_attention_settings(nil)
	end
end

function CopLogicInactive._set_interaction(data, my_data)
	if data.unit:character_damage():dead() and not managers.groupai:state():whisper_mode() then
		data.unit:interaction():set_tweak_data("corpse_dispose")
		data.unit:interaction():set_active(true, true, true)
	else
		ctamer_CopLogicInactive_set_interaction(data, my_data)
	end
end
