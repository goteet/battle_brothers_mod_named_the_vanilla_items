this.named_colored_gold_turban <- this.inherit("scripts/items/helmets/named/gold_and_black_turban", {
	m = {},
	function create()
	{
		this.gold_and_black_turban.create();
		this.m.ID = "armor.head.named_colored_gold_turban";
		this.m.VariantString = "golden_turban";
		this.m.Variant = this.Math.rand(0, 1) * 10 + this.Math.rand(1, 4);
		this.updateVariant();
	}
});

