this.named_bearhead_helmet <- this.inherit("scripts/items/helmets/named/wolf_helmet", {
	m = {},
	function create()
	{
		this.wolf_helmet.create();
		this.m.ID = "armor.head.named_bearhead_helmet";
		this.m.Variant = 1;
		this.m.VariantString = "bearhead_helmet";
		this.updateVariant();
	}

	function updateVaraint()
	{
		this.m.VariantString = "bearhead_helmet";
		this.helmet.updateVaraint();
	}
});

