this.named_colored_sallet_helmet <- this.inherit("scripts/items/helmets/named/sallet_green_helmet", {
	m = {},
	function create()
	{
		this.sallet_green_helmet.create();
		this.m.ID = "armor.head.named_colored_sallet_helmet";
		this.m.VariantString = "colored_sallet_helmet";
		this.m.Variant = this.Math.rand(1, 14);
		this.updateVariant();
	}
});

