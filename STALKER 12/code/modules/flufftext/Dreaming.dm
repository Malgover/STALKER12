/mob/living/carbon/proc/dream()
	dreaming = 1
	var/list/dreams = list(
		"a keycard","a bottle","a familiar face","a stalker","a moldy sausage","duty","the Zone",
		"voices from all around","deep dark anomaly","a wound","the psi-engine","a mutant","miracle machine","an ally","darkness",
		"light","an Ecologist","a monkey","a catastrophe","a loved one","an AK-74","warmth","freezing","the sun",
		"a hat","the moon","a ruined landscape","a dying planet","radiation","air","the C-Consciousness","the bridge","blinking lights",
		"a pale green glow","an abandoned laboratory","Brainscorcher","The Group","blood","healing","power","respect",
		"riches","Wishgranter","a crash","happiness","pride","a fall","water","flames","ice","RBMK-1000","flying","Fruit Punch","Pripyat",
		"stolen hope","tormented","Noosphere","Oasis","never ending","nightmare","forlorn","breathing","awoken","Sakharov","Limansk",
		"hidden documents","secret groups","Guide","swamp bloodsucker","Kaymanov emitter","Fang","Rainbow","Red Forest","Dead City",
		"Crystal","spatial anomaly","loner","mugging","a bandit's sorrow","Big Ben","mutation","death","disease","misery","Skadovsk",
		"Wolf","Beard","Lebedev","biosphere","transformation","expansion","forever","lucid","fading","exsanguinated","Zaton","Jupiter",
		"Moonlight","the heart","the mind","the soul","the body","willpower","anomalous","material","Battery","Wrenched","Night Star",
		"Gravi","Kolobok","Jellyfish","Crystal Thorn","Chernobyl Nuclear Power Plant","The Monolith","Freedom","Clear Sky","a dull knife",
		"Fireball","Firely","Flame","Compass","Bubble","a broken mind","Eye","Shell","return to the CNPP","a wish invoked","burning",
		"cutting","slicing","a lost limb","directionless","formless","abandon","Meat Chunk","Goldfish","Flash","Stone Flower","Stone Blood",
		"Sparkler","Soul","Snowflake","Mama's Beads","Mica","the great unknown","forgotten","lost","sanctuary","respite","overwhelming desire",
		"Strelok"
	)

	spawn(0)
		for(var/i = rand(1,4),i > 0, i--)
			var/dream_image = pick(dreams)
			dreams -= dream_image
			src << "<span class='notice'><i>... [dream_image] ...</i></span>"
			sleep(rand(40,70))
			if(paralysis <= 0)
				dreaming = 0
				return 0
		dreaming = 0
		return 1

/mob/living/carbon/proc/handle_dreams()
	if(prob(5) && !dreaming) dream()

/mob/living/carbon/var/dreaming = 0