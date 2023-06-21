this.unhold_fur_upgrade_red_1_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.unhold_fur_upgrade_red_1";
		this.m.PreviewCraftable = this.new("scripts/items/armor_upgrades/unhold_fur_upgrade_red");
		this.m.Cost = 500;
		local ingredients = [
			{
				Script = "scripts/items/misc/frost_unhold_fur_item",
				Num = 2
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
		_stash.add(this.new("scripts/items/armor_upgrades/unhold_fur_upgrade_red"));
	}

});

