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
A person can be lost.
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

To say jigs-up:
	say "[line break][line break]    ****  You have died  ****[line break][line break]"

[--------------------------------------]

Volume 6 - Modifications to Standard Rules

Book 1 - Block Asking

The block asking rule response (A) is "A long silence tells you that [the noun] isn't interested in talking about [the topic understood]."

Book 2 - Block Attacking

The block attacking rule response (A) is "You are obviously letting things get to you. You should learn to relax a little."

Book 3 - Block Buying

The block buying rule response (A) is "Sorry, [the noun] [aren't] for sale."

Book 4 - Block Drinking

The block drinking rule response (A) is "You can't drink that!"

Book 5 - Block Giving

The block giving rule response (A) is "Politely, [the second noun] refuses your offer."

Book 6 - Block Kissing

The block kissing rule response (A) is "This is family entertainment, not a video nasty."

Book 7 - Block Showing

The block showing rule response (A) is "I doubt [the second noun] [are] interested."

Book 8 - Block Sleeping

The block sleeping rule response (A) is "There's no bed here."

Book 9 - Block Telling

The block telling rule response (A) is "It doesn't look like [the noun] is interested."

Book 10 - Block Waking

The block waking rule response (A) is "I don't think [the noun] [are] sleeping."

Book 11 - Can't Close Unless Openable

The can't close unless openable rule response (A) is "[tell-me-how]".

Book 12 - Can't Eat Unless Edible

The can't eat unless edible rule response (A) is "Stuffing [the noun] in your mouth would do little to help at this point."

Book 13 - Can't Enter What's Not Enterable

The can't enter what's not enterable rule response (D) is "You hit your head against [the noun] as you attempt this feat."

Book 14 - Can't Give to a Non-Person

The can't give to a non-person rule response (A) is "You can't give [the noun] to [the second noun]!"

Book 15 - Can't Go Through Closed Doors

