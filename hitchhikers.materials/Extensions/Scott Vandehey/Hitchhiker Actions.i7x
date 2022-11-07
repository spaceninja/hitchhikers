Hitchhiker Actions by Scott Vandehey begins here.

"A large set of actions from The Hitchhiker's Guide to the Galaxy. Some are overrides of standard action responses, but most are new actions. Hitchhikers was written at a time when most players were unfamiliar with text adventures, so there are a lot of actions that seem to be based around the idea that the player might try a random phrase that doesn't really fit the parser. I've done my best to preserve them all, even if they perhaps aren't needed for a modern audience."

"Ported from the original ZIL code by Infocom."

Use authorial modesty.
Include Basic Screen Effects by Emily Short.

[--------------------------------------]

Volume 1 - Conditions

A person can be asleep.
A person can be groggy.
A person can be hungover.
A person can be prone.

[--------------------------------------]

Volume 2 - Variables

The current topic is a number that varies.

[--------------------------------------]

Volume 3 - Timers

When play begins:
	the current topic resets in 0 turns from now;

At the time when the current topic resets:
	now the current topic is 0;

[--------------------------------------]

Volume 4 - Random Responses

To say ho-hum:
	say "[one of]doesn't do anything[or]accomplishes nothing[or]has no desirable effect[in random order]."

To say impossibles:
	say "[one of]You have lost your mind[or]You are clearly insane[or]You appear to have gone barking mad[or]I'm not convinced you're allowed to be playing with this computer[or]Run out on the street and say that. See what happens[or]No, no, a thousand times no. Go boil an egg[in random order]."

To say wastes:
	say "[one of]Complete waste of time[or]Useless. Utterly useless[or]A totally unhelpful idea[in random order]."

To say yuks:
	say "[one of]What a concept[or]Nice try[or]You can't be serious[or]Not bloody likely[in random order]."

To say zen:
	say "A brave, Zen-like effort. It fails."

[--------------------------------------]

Volume 5 - Common Responses

To say unrecognized-sentence:
	say "That sentence isn't one I recognise."

To say not-in-this-game:
	say "You can't. At least, not in this game you can't."

To say pointless:
	say "That would be pointless."

To say talking-to-yourself:
	say "Talking to yourself is a sign of impending mental collapse."

To say tell-me-how:
	say "You must tell me how to do that to [the noun]."

To say unimportant-thing:
	say "That's not important; leave it alone."

To say while-lying:
	say "You can't do that while you're lying down!"

[--------------------------------------]

Volume 6 - Modifications to Standard Rules

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

Book 6 - Block Showing

The block showing rule response (A) is "I doubt [the second noun] [are] interested."

Book 7 - Block Sleeping

The block sleeping rule response (A) is "There's no bed here."

Book 8 - Block Telling

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

Book 17 - Printing the Player's Obituary

Rule for printing the player's obituary: 
	say "We are about to give you your score. Put on your peril-sensitive sunglasses now. (Hit RETURN or ENTER when ready.)[paragraph break]";
	wait for any key;
	say "Your score is [score] of a possible [maximum score], in [turn count] turn[s].";
	rule succeeds.

Book 18 - Print Inventory

To say inventory-intro:
	say "[We] have:[line break]";
	if the player is hungover:
		say "		a splitting headache[line break]";

Carry out taking inventory (this is the print hitchhikers inventory rule):
	if the first thing held by the player is nothing:
		if the player is not hungover:
			say "You are empty-handed.";
		else:
			say "[inventory-intro]";
	else:
		say "[inventory-intro]";
		list the contents of the player, with newlines, indented, including contents, giving inventory information, with extra indentation.

The print empty inventory rule does nothing.
The print hitchhikers inventory rule substitutes for the print standard inventory rule.

Book 19 - Reaching Inside a Room

Rule for reaching inside a room:
	say "[The noun] isn't here.";
	deny access.
	
Book 20 - Report Closing

The standard report closing rule response (A) is "Okay, [the noun] is now closed."

Book 21 - Report Jumping

The report jumping rule response (A) is "Wasn't that fun?"

Book 22 - Report Listening

The report listening rule response (A) is "At the moment, [the noun] makes no sound."

Book 23 - Report Opening

