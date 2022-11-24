this.named_colored_golden_feathers_helmet <- this.inherit("scripts/items/helmets/named/golden_feathers_helmet", {
	m = {},
	function create()
	{
		this.golden_feathers_helmet.create();
		this.m.ID = "armor.head.named_colored_golden_feathers_helmet";
		this.m.VariantString = "golden_feathers_helmet";
		this.m.Variant = this.Math.rand(1, 5);
		this.updateVariant();
	}
});

