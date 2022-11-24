this.named_colored_norse_helmet <- this.inherit("scripts/items/helmets/named/norse_helmet", {
	m = {},
	function create()
	{
		this.norse_helmet.create();
		this.m.ID = "armor.head.named_colored_norse_helmet";
		this.m.Variant = this.Math.rand(1, 4);
		this.m.VariantString = "norse_helmet";
		this.updateVariant();
	}
});