The standard report opening rule response (A) is "Okay, [the noun] is now open."

Book 24 - Report Smelling

The report smelling rule response (A) is "It smells just like [the noun]."

Book 25 - Report Tasting

The report tasting rule response (A) is "[not-in-this-game]".

Book 26 - Report Touching Things

The report touching things rule response (A) is "Fiddling with [the noun] [ho-hum]".

Book 27 - Report Waving Things

The report waving things rule response (A) is "[yuks]".

Book 28 - Report Waving Hands

The report waving hands rule response (A) is "How nice."

Book 29 - Requested Actions Require Persuasion

[This may be overkill, HHG2G actually only sets this response for V-ASK-FOR, but Inform applies this rule when asking for something]

The requested actions require persuasion rule response (A) is "Unsurprisingly, [the noun] doesn't oblige."

Book 30 - Saying No

Check an actor saying no (this is the saying no to a topic rule):
	if the actor is the player:
		try responding negatively with the current topic;
	stop the action.

The saying no to a topic rule substitutes for the block saying no rule.

Book 31 - Saying Yes

Check an actor saying yes (this is the saying yes to a topic rule):
	if the actor is the player:
		try responding positively with the current topic;
	stop the action.

The saying yes to a topic rule substitutes for the block saying yes rule.

Book 32 - Stand Up Before Going

