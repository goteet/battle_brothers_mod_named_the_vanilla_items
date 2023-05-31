this.additional_padding_pink_upgrade2_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.additional_padding_pink_upgrade2";
		this.m.PreviewCraftable = this.new("scripts/items/armor_upgrades/additional_padding_pink_upgrade");
		this.m.Cost = 50;
		local ingredients = [
			{
				Script = "scripts/items/armor_upgrades/additional_padding_upgrade",
				Num = 1
			},
			{
				Script = "scripts/items/misc/paint_red_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/armor_upgrades/additional_padding_pink_upgrade"));
	}

});

