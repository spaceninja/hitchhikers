"The Hitchhiker's Guide to the Galaxy"

The story headline is "Infocom interactive fiction - a science fiction story[line break]Copyright © 1984 by Infocom, Inc. All rights reserved.[line break]Inform 7 adaptation by Scott Vandehey".
The story genre is "Science Fiction".
The story creation year is 1984.

[
TODO:
- [ ] where am i
- [ ] Add I-VOGONS queue in 50 turns
- [ ] Is "GENERIC POCKET-FLUFF" same as "does player mean pocket fluff?"
- [ ] Address carrying capacity & size (see gown)
- [ ] Fix linebreaks following footnotes and current topic replies.
			See footnote 12 vs footnote 15 for example

[How to disable a timer:]
$timer in -1 turns from now;

[How to redirect verbs to a new noun:]
Before examining the wrong thing, now the noun is the right thing;

[How to check player's command for a word:]
Before examining the house:
	if the player's command includes "house":
		say "It's not a house, it's a home."
]

[======================================]

Volume 1 - Setup

Use American dialect and the serial comma and scoring.
The maximum score is 400.
Include Hitchhiker Actions by Scott Vandehey.

[--------------------------------------]

Book 1 - When Play Begins

After printing the banner text when not requesting the story file version, say "[paragraph break]You wake up. The room is spinning very gently round your head. Or at least it would be if you could see it which you can't."

When play begins:
	Try silently switching score notification off.

[Return the Thing]
When play begins:
	the gift returns in 21 turns from now.

[Wreck the House]
When play begins:
	the house is wrecked in 20 turns from now.

[--------------------------------------]

Book 2 - Timers

[Wreck the House]
At the time when the house is wrecked:
	if the player is in the bed or the player is in the bedroom or the player is in the front porch:
		say "Astoundingly, [a bulldozer] pokes through your wall. However, you have no time for surprise because the ceiling is collapsing on you as [better-luck]";
		end the story;

[--------------------------------------]

Book 3 - New Kinds of Things

A tool is a kind of thing. The description of a tool is usually "It looks like every other [noun] you've ever seen."

A body part is a kind of thing. The description of a body part is usually "That would involve quite a contortion."

Instead of finding a body part, say "Are you sure [the noun] [are] lost?"

A thing has some text called the owner.

[--------------------------------------]

Book 4 - Body Parts

[Ears]

Your ears are a body part. They are part of the player. Understand "ear" as your ears. They are plural-named.

[Eyes]

Your eyes are a body part. They are part of the player. Understand "eye" as your eyes. They are plural-named.

Instead of opening your eyes, say "They are."
Instead of closing your eyes, say "That won't help."

[Head]

Your head is a body part. It is part of the player. Understand "face" as your head.	

[Hand]

Your hand is a body part. It is part of the player. Understand "hands" as your hand. The description is "You see nothing special about [your hand]."

Instead of waving your hand, try waving hands.

Instead of shaking your hand:
	if another person (called shakee) is visible:
		say "(with [the shakee])";
		try shaking your hand with the shakee;
	else:
		say "Pleased to meet you."

Instead of shaking your hand with:
	If the second noun is not a person:
		say "I don't think [the second noun] even has hands.";
	else:
		try thanking the second noun instead.

[Teeth]

Your teeth are a body part. They are part of the player. They are plural-named.

Instead of cleaning your teeth, try brushing your teeth;

[--------------------------------------]

Book 5 - Text Substitutions

Part 1 - Current Topic Responses

To say not-very-good:
	now the current topic is 13;
	[in 0 turns since FOOTNOTE doesn't advance the turn clock]
	the current topic resets in 0 turns from now;
	say "It's not a very good [noun corresponding to the number of the number understood in the Table of Footnotes], is it?"

To say reading-all-footnotes:
	now the current topic is 14;
	[in 0 turns since FOOTNOTE doesn't advance the turn clock]
	the current topic resets in 0 turns from now;
	say "Isn't it fun reading through all the footnotes?"

To say two-trees:
	now the current topic is 9;
	the current topic resets in one turn from now;
	say "[line break]Shouldn't you be taking more interest in events in the world around you? While you've got it...?"

[--------------------------------------]

Part 2 - Random Responses

To say bores:
	say "[one of]newts he has known[or]cricket[or]how badly Americans make tea[or]the deteriorating condition of the motorways[or]a recent visit to Tiverton[or]a new book by Douglas Adams[or]computers[in random order]."

To say lurches:
	say "[one of]It slips through your fumbling fingers and hits the carpet with a nerve-shattering bang[or]It dances by you like a thing possessed[or]You lunge for it, but the room spins nauseatingly away. The floor gives you a light tap on the forehead[or]You're certainly picking the tough tasks. The floor acts like a trampoline on an ice rink, or like something they've been working on for years at Disneyland[in random order]."

[--------------------------------------]

Part 3 - Common Responses

To say already-know-that:
	say "But then again you must already know that, since you bought one."

To say better-luck:
	say "your home is unexpectedly demolished to make way for a new bypass. You are seriously injured in the process, but on your way to the hospital [make-way-for].[paragraph break]";
	if the light is not lit:
		say "Next time, try turning on the light.";
	else if the gown is closed and the player is hungover:
		say "Too bad you never found an aspirin for your hangover.";
	else:
		say "Better luck next life.";

To say cant-reach-from-bed:
	say "You can't reach it from the bed[if the player is hungover]. The effort almost kills you[end if]."

To say dialling-tone:
	say "A moment later, the dialing tone is suddenly cut off. Glancing through the window you can't help but notice the large old oak tree of which you are particularly fond crashing down through the phone cable".

To say fine-product:
	say " It bears a small label which reads 'Another fine product
of the [SCC].'[run paragraph on with special look spacing]";

To say get-rid:
	say "you've been trying to get rid of it for years".

To say getting-close:
	say "You're getting close, though."

To say good-for-you:
	say "Well, good for you!"

To say hands-off:
	say "The barman snaps 'Hands off until you pay for it!'"

To say look-around:
	say "Look around you."

To say make-way-for:
	say "[a fleet] unexpectedly arrives and demolishes the Earth to make way for a new hyperspace bypass".

To say leave-me-alone:
	say "'Well, leave me alone then! I'm busy!'"

To say nice-day:
	say "t's a bright morning, the sun is shining, the birds are
singing, the meadows are blooming".

To say private:
	say "You can't. It's not yours. It's [owner of the noun]'s and it's private."

To say rehetorical-question:
	say "That was just a rhetorical question."

To say SCC:
	say "Sirius Cybernetics Corporation".

To say should-think-not:
	say "I should think not."

To say tough:
	say "Well, tough."

To say union-rules:
	say ", perusing a booklet of union rules, ignores you."

To say while-lying:
	say "You can't do that while you're lying down!"

To say with-towel:
	say "With a towel wrapped around your head!?!"

[--------------------------------------]

Part 4 - Response Tables

Table of Negative Replies (continued)
number	reply
3	"[should-think-not]"
4	"The word 'no' is not in our hostess['] vocabulary."
5	"[tough]"
6	"[rehetorical-question]"
7	"[tough]"
8	"[tough]"
9	"I disagree."
10	"[should-think-not]"
11	"[rehetorical-question]"
12	"'Think you're funny, huh?' The Engineer robot roars off on his ion bike into the Sub-Etha, making sure to spray you with his Sub-Ethon exhaust."
13	"[tough]"
14	"Then stop."
15	"[tough]"
16	"I didn't think so."
18	"[leave-me-alone]"
19	"[leave-me-alone]"

[special case when the player answer implies going]
Instead of saying no when the current topic is 2:
	try going south instead.

Table of Positive Replies (continued)
number	reply
3	"[tough]"
5	"So do I."
6	"[rehetorical-question]"
7	"[good-for-you]"
8	"[rehetorical-question]"
9	"[good-for-you]"
10	"This is family entertainment, not a video nasty."
11	"[rehetorical-question]"
12	"'Well, let's see the malfunctioning equipment.'"
13	"[rehetorical-question]"
14	"[rehetorical-question]"
15	"[rehetorical-question]"
16	"Then type it."
18	"[leave-me-alone]"
19	"[leave-me-alone]"

[special case when the player answer implies going]
Instead of saying yes when the current topic is 1:
	try going south instead.

Table of Footnotes (continued)
number	noun	note
1	--	"In case anyone is interested, this quotation is from a letter written by John Keats, and thus he becomes the first major 19th Century British poet to feature in a computer game."
2	--	"Bob Dylan, 1969."
3	--	"A meaningless coincidence."
4	--	"The first single they recorded on their own Apple label, and one of their most successful songs ever."
5	--	"Peacefully for a Ravenous Bugblatter Beast of Traal that is. Now and then it snorts or rolls over, and the walls shake a bit."
6	--	"That was just an example."
7	"gun"	"[not-very-good]"
8	"legend"	"[not-very-good]"
9	--	"Unfortunately, you couldn't hear a word of it, because sound doesn't travel in a vacuum."
10	--	"I guess it isn't all that dangerous a place after all."
11	--	"[reading-all-footnotes]"
12	--	"This is the famous recursive footnote (Footnote 12)."
13	"autopilot"	"[not-very-good]"
14	--	"The Hitchhiker's Guide to the Galaxy is also the name of a terrific work of interactive fiction by Douglas Adams and S. Eric Meretzky. [already-know-that]"
15	"banner"	"[not-very-good]"

[--------------------------------------]

Part 5 - Testing - Not for release

[Persuasion rule: persuasion succeeds.]

[Demolish House]

Demolishing is an action applying to nothing. Understand "demolish" as demolishing.

Carry out demolishing:
	now your house is demolished;
	now the third planet is demolished;
	say "CRASH!!!";

[Setting Topic]

Setting topic is an action applying to one number. Understand "topic [number]" as setting topic.

Carry out setting topic:
	now the current topic is the number understood;

[Swap Characters]

Transforming is an action applying to one thing. Understand "transform to [anyone]" as transforming.

A rule for reaching inside a room when transforming:
	allow access.

Carry out transforming:
	now the player is the noun;
	now your ears are part of the noun;
	now your eyes are part of the noun;
	now your head is part of the noun;
	now your hand is part of the noun;
	now your teeth are part of the noun;
	say "You are now [the noun]!";
	try looking;

[Walkthrough Tests]

test house with "stand up / turn on light / get gown / wear gown / look in pocket / get all from gown / get screwdriver / get toothbrush / put screwdriver and toothbrush in thing".

test bulldozer with "south / get mail / read mail / south / lie down / wait / wait / wait / wait / wait / wait".

test pub with "south / west / examine shelf / buy sandwich / drink beer / drink beer / drink beer / east / give sandwich to dog / north / wait / wait / get device / examine device / press green button".

[Other Tests]

test init with "turn on light / stand up / wear gown / look in pocket / swallow pill".

test hangover with "take phone / turn on light / open curtains / stand up / take toothbrush / take screwdriver / take phone / get gown / wear gown / look in pocket / eat tablet / take toothbrush / take screwdriver / take phone".

test phone with "call ford with screwdriver / call ford with phone / call home / call police / take phone".

test exit-bedroom with "turn on light / stand up / south / test init / south / north / open curtains / south".

test sleeves with "tie sleeves / remove gown / tie together sleeves / wear gown / untie sleeves / wear gown".

test backdrops with "x bulldozer / touch bulldozer / x home / x stairs / x ground / x rubble / x tree / x pub / x sky / x fleet / x star / x third planet / x air / x hangover / x sleep / x speech / x time".

[======================================]

Volume 2 - Rooms

Book 1 - Earth

The Indoors is a region.

The Outdoors is a region.

[--------------------------------------]

Part 1 - Bedroom

The Bedroom is a dark room in the Indoors. "The bedroom is a mess.[line break]It is a small bedroom with a faded carpet and old wallpaper. There is a washbasin, a chair[if the gown is undescribed] with a tatty dressing gown slung over it[end if], and a window with the curtains drawn. Near the exit leading south is a phone."

Before going from the bedroom when the player is hungover, say "You miss the doorway by a good eighteen inches. The wall jostles you rather rudely." instead.

Instead of going down from the Bedroom, try going south. Instead of going outside from the Bedroom, try going south. [reroute through door]

Report going from the bedroom:
	if the bulldozer is observed:
		say "You rush down the stairs in panic.";
	else:
		say "You make your way down to the front porch."

After deciding the scope of the player when the location is the bedroom:
	if the bedroom is dark:
		place the light in scope;
	if the bulldozer is observed:
		place the bulldozer in scope;

Instead of sleeping in the bedroom:
	say "You nod off and are wakened briefly a few hours later as [better-luck]";
	end the story;

Chapter 1 - Scenery

[Bed]

The bed is an enterable scenery container in the bedroom.

After exiting from the bed when the player is hungover:
	say "Very difficult, but you manage it. The room is still spinning. It dips and sways a little."

Instead of looking under the bed, say "There's nothing there. Well, there are a few soiled handkerchiefs, a book you thought you'd lost, a couple of foreign coins, and something else which can't be fully described in a family game, but nothing you'd actually want."

Before taking something when the player is in the bed:
	if the noun is not in the bed:
		say "[cant-reach-from-bed]" instead.

Instead of opening or closing the bed, say "[tell-me-how]".

Instead of lying down in the bedroom, try entering the bed.

Instead of standing when the player is in the bed, try exiting instead.

Instead of lying down on the ground when the player is in the bed, say "You'll have to get out of the bed first."

[Curtains]

Your curtains are scenery in the bedroom. Understand "your", "curtain", "shade", "shades" as your curtains.

Instead of opening or searching your curtains:
	if the player is in the bed:
		say "[cant-reach-from-bed]";
	else:
		now the bulldozer is observed;
		say "As you part [the curtains] you see that i[nice-day], and a large yellow [bulldozer] is advancing on your home."

[Door]

The bedroom door is an open scenery door. It is south of the Bedroom. The printed name is "door".

Instead of opening or closing the bedroom door when the player is in the bed, say "[cant-reach-from-bed]".

[Furnishings]

The bedroom furnishings are scenery in the bedroom. Understand "wall", "walls", "ceiling", "roof", "faded", "old", "carpet", "wallpaper", "paper", "chair" as the bedroom furnishings.

Instead of doing anything to the bedroom furnishings, say "[unimportant-thing]".

[Light]

The light is a scenery device in the bedroom. Understand "lights", "lamp" as the light.

After switching on the light:
	if the light is lit:
		say "It is.";
	else:
		now the light is lit;
		say "Good start to the day. Pity it's going to be the worst one of your life. The light is now on."

After switching off the light:
	now the light is not lit;

[Phone]

The phone is scenery in the bedroom. The printed name is "telephone". Understand "telephone", "receiver" as the phone.

Before calling a topic with:
	if the second noun is not the phone:
		say "You can't use [the second noun] as a phone." instead;

Instead of taking the phone:
	if the player is hungover:
		say "[lurches]";
	else if the phone is handled:
		try calling "police"; [doesn't matter who we call, the line is down]
	else:
		now the phone is handled;
		say "You pick up the receiver. [dialling-tone].[if the toothbrush is handled][two-trees][end if]";

Instead of answering the phone, say "It isn't ringing."

Instead of calling when the player is in the bed:
	say "[cant-reach-from-bed]";

Instead of calling when the player is in the bedroom:
	if the player is hungover:
		say "You reach for the receiver. [lurches]";
	else if the phone is handled:
		say "The cable is down, remember?";
	else if the topic understood includes "police" or the topic understood includes "cops":
		now the phone is handled;
		say "You explain your situation. The desk sergeant promises to send someone over soon, and says not to try anything crazy in the meantime, like lying down in front of [the bulldozer]. [dialling-tone].[if the toothbrush is handled][two-trees][end if]";
	else if the topic understood matches "home":
		say "Who do you think you are, E.T.?";
	else:
		say "You don't know the number."

[Sink]

The sink is scenery in the bedroom. Understand "wash", "basin", "washbasin" as the sink.

Instead of doing anything to the sink, say "[unimportant-thing]".

[Stuff Under Bed]

The stuff-under-bed is scenery in the bedroom. Understand "soiled", "foreign", "book", "coin", "coins", "handkerchief", "handkerchiefs" as the stuff-under-bed.

Instead of doing anything to the stuff-under-bed, say "[unimportant-thing]".

[Water]

The water is scenery in the bedroom.

Instead of doing anything to the water, say "[unimportant-thing]".

[Window]

The bedroom window is scenery in the bedroom. The printed name is "window".

Instead of searching or examining the bedroom window, try opening the curtains.

Instead of opening or closing the bedroom window, say "The bloody thing's been jammed shut for months, now."

Chapter 2 - Items

[Gown]

Your gown is in the bedroom. It is a wearable closed openable undescribed container. The description is "The dressing gown is faded and battered, and is clearly a garment which has seen better decades. It has a pocket which is [if gown is open]open[else]closed[end if], and a small loop at the back of the collar[if the sleeves are tied]. The sleeves are tied closed[end if]." Understand "your", "dressing", "tatty", "faded", "battered", "pocket", "loop", "robe" as your gown. The carrying capacity is 14.

After taking your gown when the player is hungover, say "Luckily, this is large enough for you to get hold of. You notice something in the pocket."

Before searching the gown when the gown is closed, try opening the gown instead.

Before opening or closing the gown when the player is not wearing the gown, say "It's hard to open or close the pocket unless you're wearing the gown." instead.

Before wearing the gown when the sleeves are tied, say "You'll have to untie the sleeve first." instead.

Instead of tying the gown, try tying the sleeves.

Instead of untying the gown, try untying the sleeves.

Instead of getting dressed when the player is not wearing the gown:
	if the player is holding the gown:
		try wearing the gown;
	else if the gown is visible:
		say "You're not holding [the gown].";
	else:
		continue the action.

Instead of getting undressed when the player is wearing the gown:
	try taking off the gown.

[Fluff]

Some pocket fluff is in your gown. Understand "lint" as the pocket fluff.

[Sleeves]

The sleeves are part of the gown. Understand "sleeve" as the sleeves. The sleeves can be tied or untied.

Instead of tying together the sleeves, try tying the sleeves.

Before tying the sleeves when the player is wearing the gown, say "You'll have to take off the gown first." instead.

Instead of tying or closing the sleeves:
	if the sleeves are tied:
		say "It is.";
	else:
		now the sleeves are tied;
		say "The sleeves are now tied closed."

Instead of untying or opening the sleeves:
	if the sleeves are untied:
		say "It isn't tied!";
	else:
		now the sleeves are untied;
		say "Untied."

[Screwdriver]

The screwdriver is a tool in the bedroom. The printed name is "flathead screwdriver". Understand "proper", "tool", "tools" as the screwdriver.

Instead of taking the screwdriver when the player is hungover, say "[lurches]".

[Tablet]

The tablet is in your gown. It is edible. The printed name is "buffered analgesic". Understand "large", "buffered", "analgesic", "aspirin", "pill" as the tablet.

Instead of eating or drinking or taking the tablet:
	now the tablet is nowhere;
	now the player is not hungover;
	increase the score by 10;
	say "You swallow the tablet. After a few seconds the room begins to calm down and behave in an orderly manner. Your terrible headache goes."

[Thing: renamed "gift" because inform won't allow "thing"]

The gift is a container in your gown. The printed name is "thing your aunt gave you which you don't know what it is". The description is "Apart from a label on the bottom saying 'Made in Ibiza' it furnishes you with no clue as to its purpose, if indeed it has one. You are surprised to see it because you thought you'd thrown it away. Like most gifts from your aunt, [get-rid]." Understand "aunt's", "thing" as the gift. The carrying capacity is 90.

After dropping the gift, say "It falls to the ground with a light 'thunk.' It doesn't do anything else at all."

Instead of closing the gift, say "Come to think of it, you vaguely remember an instruction booklet with directions for that. You never read it and lost it months ago."

At the time when the gift returns:
	the gift returns in a random number between 4 and 8 turns from now;
	unless the gift is held by the player or the gift is in the gown or the gift is visible:
		if a random chance of 2 in 5 succeeds:
			now the gift is in the location of the player;
			say "(MOVED THE THING here)";
		else if the player is wearing the gown and the gown is open and a random chance of 2 in 3 succeeds:
			now the gift is in the gown;
			say "(MOVED THE THING to your pocket)";
		else:
			now the gift is in the player;
			say "(MOVED THE THING to your inventory)";

[Toothbrush]

The toothbrush is a tool in the bedroom. Understand "proper", "brush", "tool", "tools" as the toothbrush.

Instead of taking the toothbrush when the player is hungover, say "[lurches]".

Instead of brushing something when the player is holding the toothbrush:
	say "(with [the toothbrush])";
	try brushing the noun with the toothbrush instead;

Instead of brushing something with the toothbrush:
	if the noun is your teeth:
		say "Congratulations on your fine dental hygiene.";
	else:
		say "In general, [toothbrush]es are meant for teeth.";

After taking the toothbrush:
	say "As you pick up [the toothbrush] a tree outside the window collapses. There is no causal relationship between these two events.[if the phone is handled][two-trees][end if]";

[--------------------------------------]

Part 2 - Front Porch

The Front Porch is south of the bedroom door and down from the Bedroom and outside from the Bedroom and in the Indoors. "This is the enclosed front porch of your home. Your front garden lies to the south, and you can re-enter your home to the north."

Instead of going up from the Front Porch, try going north. Instead of going inside from the Front Porch, try going north. [reroute through door]

Instead of going outside from the front porch, try going south. [reroute through south for exit condition]

Before going south from the front porch:
	unless the player is wearing something:
		now the current topic is 10;
		the current topic resets in one turn from now;
		say "Do you want to get arrested for indecent exposure?" instead.

Chapter 1 - Scenery

[Doormat]

The doormat is scenery in the front porch. Understand "mat" as the doormat.

Instead of doing anything to the doormat, say "[unimportant-thing]".

[Stairs]

The stairs are a backdrop in the bedroom and in the front porch. Understand "stair", "stairway" as the stairs.

Instead of climbing the stairs, try going up.
Instead of climbing up the stairs, try going up.
Instead of climbing down the stairs, try going down.

Chapter 2 - Items

[Furnishings]

The porch furnishings are scenery in the front porch. Understand "wall", "walls", "ceiling", "roof" as the porch furnishings.

Instead of doing anything to the porch furnishings, say "[unimportant-thing]".

[Mail]

The mail is in the front porch. "On the doormat is a pile of junk mail." The printed name is "loose pile of junk mail". Understand "demolition", "order", "junk", "official", "loose", "pile", "letter" as the mail. The description is "There are many pieces of mail. Most are from some computer company called Infocom which wants you to buy their games. Hidden underneath is an official letter from the local council, dated some two years ago and inexplicably not delivered till now, explaining that a demolition order has been served on your home. The date of demolition is today's date."

After taking the mail, say "You gather up the pile of mail."

Instead of opening the mail, try examining the mail.

[--------------------------------------]

Part 3 - Front of House

The Front Garden is south of the Front Porch and outside from the Front Porch and in the Outdoors. "You can enter your home to the north. A path leads around it to the northeast and northwest, and a country lane is visible to the south." The printed name is "Front of House".

Instead of going inside from the front garden, try going north. [reroute through north for exit condition]

[Before going north from the front garden:
	unless the player is wearing something:
		now the current topic is 10;
		the current topic resets in one turn from now;
		say "Do you want to get arrested for indecent exposure?" instead.
]
Instead of going north from the front garden when your house is demolished, say "You can't enter a [a rubble]."

Instead of lying down on the ground when the player is in the front garden:
	try blocking the bulldozer instead;

Instead of going north from the front garden when the player is Ford, say "Enter the house? You can't. It's not yours. It's Arthur's and it's private."

Instead of enjoying the ground when the player is in the front garden and the player is prone:
	say "It occurs to you that you've never deliberately lain in any mud before and that it's actually a pleasant sort of squishy sensation. You let the mud ooze between your toes. You may be here for some time, so you may as well make the most of it."

[Reset wreck-the-house timer if player re-enters the house]
After going north from the front garden:
	unless Mr Prosser is prone:
		say "[The bulldozer], which you may have noticed outside, just pushed your home down on top of you.";
		say "[jigs-up]";
		end the story;
	else:
		the house is wrecked in 5 turns from now;
		continue the action;

Chapter 1 - Scenery

[Roses]

Some roses are scenery in the front garden. Understand "rose", "rosebed", "bed" as some roses.

Instead of doing anything to some roses, say "[unimportant-thing]".

Chapter 2 - Items

[Bulldozer]

The bulldozer is a backdrop in the Outdoors. "It's one of those really big [bulldozer]s that can actually crush other [bulldozer]s, let alone houses." Understand "large", "huge", "yellow", "bull", "dozer" as the bulldozer. The bulldozer can be observed or unobserved. It is unobserved.

Before doing anything other than examining to the bulldozer when the player is not in the front garden, say "[The bulldozer] isn't here." instead.

Instead of standing before the bulldozer when the player is Arthur, say "[The bulldozer] could easily maneuver around you. [getting-close]".

Instead of going around the bulldozer when the player is Arthur, say "[wastes]".

Instead of blocking the bulldozer when the player is Arthur:
	if your house is demolished:
		say "Too late now.";
	else if the player is prone:
		say "You already are!";
	else if Mr Prosser is prone:
		say "[Mr Prosser]'s doing that for you.";
	else:
		now the player is prone;
		say "You lie down in the path of the advancing [bulldozer]. [Mr Prosser] yells at you to for crissake move!!!"

Rule for clarifying the parser's choice of the bulldozer: stop the action. [don't print the name of the bulldozer]

[--------------------------------------]

Part 4 - Back of House

The Back Garden is northwest of the Front Garden and northeast of the Front Garden and in the Outdoors. "The rear garden is a pleasant place. I[nice-day], and it's a lovely day for a walk. A path leads around the house to the southeast and southwest." The printed name is "Back of House".

Chapter 1 - Scenery

[Birds]

Some birds are scenery in the back garden.

Instead of doing anything to some birds, say "[unimportant-thing]".

[--------------------------------------]

Part 5 - Country Lane

The Country Lane is south of the Front Garden and in the Outdoors. "The road runs from your home, to the north, toward the village Pub, to the west."

[--------------------------------------]

Part 6 - Pub

The Pub is west of the Country Lane and inside from the Country Lane and in the Indoors. "The Pub is pleasant and cheerful and full of pleasant and cheerful people who don't know they've got about twelve minutes to live and are therefore having a spot of lunch. Some music is playing on an old jukebox. The exit is east."

Every turn:
	if the player has been in the pub for at least one turn:
		if Ford is in the pub and the player is not Ford:
			if the beer is not purchased:
				now the beer is purchased;
				say "Ford buys [beer] and offers half to you. 'Muscle relaxant...' he says, impenetrably."

Chapter 1 - Scenery

[Bar]

The bar is a scenery supporter in the pub. Understand "counter" as the bar.

Instead of looking behind the bar, try examining the pub shelf.

Instead of getting drunk in the pub:
	say "You get drunk and have a terrific time for twelve minutes, are the life and soul of the Pub, tell some really great stories, make everyone laugh a lot, and they all clap you on the back and tell you what a great chap you are and then the Earth gets unexpectedly demolished[if the player is Arthur]. You wake up with a hangover which lasts for all eternity[end if].";
	end the story;

[Furnishings]

The pub furnishings are scenery in the pub. Understand "wall", "walls", "ceiling", "roof", "usual", "soggy", "beermat", "beermats", "glass", "glasses", "bottle", "bottles" as the pub furnishings.

Instead of doing anything to the pub furnishings, say "[unimportant-thing]".

[Jukebox]

The jukebox is a thing in the pub. It is lit scenery. Understand "old", "juke", "box" as the jukebox. The owner of the jukebox is "the Pub".

Instead of listening to the jukebox:
	say "The song is ";
	if a random chance of 1 in 4 succeeds:
		say "a Walker Brothers single, 'The Sun Ain't Gonna Shine Anymore.'";
	else if a random chance of 1 in 3 succeeds:
		say "'Get Back' by the Beatles.";
	else if a random chance of 1 in 2 succeeds:
		say "'Hey Jude' by the Beatles (Footnote 4). It's a particular favourite, and listening to it calms you down, and cheers you up.";
	else:
		say "'Tie a Yellow Ribbon[if the player is Ford].' You can't stand it, and are pleased to think that this is probably the last time it will ever be heard.[else].'";
	
Instead of switching off the jukebox:
	say "[private]";

[Music]

The music is scenery in the pub. Understand "song", "songs" as the music.

Instead of enjoying or listening to the music, try listening to the jukebox.

[People]

Some patrons are scenery in the pub. Understand "people" as some patrons.

Instead of doing anything to some patrons, say "[unimportant-thing]".

[Window]

The pub window is scenery in the pub. The printed name is "window".

Instead of searching or examining the pub window, say "You see the country lane."

Instead of opening or closing the pub window, say "It won't budge."

Chapter 2 - Items

[Beer]

The beer is in the pub. It is edible and undescribed. The printed name is "lots of beer". The beer can be purchased. Understand "lots", "bitter", "pint", "pints", "beers" as the beer.

Instead of taking, drinking, enjoying, counting, smelling, or touching the beer when the beer is not purchased, say "You'd better buy some first."

Instead of buying the beer when the beer is purchased, say "[Ford] has already bought an enormous quantity for you!"

Instead of buying the beer, try buying some peanuts.

Instead of counting the beer, say "Lots."

Instead of taking the beer, say "Just drink it!"

Instead of drinking or enjoying the beer:
	increase the score by 5;
	increase the drunk-value of the player by 1;
	if the drunk-value of the player is:
		-- 1:
			say "It's very good beer, brewed by a small local company. You particularly like its flavour, which is why you woke up feeling so wretched this morning. You were at somebody's birthday party here in the Pub last night.[paragraph break]";
			say "You begin to relax and enjoy yourself, so when Ford mentions that he's from a small planet in the vicinity of Betelgeuse, not from Guildford as he usually claims, you take it in your stride, and say 'Oh yes, which part?'";
		-- 2:
			say "It is really very pleasant stuff, with a very good dry, nutty flavour, some light froth on top, and a deep colour. It is at exactly room temperature. You reflect that the world cannot be all bad when there are such pleasures in it.[paragraph break]";
			say "Ford mentions that the world is going to end in about twelve minutes.";
		-- 3:
			now your house is demolished;
			say "There is a distant crash which Ford explains is nothing to worry about, probably just your house being knocked down.";
		-- 4:
			say "You can hear the muffled noise of your home being demolished, and the taste of the beer sours in your mouth.";
			try getting drunk;

[Peanuts]

Some peanuts are on the pub shelf. They are edible and undescribed. Some peanuts can be purchased. Understand "packet", "peanut", "nut", "nuts" as some peanuts.

Instead of opening some peanuts, say "Just eat 'em."

Instead of buying some peanuts when the player is in the pub, say "However much you clear your throat, wave your forefinger, or wiggle your eyebrows, the barman pays no attention, but carries on wiping another part of the bar."

Instead of enjoying some peanuts, try eating some peanuts.

Instead of taking or eating some peanuts when the player is in the pub, say "[hands-off]".

After eating some peanuts when the third planet is demolished and the player is groggy:
	now the player is not groggy;
	say "You feel stronger as the peanuts replace some of the protein you lost in the matter transference beam."

[Sandwich]

The cheese sandwich is on the pub shelf. It is edible and undescribed. The sandwich can be purchased. Understand "plate", "univiting" as the cheese sandwich.

Instead of buying the sandwich:
	if the sandwich is purchased:
		say "You already did.";
	otherwise:
		now the sandwich is held by the player;
		now the sandwich is purchased;
		say "The barman gives you a [sandwich]. The bread is like the stuff that stereos come packed in, the cheese would be great for rubbing out spelling mistakes, and margarine and pickle have performed an unedifying chemical reaction to produce something that shouldn't be, but is, turquoise. Since it is clearly unfit for human consumption you are grateful to be charged only a pound for it."

Instead of enjoying the sandwich, try eating the sandwich.

Instead of taking or eating the sandwich when the player is in the pub and the sandwich is not purchased, say "[hands-off]".

After eating the sandwich:
	if the player is Ford:
		say "You swallow with revulsion, astonished that life forms which have spent 4.6 billion years evolving cannot produce a better [sandwich] than this.";
	otherwise:
		say "It is one of the least rewarding taste experiences you can recall.";
	decrease the score by 30;

[Shelf]

The pub shelf is a supporter in the pub. "Behind the bar is a shelf. It is full of the sort of items you find on shelves behind bars in pubs." The printed name is "shelf of items". Understand "shelves", "items" as the pub shelf.

To say snacks:
	unless peanuts are purchased:
		if sandwich is purchased:
			say ", and";
		else:
			say ",";
		say " some packets of peanuts";
	unless sandwich is purchased:
		say ", and a plate of uninviting [cheese sandwich]es";
		
Instead of examining the pub shelf:
	say "On the shelf behind the bar is the usual array of bottles, glasses and soggy beermats[snacks].";

[--------------------------------------]

Part 7 - Earth Backdrops

[Define these last so they don't initialize their locations]

Chapter 1 - Indoors

The chamber is a backdrop in the bedroom, in the front porch, and in the pub. The printed name is "room". Understand "area", "room", "place", "hall" as the chamber.

Instead of examining the chamber, try looking.

Instead of cleaning the chamber:
	if the player is in the bedroom:
		say "Just as you've got it all spick and span [better-luck]";
		end the story;

Chapter 2 - Outdoors

[Home]

[For some reason we can't say "in the Outdoors, in the bedroom," etc.]
Your house is a backdrop in the bedroom, in the front porch, in the front garden, in the back garden, and in the country lane. The printed name is "your home". Understand "your", "home" as the house. Your house can be demolished.

Instead of enjoying your house when your house is demolished, say "[zen]You can't enjoy a [rubble] properly till it's at least a hundred years old. Also, you are haunted by the tragic vision of your favourite teapot lying shattered among the dust.[line break]There is also the matter of all your clothes."

Instead of examining your house when your house is demolished, say "It is now [a rubble]."

Instead of standing before your house when the player is Arthur, say "[The bulldozer] could easily maneuver around you. [getting-close]".

Instead of doing anything to your house when the player is Ford, say "[unimportant-thing]".

Instead of entering your house: ["walk through home"]
	if the player is in the front garden or the player is in the front porch:
		try going north;
	else if the player is in the bedroom:
		say "[look-around]";
	else:
		try going around your house;

Instead of getting out of your house: ["leave home"]
	if the player is in the front porch:
		try going south;
	else if the player is in the bedroom:
		try going around your house;
	else:
		say "[look-around]";

[Pub]

The pub-object is a backdrop in the country lane and in the pub. The printed name is "Pub". Understand "horse", "'n", "groom", "pub" as the pub-object.

Instead of entering the pub-object:
	if the player is in the pub:
		say "[look-around]";
	else:
		try going west.

Instead of getting out of the pub-object:
	if the player is in the pub:
		try going east;
	else:
		say "[look-around]".

Does the player mean getting out of or entering the pub-object when the pub-object is visible: it is very likely.

Rule for clarifying the parser's choice of something while getting out of or entering:
	if the noun is the pub-object:
		stop the action; [don't print the name of the pub-object]

[Rubble]

The rubble is a backdrop in the front garden and in the back garden. The printed name is "pile of rubble". Understand "pile", "debris" as the rubble.

Instead of examining the rubble, try examining your house.

Instead of enjoying the rubble, try enjoying your house.

[Sky]

The sky is a backdrop in the Outdoors.

Instead of examining the sky when the fleet is visible, say "The sky is filled with the ships of [the fleet]."

[Tree]

The tree is a backdrop in the Outdoors. Understand "trees" as the tree.

Instead of climbing the tree, say "You were never very good at that."

[--------------------------------------]

Chapter 3 - Space Stuff

[Fleet]

The fleet is a backdrop [in the Outdoors]. "The fleet consists of terrifying numbers of huge, ugly, yellow ships, all scarred with the results of many such past demolition jobs. Chicago's John Hancock tower, knocked about a bit and painted yellow, is what they each look like. That is, knocked about a bit, painted yellow, and flying." The printed name is "fleet of Vogon Constructor ships". Understand "vogon", "constructor", "huge", "ugly", "yellow", "ship", "ships", "spaceship", "spaceships" as the fleet.

Instead of enjoying the fleet, say "[zen]".

Instead of entering the fleet: [walk to fleet]
	now the current topic is 11;
	the current topic resets in one turn from now;
	say "From here?" instead.

[Star]

The star is a backdrop in the Outdoors. Understand "approaching", "solar", "system", "small", "unregarded", "yellow", "orange", "sun", "sol" as the star. The printed name is "sun".

Instead of examining the star when the player is in the front garden, or the player is in the back garden, or the player is in the country lane:
	say "The sun is a smallish yellow star.";
		
[Third Planet]

The third planet is a backdrop in the Outdoors. "It is an utterly insignificant little blue-green planet, of the sort where they probably still wear [digital watch]es." Understand "third", "blue", "blue-green", "small", "earth" as the third planet. The third planet can be demolished.

Before doing anything to the third planet:
	unless the third planet is demolished:
		now the noun is the ground;

Instead of getting out of the third planet:
	if the third planet is demolished:
		say "You did!"

[--------------------------------------]

Book 2 - Everywhere

[Air]

The air is a backdrop. It is everywhere.

[Frustration]

A backdrop called frustration is everywhere. Understand "problem", "puzzle" as frustration.

Instead of enjoying frustration, say "[zen]".

[Ground]

The ground is a backdrop. It is everywhere. Understand "floor", "mud" as the ground.

Instead of climbing or climbing down or entering the ground, say "[wastes]".

Instead of looking under the ground, say "[impossibles]" instead.

Instead of getting out of the ground, try going up instead.

The block lying down rule does nothing.

Check an actor lying down (this is the try lying down on the ground instead rule):
	try the actor lying down on the ground instead.

Instead of lying down on the ground when the player is prone, say "You already are!"

Instead of lying down on the ground:
	now the player is prone;
	say "You are now lying on the ground."

[Hangover] [so player can inspect hangover, which is in inventory]

The hangover is a backdrop. The printed name is "splitting headache". Understand "splitting", "big", "blinding", "throbber", "headache" as the hangover. It is everywhere.

After deciding the scope of the player while in darkness: place the hangover in scope. [allow examining with lights off]

Before examining the hangover, try diagnosing instead.

Before doing anything other than examining to the hangover, say "[impossibles]" instead.

[Sleep] [so the player can "take a nap"]

A backdrop called sleep is everywhere. Understand "sleep", "nap", "snooze" as sleep.

Instead of entering or taking sleep, try sleeping.

[Speech] [so the player can "give a speech"]

The speech is a backdrop. It is everywhere.

Before giving the speech to someone, try making the speech instead;

Instead of making the speech, say "This isn't the time or the place for making speeches."

Instead of examining the speech, say "It's extemporaneous."

[Time]

A backdrop called time is everywhere.

[======================================]

Volume 3 - Actors

Definition: a person is another if it is not the player.

A person has a number called drunk-value. The drunk-value of a person is usually 0.

[--------------------------------------]

Part 1 - Arthur

Arthur Dent is a man in the bed. "Arthur Dent is here." Understand "arthur", "dent" as Arthur. Arthur is hungover. The player is Arthur.

Rule for printing the name of Arthur: say "Arthur Dent".

Chapter 1 - Items

[No Tea]

The no-tea is held by Arthur. The printed name is "no tea". Understand "no", "tea" as the no-tea. It is proper-named.

Instead of taking or dropping the no-tea, say "Your common sense tells you that you can't do that."

Instead of doing anything to the no-tea, say "You're talking complete nonsense; pull yourself together."

[--------------------------------------]

Part 2 - Ford

Ford Prefect is a man in the back garden. "[if Ford is asleep]Ford is in the corner, snoring loudly[else]Ford Prefect is here[end if]." Understand "ford", "prefect" as Ford.

Rule for printing the name of Ford: say "Ford Prefect".

Chapter 1 - Items

[Satchel]

The satchel is a closed openable container held by Ford. Understand "battered", "leather", "bulky" as the satchel. The description is "The satchel, which is [if the satchel is open]open[else]closed[end if], is fairly bulky." The owner of the satchel is "Ford".

Rule for clarifying the parser's choice of the satchel: stop the action. [don't print the name of the bulldozer]

Rule for writing a paragraph about the satchel:
	say "There is a satchel here."

Instead of opening the satchel while the player is not Ford:
	say "[private]";

Instead of taking the satchel while the satchel is held by Ford and the player is Arthur, say "Ford says, 'Hey, Arthur, keep your hands off my satchel!'"

[Guide]

The guide is in the satchel. The printed name is "The Hitchhiker's Guide". It is proper-named. Understand "hitchhiker's", "sub-etha", "copy" as the guide. The description is "Try: CONSULT GUIDE ABOUT (something).".


Rule for writing a paragraph about the guide:
	say "There is a copy of [the guide] here."

[Satchel Fluff]

The satchel fluff is in the satchel. Understand "lint" as the satchel fluff.

[Thumb]

The thumb is in the satchel. The printed name is "electronic Sub-Etha signaling device". Understand "small", "black", "little", "blinking", "electronic", "sub-etha", "signaling", "device", "sensor" as the thumb. The thumb can be broken. The description is "[The thumb] is shaped like a small fist with an extended thumb. Various lights along its 'knuckles' are currently [if the fleet is visible]blinking wildly, indicating a spaceship in the vicinity[else]dark[end if]. It has two small buttons, a red one labelled 'Call Engineer' and a green one labelled 'Hitchhike.' [fine-product] Affixed to the Thumb is a lifetime guarantee.".

Instead of opening, closing, or searching the thumb, say "[impossibles]".

Instead of repairing the thumb when the thumb is broken, say "You have neither the tools nor the expertise."

[Guarantee]

The guarantee is part of the thumb. Understand "lifetime", "warranty", "plaque" as the guarantee. The description is "The lifetime guarantee states that the Thumb will be repaired on site by trained [SCC] Field Engineers."

[Green Button]

The green button is part of the thumb. Understand "small", "hitchhike" as the green button.

Instead of hitchhiking, try pushing the green button.

[Red Button]

The red button is part of the thumb. Understand "small" as the red button.

[Towel]

The towel is held by Ford. Understand "towels" as the towel. The towel can be muddy. The towel is wearable. The description is "[if the towel is muddy]It is caked with mud[otherwise]It's covered with little pink and blue flowers[end if]."

Instead of putting the towel on your head, try wearing the towel.
Instead of putting the towel on your eyes, try wearing the towel.
Instead of tying the towel to your head, try wearing the towel.
Instead of tying the towel to your eyes, try wearing the towel.

Instead of wearing the towel when the player is wearing the towel, say "It already is."

Instead of wearing the towel, say "There's no need for that. It's not like there's a Ravenous Bugblatter Beast of Traal around, or something."

Instead of looking when the player is wearing the towel, say "You see a towel."

Instead of examining when the player is wearing the towel, say "[with-towel]".

Instead of going when the player is wearing the towel:
	now the player is lost;
	say "You stumble in that direction, but as you can't see where you're going you wander around in circles."

Instead of shooting when the player is wearing the towel, say "[with-towel]". Instead of shooting at when the player is wearing the towel, say "[with-towel]". Instead of shooting something with when the player is wearing the towel, say "[with-towel]".

Instead of cleaning the towel:
	now the towel is not muddy;
	say "It is now much cleaner.";

[--------------------------------------]

Part 3 - Bulldozer Driver

The bulldozer driver is a man in the front garden. He is undescribed.

Instead of saying hello to the bulldozer driver, say "[The bulldozer driver][union-rules]"

Instead of telling the bulldozer driver about, say "[The bulldozer driver][union-rules]"

Does the player mean doing something with the bulldozer driver: it is very unlikely.

[--------------------------------------]

Part 4 - Mr Prosser

Mr Prosser is a man in the front garden. The printed name is "Mr. Prosser". Understand "foreman", "wrecking", "crew", "mister", "mr" as Mr Prosser. He is undescribed.

Chapter 1 - Items

[Digital Watch]

The digital watch is a thing held by Mr Prosser. Understand "watches" as the digital watch. The owner of the digital watch is "Mr. Prosser".

Instead of taking or examining the digital watch:
	say "[private]";

[--------------------------------------]

Part 5 - Dog

The dog is an animal in the country lane. Understand "small", "serene", "irritable", "mongrel" as the dog. The dog can be hungry. The dog is hungry.

Instead of examining the dog when the dog is hungry, say "The mongrel looks hungry."

Instead of touching or pushing the dog, say "The dog tries to bite your hand."

Instead of kicking the dog, say "The dog tries to bite your foot."

Instead of dropping something edible when the dog is visible, try feeding the noun to the dog.

Instead of feeding some peanuts to the dog, say "This is a dog, not an elephant."

Instead of feeding the sandwich to the dog:
	if the dog is handled: [already swallowed fleet]
		say "The dog, which seems to have a slight case of indigestion, ignores the [sandwich].";
	else:
		now the sandwich is nowhere;
		now the dog is not hungry;
		say "The dog is deeply moved. With powerful sweeps of its tail it indicates that it regards this [sandwich] as one of the great [sandwich]es. Nine out of ten pet owners could happen by at this point expressing any preference they pleased, but this dog would spurn both them and all their tins. This is a dog which has met its main sandwich. It eats with passion, and ignores a passing microscopic space fleet.";

[--------------------------------------]

Part 6 - Barman

The barman is a man in the pub. "There is a barman serving at the bar." Understand "bartender" as the barman.

Instead of asking the barman to try saying hello:
	try saying hello to the barman.

Before asking the barman to try giving something to the player:
	try buying the noun instead;

Before asking the barman for something:
	try buying the second noun instead;

Persuasion rule for asking the barman to try doing something:
	say "The barman ignores you and keeps polishing the other end of the bar.";
	persuasion fails.

[--------------------------------------]

Volume 4 - Other

[TEMP - this should live somewhere, but I needed to check if it was in inventory earlier]

The tea is a thing held by the barman. Understand "real", "nice", "hot", "cup" as the tea. It is edible.


Rule for writing a paragraph about the tea:
	say "There is a nice, hot cup of tea here."