[Don't get out of bed for the player]
The stand up before going rule does nothing.

Book 33 - Throwing It At

The futile to throw things at inanimate objects rule does nothing.
The block throwing at rule does nothing.

[--------------------------------------]

Volume 7 - Modifications to Standard Actions

Book 1 - Asking It About

Understand "ask [someone] [text]" as asking it about.

Book 2 - Answering It That

Understand "answer [someone] [text]" as answering it that.

Understand the command "reply" as "answer".

Check answering something that "hello" when the noun is a person:
	try saying hello to the noun instead.

Book 3 - Buying

Understand the command "order" as "buy". Understand "pay for [something]" as buying.

Book 4 - Dropping

Understand the command "hurl" and "toss" as "drop".

Book 5 - Entering

Understand "go to [something]" and "jump in [something]" as entering.

Book 6 - Examining

Understand the command "inspect" or "study" or "observe" or "see" or "scour" as "examine".

Book 7 - Going

Check going while the player is prone:
	say "[while-lying]" instead.

Book 8 - Jumping

Understand the command "leap" and "dive" as "jump".

Book 9 - Looking Under

Carry out the player looking under:
	if the noun is worn by the player:
		say "You're wearing it!" instead;
	else if the noun is carried by the player:
		say "You're holding it!" instead;
	else:
		say "There is nothing but dust there." instead;

Book 10 - Putting

Understand the command "stuff", "place", and "lay" as "put".

Book 11 - Quitting

Understand "give up" and "throw in the towel" as quitting the game.

Book 12 - Rubbing

Check the player rubbing:
	try touching the noun instead.

Book 13 - Saying Yes

Understand the command "ok" or "okay" or "sure" as "yes".

Book 14 - Searching

Understand "look down [something]" and "look up [something]" as searching.

Check the player searching a person:
	say "That wouldn't be polite." instead.

Book 15 - Standing

Understand the command "stand" as something new.

Standing is an action applying to nothing. Understand "stand" and "stand up" as standing.

Understand "stand on [something]" as entering. [Restore previous usage]

Carry out the player standing:
	if the player is prone:
		now the player is not prone;
		say "You are now on your feet.";
	else:
		say "You are already standing."

Book 16 - Taking

Check the player taking anything that is fixed in place:
	say "[yuks]" instead.

Book 17 - Tasting

Understand the command "lick" as "taste".

Book 18 - Telling It About

Understand "tell [someone] [text]" as telling it about.

Book 19 - Throwing It At

Check an actor throwing something at:
	now the noun is in the location;
	say "You missed.";
	stop the action.

Book 20 - Touching

Understand the command "pat" and "pet" as "touch".

Book 21 - Turning

Understand the command "spin", and "whirl" as "turn".

Book 22 - Tying It To

Understand the command "connect" as "tie".

Book 23 - Waking

Understand the command "alarm" and "rouse" as "wake".

Book 24 - Your Things

Understand "your" as a thing when the item described is held by the person asked.

[--------------------------------------]

Volume 8 - New Actions

Book 1 - Answering

Answering is an action applying to one thing. Understand "answer [something]" as answering.

Check the player answering:
	say "It is hardly likely that [the noun] is interested." instead.

Book 2 - Applauding

Applauding is an action applying to nothing. Understand "applaud" as applauding. Understand the command "clap" and "cheer" as "applaud".

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

Asking what is an action applying to one topic. Understand "what is [text]", "what [text]", and "what's [text]" as asking what.

Check the player asking what:
	say "Good question." instead.

Book 6 - Asking What About

Asking what about is an action applying to one topic. Understand "what about [text]" as asking what about.

Check the player asking what about:
	say "Well, what about it?" instead.

Book 7 - Asking Where

Asking where is an action applying to one thing. Understand "where is/am [anything]", "where [anything]", and "where's [anything]" as asking where.

A rule for reaching inside a room when asking where:
	allow access.

Check the player asking where:
	try finding the noun instead.

Book 8 - Asking Who

Asking who is an action applying to one topic. Understand "who is/am [text]", "who [text]", and "who's [text]" as asking who.

Check the player asking who:
	try asking what the topic understood instead.

Book 9 - Asking Why

Asking why is an action applying to nothing. Understand "why" as asking why.

Check the player asking why:
	say "Why not?" instead.

Book 10 - Attacking It With

Attacking it with is an action applying to two things. Understand "attack [something] with [something preferably held]" as attacking it with.

Check the player attacking something with:
	try attacking the noun instead.

Book 11 - Biting

Biting is an action applying to one thing. Understand "bite [something]" as biting.

Check the player biting:
	say "Biting [the noun] [ho-hum]" instead.

Book 12 - Blocking

Blocking is an action applying to one thing. Understand "block [something]" and "lie before [something]" as blocking. Understand the command "stop" as "block".

Check the player blocking:
	say "[wastes]" instead.

Book 13 - Blocking It With

Blocking it with is an action applying to two things. Understand "block [something] with [something]" as blocking it with.

Check the player blocking something with:
	say "[wastes]" instead.

Book 14 - Breaking

Understand the command "break", "crack", "destroy", "smash", "wreck" as something new. [from attack]

Breaking is an action applying to one thing. Understand "break [something]" as breaking. Understand the command "crack", "damage", "demolish", "destroy", "smash", "wreck" as "break".

Check the player breaking:
	say "Trying to break [the noun] [ho-hum]" instead.

Book 15 - Breaking It With

Breaking it with is an action applying to two things. Understand "break [something] with [something preferably held]" as breaking it with.

Check the player breaking something with:
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

Book 19 - Calling It With

Calling it with is an action applying to one topic and one thing. Understand "call [text] with/on [something]" as calling it with.

Check the player calling a topic with:
	try calling the topic understood instead.

Book 20 - Carving It In

Carving it in is an action applying to two things. Understand "carve [something] on/in [something]" as carving it in. Understand the command "inscribe", "scratch", and "write" as "carve".

Check the player carving something in:
	say "[yuks]" instead.

Book 21 - Carving It With

Carving it with is an action applying to two things. Understand "carve [something] with [something preferably held]" as carving it with.

Check the player carving something with:
	say "Huh?" instead.

Book 22 - Cleaning

Understand the command "clean" as something new.

Cleaning is an action applying to one thing. Understand "clean up/-- [something]" as cleaning. Understand the command "wash" and "tidy" as "clean".

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

Book 26 - Cutting It With

Cutting it with is an action applying to two things. Understand "cut through/-- [something] with [something preferably held]" as cutting it with.

Check the player cutting something with:
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

Digging is an action applying to one thing. Understand "dig in/with/through/-- [something]" as digging.

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
	say "You are so keen on escape that you literally leap through the fabric of the space-time continuum. You wake up in a shack on tenth-century Earth. A dressing gown, a toothbrush, and a flathead axe lie by your bed. Before you have a chance to move, Mongol hordes sweep magnificently across the plains of central Asia. They knock down your shack and burn the remains with you inside. You lose interest in the rest of the game.";
	end the story instead;

Book 33 - Escaping From

Escaping from is an action applying to one thing. Understand "escape from/-- [something]" as escaping from. Understand the command "flee" as "escape".

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

Book 36 - Finding

Finding is an action applying to one thing. Understand "find [anything]", "search for [anything]" and "look for [anything]" as finding. Understand the command "seek" as "find".

A rule for reaching inside a room when finding:
	allow access.

Carry out the player finding:
	if the noun is the player:
		say "You're in [the location].";
	else if the noun is held by the player:
		say "You have it!";
	else if the noun is held by a person and the noun is visible:
		say "As far as you can tell, [the holder of the noun] has it.";
	else if the noun is in a container and the noun is visible:
		say "It's in [the holder of the noun].";
	else if the noun is on a supporter and the noun is visible:
		say "It's on [the holder of the noun].";
	else if the noun is a backdrop:
		say "You figure it out!";
	else if the noun is in the location:
		say "Right in front of you.";
	else if the player's command includes "where":
		say "Beats me.";
	else:
		say "You'll have to do that yourself."

Book 37 - Filling

Filling is an action applying to one thing. Understand "fill [something]" as filling.

Check the player filling:
	say "Phil who?" instead.

Book 38 - Following

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

Book 39 - Fripping

Fripping is an action applying to nothing. Understand "fripping" as fripping. Understand the command "lyshus", "wimbgunts", "gashee", "morphousite", "thou", "bleem", "miserable", and "venchit" as "fripping".

Check the player fripping:
	say "Aaaaaaarggggghhhhhh!" instead.

Book 40 - Getting Dressed

Getting dressed is an action applying to nothing. Understand "get dressed" as getting dressed.

Check the player getting dressed:
	if the player wears something:
		say "You are!" instead;
	else:
		say "There's nothing to wear here." instead.

Book 41 - Getting Drunk

Getting drunk is an action applying to nothing. Understand "get drunk" as getting drunk.

Check the player getting drunk:
	say "You can't see any alcohol here!" instead.

Book 42 - Getting Out Of

Getting out of is an action applying to one thing. Understand "get out of/-- [something]", "jump out of/-- [something]" and "exit [something]" as getting out of.

Carry out getting out of something:
	try exiting instead.

Book 43 - Getting Undressed

Understand the command "disrobe" as something new.

Getting undressed is an action applying to nothing. Understand "get undressed" and "disrobe" as getting undressed.

Check the player getting undressed:
	if the player wears nothing:
		say "You're not wearing anything!" instead;
	else:
		say "Do you want to get arrested for indecent exposure?" instead.

Book 44 - Hanging It From

Hanging it from is an action applying to two things. Understand "hang [something] on/from [something]" as hanging it from.

Check the player hanging something from:
	say "You can't hang something from [the second noun]!" instead.

Book 45 - Hiding

Hiding is an action applying to nothing. Understand "hide" as hiding.

Check the player hiding:
	say "There's no place to hide here." instead.

Book 46 - Hiding Behind

Hiding behind is an action applying to one thing. Understand "hide behind/under [something]" as hiding behind.

Check the player hiding behind:
	try hiding instead.

Book 47 - Hitchhiking

Hitchhiking is an action applying to nothing. Understand "hitchhike" as hitchhiking. Understand the command "hitch" as "hitchhike".

Check the player hitchhiking:
	say "[wastes]" instead.	

Book 48 - Introducing

Introducing is an action applying to one topic. Understand "I am [text]", "I'm [text]", "I [text]", "my name is [text]" as introducing.

Carry out the player introducing:
	say "Pleased to meet you. I'm your computer."

Book 49 - Jumping over

Jumping over is an action applying to one thing. Understand "jump over/across/from/off [something]" as jumping over.

Check the player jumping over:
	say "Wasn't that fun?" instead.

Book 50 - Kicking

Kicking is an action applying to one thing. Understand "kick [something]" as kicking.

Check the player kicking:
	say "Kicking [the noun] [ho-hum]" instead.

Book 51 - Kneeling

Kneeling is an action applying to nothing. Understand "kneel" as kneeling. Understand the command "crawl" and "peek" as "kneel".

Check the player kneeling:
	say "[not-in-this-game]" instead.

Book 52 - Knocking

Knocking is an action applying to one thing. Understand "knock at/on [something]" as knocking. Understand the command "rap" as "knock".

Check the player knocking:
	if the noun is a door:
		say "Nobody's home.";
	else:
		say "Knocking on [the noun] [ho-hum]" instead.

Book 53 - Looking Behind

Looking behind is an action applying to one visible thing and requiring light. Understand "look behind [something]" as looking behind.

Check the player looking behind:
	say "There is nothing behind [the noun]." instead.

Book 54 - Looking up a Footnote

Looking up a footnote is an action out of world, applying to one number. Understand "footnote [number]" as looking up a footnote.

Carry out looking up a footnote:
	if the number understood is a number listed in the Table of Footnotes:
		say "[note entry]";
	else:
		say "There is no Footnote [number understood]".

Table of Footnotes
number	noun (text)	note
0	--	"Specify a number, as in 'FOOTNOTE 6.'"

Understand "footnote" as a mistake ("Specify a number, as in 'FOOTNOTE 6.'").

Book 55 - Lowering

Lowering is an action applying to one thing. Understand "lower [something]" as lowering.

Check the player lowering:
	try raising the noun instead.

Book 56 - Lying Down

Lying down is an action applying to nothing. Understand "lie down" and "recline" as lying down.

Carry out the player lying down:
	if the player is prone:
		say "You are already laying down.";
	else:
		now the player is prone;
		say "You are now lying on the ground."

Book 57 - Lying Down On

Lying down on is an action applying to one thing. Understand "lie down/-- in/on/-- [something]" as lying down on.

Check the player lying down on:
	if the noun is a person:
		try kissing the noun instead;
	else:
		say "[wastes]" instead.

Book 58 - Making

Making is an action applying to one thing. Understand "make [something]" as making.

Check the player making:
	say "You can't make [the noun]!" instead.

Book 59 - Negating

Negating is an action applying to one topic. Understand "dont [text]" as negating. Understand the command "don't" as "dont".

Check the player negating a topic listed in the Table of Negations:
	say "[reply entry]" instead.

Report the player negating:
	say "Not done."

Table of Negations
topic	reply
"look"	"That won't help."
"panic"	"[one of]Very clever. It looks like there's a lot you should be panicking about[or]Why not? Your position appears quite hopeless[in random order]."
"take"	"Not taken."
"wait"	"Time doesn't pass..."

Book 60 - Panicking

Panicking is an action applying to nothing. Understand "panic" as panicking.

Check the player panicking:
	say "Not surprised." instead.

Book 61 - Picking

Picking is an action applying to one thing. Understand "pick [something]" as picking.

Check the player picking:
	say "[impossibles]" instead.
	
Book 62 - Picking It With

Picking it with is an action applying to two things. Understand "pick [something] with [something]" as picking it with.

Check the player picking something with:
	try picking the noun instead.

Book 63 - Planting It In

Planting it in is an action applying to two things. Understand "plant [something preferably held] in [something]" as planting it in. Understand the command "bury" as "plant".

Check the player planting something in:
	say "You can't plant something in [the second noun]." instead.

Book 64 - Plugging It In

Plugging it in is an action applying to two things. Understand "plug in/-- [something] in/to/into [something]" as plugging it in.

Check the player plugging something in:
	say "You can't seem to plug [the noun] into [the second noun]."

Book 65 - Pointing

Pointing is an action applying to one thing. Understand "point at/to [something]" as pointing. Understand the command "steer" as "point".

Check the player pointing:
	say "[pointless]" instead.

Book 66 - Pouring

Pouring is an action applying to one thing. Understand "pour [something preferably held]" as pouring. Understand the command "spill" and "sprinkle" as "pour".

Check the player pouring:
	say "[yuks]" instead.

Book 67 - Pouring It In

Pouring it in is an action applying to two things. Understand "pour [something preferably held] in/on/over [something]" as pouring it in.

Check the player pouring something in:
	try pouring the noun instead.

Book 68 - Protesting

Protesting is an action applying to nothing. Understand "protest" as protesting. Understand the command "argue" as "protest".

Check the player protesting:
	say "To whom? About what? Why?" instead.

Book 69 - Pulling Together

Pulling together is an action applying to one thing. Understand "pull together [something]" and "move together [something]" as pulling together.

Check the player pulling together:
	say "[unrecognized-sentence]" instead.

Book 70 - Putting It Behind

Putting it behind is an action applying to two things. Understand "put [other things] behind [something]" as putting it behind.

Check the player putting something behind:
	say "[wastes]" instead.	

Book 71 - Putting It In Front Of

Putting it in front of is an action applying to two things. Understand "put [other things] at/before [something]", "drop [other things] at/before [something]", "put [other things] in front of [something]", and "drop [other things] in front of [something]" as putting it in front of.

Check the player putting something in front of:
	say "[wastes]" instead.	

Book 72 - Putting It Under

Putting it under is an action applying to two things. Understand "put [other things] under [something]" as putting it under. Understand the command "slide" as "put".

Check the player putting something under:
	say "[wastes]" instead.	

Book 73 - Raising

Raising is an action applying to one thing. Understand "raise [something]" as raising. Understand the command "lift" as "raise".

Check the player raising:
	say "Playing in this way with [the noun] [ho-hum]" instead.

Book 74 - Refusing

Refusing is an action applying to one thing. Understand "refuse [something]" as refusing.

Check the player refusing:
	try negating "take" instead.

Book 75 - Relaxing

Relaxing is an action applying to nothing. Understand "relax" as relaxing.

Check the player relaxing:
	say "[zen]" instead.

Book 76 - Repairing

Repairing is an action applying to one thing. Understand "repair [something]" as repairing. Understand the command "fix" and "unjam" as "repair".

Check the player repairing:
	say "I'm not sure it's broken." instead.

Book 77 - Replacing

Replacing is an action applying to one thing. Understand "replace [something]" as replacing.

Check the player replacing:
	say "It's not in need of replacement." instead.

Book 78 - Rescuing

Rescuing is an action applying to one thing. Understand "save [something]" and "help [something]" as rescuing.

Check the player rescuing:
	say "Sorry, but [the noun] is beyond help." instead.

Book 79 - Responsing Negatively With

Responding negatively with is an action out of world, applying to one number.

Carry out responding negatively with:
	if the number understood is a number listed in the Table of Negative Replies:
		say "[reply entry]";
	else:
		say "[the reply corresponding to a number of 0 in the Table of Negative Replies]"

Table of Negative Replies
number	reply
0	"You sound rather negative."

Book 80 - Responsing Positively With

Responding positively with is an action out of world, applying to one number.

Carry out responding positively with:
	if the number understood is a number listed in the Table of Positive Replies:
		say "[reply entry]";
	else:
		say "[the reply corresponding to a number of 0 in the Table of Positive Replies]"

Table of Positive Replies
number	reply
0	"You sound rather positive."

Book 81 - Saying Hello

Saying hello is an action applying to nothing. Understand "hello" as saying hello. Understand the command "hi" as "hello".

Check the player saying hello:
	say "[talking-to-yourself]" instead.

Book 82 - Saying Hello To

Saying hello to is an action applying to one thing. Understand "hello [something]" as saying hello to.

Carry out the player saying hello to:
	if the noun is a person:
		say "'Hello to you too.'";
	else:
		try answering the noun that "hello" instead.

Book 83 - Saying Idiot

Saying idiot is an action applying to nothing. Understand "idiot" as saying idiot.

Carry out the player saying idiot:
	say "[talking-to-yourself]".

Book 84 - Shaking

Shaking is an action applying to one thing. Understand "shake [something]" as shaking.

Check the player shaking:
	if the noun is a person:
		say "Be real." instead;
	else:
		say "Shaking [the noun] [ho-hum]" instead.

Book 85 - Shaking It With

Shaking it with is an action applying to two things. Understand "shake [something] with [something]" as shaking it with.

Check the player shaking something with:
	say "[unrecognized-sentence]" instead.

Book 86 - Shooting

Shooting is an action applying to nothing. Understand "shoot" as shooting. Understand the command "fire" and "blast" as "shoot".

Check the player shooting:
	say "With what? At whom? Why?" instead.

Book 87 - Shooting At

Shooting at is an action applying to one thing. Understand "shoot [something]" as shooting at.

Check the player shooting at:
	say "You have nothing to shoot [the noun] with." instead.

Book 88 - Shooting It With

Shooting it with is an action applying to two things. Understand "shoot [something] with [something preferably held]" as shooting it with. Understand "shoot [something preferably held] at [something]" as shooting it with (with nouns reversed).

Check the player shooting something with:
	say "Don't ever bother applying for a job as an armaments expert." instead.

Book 89 - Skipping

Understand the command "skip" and "hop" as something new.

Skipping is an action applying to nothing. Understand "skip" as skipping. Understand the command "hop" as "skip".

Check the player skipping:
	say "Wasn't that fun?" instead.

Book 90 - Smiling

Smiling is an action applying to nothing. Understand "smile" as smiling.

Carry out the player smiling:
	say "How nice."

Book 91 - Smiling At

Smiling at is an action applying to one thing. Understand "smile at [something]" as smiling at.

Check the player smiling at:
	try smiling instead.

Book 92 - Standing Before

Standing before is an action applying to one thing. Understand "stand before [something]" as standing before.

Check the player standing before:
	say "[wastes]" instead.

Book 93 - Steering It To

Steering it to is an action applying to two things. Understand "steer [something] at/to [something]" as steering it to.

Check the player steering something to:
	say "[pointless]" instead.

Book 94 - Telling

Telling is an action applying to one thing. Understand "tell [something]" and "say to [something]" as telling. Understand the command "address" as "tell".

Check the player telling:
	if the noun is not a person:
		say "You can't talk to [the noun]!" instead;
	else:
		say "Hmmm ... [The Noun] looks at you expectantly, as if you seemed to be about to talk." instead.

Book 95 - Thanking

Thanking is an action applying to one thing. Understand "thank [something]" as thanking. Understand the command "thanks" as "thank".

Check the player thanking:
	if the noun is a person:
		say "You do so, but [the noun] seems less than overjoyed." instead;
	else:
		say "[yuks]" instead.

Book 96 - Throwing It Off

Throwing it off is an action applying to two things. Understand "throw [something preferably held] off/over [something]" as throwing it off.

Check the player throwing something off:
	say "You can't do that!" instead.

Book 97 - Tying

Tying is an action applying to one thing. Understand "tie [something]" as tying.

Check the player tying:
	say "You can't tie [the noun]." instead.

Book 98 - Tying Together

Tying together is an action applying to one thing. Understand "tie together [something]" and "tie [something] together" as tying together.

Check the player tying together:
	say "[unrecognized-sentence]" instead.

Book 99 - Typing

Typing is an action applying to nothing. Understand "type" as typing.

Check the player typing:
	say "There's no keyboard in sight." instead.

Book 100 - Typing On

Typing on is an action applying to one thing. Understand "type on [something]" as typing on.

Check the player typing on:
	say "You can't type on that!" instead.

Book 101 - Unplugging

Unplugging is an action applying to one thing. Understand "unplug [something]" as unplugging. Understand the command "disconnect" as "unplug".

Check the player unplugging:
	say "[impossibles]" instead.

Book 102 - Untying

Untying is an action applying to one thing. Understand "untie [something]" as untying.

Check the player untying:
	say "[yuks]" instead.

Book 103 - Waiting For

Waiting for is an action applying to one thing. Understand "wait for [anything]" as waiting for.

A rule for reaching inside a room when waiting for:
	allow access.

Check the player waiting for:
	say "You may be waiting quite a while." instead.

Book 104 - Watering It With

Watering it with is an action applying to two things. Understand "water [something] with [something]" as watering it with.

Check the player watering something with:
	say "It doesn't need watering." instead.

Book 105 - Waving At

Waving at is an action applying to one thing. Understand "wave at/to [something]" as waving at.

Check the player waving at:
	say "Despite your friendly nature, [the noun] isn't likely to respond."

Book 106 - Yelling

Understand the command "shout" as something new.

Yelling is an action applying to nothing. Understand "yell" as yelling. Understand the command "scream", "shout", "howl" as "yell".

Check the player yelling:
	say "You begin to get a sore throat." instead.
	
Book 107 - Yelling At

Yelling at is an action applying to one thing. Understand "yell at [something]" as yelling at.

Check the player yelling at:
	try yelling instead.

[--------------------------------------]

Hitchhiker Actions ends here.
