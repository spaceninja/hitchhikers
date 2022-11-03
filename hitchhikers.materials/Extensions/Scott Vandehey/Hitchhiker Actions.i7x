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

To say unrecognized-sentence:
	say "That sentence isn't one I recognise."

To say look-around:
	say "Look around you."

To say not-in-this-game:
	say "You can't. At least, not in this game you can't."

To say talking-to-yourself:
	say "Talking to yourself is a sign of impending mental collapse."

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

Book 7 - Block Telling

The block telling rule response (A) is "It doesn't look like [the noun] is interested."

Book 9 - Block Waking

The block waking rule response (A) is "I don't think [the noun] [are] sleeping."

Book 10 - Can't Close Unless Openable

The can't close unless openable rule response (A) is "[tell-me-how]".

Book 11 - Can't Eat Unless Edible

The can't eat unless edible rule response (A) is "Stuffing [the noun] in your mouth would do little to help at this point."

Book 12 - Can't Enter What's Not Enterable

The can't enter what's not enterable rule response (D) is "You hit your head against [the noun] as you attempt this feat."

Book 13 - Can't Give to a Non-Person

The can't give to a non-person rule response (A) is "You can't give [the noun] to [the second noun]!"

Book 14 - Can't Go Through Closed Doors

[Don't automatically open doors for the player]
The can't go through closed doors rule does nothing.

Check the player going through a closed door:
	say "The door is closed." instead.

Book 15 - Can't Open Unless Openable

The can't open unless openable rule response (A) is "[tell-me-how]".

Book 16 - Can't Search Unless Container or Supporter

The can't search unless container or supporter rule response (A) is "There is nothing special to be seen."

Book 17 - Looking Under

Carry out the player looking under:
	if the noun is worn by the player:
		say "You're wearing it!" instead;
	else if the noun is carried by the player:
		say "You're holding it!" instead;
	else:
		say "There is nothing but dust there." instead;

Book 18 - Putting

Understand the command "stuff", "place", and "lay" as "put".

Book 19 - Reaching Inside a Room

Rule for reaching inside a room:
	say "[The noun] isn't here.";
	deny access.

Book 20 - Report Closing

The standard report closing rule response (A) is "Okay, [the noun] is now closed."

Book 21 - Report Listening

The report listening rule response (A) is "At the moment, [the noun] makes no sound."

Book 22 - Report Opening

The standard report opening rule response (A) is "Okay, [the noun] is now open."

Book 23 - Report Smelling

The report smelling rule response (A) is "It smells just like [the noun]."

Book 24 - Report Tasting

The report tasting rule response (A) is "[not-in-this-game]".

Book 25 - Report Touching Things

The report touching things rule response (A) is "Fiddling with [the noun] [ho-hum]".

Book 26 - Report Waving Things

The report waving things rule response (A) is "[yuks]".

Book 27 - Report Waving Hands

The report waving hands rule response (A) is "How nice."

Book 28 - Requested Actions Require Persuasion

[This may be overkill, HHG2G actually only sets this response for V-ASK-FOR, but Inform applies this rule when asking for something]

The requested actions require persuasion rule response (A) is "Unsurprisingly, [the noun] doesn't oblige."

Book 29 - Stand Up Before Going

[Don't get out of bed for the player]
The stand up before going rule does nothing.

Book 30 - Throwing It At

The futile to throw things at inanimate objects rule does nothing.
The block throwing at rule does nothing.

[--------------------------------------]

Volume 5 - Modifications to Standard Actions

Book 1 - Answering

Understand the command "reply" as "answer".

Check answering something that "hello" when the noun is a person:
	try saying hello to the noun instead.

Book 2 - Buying

Understand the command "order" as "buy". Understand "pay for [something]" as buying.

Book 3 - Dropping

Understand the command "hurl" and "toss" as "drop".

Book 4 - Entering

Understand "go to [something]" as entering.

Book 5 - Examining

Understand the command "inspect" or "study" or "observe" or "see" or "scour" as "examine".

Book 6 - Going

Check going while the player is prone:
	say "[while-lying]" instead.

Book 7 - Quitting

Understand "give up" and "throw in the towel" as quitting the game.

Book 8 - Rubbing

Check the player rubbing:
	try touching the noun instead.

Book 9 - Searching

Understand "look down [something]" and "look up [something]" as searching.

Book 10 - Standing

Understand the command "stand" as something new.

Standing is an action applying to nothing. Understand "stand" and "stand up" as standing.

Understand "stand on [something]" as entering. [Restore previous usage]

Carry out the player standing:
	if the player is prone:
		now the player is not prone;
		say "You are now on your feet.";
	else:
		say "You are already standing."

Book 11 - Taking

Check the player taking anything that is fixed in place:
	say "[yuks]" instead.

Book 12 - Tasting

Understand the command "lick" as "taste".

Book 13 - Throwing It At

Check an actor throwing something at:
	now the noun is in the location;
	say "You missed.";
	stop the action.

Book 14 - Touching

Understand the command "pat" and "pet" as "touch".

Book 15 - Turning

Understand the command "spin", and "whirl" as "turn".

Book 16 - Tying It To

Understand the command "connect" as "tie".

Book 17 - Waking

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

Book 7 - Asking What Time

["What's the time prosser"]

Asking what time is an action applying to two things. Understand "what is [anything] [anything]", "what [anything] [anything]", and "what's [anything] [anything]" as asking what time.

A rule for reaching inside a room when asking what time:
	allow access.

Check the player asking what time:
	say "[unrecognized-sentence]" instead.

Book 8 - Asking Who

Asking who is an action applying to one thing. Understand "who is [anything]", "who [anything]", and "who's [anything]" as asking who.

A rule for reaching inside a room when asking who:
	allow access.

Check the player asking who:
	if the noun is not a person:
		say "That's not a person!" instead;
	else:
		try asking what the noun instead.

Book 9 - Asking Why

Asking why is an action applying to nothing. Understand "why" as asking why.

Check the player asking why:
	say "Why not?" instead.

Book 10 - Attacking With

Attacking with is an action applying to two things. Understand "attack [something] with [something preferably held]" as attacking with.

Check the player attacking with:
	try attacking the noun instead.

Book 11 - Biting

Biting is an action applying to one thing. Understand "bite [something]" as biting.

Check the player biting:
	say "Biting [the noun] [ho-hum]" instead.

Book 12 - Blocking

Blocking is an action applying to one thing. Understand "block [something]" and "lie before [something]" as blocking. Understand the command "stop" as "block".

Check the player blocking:
	say "[wastes]" instead.

Book 13 - Blocking With

Blocking with is an action applying to two things. Understand "block [something] with [something]" as blocking with.

Check the player blocking with:
	say "[wastes]" instead.

Book 14 - Breaking

Understand the command "break", "crack", "destroy", "smash", "wreck" as something new. [from attack]

Breaking is an action applying to one thing. Understand "break [something]" as breaking. Understand the command "crack", "damage", "demolish", "destroy", "smash", "wreck" as "break".

Check the player breaking:
	say "Trying to break [the noun] [ho-hum]" instead.

Book 15 - Breaking With

Breaking with is an action applying to two things. Understand "break [something] with [something preferably held]" as breaking with.

Check the player breaking with:
	try breaking the noun instead.

Book 16 - Brushing

Brushing is an action applying to one thing. Understand "brush [something]" as brushing.

Check the player brushing:
	say "You have nothing to brush [the noun] with." instead.

Book 17 - Brushing It With

Brushing it with is an action applying to two things. Understand "brush [something] with [something preferably held]" as brushing it with.

Check the player brushing something with:
	say "With [the second noun]!" instead.

Book 18 - Calling

Calling is an action applying to one topic. Understand "call [text]" as calling. Understand the command "phone" as "call".

Check the player calling:
	say "There's no phone here!" instead.

Book 19 - Calling With

Calling with is an action applying to one topic and one thing. Understand "call [text] with [something]" and "call [text] on [something]" as calling with.

Check the player calling with:
	if the second noun is not the phone:
		say "You can't use [the second noun] as a phone." instead;
	else:
		try calling the topic understood instead.

Book 20 - Carving

Carving is an action applying to two things. Understand "carve [something] on [something]" and "carve [something] in [something]" as carving. Understand the command "inscribe", "scratch", and "write" as "carve".

Check the player carving:
	say "[yuks]" instead.

Book 21 - Carving With

Carving with is an action applying to two things. Understand "carve [something] with [something preferably held]" as carving with.

Check the player carving with:
	say "Huh?" instead.

Book 22 - Cleaning

Understand the command "clean" as something new.

Cleaning is an action applying to one thing. Understand "clean [something]" and "clean up [something]" as cleaning. Understand the command "wash" and "tidy" as "clean".

Carry out the player cleaning:
	say "It is now much cleaner."

Book 23 - Climbing Down

Climbing down is an action applying to one thing. Understand "climb down [something]", "walk down [something]", and "descend [something]" as climbing down.

Check the player climbing down:
	say "[yuks]" instead.

Book 24 - Climbing Up

Climbing up is an action applying to one thing. Understand "climb up [something]", "walk up [something]", "ascend [something]", and "scale [something]" as climbing up.

Check the player climbing up:
	say "[yuks]" instead.

Book 25 - Counting

Counting is an action applying to one thing. Understand "count [something]" as counting.

Check the player counting:
	say "[impossibles]" instead.

Book 26 - Cutting With

Cutting with is an action applying to two things. Understand "cut [something] with [something preferably held]" and "cut through [something] with [something preferably held]" as cutting with.

Check the player cutting with:
	say "I doubt that the 'cutting edge' of [the second noun] is adequate." instead.

Book 27 - Diagnosing

Diagnosing is an action applying to nothing. Understand "diagnose" as diagnosing.

Carry out diagnosing:
	if the player is hungover:
		say "You have a big blinding throbber.";
	else if the player is groggy:
		say "You feel weak.";
	else:
		say "You are in good health.";

Book 28 - Digging

Digging is an action applying to one thing. Understand "dig [something]", "dig in [something]", "dig with [something]", and "dig through [something]" as digging.

Check the player digging:
	say "[wastes]" instead.

Book 29 - Drinking From

Drinking from is an action applying to one thing. Understand "drink from [something preferably held]" as drinking from.

Check the player drinking from:
	say "[impossibles]" instead.

Book 30 - Dozing

Understand the command "nap" as something new.

Dozing is an action applying to nothing. Understand "doze" as dozing. Understand the command "nap" and "snooze" as "doze".

Carry out the player dozing:
	say "You doze for several minutes.";

Book 31 - Enjoying

Enjoying is an action applying to one thing. Understand "enjoy [something]" as enjoying.

Check enjoying:
	if the noun is a person:
		try kissing the noun instead.

Carry out enjoying:
	say "Not difficult at all, considering how enjoyable [the noun] is."

Book 32 - Escaping

Escaping is an action applying to nothing. Understand "escape" as escaping.

Check the player escaping:
	say "You are so keen on escape that you literally leap through the fabric of the space-time continuum. You wake up in a shack on tenth-century Earth. A dressing gown, [a toothbrush], and a flathead axe lie by your bed. Before you have a chance to move, Mongol hordes sweep magnificently across the plains of central Asia. They knock down your shack and burn the remains with you inside. You lose interest in the rest of the game.";
	end the story instead;

Book 33 - Escaping From

Escaping from is an action applying to one thing. Understand "escape [something]" and "escape from [something]" as escaping from. Understand the command "flee" as "escape".

Check the player escaping from:
	try escaping instead.

Book 34 - Feeding

Understand the command "feed" as something new.

Feeding is an action applying to one thing. Understand "feed [someone]" as feeding.

Check the player feeding:
	if the player is carrying an edible thing (called food):
		say "([the food])";
		try giving the food to the noun instead;
	else:
		say "You have nothing to feed [the noun] with." instead.

Book 35 - Feeding It To

Feeding it to is an action applying to two things. Understand "feed [something preferably held] to [someone]" as feeding it to. Understand "feed [someone] [something preferably held]" as feeding it to (with nouns reversed).

Check the player feeding something to someone:
	if the noun is edible:
		try giving the noun to the second noun instead;
	else:
		say "[The noun] isn't edible." instead.

Book 36 - Filling

Filling is an action applying to one thing. Understand "fill [something]" as filling.

Check the player filling:
	say "Phil who?" instead.

Book 37 - Following

Following is an action applying to one thing. Understand "follow [anything]" as following. Understand the command "pursue" and "chase" as "follow".

A rule for reaching inside a room when following:
	allow access.

Check the player following:
	if the noun is in the location:
		say "But [the noun] is right here!" instead;
	else if the noun is not a person:
		say "[impossibles]" instead;
	else:
		say "You have no idea where [the noun] is."

Book 38 - Fripping

Fripping is an action applying to nothing. Understand "fripping" as fripping. Understand the command "lyshus", "wimbgunts", "gashee", "morphousite", "thou", "bleem", "miserable", and "venchit" as "fripping".

Check the player fripping:
	say "Aaaaaaarggggghhhhhh!" instead.

Book 39 - Getting Drunk

Getting drunk is an action applying to nothing. Understand "get drunk" as getting drunk.

Check the player getting drunk:
	say "You can't see any alcohol here!" instead.

Book 40 - Getting Out Of

Getting out of is an action applying to one thing. Understand "get out of [something]" and "exit [something]" as getting out of.

Carry out getting out of something:
	try exiting instead.

Book 41 - Hanging

Hanging is an action applying to two things. Understand "hang [something] on [something]" and "hang [something] from [something]" as hanging.

Check the player hanging:
	say "You can't hang something from [the second noun]!" instead.

Book 42 - Hiding

Hiding is an action applying to nothing. Understand "hide" as hiding.

Check the player hiding:
	say "There's no place to hide here." instead.

Book 43 - Hiding Behind

Hiding behind is an action applying to one thing. Understand "hide behind [something]" and "hide under [something]" as hiding behind.

Check the player hiding behind:
	try hiding instead.

Book 44 - Introducing

[TODO use topic here. See "ask" documentation for understanding objects]

Introducing is an action applying to one thing. Understand "I am [anything]", "I'm [anything]", "I [anything]", "my name is [anything]" as introducing.

A rule for reaching inside a room when introducing:
	allow access.

Carry out the player introducing:
	say "Pleased to meet you. I'm your computer."

Book 45 - Kicking

Kicking is an action applying to one thing. Understand "kick [something]" as kicking.

Check the player kicking:
	say "Kicking [the noun] [ho-hum]" instead.

Book 46 - Kneeling

Kneeling is an action applying to nothing. Understand "kneel" as kneeling. Understand the command "crawl" and "peek" as "kneel".

Check the player kneeling:
	say "[not-in-this-game]" instead.

Book 47 - Knocking

Knocking is an action applying to one thing. Understand "knock at [something]" and "knock on [something]" as knocking. Understand the command "rap" as "knock".

Check the player knocking:
	if the noun is a door:
		say "Nobody's home.";
	else:
		say "Knocking on [the noun] [ho-hum]" instead.

Book 48 - Looking Behind

Looking behind is an action applying to one visible thing and requiring light. Understand "look behind [something]" as looking behind.

Check the player looking behind:
	say "There is nothing behind [the noun]." instead.

Book 49 - Lowering

Lowering is an action applying to one thing. Understand "lower [something]" as lowering.

Check the player lowering:
	try raising the noun instead.

Book 50 - Lying Down

Lying down is an action applying to nothing. Understand "lie down" and "recline" as lying down.

Carry out the player lying down:
	if the player is prone:
		say "You are already laying down.";
	else:
		now the player is prone;
		say "You are now lying on the ground."

Book 51 - Lying Down On

Lying down on is an action applying to one thing. Understand "lie on [something]", "lie down on [something]", "lie down in [something]", and "lie down [something]" as lying down on.

Check the player lying down on:
	if the noun is a person:
		try kissing the noun instead;
	else:
		say "[wastes]" instead.

Book 52 - Making

Making is an action applying to one thing. Understand "make [something]" as making.

Check the player making:
	say "You can't make [the noun]!" instead.

Book 53 - Panicking

Panicking is an action applying to nothing. Understand "panic" as panicking.

Check the player panicking:
	say "Not surprised." instead.

Book 54 - Picking

Picking is an action applying to one thing. Understand "pick [something]" as picking.

Check the player picking:
	say "[impossibles]" instead.
	
Book 55 - Picking With

Picking with is an action applying to two things. Understand "pick [something] with [something]" as picking with.

Check the player picking with:
	try picking the noun instead.

Book 56 - Planting

Planting is an action applying to two things. Understand "plant [something preferably held] in [something]" as planting. Understand the command "bury" as "plant".

Check the player planting:
	say "You can't plant something in [the second noun]." instead.

Book 57 - Plugging

Plugging is an action applying to two things. Understand "plug [something] in [something]", "plug [something] to [something]", "plug [something] into [something]", "plug in [something] in [something]", and "plug in [something] to [something]" as plugging.

Check the player plugging:
	say "You can't seem to plug [the noun] into [the second noun]."

Book 58 - Pouring

Pouring is an action applying to one thing. Understand "pour [something preferably held]" as pouring. Understand the command "spill" and "sprinkle" as "pour".

Check the player pouring:
	say "[yuks]" instead.

Book 59 - Pouring It In

Pouring it in is an action applying to two things. Understand "pour [something preferably held] in [something]", "pour [something preferably held] on [something]", and "pour [something preferably held] over [something]" as pouring it in.

Check the player pouring something in:
	try pouring the noun instead.

Book 60 - Protesting

Protesting is an action applying to nothing. Understand "protest" as protesting. Understand the command "argue" as "protest".

Check the player protesting:
	say "To whom? About what? Why?" instead.

Book 61 - Pulling Together

Pulling together is an action applying to one thing. Understand "pull together [something]" and "move together [something]" as pulling together.

Check the player pulling together:
	say "[unrecognized-sentence]" instead.

Book 62 - Putting it behind

Putting it behind is an action applying to two things. Understand "put [other things] behind [something]" as putting it behind.

Check the player putting something behind:
	say "[wastes]" instead.	

Book 63 - Putting it in front

Putting it in front is an action applying to two things. Understand "put [other things] at/before [something]", "drop [other things] before [something]", "put [other things] in front of [something]", and "drop [other things] in front of [something]" as putting it in front.

Check the player putting something in front:
	say "[wastes]" instead.	

Book 64 - Raising

Raising is an action applying to one thing. Understand "raise [something]" as raising. Understand the command "lift" as "raise".

Check the player raising:
	say "Playing in this way with [the noun] [ho-hum]" instead.

Book 65 - Relaxing

Relaxing is an action applying to nothing. Understand "relax" as relaxing.

Check the player relaxing:
	say "[zen]" instead.

Book 66 - Repairing

Repairing is an action applying to one thing. Understand "repair [something]" as repairing. Understand the command "fix" and "unjam" as "repair".

Check the player repairing:
	say "I'm not sure it's broken." instead.

Book 67 - Replacing

Replacing is an action applying to one thing. Understand "replace [something]" as replacing.

Check the player replacing:
	say "It's not in need of replacement." instead.

Book 68 - Rescuing

Rescuing is an action applying to one thing. Understand "save [something]" and "help [something]" as rescuing.

Check the player rescuing:
	say "Sorry, but [the noun] is beyond help." instead.

Book 69 - Saying Hello

Saying hello is an action applying to nothing. Understand "hello" as saying hello. Understand the command "hi" as "hello".

Check the player saying hello:
	say "[talking-to-yourself]" instead.

Book 70 - Saying Hello To

Saying hello to is an action applying to one thing. Understand "hello [something]" as saying hello to.

Carry out the player saying hello to:
	if the noun is a person:
		say "'Hello to you too.'";
	else:
		try answering the noun that "hello" instead.

Book 71 - Saying Idiot

Saying idiot is an action applying to nothing. Understand "idiot" as saying idiot.

Carry out the player saying idiot:
	say "[talking-to-yourself]".

Book 72 - Shaking

Shaking is an action applying to one thing. Understand "shake [something]" as shaking.

Check the player shaking:
	if the noun is a person:
		say "Be real." instead;
	else:
		say "Shaking [the noun] [ho-hum]" instead.

Book 73 - Skipping

Understand the command "skip" and "hop" as something new.

Skipping is an action applying to nothing. Understand "skip" as skipping. Understand the command "hop" as "skip".

Check the player skipping:
	say "Wasn't that fun?" instead.

Book 74 - Smiling

Smiling is an action applying to nothing. Understand "smile" as smiling.

Carry out the player smiling:
	say "How nice."

Book 75 - Smiling At

Smiling at is an action applying to one thing. Understand "smile at [something]" as smiling at.

Check the player smiling at:
	try smiling instead.

Book 76 - Standing Before

Standing before is an action applying to one thing. Understand "stand before [something]" as standing before.

Check the player standing before:
	say "[wastes]" instead.

Book 77 - Steering

Steering is an action applying to two things. Understand "point [something] at/to [something]" as steering.

Check the player steering:
	say "That would be pointless." instead.

Book 78 - Thanking

Thanking is an action applying to one thing. Understand "thank [something]" as thanking. Understand the command "thanks" as "thank".

Check the player thanking:
	if the noun is a person:
		say "You do so, but [the noun] seems less than overjoyed." instead;
	else:
		say "[yuks]" instead.

Book 79 - Throwing Off

Throwing off is an action applying to two things. Understand "throw [something preferably held] off [something]" and "throw [something preferably held] over [something]" as throwing off.

Check the player throwing off:
	say "You can't do that!" instead.

Book 80 - Tying

Tying is an action applying to one thing. Understand "tie [something]" as tying.

Check the player tying:
	say "You can't tie [the noun]." instead.

Book 81 - Tying Together

Tying together is an action applying to one thing. Understand "tie together [something]" and "tie [something] together" as tying together.

Check the player tying together:
	say "[unrecognized-sentence]" instead.

Book 82 - Typing

Typing is an action applying to nothing. Understand "type" as typing.

Check the player typing:
	say "There's no keyboard in sight." instead.

Book 83 - Typing On

Typing on is an action applying to one thing. Understand "type on [something]" as typing on.

Check the player typing on:
	say "You can't type on that!" instead.

Book 57 - Unplugging

Unplugging is an action applying to one thing. Understand "unplug [something]" as unplugging. Understand the command "disconnect" as "unplug".

Check the player unplugging:
	say "[impossibles]" instead.

Book 84 - Untying

Untying is an action applying to one thing. Understand "untie [something]" as untying.

Check the player untying:
	say "[yuks]" instead.

Book 85 - Waiting For

Waiting for is an action applying to one thing. Understand "wait for [anything]" as waiting for.

A rule for reaching inside a room when waiting for:
	allow access.

Check the player waiting for:
	say "You may be waiting quite a while." instead.

Book 86 - Watering

Watering is an action applying to two things. Understand "water [something] with [something]" as watering.

Check the player watering:
	say "It doesn't need watering." instead.

Book 87 - Waving At

Waving at is an action applying to one thing. Understand "wave at [something]" and "wave to [something]" as waving at.

Check the player waving at:
	say "Despite your friendly nature, [the noun] isn't likely to respond."

Book 88 - Yelling

Understand the command "shout" as something new.

Yelling is an action applying to nothing. Understand "yell" as yelling. Understand the command "scream", "shout", "howl" as "yell".

Check the player yelling:
	say "You begin to get a sore throat." instead.
	
Book 89 - Yelling At

Yelling at is an action applying to one thing. Understand "yell at [something]" as yelling at.

Check the player yelling at:
	try yelling instead.

[--------------------------------------]

Hitchhiker Actions ends here.
