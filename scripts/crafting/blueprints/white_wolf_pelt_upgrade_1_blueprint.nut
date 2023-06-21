this.white_wolf_pelt_upgrade_1_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.white_wolf_pelt_upgrade_1";
		this.m.PreviewCraftable = this.new("scripts/items/armor_upgrades/white_wolf_pelt_upgrade");
		this.m.Cost = 250;
		local ingredients = [
			{
				Script = "scripts/items/misc/werewolf_pelt_item",
				Num = 3
			},
			{
				Script = "scripts/items/misc/paint_remover_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/armor_upgrades/white_wolf_pelt_upgrade"));
	}

});

