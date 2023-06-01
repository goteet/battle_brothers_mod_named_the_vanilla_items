::mods_registerMod("mod_named_the_vanilla_normal_items", 1, "Make some some vanilla items into named ones.")

::mods_queue("mod_named_the_vanilla_normal_items", "", function() 
{
	local root_items = getroottable().Const.Items;
	local root_named_helmets = root_items.NamedHelmets;

	root_named_helmets.push("helmets/named/named_bearhead_helmet");
	root_named_helmets.push("helmets/named/named_colored_jester_hat");
	root_named_helmets.push("helmets/named/named_colored_golden_barbute");
	root_named_helmets.push("helmets/named/named_colored_faction_hat");
	root_named_helmets.push("helmets/named/named_faction_full_helmet");

	local root_named_helmets_south = root_items.NamedSouthernHelmets;
	root_named_helmets_south.push("helmets/named/named_golden_assassin_mask");
	root_named_helmets_south.push("helmets/named/named_colored_feather_gold_turban");
	root_named_helmets_south.push("helmets/named/named_colored_feather_gold_turban2");


	::mods_hookChildren("entity/tactical/actor", function(actor)
	{
		this.logInfo("hook actor");
		local onAppearanceChanged = ::mods_getMember(actor, "onAppearanceChanged");
		local onAppearanceChanged_ = function( _appearance, _setDirty = true )
		{
			onAppearanceChanged(_appearance, _setDirty);

			if (this.hasSprite("beard_top") && this.getSprite("beard_top").getBrush() != null)
			{
				local helmet = this.getItems().getItemAtSlot(this.Const.ItemSlot.Head);
				local feather_golden_helmet2 = helmet != null && helmet.getID() == "armor.head.named_colored_feather_gold_turban2";
				if(feather_golden_helmet2)
				{
					local beard_top_sprite = this.getSprite("beard_top");
					local beard_sprite = this.getSprite("beard");

					this.getFlags().set("cover_beard_top", beard_sprite.getBrush() != null ? beard_sprite.getBrush().Name : null);					
					beard_sprite.setBrush(beard_top_sprite.getBrush().Name);
					beard_top_sprite.Visible = false;
					
				}
				else if(this.getFlags().has("beard_top_cover"))
				{
					local beard_top_sprite = this.getSprite("beard_top");
					local beard_sprite = this.getSprite("beard");

					beard_top_sprite.setBrush(beard_sprite.getBrush().Name);
					local beard_sprite_brush = this.getFlags().get("cover_beard_top");
					beard_sprite.setBrush(beard_sprite_brush);
				}
				if(!helmet)
				{
					this.getSprite("beard_top").Visible = true;
				}
			}
		};
		::mods_override(actor, "onAppearanceChanged", onAppearanceChanged_);
	});
});