this.white_wolf_pelt_upgrade2_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.white_wolf_pelt_upgrade2";
		this.m.PreviewCraftable = this.new("scripts/items/armor_upgrades/white_wolf_pelt_upgrade");
		this.m.Cost = 50;
		local ingredients = [
			{
				Script = "scripts/items/misc/direwolf_pelt_upgrade",
				Num = 1
			},
			{
				Script = "scripts/items/misc/paint_white_blue_item",
				Num = 2
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/armor_upgrades/white_wolf_pelt_upgrade"));
	}

});

