this.named_colored_steppe_helmet_with_mail <- this.inherit("scripts/items/helmets/named/named_steppe_helmet_with_mail", {
	m = {},
	function create()
	{
		this.named_steppe_helmet_with_mail.create();
		this.m.ID = "armor.head.named_colored_steppe_helmet_with_mail";
		this.m.Variant = this.Math.rand(1, 9);
		this.m.VariantString = "steppe_helmet_with_mail";
		this.updateVariant();
	}
});

