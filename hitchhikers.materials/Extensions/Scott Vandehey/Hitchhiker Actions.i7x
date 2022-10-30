Hitchhiker Actions by Scott Vandehey begins here.

"A large set of actions from The Hitchhiker's Guide to the Galaxy. Some are overrides of standard action responses, but most are new actions. Hitchhikers was written at a time when most players were unfamiliar with text adventures, so there are a lot of actions that seem to be based around the idea that the player might try a random phrase that doesn't really fit the parser. I've done my best to preserve them all, even if they perhaps aren't needed for a modern audience."

"Ported from the original ZIL code by Infocom."

Use authorial modesty.

[--------------------------------------]

Volume 1 - Random Responses

To say bores:
	say "[one of]newts he has known[or]cricket[or]how badly Americans make tea[or]the deteriorating condition of the motorways[or]a recent visit to Tiverton[or]a new book by Douglas Adams[or]computers[in random order]."

To say ho-hum:
	say "[one of]doesn't do anything[or]accomplishes nothing[or]has no desirable effect[in random order]."

To say impossibles:
	say "[one of]You have lost your mind[or]You are clearly insane[or]You appear to have gone barking mad[or]I'm not convinced you're allowed to be playing with this computer[or]Run out on the street and say that. See what happens[or]No, no, a thousand times no. Go boil an egg[in random order]."

To say lurches:
	say "[one of]It slips through your fumbling fingers and hits the carpet with a nerve-shattering bang[or]It dances by you like a thing possessed[or]You lunge for it, but the room spins nauseatingly away. The floor gives you a light tap on the forehead[or]You're certainly picking the tough tasks. The floor acts like a trampoline on an ice rink, or like something they've been working on for years at Disneyland[in random order]."

To say wastes:
	say "[one of]Complete waste of time[or]Useless. Utterly useless[or]A totally unhelpful idea[in random order]."

To say yuks:
	say "[one of]What a concept[or]Nice try[or]You can't be serious[or]Not bloody likely[in random order]."

[--------------------------------------]

Volume 2 - Common Responses

To say look-around:
	say "Look around you."

To say tell-me-how:
	say "You must tell me how to do that to [the noun]."

To say unimportant-thing:
	say "That's not important; leave it alone."

To say while-lying:
	say "You can't do that while you're lying down!"

[--------------------------------------]

Volume 3 - Conditions

A person can be asleep.
A person can be groggy.
A person can be hungover.
A person can be prone.

[--------------------------------------]

Volume 4 - Modifications to Standard Rules

Book 1 - Block Attacking

The block attacking rule response (A) is "You are obviously letting things get to you. You should learn to relax a little."

Book 2 - Block Buying

The block buying rule response (A) is "Sorry, [the noun] [aren't] for sale."

Book 3 - Block Drinking

The block drinking rule response (A) is "You can't drink that!"

Book 4 - Block Giving

The block giving rule response (A) is "Politely, [the second noun] refuses your offer."

Book 5 - Block Kissing

The block kissing rule response (A) is "This is family entertainment, not a video nasty."

Book 6 - Block Sleeping

The block sleeping rule response (A) is "There's no bed here."

Book 7 - Block Waking

The block waking rule response (A) is "I don't think [the noun] [are] sleeping."

Book 8 - Can't Eat Unless Edible

The can't eat unless edible rule response (A) is "Stuffing [the noun] in your mouth would do little to help at this point."

Book 9 - Can't Give to a Non-Person

The can't give to a non-person rule response (A) is "You can't give [the noun] to [the second noun]!"

Book 10 - Can't Go Through Closed Doors

