::mods_registerMod("mod_named_the_vanilla_normal_items", 1, "Make some some vanilla items into named ones.")

::mods_queue("mod_named_the_vanilla_normal_items", "", function() 
{
	local root_items = getroottable().Const.Items;
	local root_named_helmets = root_items.NamedHelmets;

	root_named_helmets.push("helmets/named/named_bearhead_helmet");
	root_named_helmets.push("helmets/named/named_colored_jester_hat");
	root_named_helmets.push("helmets/named/named_colored_faction_hat");
	root_named_helmets.push("helmets/named/named_faction_full_helmet");

	local root_named_helmets_south = root_items.NamedSouthernHelmets;
	root_named_helmets_south.push("helmets/named/named_golden_assassin_mask");
	root_named_helmets_south.push("helmets/named/named_colored_feather_gold_turban");
});