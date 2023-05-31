this.barb_horn_green_upgrade_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.barb_horn_green_upgrade";
		this.m.PreviewCraftable = this.new("scripts/items/armor_upgrades/barb_horn_green_upgrade");
		this.m.Cost = 50;
		local ingredients = [
			{
				Script = "scripts/items/armor_upgrades/barbarian_horn_upgrade",
				Num = 1
			},
			{
				Script = "scripts/items/misc/paint_white_green_yellow_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/armor_upgrades/barb_horn_green_upgrade"));
	}

});