[Don't automatically open doors for the player]
The can't go through closed doors rule does nothing.

Check the player going through a closed door:
	say "The door is closed." instead.

Book 11 - Reaching Inside a Room

Rule for reaching inside a room:
	say "[The noun] isn't here.";
	deny access.

Book 12 - Report Listening

The report listening rule response (A) is "At the moment, [the noun] makes no sound."

Book 13 - Report Smelling

The report smelling rule response (A) is "It smells just like [the noun]."

Book 14 - Report Tasting

The report tasting rule response (A) is "You can't. At least, not in this game you can't."

Book 15 - Report Touching Things

The report touching things rule response (A) is "Fiddling with [the noun] [ho-hum]".

Book 16 - Report Waving Things

The report waving things rule response (A) is "[yuks]".

Book 17 - Report Waving Hands

The report waving hands rule response (A) is "How nice."

Book 18 - Requested Actions Require Persuasion

[This may be overkill, HHG2G actually only sets this response for V-ASK-FOR, but Inform applies this rule when asking for something]

The requested actions require persuasion rule response (A) is "Unsurprisingly, [the noun] doesn't oblige."

Book 19 - Stand Up Before Going

[Don't get out of bed for the player]
The stand up before going rule does nothing.

[--------------------------------------]

Volume 5 - Modifications to Standard Actions

Book 1 - Buying

Understand the command "order" as "buy". Understand "pay for [something]" as buying.

Book 2 - Entering

Understand "go to [something]" as entering.

Book 3 - Examining

Understand the command "inspect" or "study" or "observe" or "see" or "scour" as "examine".

Book 4 - Going

Check going while the player is prone:
	say "[while-lying]" instead.

Book 5 - Looking Under

Understand "look behind [something]" as looking under.

Book 6 - Rubbing

Check the player rubbing:
	try touching the noun instead.

Book 7 - Standing

Understand the command "stand" as something new.

Standing is an action applying to nothing. Understand "stand" and "stand up" as standing.

Understand "stand on [something]" as entering. [Restore previous usage]

Carry out the player standing:
	if the player is prone:
		now the player is not prone;
		say "You are now on your feet.";
	else:
		say "You are already standing."

Book 8 - Taking

Check the player taking anything that is fixed in place:
	say "[yuks]" instead.

Book 9 - Tasting

Understand the command "lick" as "taste".

Book 10 - Touching

Understand the command "pat" and "pet" as "touch".

Book 11 - Turning

Understand the command "spin", and "whirl" as "turn".

Book 12 - Waking

Understand the command "alarm" and "rouse" as "wake".

[--------------------------------------]

Volume 6 - New Actions

Book 1 - Answering

Answering is an action applying to one thing. Understand "answer [something]" as answering.

Check the player answering:
	say "It is hardly likely that [the noun] is interested." instead.

Book 2 - Applauding

Applauding is an action applying to nothing. Understand "applaud", "clap", and "cheer" as applauding.

Carry out applauding:
	say "'Thank you, thank you.'"

Book 3 - Appreciating

Appreciating is an action applying to one thing. Understand "appreciate [something]" as appreciating.

Check the player appreciating:
	say "'Hey, I never get any appreciation! There's absolutely no job satisfaction in being a computer.'" instead.

Book 4 - Asking for Help

Asking for help is an action applying to nothing. Understand "help" as asking for help. Understand the command "hint" and "hints" as "help".

Carry out the player asking for help:
	say "If you're really stuck, a complete map and InvisiClues Hint Booklet are available from your dealer, or via mail order with the form that came in your package."

Book 5 - Asking What

Asking what is an action applying to one thing. Understand "what is [anything]", "what [anything]", and "what's [anything]" as asking what.

A rule for reaching inside a room when asking what:
	allow access.

Check the player asking what:
	say "Good question." instead.

Book 6 - Asking What About

Asking what about is an action applying to one thing. Understand "what about [anything]" as asking what about.

A rule for reaching inside a room when asking what about:
	allow access.

Check the player asking what about:
	say "Well, what about it?" instead.

Book 7 - Asking Who

Asking who is an action applying to one thing. Understand "who is [anything]", "who [anything]", and "who's [anything]" as asking who.

A rule for reaching inside a room when asking who:
	allow access.

Check the player asking who:
	if the noun is not a person:
		say "That's not a person!" instead;
	else:
		try asking what the noun instead.

Book 8 - Asking Why

Asking why is an action applying to nothing. Understand "why" as asking why.

Check the player asking why:
	say "Why not?" instead.

Book 9 - Biting

Biting is an action applying to one thing. Understand "bite [something]" as biting.

Check the player biting:
	say "Biting [the noun] [ho-hum]" instead.

Book 10 - Blocking

Blocking is an action applying to one thing. Understand "block [something]" and "lie before [something]" as blocking. Understand the command "stop" as "block".

Check the player blocking:
	say "[wastes]" instead.

Book 11 - Blocking With

Blocking with is an action applying to two things. Understand "block [something] with [something]" as blocking with.

Check the player blocking with:
	say "[wastes]" instead.

Book 12 - Calling

Calling is an action applying to one topic. Understand "call [text]" as calling. Understand the command "phone" as "call".

Check the player calling:
	say "There's no phone here!" instead.

Book 13 - Calling With

Calling with is an action applying to one topic and one thing. Understand "call [text] with [something]" and "call [text] on [something]" as calling with.

Check the player calling with:
	if the second noun is not the phone:
		say "You can't use [the second noun] as a phone." instead;
	else:
		try calling the topic understood instead.

Book 14 - Carving

Carving is an action applying to two things. Understand "carve [something] on [something]" and "carve [something] in [something]" as carving. Understand the command "inscribe", "scratch", and "write" as "carve".

Check the player carving:
	say "[yuks]" instead.

Book 15 - Carving With

Carving with is an action applying to two thing. Understand "carve [something] with [something preferably held]" as carving with.

Check the player carving with:
	say "Huh?" instead.

Book 16 - Climbing Down

Climbing down is an action applying to one thing. Understand "climb down [something]", "walk down [something]", and "descend [something]" as climbing down.

Check the player climbing down:
	say "[yuks]" instead.

Book 17 - Climbing Up

Climbing up is an action applying to one thing. Understand "climb up [something]", "walk up [something]", "ascend [something]", and "scale [something]" as climbing up.

Check the player climbing up:
	say "[yuks]" instead.

Book 18 - Counting

Counting is an action applying to one thing. Understand "count [something]" as counting.

Check the player counting:
	say "[impossibles]" instead.

Book 19 - Cutting With

Cutting with is an action applying to two things. Understand "cut [something] with [something preferably held]" and "cut through [something] with [something preferably held]" as cutting with.

Check the player cutting with:
	say "I doubt that the 'cutting edge' of [the second noun] is adequate." instead.

Book 20 - Diagnosing

Diagnosing is an action applying to nothing. Understand "diagnose" as diagnosing.

Carry out diagnosing:
	if the player is hungover:
		say "You have a big blinding throbber.";
	else if the player is groggy:
		say "You feel weak.";
	else:
		say "You are in good health.";

Book 21 - Digging

Digging is an action applying to one thing. Understand "dig [something]", "dig in [something]", "dig with [something]", and "dig through [something]" as digging.

Check the player digging:
	say "[wastes]" instead.

Book 22 - Drinking From

Drinking from is an action applying to one thing. Understand "drink from [something preferably held]" as drinking from.

Check the player drinking from:
	say "[impossibles]" instead.

Book 23 - Dozing

Understand the command "nap" as something new.

Dozing is an action applying to nothing. Understand "doze" as dozing. Understand the command "nap" and "snooze" as "doze".

Carry out the player dozing:
	say "You doze for several minutes.";

Book 24 - Enjoying

Enjoying is an action applying to one thing. Understand "enjoy [something]" as enjoying.

Check enjoying:
	if the noun is a person:
		try kissing the noun instead.

Carry out enjoying:
	say "Not difficult at all, considering how enjoyable [the noun] is."

Book 25 - Escaping

Escaping is an action applying to nothing. Understand "escape" as escaping.

Check the player escaping:
	say "You are so keen on escape that you literally leap through the fabric of the space-time continuum. You wake up in a shack on tenth-century Earth. A dressing gown, [a toothbrush], and a flathead axe lie by your bed. Before you have a chance to move, Mongol hordes sweep magnificently across the plains of central Asia. They knock down your shack and burn the remains with you inside. You lose interest in the rest of the game.";
	end the story instead;

Book 26 - Escaping From

Escaping from is an action applying to one thing. Understand "escape [something]" and "escape from [something]" as escaping from. Understand the command "flee" as "escape".

Check the player escaping from:
	try escaping instead.

Book 27 - Feeding

Understand the command "feed" as something new.

Feeding is an action applying to one thing. Understand "feed [someone]" as feeding.

Check the player feeding:
	if the player is carrying an edible thing (called food):
		say "([the food])";
		try giving the food to the noun instead;
	else:
		say "You have nothing to feed [the noun] with." instead.

Book 28 - Feeding It To

Feeding it to is an action applying to two things. Understand "feed [something preferably held] to [someone]" as feeding it to. Understand "feed [someone] [something preferably held]" as feeding it to (with nouns reversed).

Check the player feeding something to someone:
	if the noun is edible:
		try giving the noun to the second noun instead;
	else:
		say "[The noun] isn't edible." instead.

Book 29 - Filling

Filling is an action applying to one thing. Understand "fill [something]" as filling.

Check the player filling:
	say "Phil who?" instead.

Book 30 - Fripping

Fripping is an action applying to nothing. Understand "fripping" as fripping. Understand the command "lyshus", "wimbgunts", "gashee", "morphousite", "thou", "bleem", "miserable", and "venchit" as "fripping".

Check the player fripping:
	say "Aaaaaaarggggghhhhhh!" instead.

Book 31 - Getting Out Of

Getting out of is an action applying to one thing. Understand "get out of [something]" and "exit [something]" as getting out of.

Carry out getting out of something:
	try exiting instead.

Book 32 - Hiding

Hiding is an action applying to nothing. Understand "hide" as hiding.

Check the player hiding:
	say "There's no place to hide here." instead.

Book 33 - Hiding Behind

Hiding behind is an action applying to one thing. Understand "hide behind [something]" and "hide under [something]" as hiding behind.

Check the player hiding behind:
	try hiding instead.

Book 34 - Introducing

Introducing is an action applying to one thing. Understand "I am [anything]", "I'm [anything]", "I [anything]" as introducing.

A rule for reaching inside a room when introducing:
	allow access.

Carry out the player introducing:
	say "Pleased to meet you. I'm your computer."

Book 35 - Kicking

Kicking is an action applying to one thing. Understand "kick [something]" as kicking.

Check the player kicking:
	say "Kicking [the noun] [ho-hum]" instead.

Book 36 - Lying Down

Lying down is an action applying to nothing. Understand "lie down" and "recline" as lying down.

Carry out the player lying down:
	if the player is prone:
		say "You are already laying down.";
	else:
		now the player is prone;
		say "You are now lying on the ground."

Book 37 - Lying Down On

Lying down on is an action applying to one thing. Understand "lie on [something]", "lie down on [something]", "lie down in [something]", and "lie down [something]" as lying down on.

Check the player lying down on:
	if the noun is a person:
		try kissing the noun instead;
	else:
		say "[wastes]" instead.

Book 38 - Making

Making is an action applying to one thing. Understand "make [something]" as making.

Check the player making:
	say "You can't make [the noun]!" instead.

Book 39 - Shaking

Shaking is an action applying to one thing. Understand "shake [something]" as shaking.

Check the player shaking:
	if the noun is a person:
		say "Be real." instead;
	else:
		say "Shaking [the noun] [ho-hum]" instead.

Book 40 - Smiling

Smiling is an action applying to nothing. Understand "smile" as smiling.

Carry out the player smiling:
	say "How nice."

Book 41 - Smiling At

Smiling at is an action applying to one thing. Understand "smile at [something]" as smiling at.

Check the player smiling at:
	try smiling instead.

Book 42 - Throwing Off

Throwing off is an action applying to two things. Understand "throw [something preferably held] off [something]" and "throw [something preferably held] over [something]" as throwing off.

Check the player throwing off:
	say "You can't do that!" instead.

Book 43 - Tying

Tying is an action applying to one thing. Understand "tie [something]" as tying.

Check the player tying:
	say "You can't tie [the noun]." instead.

Book 44 - Tying Together

Tying together is an action applying to one thing. Understand "tie together [something]" and "tie [something] together" as tying together.

Check the player tying together:
	say "That sentence isn't one I recognise." instead.

Book 45 - Typing

Typing is an action applying to nothing. Understand "type" as typing.

Check the player typing:
	say "There's no keyboard in sight." instead.

Book 46 - Typing On

Typing on is an action applying to one thing. Understand "type on [something]" as typing on.

Check the player typing on:
	say "You can't type on that!" instead.

Book 47 - Untying

Untying is an action applying to one thing. Understand "untie [something]" as untying.

Check the player untying:
	say "[yuks]" instead.

Book 48 - Waiting For

Waiting for is an action applying to one thing. Understand "wait for [anything]" as waiting for.

A rule for reaching inside a room when waiting for:
	allow access.

Check the player waiting for:
	say "You may be waiting quite a while." instead.

Book 49 - Watering

Watering is an action applying to two things. Understand "water [something] with [something]" as watering.

Check the player watering:
	say "It doesn't need watering." instead.

Book 50 - Waving At

Waving at is an action applying to one thing. Understand "wave at [something]" and "wave to [something]" as waving at.

Check the player waving at:
	say "Despite your friendly nature, [the noun] isn't likely to respond."

Book 51 - Yelling

Understand the command "shout" as something new.

Yelling is an action applying to nothing. Understand "yell" as yelling. Understand the command "scream", "shout", "howl" as "yell".

Check the player yelling:
	say "You begin to get a sore throat." instead.
	
Book 52 - Yelling At

Yelling at is an action applying to one thing. Understand "yell at [something]" as yelling at.

Check the player yelling at:
	try yelling instead.

[--------------------------------------]

Hitchhiker Actions ends here.