[Don't automatically open doors for the player]
The can't go through closed doors rule does nothing.

Check the player going through a closed door:
	say "The door is closed." instead.

Book 16 - Can't Open Unless Openable

The can't open unless openable rule response (A) is "[tell-me-how]".

Book 17 - Can't Search Unless Container or Supporter

The can't search unless container or supporter rule response (A) is "There is nothing special to be seen."

Book 18 - Printing the Player's Obituary

Rule for printing the player's obituary: 
	say "We are about to give you your score. Put on your peril-sensitive sunglasses now. (Hit RETURN or ENTER when ready.)[paragraph break]";
	wait for any key;
	say "Your score is [score] of a possible [maximum score], in [turn count] turn[s].";
	rule succeeds.

Book 19 - Print Inventory

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

Book 20 - Reaching Inside a Room

Rule for reaching inside a room:
	say "[The noun] isn't here.";
	deny access.	
	
Book 21 - Report Closing

The standard report closing rule response (A) is "Okay, [the noun] is now closed."

Book 22 - Report Jumping

Report an actor jumping (this is the report jumping with response rule):
	if the actor is the player:
		if the action is not silent:
			now the current topic is 15;
			the current topic resets in one turn from now;
			say "Wasn't that fun?" (A);
	otherwise:
		say "[The actor] [jump] on the spot." (B).

The report jumping with response rule substitutes for the report jumping rule.

Book 23 - Report Listening

The report listening rule response (A) is "At the moment, [the noun] makes no sound."

Book 24 - Report Opening

The standard report opening rule response (A) is "Okay, [the noun] is now open."

Book 25 - Report Smelling

The report smelling rule response (A) is "It smells just like [the noun]."

Book 26 - Report Tasting

The report tasting rule response (A) is "[not-in-this-game]".

Book 27 - Report Touching Things

The report touching things rule response (A) is "Fiddling with [the noun] [ho-hum]".

Book 28 - Report Waving Things

The report waving things rule response (A) is "[yuks]".

Book 29 - Report Waving Hands

The report waving hands rule response (A) is "How nice."

Book 30 - Requested Actions Require Persuasion

[This may be overkill, HHG2G actually only sets this response for V-ASK-FOR, but Inform applies this rule when asking for something]

The requested actions require persuasion rule response (A) is "Unsurprisingly, [the noun] doesn't oblige."

Book 31 - Saying No

Check an actor saying no (this is the saying no to a topic rule):
	if the actor is the player:
		try responding negatively with the current topic;
	stop the action.

The saying no to a topic rule substitutes for the block saying no rule.

Book 32 - Saying Yes

Check an actor saying yes (this is the saying yes to a topic rule):
	if the actor is the player:
		try responding positively with the current topic;
	stop the action.

The saying yes to a topic rule substitutes for the block saying yes rule.

Book 33 - Stand Up Before Going

[Don't get out of bed for the player]
The stand up before going rule does nothing.

Book 34 - Telling Yourself

The telling yourself rule response (A) is "[talking-to-yourself]".

Book 35 - Throwing It At

The futile to throw things at inanimate objects rule does nothing.
The block throwing at rule does nothing.

[--------------------------------------]

Volume 7 - Modifications to Standard Actions

Book 1 - Asking It About

Understand "ask [someone] [text]" as asking it about.

Check an actor asking something about (this is the block asking yourself rule):
	if the noun is the player:
		if the actor is the player:
			say "[talking-to-yourself]" (A);
		stop the action.

Book 2 - Answering It That

Understand "answer [someone] [text]" as answering it that.

Understand the command "reply" as "answer".

Check answering something that "hello" when the noun is a person:
	try saying hello to the noun instead.

Book 3 - Attacking

Check the player attacking the player (this is the attacking yourself rule):
	say "Done." (A);
	say "[jigs-up]" (B);
	end the story instead.

Book 4 - Buying

Understand the command "order" as "buy". Understand "pay for [something]" as buying.

Book 5 - Dropping

Understand the command "hurl" and "toss" as "drop".

Book 6 - Entering

Understand "climb in [something]", "jump in [something]", "go to [something]", "rest in [something]", "sit in [something]", "sleep in/on [something]", "squat in [something]" as entering.

Understand the command "board" and "embark" as "enter".

Book 7 - Examining

Understand the command "inspect" or "study" or "observe" or "see" or "scour" as "examine".

Book 8 - Going

Check an actor going while the actor is prone (this is the block going while prone rule):
	if the actor is the player:
		say "[while-lying]" (A);
	stop the action.

Book 9 - Jumping

Understand the command "leap" and "dive" as "jump".

Check an actor jumping while the actor is prone (this is the block jumping while prone rule):
	if the actor is the player:
		say "[while-lying]" (A);
	stop the action.

Book 10 - Listening To

Check an actor listening to (this is the block listening to yourself rule):
	if the noun is the player:
		if the actor is the player:
			say "Yes?" (A);
		stop the action.

Book 11 - Looking Under

Carry out the player looking under:
	if the noun is worn by the player:
		say "You're wearing it!" instead;
	else if the noun is carried by the player:
		say "You're holding it!" instead;
	else:
		say "There is nothing but dust there." instead;

Book 12 - Putting

Understand the command "stuff", "place", and "lay" as "put".

Book 13 - Quitting

Understand "give up" and "throw in the towel" as quitting the game.

Book 14 - Rubbing

Check the player rubbing:
	try touching the noun instead.

Book 15 - Saying Yes

Understand the command "ok" or "okay" or "sure" as "yes".

Book 16 - Searching

Understand "look down [something]" and "look up [something]" as searching.

Check an actor searching a person (this is the searching yourself rule):
	if the actor is the noun and the actor is the player:
		try taking inventory instead.

Check an actor searching a person (this is the block searching people rule):
	if the actor is the player:
		say "That wouldn't be polite." (A);
	stop the action.

Book 17 - Standing

Understand the command "stand" as something new.

Standing is an action applying to nothing. Understand "stand" and "stand up" as standing.

Understand "stand on [something]" as entering. [Restore previous usage]

Carry out the player standing:
	if the player is prone:
		now the player is not prone;
		say "You are now on your feet.";
	else:
		say "You are already standing."

Book 18 - Taking

Check the player taking anything that is fixed in place:
	say "[yuks]" instead.

Book 19 - Tasting

Understand the command "lick" as "taste".

Book 20 - Telling It About

Understand "tell [someone] [text]" as telling it about.

Book 21 - Throwing It At

Check an actor throwing something at:
	now the noun is in the location;
	say "You missed.";
	stop the action.

Book 22 - Touching

Understand the command "pat" and "pet" as "touch".

Book 23 - Turning

Understand the command "spin", and "whirl" as "turn".

Book 24 - Tying It To

Understand the command "connect" as "tie".

Book 25 - Waking

Understand the command "alarm" and "rouse" as "wake".

Check an actor waking the player (this is the block waking yourself rule):
	if the actor is the player:
		say "You already are!" (A);
	stop the action.

Book 26 - Your Things

Understand "your" as a thing when the item described is held by the person asked.

[--------------------------------------]

Volume 8 - New Actions

Book 1 - Answering

Answering is an action applying to one thing. Understand "answer [something]" as answering.

Check an actor answering (this is the block answering it rule):
	if the actor is the player:
		say "It is hardly likely that [the noun] is interested." (A);
	stop the action.

Book 2 - Applauding

Applauding is an action applying to nothing. Understand "applaud" as applauding. Understand the command "clap" and "cheer" as "applaud". To applaud is a verb.

Report an actor applauding (this is the report applauding rule):
	if the actor is the player:
		say "'Thank you, thank you.'" (A);
	otherwise:
		say "[The actor] [applaud]." (B).

Book 3 - Appreciating

Appreciating is an action applying to one thing. Understand "appreciate [something]" as appreciating.

Check an actor appreciating (this is the block appreciating rule):
	if the actor is the player:
		say "'Hey, I never get any appreciation! There's absolutely no job satisfaction in being a computer.'" (A);
	stop the action.

Book 4 - Asking for Help

Asking for help is an action out of world, applying to nothing. Understand "help" as asking for help. Understand the command "hint" and "hints" as "help".

Report asking for help (this is the report asking for help rule):
	say "If you're really stuck, a complete map and InvisiClues Hint Booklet are available from your dealer, or via mail order with the form that came in your package." (A);

Book 5 - Asking What

Asking what is an action applying to one topic. Understand "what is [text]", "what [text]", and "what's [text]" as asking what.

Check an actor asking what (this is the block asking what rule):
	if the actor is the player:
		if the topic understood matches the text "object of the game" or the topic understood matches the text "goal of the game", case insensitively:
			say "That's for me to know and you to find out." (A);
		else:
			say "Good question." (B);
	stop the action.

Book 6 - Asking What About

Asking what about is an action applying to one topic. Understand "what about [text]" as asking what about.

Check an actor asking what about (this is the block asking what about rule):
	if the actor is the player:
		say "Well, what about it?" (A);
	stop the action.

Book 7 - Asking Where

Asking where is an action applying to one thing. Understand "where is/am [anything]", "where [anything]", and "where's [anything]" as asking where.

A rule for reaching inside a room when asking where:
	allow access.

Check an actor asking where (this is the try finding instead rule):
	try the actor finding the noun instead.

Book 8 - Asking Who

Asking who is an action applying to one topic. Understand "who is/am [text]", "who [text]", and "who's [text]" as asking who.

Check an actor asking who (this is the block asking who rule):
	unless the actor is the player:
		stop the action.

Check an actor asking who (this is the try asking what instead rule):
	unless the topic understood exactly matches the text "i", case insensitively:
		try the actor asking what the topic understood instead.

Report an actor asking who (this is the report asking who am I rule):
	if the topic understood exactly matches the text "I", case insensitively:
		say "You are [the printed name of the player]." (A);

Book 9 - Asking Why

Asking why is an action applying to nothing. Understand "why" as asking why.

Check an actor asking why (this is the block asking why rule):
	if the actor is the player:
		say "Why not?" (A);
	stop the action.

Book 10 - Attacking It With

Attacking it with is an action applying to two things. Understand "attack [something] with [something preferably held]" as attacking it with.

Check an actor attacking something with (this is the try attacking instead rule):
	try the actor attacking the noun instead.

Book 11 - Biting

Biting is an action applying to one thing. Understand "bite [something]" as biting.

Check an actor biting (this is the block biting rule):
	if the actor is the player:
		say "Biting [the noun] [ho-hum]" (A);
	stop the action.

Book 12 - Blocking

Blocking is an action applying to one thing. Understand "block [something]" and "lie before [something]" as blocking. Understand the command "stop" as "block".

Check an actor blocking (this is the block blocking rule):
	if the actor is the player:
		say "[wastes]" (A);
	stop the action.

Book 13 - Blocking It With

Blocking it with is an action applying to two things. Understand "block [something] with [something]" as blocking it with.

Check an actor blocking something with (this is the block blocking it with rule):
	if the actor is the player:
		say "[wastes]" (A);
	stop the action.

Book 14 - Breaking

Understand the command "break", "crack", "destroy", "smash", "wreck" as something new. [from attack]

Breaking is an action applying to one thing. Understand "break [something]" as breaking. Understand the command "crack", "damage", "demolish", "destroy", "smash", "wreck" as "break".

Check an actor breaking (this is the block breaking rule):
	if the actor is the player:
		say "Trying to break [the noun] [ho-hum]" (A);
	stop the action.

Book 15 - Breaking It With

Breaking it with is an action applying to two things. Understand "break [something] with [something preferably held]" as breaking it with.

Check an actor breaking something with:
	try the actor breaking the noun instead.

Book 16 - Brushing

Brushing is an action applying to one thing. Understand "brush [something]" as brushing.

Check an actor brushing (this is the block brushing rule):
	if the actor is the player:
		say "You have nothing to brush [the noun] with." (A);
	stop the action.

Book 17 - Brushing It With

Brushing it with is an action applying to two things. Understand "brush [something] with [something preferably held]" as brushing it with.

Check an actor brushing something with (this is the block brushing it with rule):
	if the actor is the player:
		say "With [the second noun]!" (A);
	stop the action.

Book 18 - Calling

Calling is an action applying to one topic. Understand "call [text]" as calling. Understand the command "phone" as "call".

Check an actor calling (this is the block calling rule):
	if the actor is the player:
		say "There's no phone here!" (A);
	stop the action.

Book 19 - Calling It With

Calling it with is an action applying to one topic and one thing. Understand "call [text] with/on [something]" as calling it with.

Check an actor calling a topic with (this is the try calling instead rule):
	try the actor calling the topic understood instead.

Book 20 - Carving It In

Carving it in is an action applying to two things. Understand "carve [something] on/in [something]" as carving it in. Understand the command "inscribe", "scratch", and "write" as "carve".

Check an actor carving something in (this is the block carving it in rule):
	if the actor is the player:
		say "[yuks]" (A);
	stop the action.

Book 21 - Carving It With

Carving it with is an action applying to two things. Understand "carve [something] with [something preferably held]" as carving it with.

Check an actor carving something with (this is the block carving it with rule):
	if the actor is the player:
		say "Huh?" (A);
	stop the action.

Book 22 - Cleaning

Understand the command "clean" as something new.

Cleaning is an action applying to one thing. Understand "clean up/-- [something]" as cleaning. Understand the command "wash" and "tidy" as "clean".

Check an actor cleaning (this is the block cleaning rule):
	unless the actor is the player:
		stop the action.

Report an actor cleaning (this is the report cleaning rule):
	say "It is now much cleaner." (A);

Book 23 - Climbing Down

Climbing down is an action applying to one thing. Understand "climb down [something]", "walk down [something]", and "descend [something]" as climbing down.

Check an actor climbing down (this is the block climbing down rule):
	if the actor is the player:
		say "[yuks]" (A);
	stop the action.

Book 24 - Climbing Up

Climbing up is an action applying to one thing. Understand "climb up [something]", "walk up [something]", "ascend [something]", and "scale [something]" as climbing up.

Check an actor climbing up (this is the block climbing up rule):
	if the actor is the player:
		say "[yuks]" (A);
	stop the action.

Book 25 - Counting

Counting is an action applying to one thing. Understand "count [something]" as counting.

Check an actor counting (this is the block counting rule):
	if the actor is the player:
		say "[impossibles]" (A);
	stop the action.

Book 26 - Cutting It With

Cutting it with is an action applying to two things. Understand "cut through/-- [something] with [something preferably held]" as cutting it with.

Check an actor cutting something with (this is the block cutting it with rule):
	if the actor is the player:
		say "I doubt that the 'cutting edge' of [the second noun] is adequate." (A);
	stop the action.


Book 27 - Diagnosing

Diagnosing is an action applying to nothing. Understand "diagnose" as diagnosing.

Check an actor diagnosing (this is the block diagnosing rule):
	unless the actor is the player:
		stop the action.

Report an actor diagnosing (this is the report diagnosing rule):
	if the player is hungover:
		say "[We] have a big blinding throbber." (A);
	else if the player is groggy:
		say "[We] feel weak." (B);
	else:
		say "[We] are in good health." (C);

Book 28 - Digging

Digging is an action applying to one thing. Understand "dig in/with/through/-- [something]" as digging.

Check an actor digging (this is the block digging rule):
	if the actor is the player:
		say "[wastes]" (A);
	stop the action.

Book 29 - Drinking From

Drinking from is an action applying to one thing. Understand "drink from [something preferably held]" as drinking from.

Check an actor drinking from (this is the block drinking from rule):
	if the actor is the player:
		say "[impossibles]" (A);
	stop the action.


Book 30 - Dozing

Understand the command "nap" as something new.

Dozing is an action applying to nothing. Understand "doze" as dozing. Understand the command "nap" and "snooze" as "doze".

Check an actor dozing (this is the block dozing rule):
	unless the actor is the player:
		stop the action.

Report an actor dozing (this is the report dozing rule):
	say "[We] doze for several minutes." (A);

Book 31 - Enjoying

Enjoying is an action applying to one thing. Understand "enjoy [something]" as enjoying.

Check an actor enjoying (this is the can't enjoy other people rule):
	if the noun is a person:
		try the actor kissing the noun instead.

Check an actor enjoying (this is the block enjoying rule):
	unless the actor is the player:
		stop the action.

Report an actor enjoying (this is the report enjoying rule):
	say "Not difficult at all, considering how enjoyable [the noun] [are]." (A);

Book 32 - Escaping

Escaping is an action applying to nothing. Understand "escape" as escaping.

Check an actor escaping (this is the block escaping rule):
	unless the actor is the player:
		stop the action.

Report an actor escaping (this is the report escaping rule):
	say "You are so keen on escape that you literally leap through the fabric of the space-time continuum. You wake up in a shack on tenth-century Earth. A dressing gown, a toothbrush, and a flathead axe lie by your bed. Before you have a chance to move, Mongol hordes sweep magnificently across the plains of central Asia. They knock down your shack and burn the remains with you inside. You lose interest in the rest of the game." (A);
	say "[jigs-up]" (B);
	end the story;

Book 33 - Escaping From

Escaping from is an action applying to one thing. Understand "escape from/-- [something]" as escaping from. Understand the command "flee" as "escape".

Check an actor escaping from (this is the try escaping instead rule):
	try the actor escaping instead.

Book 34 - Feeding

Understand the command "feed" as something new.

Feeding is an action applying to one thing. Understand "feed [someone]" as feeding.

Check an actor feeding (this is the block feeding rule):
	unless the actor is the player:
		stop the action.

Check an actor feeding (this is the can't feed without food rule):
	unless the actor is carrying an edible thing:
		say "[We] have nothing to feed [the noun] with." (A);
		stop the action.

Carry out an actor feeding (this is the try giving instead rule):
	if the player is carrying an edible thing (called food):
		say "([the food])";
		try the actor giving the food to the noun instead;

Book 35 - Feeding It To

Feeding it to is an action applying to two things. Understand "feed [something preferably held] to [someone]" as feeding it to. Understand "feed [someone] [something preferably held]" as feeding it to (with nouns reversed).

Check an actor feeding something to someone (this is the block feeding something to someone rule):
	unless the actor is the player:
		stop the action.

Check an actor feeding something to someone (this is the can't feed what's not edible rule):
	unless the noun is edible:
		say "[The noun] isn't edible." (A);
		stop the action.

Carry out an actor feeding something to someone (this is the try giving it to instead rule):
	try the actor giving the noun to the second noun instead;

Book 36 - Finding

Finding is an action applying to one thing. Understand "find [anything]", "search for [anything]" and "look for [anything]" as finding. Understand the command "seek" as "find".

A rule for reaching inside a room when finding:
	allow access.

Check an actor finding (this is the block finding rule):
	unless the actor is the player:
		stop the action.

Report an actor finding (this is the report finding rule):
	if the noun is the player:
		say "You're in [the location]." (A);
	else if the noun is held by the player:
		say "You have it!" (B);
	else if the noun is held by a person and the noun is visible:
		say "As far as you can tell, [the holder of the noun] has it." (C);
	else if the noun is in a container and the noun is visible:
		say "It's in [the holder of the noun]." (D);
	else if the noun is on a supporter and the noun is visible:
		say "It's on [the holder of the noun]." (E);
	else if the noun is a backdrop:
		say "You figure it out!" (F);
	else if the noun is in the location:
		say "Right in front of you." (G);
	else if the player's command includes "where":
		say "Beats me." (H);
	else:
		say "You'll have to do that yourself." (I);

Book 37 - Filling

Filling is an action applying to one thing. Understand "fill [something]" as filling.

Check an actor filling (this is the block filling rule):
	if the actor is the player:
		say "Phil who?" (A);
	stop the action.

Book 38 - Following

Following is an action applying to one thing. Understand "follow [anything]" as following. Understand the command "pursue" and "chase" as "follow".

A rule for reaching inside a room when following:
	allow access.

Check an actor following (this is the block following rule):
	if the actor is the player:
		if the actor is the noun:
			say "I'd like to, but like most computers I don't have legs." (A);
		else if the noun is in the location:
			say "But [the noun] is right here!" (B);
		else if the noun is not a person:
			say "[impossibles]" (C);
		else:
			say "[We] have no idea where [the noun] is." (D);
	stop the action.

Book 39 - Fripping

Fripping is an action applying to nothing. Understand "fripping" as fripping. Understand the command "lyshus", "wimbgunts", "gashee", "morphousite", "thou", "bleem", "miserable", and "venchit" as "fripping".

Check an actor fripping (this is the block fripping rule):
	if the actor is the player:
		say "Aaaaaaarggggghhhhhh!" (A);
	stop the action.

Book 40 - Getting Dressed

Getting dressed is an action applying to nothing. Understand "get dressed" as getting dressed.

Check an actor getting dressed (this is the block getting dressed rule):
	if the actor is the player:
		if the actor wears something:
			say "You are!" (A);
		else:
			say "There's nothing to wear here." (B);
	stop the action.

Book 41 - Getting Drunk

Getting drunk is an action applying to nothing. Understand "get drunk" as getting drunk.

Check an actor getting drunk (this is the block getting drunk rule):
	if the actor is the player:
		say "[We] can't see any alcohol here!" (A);
	stop the action.

Book 42 - Getting Out Of

Getting out of is an action applying to one thing. Understand "get out of/-- [something]", "jump out of/-- [something]" and "exit [something]" as getting out of.

Check an actor getting out of something (this is the try exiting instead rule):
	try the actor exiting instead.

Book 43 - Getting Undressed

Understand the command "disrobe" as something new.

Getting undressed is an action applying to nothing. Understand "get undressed" and "disrobe" as getting undressed.

Check an actor getting undressed (this is the block getting undressed rule):
	if the actor is the player:
		if the actor wears nothing:
			say "You're not wearing anything!" (A);
		else:
			now the current topic is 10;
			the current topic resets in one turn from now;
			say "Do you want to get arrested for indecent exposure?" (B);
	stop the action.

Book 104 - Going Around

Going around is an action applying to one thing. Understand "go on/around/behind [something]" as going around.

Check an actor going around (this is the block going around rule):
	if the actor is the player:
		now the current topic is 16;
		the current topic resets in one turn from now;
		say "Did you have any particular direction in mind?" (A);
	stop the action.

Book 44 - Hanging It From

Hanging it from is an action applying to two things. Understand "hang [something] on/from [something]" as hanging it from.

Check an actor hanging something from (this is the block hanging something from rule):
	if the actor is the player:
		say "[We] can't hang something from [the second noun]!" (A);
	stop the action.

Book 45 - Hiding

Hiding is an action applying to nothing. Understand "hide" as hiding.

Check an actor hiding (this is the block hiding rule):
	if the actor is the player:
		say "There's no place to hide here." (A);
	stop the action.

Book 46 - Hiding Behind

Hiding behind is an action applying to one thing. Understand "hide behind/under [something]" as hiding behind.

Check an actor hiding behind (this is the try hiding instead rule):
	try the actor hiding instead.

Book 47 - Hitchhiking

Hitchhiking is an action applying to nothing. Understand "hitchhike" as hitchhiking. Understand the command "hitch" as "hitchhike".

Check an actor hitchhiking (this is the block hitchhiking rule):
	if the actor is the player:
		say "[wastes]" (A);
	stop the action.

Book 48 - Introducing

Introducing is an action applying to one topic. Understand "I am [text]", "I'm [text]", "I [text]", "my name is [text]" as introducing.

Check an actor introducing (this is the block introducing rule):
	if the actor is the player:
		say "Pleased to meet you. I'm your computer." (A);
	stop the action.

Book 49 - Jumping over

Jumping over is an action applying to one thing. Understand "jump over/across/from/off [something]" as jumping over.

Check an actor jumping over (this is the block jumping over rule):
	unless the actor is the player:
		stop the action.

Check an actor jumping over while the actor is prone (this is the block jumping over while prone rule):
	if the actor is the player:
		say "[while-lying]" (A);
	stop the action.

Report an actor jumping over (this is the report jumping over rule):
	now the current topic is 15;
	the current topic resets in one turn from now;
	say "Wasn't that fun?" (A);

Book 50 - Kicking

Kicking is an action applying to one thing. Understand "kick [something]" as kicking.

Check an actor kicking (this is the block kicking rule):
	if the actor is the player:
		say "Kicking [the noun] [ho-hum]" (A);
	stop the action.

Book 51 - Kneeling

Kneeling is an action applying to nothing. Understand "kneel" as kneeling. Understand the command "crawl" and "peek" as "kneel".

Check an actor kneeling (this is the block kneeling rule):
	if the actor is the player:
		say "[not-in-this-game]" (A);
	stop the action.

Book 52 - Knocking

Knocking is an action applying to one thing. Understand "knock at/on [something]" as knocking. Understand the command "rap" as "knock".

Check an actor knocking (this is the block knocking rule):
	if the actor is the player:
		if the noun is a door:
			say "Nobody's home." (A);
		else:
			say "Knocking on [the noun] [ho-hum]" (B);
	stop the action.

Book 53 - Looking Behind

Looking behind is an action applying to one visible thing and requiring light. Understand "look behind [something]" as looking behind.

Check an actor looking behind (this is the block looking behind rule):
	if the actor is the player:
		say "There is nothing behind [the noun]." (A);
	stop the action.

Book 54 - Looking up a Footnote

Looking up a footnote is an action out of world, applying to one number. Understand "footnote [number]" as looking up a footnote.

Report looking up a footnote (this is the report looking up a footnote rule):
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

Check an actor lowering (this is the try raising instead rule):
	try the actor raising the noun instead.

Book 56 - Lying Down

Lying down is an action applying to nothing. Understand "lie down" and "recline" as lying down.

Check an actor lying down (this is the block lying down rule):
	if the actor is the player:
		say "[wastes]" (A);
	stop the action.

Book 57 - Lying Down On

Lying down on is an action applying to one thing. Understand "lie down/-- in/on/-- [something]" as lying down on.

Check an actor lying down on (this is the can't lie down on other people rule):
	if the noun is a person who is not the actor:
		if the actor is the player:
			try kissing the noun instead;
		stop the action.

Check an actor lying down on (this is the try entering instead rule):
	try the actor entering the noun instead.

Book 58 - Making

Making is an action applying to one thing. Understand "make [something]" as making.

Check an actor making (this is the block making rule):
	if the actor is the player:
		say "You can't make [the noun]!" (A);
	stop the action.

Book 59 - Negating

Negating is an action applying to one topic. Understand "dont [text]" as negating. Understand the command "don't" as "dont".

Check an actor negating (this is the block negating rule):
	unless the actor is the player:
		stop the action.

Report an actor negating (this is the report negating rule):
	if the topic understood is a topic listed in the Table of Negations:
		say "[reply entry]";
	else:
		say "Not done."

Table of Negations
topic	reply
"look"	"That won't help."
"panic"	"[one of]Very clever. It looks like there's a lot you should be panicking about[or]Why not? Your position appears quite hopeless[in random order]."
"take"	"Not taken."
"wait"	"Time doesn't pass..."

Book 60 - Panicking

Panicking is an action applying to nothing. Understand "panic" as panicking. To panic is a verb.

Report an actor panicking (this is the report panicking rule):
	if the actor is the player:
		say "Not surprised." (A);
	otherwise:
		say "[The actor] [panic]." (B).

Book 61 - Picking

Picking is an action applying to one thing. Understand "pick [something]" as picking.

Check an actor picking (this is the block picking rule):
	if the actor is the player:
		say "[impossibles]" (A);
	stop the action.

Book 62 - Picking It With

Picking it with is an action applying to two things. Understand "pick [something] with [something]" as picking it with.

Check an actor picking something with (this is the try picking instead rule):
	try the actor picking the noun instead.

Book 63 - Planting It In

Planting it in is an action applying to two things. Understand "plant [something preferably held] in [something]" as planting it in. Understand the command "bury" as "plant".

Check an actor planting something in (this is the block planting it in rule):
	if the actor is the player:
		say "You can't plant something in [the second noun]." (A);
	stop the action.

Book 64 - Plugging It In

Plugging it in is an action applying to two things. Understand "plug in/-- [something] in/to/into [something]" as plugging it in.

Check an actor plugging something in (this is the block plugging it in rule):
	if the actor is the player:
		say "You can't seem to plug [the noun] into [the second noun]." (A);
	stop the action.

Book 65 - Pointing

Pointing is an action applying to one thing. Understand "point at/to [something]" as pointing. Understand the command "steer" as "point".

Check an actor pointing (this is the block pointing rule):
	if the actor is the player:
		say "[pointless]" (A);
	stop the action.

Book 66 - Pouring

Pouring is an action applying to one thing. Understand "pour [something preferably held]" as pouring. Understand the command "spill" and "sprinkle" as "pour".

Check an actor pouring (this is the block pouring rule):
	if the actor is the player:
		say "[yuks]" (A);
	stop the action.

Book 67 - Pouring It In

Pouring it in is an action applying to two things. Understand "pour [something preferably held] in/on/over [something]" as pouring it in.

Check an actor pouring something in (this is the try pouring instead rule):
	try the actor pouring the noun instead.

Book 68 - Protesting

Protesting is an action applying to nothing. Understand "protest" as protesting. Understand the command "argue" as "protest".

Check an actor protesting (this is the block protesting rule):
	if the actor is the player:
		say "To whom? About what? Why?" (A);
	stop the action.

Book 69 - Pulling Together

Pulling together is an action applying to one thing. Understand "pull together [something]" and "move together [something]" and "pull [something] together" as pulling together.

Check an actor pulling together (this is the pulling yourself together rule):
	if the actor is the noun and the actor is the player:
		say "[zen]" instead.

Check an actor pulling together (this is the block pulling together rule):
	if the actor is the player:
		say "[unrecognized-sentence]" (A);
	stop the action.

Book 70 - Putting It Behind

Putting it behind is an action applying to two things. Understand "put [other things] behind [something]" as putting it behind.

Check an actor putting something behind (this is the block putting something behind rule):
	if the actor is the player:
		say "[wastes]" (A);
	stop the action.

Book 71 - Putting It In Front Of

Putting it in front of is an action applying to two things. Understand "put [other things] at/before [something]", "drop [other things] at/before [something]", "put [other things] in front of [something]", and "drop [other things] in front of [something]" as putting it in front of.

Check an actor putting something in front of (this is the block putting something in front of rule):
	if the actor is the player:
		say "[wastes]" (A);
	stop the action.

Book 72 - Putting It Under

Putting it under is an action applying to two things. Understand "put [other things] under [something]" as putting it under. Understand the command "slide" as "put".

Check an actor putting something under (this is the block putting something under rule):
	if the actor is the player:
		say "[wastes]" (A);
	stop the action.

Book 73 - Raising

Raising is an action applying to one thing. Understand "raise [something]" as raising. Understand the command "lift" as "raise".

Check an actor raising (this is the block raising rule):
	if the actor is the player:
		say "Playing in this way with [the noun] [ho-hum]" (A);
	stop the action.

Book 74 - Refusing

Refusing is an action applying to one thing. Understand "refuse [something]" as refusing.

Check an actor refusing (this is the try not taking instead rule):
	try the actor negating "take" instead.

Book 75 - Relaxing

Relaxing is an action applying to nothing. Understand "relax" as relaxing.

Check an actor relaxing (this is the block relaxing rule):
	if the actor is the player:
		say "[zen]" (A);
	stop the action.

Book 76 - Repairing

Repairing is an action applying to one thing. Understand "repair [something]" as repairing. Understand the command "fix" and "unjam" as "repair".

Check an actor repairing (this is the block repairing rule):
	if the actor is the player:
		say "I'm not sure it's broken." (A);
	stop the action.

Book 77 - Replacing

Replacing is an action applying to one thing. Understand "replace [something]" as replacing.

Check an actor replacing (this is the block replacing rule):
	if the actor is the player:
		say "It's not in need of replacement." (A);
	stop the action.

Book 78 - Rescuing

Rescuing is an action applying to one thing. Understand "save [something]" and "help [something]" as rescuing.

Check an actor rescuing (this is the block rescuing rule):
	if the actor is the player:
		say "Sorry, but [the noun] is beyond help." (A);
	stop the action.

Book 79 - Responsing Negatively With

Responding negatively with is an action out of world, applying to one number.

Report responding negatively with (this is the report responding negatively rule):
	if the number understood is a number listed in the Table of Negative Replies:
		say "[reply entry]";
	else:
		say "[the reply corresponding to a number of 0 in the Table of Negative Replies]"

Table of Negative Replies
number	reply
0	"You sound rather negative."

Book 80 - Responsing Positively With

Responding positively with is an action out of world, applying to one number.

Report responding positively with (this is the report responding positively rule):
	if the number understood is a number listed in the Table of Positive Replies:
		say "[reply entry]";
	else:
		say "[the reply corresponding to a number of 0 in the Table of Positive Replies]"

Table of Positive Replies
number	reply
0	"You sound rather positive."

Book 81 - Saying Hello

Saying hello is an action applying to nothing. Understand "hello" as saying hello. Understand the command "hi" as "hello".

Check an actor saying hello (this is the block saying hello rule):
	if the actor is the player:
		say "[talking-to-yourself]" (A);
	stop the action.

Book 82 - Saying Hello To

Saying hello to is an action applying to one thing. Understand "hello [something]" as saying hello to.

Check an actor saying hello to (this is the block saying hello to rule):
	unless the actor is the player:
		stop the action.

Report an actor saying hello to (this is the report saying hello to rule):
	if the noun is a person:
		say "'Hello to you too.'" (A);
	else:
		try answering the noun that "hello" instead.

Book 83 - Saying Idiot

Saying idiot is an action applying to nothing. Understand "idiot" as saying idiot.

Check an actor saying idiot (this is the block saying idiot rule):
	if the actor is the player:
		say "[talking-to-yourself]" (A);
	stop the action.

Book 84 - Shaking

Shaking is an action applying to one thing. Understand "shake [something]" as shaking.

Check an actor shaking (this is the can't shake other people rule):
	if the noun is a person who is not the actor:
		if the actor is the player:
			say "Be real." (A);
		stop the action.

Check an actor shaking (this is the block shaking rule):
	if the actor is the player:
		say "Shaking [the noun] [ho-hum]" (A);
	stop the action.

Book 85 - Shaking It With

Shaking it with is an action applying to two things. Understand "shake [something] with [something]" as shaking it with.

Check an actor shaking something with (this is the block shaking it with rule):
	if the actor is the player:
		say "[unrecognized-sentence]" (A);
	stop the action.

Book 86 - Shooting

Shooting is an action applying to nothing. Understand "shoot" as shooting. Understand the command "fire" and "blast" as "shoot".

Check an actor shooting (this is the block shooting rule):
	if the actor is the player:
		say "With what? At whom? Why?" (A);
	stop the action.

Book 87 - Shooting At

Shooting at is an action applying to one thing. Understand "shoot [something]" as shooting at.

Check an actor shooting at (this is the block shooting at rule):
	if the actor is the player:
		say "[We] have nothing to shoot [the noun] with." (A);
	stop the action.

Book 88 - Shooting It With

Shooting it with is an action applying to two things. Understand "shoot [something] with [something preferably held]" as shooting it with. Understand "shoot [something preferably held] at [something]" as shooting it with (with nouns reversed).

Check an actor shooting something with (this is the block shooting it with rule):
	if the actor is the player:
		say "Don't ever bother applying for a job as an armaments expert." (A);
	stop the action.

Book 89 - Skipping

Understand the command "skip" and "hop" as something new.

Skipping is an action applying to nothing. Understand "skip" as skipping. Understand the command "hop" as "skip". To skip is a verb.

Report an actor skipping (this is the report skipping rule):
	if the actor is the player:
		now the current topic is 15;
		the current topic resets in one turn from now;
		say "Wasn't that fun?" (A);
	otherwise:
		say "[The actor] [skip]." (B).

Book 90 - Smiling

Smiling is an action applying to nothing. Understand "smile" as smiling. To smile is a verb.

Report an actor smiling (this is the report smiling rule):
	if the actor is the player:
		say "How nice." (A);
	otherwise:
		say "[The actor] [smile]." (B).

Book 91 - Smiling At

Smiling at is an action applying to one thing. Understand "smile at [something]" as smiling at.

Check an actor smiling at (this is the try smiling instead rule):
	try the actor smiling instead.

Book 92 - Standing Before

Standing before is an action applying to one thing. Understand "stand before [something]" as standing before.

Check an actor standing before (this is the block standing before rule):
	if the actor is the player:
		say "[wastes]" (A);
	stop the action.

Book 93 - Steering It To

Steering it to is an action applying to two things. Understand "steer [something] at/to [something]" as steering it to.

Check an actor steering something to (this is the block steering rule):
	if the actor is the player:
		say "[pointless]" (A);
	stop the action.

Book 94 - Telling

Telling is an action applying to one thing. Understand "tell [something]" and "say to [something]" as telling. Understand the command "address" as "tell".

Check an actor telling (this is the can't tell yourself rule):
	if the noun is the actor:
		if the actor is the player:
			say "[talking-to-yourself]" (A);
			stop the action.

Check an actor telling (this is the can't tell other people rule):
	if the noun is a person who is not the actor:
		if the actor is the player:
			say "Hmmm ... [The Noun] looks at you expectantly, as if you seemed to be about to talk." (A);
		stop the action.

Check an actor telling (this is the block telling something rule):
	if the actor is the player:
		say "[We] can't talk to [the noun]!" (A);
	stop the action.

Book 95 - Thanking

Thanking is an action applying to one thing. Understand "thank [something]" as thanking. Understand the command "thanks" as "thank".

Check an actor thanking (this is the can't thank other people rule):
	if the noun is a person who is not the actor:
		if the actor is the player:
			say "[We] do so, but [the noun] seems less than overjoyed." (A);
		stop the action.

Check an actor thanking (this is the block thanking rule):
	if the actor is the player:
		say "[yuks]" (A);
	stop the action.

Book 96 - Throwing It Off

Throwing it off is an action applying to two things. Understand "throw [something preferably held] off/over [something]" as throwing it off.

Check an actor throwing something off (this is the block throwing something off rule):
	if the actor is the player:
		say "[We] can't do that!" (A);
	stop the action.

Book 97 - Tying

Tying is an action applying to one thing. Understand "tie [something]" as tying.

Check an actor tying (this is the block tying something rule):
	if the actor is the player:
		say "[We] can't tie [the noun]." (A);
	stop the action.

Book 98 - Tying Together

Tying together is an action applying to one thing. Understand "tie together [something]" and "tie [something] together" as tying together.

Check an actor tying together (this is the block tying together rule):
	if the actor is the player:
		say "[unrecognized-sentence]" (A);
	stop the action.

Book 99 - Typing

Typing is an action applying to nothing. Understand "type" as typing.

Check an actor typing (this is the block typing rule):
	if the actor is the player:
		say "There's no keyboard in sight." (A);
	stop the action.

Book 100 - Typing On

Typing on is an action applying to one thing. Understand "type on [something]" as typing on.

Check an actor typing on (this is the block typing on rule):
	if the actor is the player:
		say "[We] can't type on that!" (A);
	stop the action.

Book 101 - Unplugging

Unplugging is an action applying to one thing. Understand "unplug [something]" as unplugging. Understand the command "disconnect" as "unplug".

Check an actor unplugging (this is the block unplugging rule):
	if the actor is the player:
		say "[impossibles]" (A);
	stop the action.

Book 102 - Untying

Untying is an action applying to one thing. Understand "untie [something]" as untying.

Check an actor untying (this is the block untying rule):
	if the actor is the player:
		say "[yuks]" (A);
	stop the action.

Book 103 - Waiting For

Waiting for is an action applying to one thing. Understand "wait for [anything]" as waiting for.

A rule for reaching inside a room when waiting for:
	allow access.

Check an actor waiting for (this is the block waiting for rule):
	if the actor is the player:
		say "[We] may be waiting quite a while." (A);
	stop the action.

Book 105 - Watering It With

Watering it with is an action applying to two things. Understand "water [something] with [something]" as watering it with.

Check an actor watering something with (this is the block watering rule):
	if the actor is the player:
		say "It doesn't need watering." (A);
	stop the action.

Book 106 - Waving At

Waving at is an action applying to one thing. Understand "wave at/to [something]" as waving at.

Report an actor waving at (this is the report waving at rule):
	if the actor is the player:
		say "Despite your friendly nature, [the noun] isn't likely to respond." (A);
	otherwise:
		say "[The actor] [wave] at [the noun]." (B).

Book 107 - Yelling

Understand the command "shout" as something new.

Yelling is an action applying to nothing. Understand "yell" as yelling. Understand the command "scream", "shout", "howl" as "yell". To yell is a verb.

Report an actor yelling (this is the report yelling rule):
	if the actor is the player:
		say "[We] begin to get a sore throat." (A);
	otherwise:
		say "[The actor] [yell]." (B).

Book 108 - Yelling At

Yelling at is an action applying to one thing. Understand "yell at [something]" as yelling at.

Check an actor yelling at (this is the try yelling instead rule):
	try the actor yelling instead.

[--------------------------------------]

Hitchhiker Actions ends here.
