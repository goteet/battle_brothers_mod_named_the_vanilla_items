this.noble_strap_purple_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.noble_strap_purple";
		this.m.PreviewCraftable = this.new("scripts/items/armor_upgrades/noble_strap_purple_upgrade");
		this.m.Cost = 150;
		local ingredients = [
			{
				Script = "scripts/items/trade/silk_item",
				Num = 1
			},
			{
				Script = "scripts/items/trade/dies_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/armor_upgrades/noble_strap_purple_upgrade"));
	}

});

