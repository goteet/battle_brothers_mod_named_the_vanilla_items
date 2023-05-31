this.unhold_fur_black_upgrade2_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.unhold_fur_black_upgrade2";
		this.m.PreviewCraftable = this.new("scripts/items/armor_upgrades/unhold_fur_black_upgrade");
		this.m.Cost = 50;
		local ingredients = [
			{
				Script = "scripts/items/misc/unhold_fur_upgrade",
				Num = 1
			},
			{
				Script = "scripts/items/misc/paint_black_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/armor_upgrades/unhold_fur_black_upgrade"));
	}

});
