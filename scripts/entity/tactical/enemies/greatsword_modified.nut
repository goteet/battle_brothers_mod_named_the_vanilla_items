this.greatsword_modified <- this.inherit("scripts/entity/tactical/humans/noble_greatsword", {
	m = {},
	function assignRandomEquipment()
	{
		this.noble_greatsword.assignRandomEquipment();

		local helmet = this.getItems().getItemAtSlot(this.Const.ItemSlot.Head);
		if(helmet != null)
		{
			if(helmet.m.ID == "armor.head.greatsword_faction_helm")
			{
				local rarity = this.Math.rand(1,100);
				if(rarity == 1 || rarity == 100)
				{
					local banner = helmet.m.Variant;
					this.m.Items.unequip(helmet);
					local namedVersionHelment = this.new("scripts/items/helmets/named/named_colored_faction_hat");
					namedVersionHelment.setVariant(banner);
					this.m.Items.equip(namedVersionHelment);
				}
			}
			else if(helmet.m.ID == "armor.head.greatsword_hat")
			{
				local rarity = this.Math.rand(1,100);
				if(rarity == 49 || rarity == 50)
				{
					this.m.Items.unequip(helmet);
					local banner = this.m.Surcoat;
					local namedVersionHelment = this.new("scripts/items/helmets/named/named_colored_faction_hat");
					namedVersionHelment.setVariant(banner);
					this.m.Items.equip(namedVersionHelment);
				}
			}
		}
	}
});

