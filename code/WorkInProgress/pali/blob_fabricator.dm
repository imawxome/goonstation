
ABSTRACT_TYPE(/datum/manufacture/mechanics/blob)
/datum/manufacture/mechanics/blob
	name = "blob"
	item_paths = list("ORG|RUB")
	item_amounts = list(3)
	time = 10 SECONDS
	create = 1
	frame_path = /obj/blob
	apply_material = 1

	base
		name = "blob"
		frame_path = /obj/blob
		item_amounts = list(1)

	nucleus
		name = "nucleus blob"
		time = 1 MINUTE
		item_amounts = list(30)
		frame_path = /obj/blob/nucleus

	deposit
		name = "deposit blob"
		frame_path = /obj/blob/deposit

	replicator
		name = "replicator blob"
		frame_path = /obj/blob/deposit/replicator

	reclaimer
		name = "reclaimer blob"
		frame_path = /obj/blob/deposit/reclaimer

	launcher
		name = "slime launcher blob"
		frame_path = /obj/blob/launcher

	mitochondria
		name = "mitochondria blob"
		frame_path = /obj/blob/mitochondria

	reflective
		name = "reflective blob"
		frame_path = /obj/blob/reflective

	ectothermid
		name = "ectothermid blob"
		frame_path = /obj/blob/ectothermid

	plasmaphyll
		name = "plasmaphyll blob"
		frame_path = /obj/blob/plasmaphyll

	lipid
		name = "lipid blob"
		frame_path = /obj/blob/lipid

	ribosome
		name = "ribosome blob"
		frame_path = /obj/blob/ribosome

	wall
		name = "thick blob"
		frame_path = /obj/blob/wall

	firewall
		name = "fire-resistant blob"
		frame_path = /obj/blob/firewall

/obj/machinery/manufacturer/blob
	name = "Blob Fabricator"
	desc = "A manufacturing unit designed to create blobs. What."
	icon_state = "fab-hangar"
	icon_base = "hangar"
	accept_blueprints = TRUE
	free_resource_amt = 0
	free_resources = list()
	available = list(
		/datum/manufacture/mechanics/blob/base,
		/datum/manufacture/mechanics/blob/wall,
		/datum/manufacture/mechanics/blob/firewall,
		/datum/manufacture/mechanics/blob/launcher,
		/datum/manufacture/mechanics/blob/mitochondria,
		/datum/manufacture/mechanics/blob/reflective,
		/datum/manufacture/mechanics/blob/ectothermid,
		/datum/manufacture/mechanics/blob/plasmaphyll,
		/datum/manufacture/mechanics/blob/lipid,
		/datum/manufacture/mechanics/blob/ribosome,
		/datum/manufacture/mechanics/blob/nucleus,
		/datum/manufacture/mechanics/blob/deposit,
		/datum/manufacture/mechanics/blob/replicator,
		/datum/manufacture/mechanics/blob/reclaimer
		)

	New()
		..()
		src.setMaterial(getMaterial("blob"), setname=FALSE)

/obj/machinery/manufacturer/blob/filled
	free_resource_amt = 10
	free_resources = list(/obj/item/material_piece/wad/blob)
