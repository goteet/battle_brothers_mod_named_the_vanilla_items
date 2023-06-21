this.unhold_fur_upgrade_green_2_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.unhold_fur_upgrade_green_2";
		this.m.PreviewCraftable = this.new("scripts/items/armor_upgrades/unhold_fur_upgrade_green");
		this.m.Cost = 50;
		local ingredients = [
			{
				Script = "scripts/items/armor_upgrades/unhold_fur_upgrade",
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
		_stash.add(this.new("scripts/items/armor_upgrades/unhold_fur_upgrade_green"));
	}

});

