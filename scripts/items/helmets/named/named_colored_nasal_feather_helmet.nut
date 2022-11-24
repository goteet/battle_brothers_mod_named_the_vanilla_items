this.named_colored_nasal_feather_helmet <- this.inherit("scripts/items/helmets/named/nasal_feather_helmet", {
	m = {},
	function create()
	{
		this.nasal_feather_helmet.create();
		this.m.ID = "armor.head.named_colored_nasal_feather_helmet";
		this.m.Variant = this.Math.rand(1, 5);
		this.m.VariantString = "nasal_feather_helmet";
		this.updateVariant();
	}
});

