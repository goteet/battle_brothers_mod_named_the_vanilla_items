this.named_metal_bull_helmet_clone <- this.inherit("scripts/items/helmets/named/named_metal_bull_helmet", {
	m = {},
	function create()
	{
		this.named_metal_bull_helmet.create();
		this.m.ID = "armor.head.named_metal_bull_helmet_clone";
		this.m.Variant = 1;
		this.m.VariantString = "metal_bull_helmet";
		this.updateVariant();
	}
});

