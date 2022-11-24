this.named_colored_conic_helmet_with_faceguard <- this.inherit("scripts/items/helmets/named/named_conic_helmet_with_faceguard", {
	m = {},
	function create()
	{
		this.named_conic_helmet_with_faceguard.create();
		this.m.ID = "armor.head.named_colored_conic_helmet_with_faceguard";
		this.m.VariantString = "conic_helmet_with_faceguard";
		this.m.Variant = this.Math.rand(1, 8);
		this.updateVariant();
	}
});

