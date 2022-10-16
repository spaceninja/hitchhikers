"The Hitchhiker's Guide to the Galaxy"

The story headline is "Infocom interactive fiction - a science fiction story[line break]Copyright © 1984 by Infocom, Inc. All rights reserved.[line break]Inform 7 adaptation by Scott Vandehey".
The story genre is "Science Fiction".
The story creation year is 1984.

[
TODO: Commands
- [ ] Who am I
- [ ] What is the object of the game
- [ ] Don't panic
- [ ] Footnote
[@see https://ganelson.github.io/inform-website/book/RB_12_3.html]
[Occaisionally, the text in HITCHHIKER'S will mention the existence of a footnote. To read the footnote, simply type FOOTNOTE followed by the appropriate footnote number (for example, FOOTNOTE 7). This will not count as a turn.]

- [ ] Better method for concepts like hangover than backdrops?
- [ ] Address carrying capacity & size (see gown)
- [ ] What is AWAITING-REPLY and I-REPLY?
- [ ] IDROP
- [ ] I-THING
;"put interrupts on clock chain"
<ENABLE <QUEUE I-HOUSEWRECK 20>>
<ENABLE <QUEUE I-THING 21>>
<ENABLE <QUEUE I-VOGONS 50>>
]

[======================================]

Volume 1 - Setup

Use American dialect and the serial comma and scoring.

After printing the banner text when not requesting the story file version, say "[line break]You wake up. The room is spinning very gently round your head. Or at least it would be if you could see it which you can't."

[--------------------------------------]

Book 1 - Kinds

A tool is a kind of thing.

[--------------------------------------]

Book 2 - Text Substitutions

Part 1 - Random Responses

To say impossibles:
	say "[one of]You have lost your mind[or]You are clearly insane[or]You appear to have gone barking mad[or]I'm not convinced you're allowed to be playing with this computer[or]Run out on the street and say that. See what happens[or]No, no, a thousand times no. Go boil an egg[in random order]."

To say lurches:
	say "[one of]It slips through your fumbling fingers and hits the carpet with a nerve-shattering bang[or]It dances by you like a thing possessed[or]You lunge for it, but the room spins nauseatingly away. The floor gives you a light tap on the forehead[or]You're certainly picking the tough tasks. The floor acts like a trampoline on an ice rink, or like something they've been working on for years at Disneyland[in random order]."

To say yuks:
	say "[one of]What a concept[or]Nice try[or]You can't be serious[or]Not bloody likely[in random order]."

Part 2 - Shared Responses

To say cant-reach-from-bed:
	say "You can't reach it from the bed[if the player is hungover]. The effort almost kills you[end if]."

To say tell-me-how:
	say "You must tell me how to do that to [the noun]."

To say unimportant-thing:
	say "That's not important; leave it alone."

Part 3 - Shared Snippets

To say dialling-tone:
	say "A moment later, the dialing tone is suddenly cut off. Glancing through the window you can't help but notice the large old oak tree of which you are particularly fond crashing down through the phone cable".

To say get-rid:
	say "you've been trying to get rid of it for years".

To say nice-day:
	say "t's a bright morning, the sun is shining, the birds are
singing, the meadows are blooming".

To say two-trees:
	say "[line break]Shouldn't you be taking more interest in events in the world around you? While you've got it...?"

[--------------------------------------]

Book 3 - Actions

Part 1 - Disable Some Standard Rules

[Don't get out of bed for the player]

The stand up before going rule does nothing.

[Don't automatically open doors for the player]

Instead of the player going through a closed door, say "The door is closed."

Part 2 - Update Standard Actions

[Examining]

Understand the command "inspect" or "study" or "observe" or "see" or "scour" as "examine".

[Taking]

Check taking anything that is scenery:
	say "[yuks]" instead.

Part 3 - New Actions

[Answering]

Answering is an action applying to one thing. Understand "answer [something]" as answering.

Carry out answering:
	say "It is hardly likely that [the noun] is interested."

[Calling]

Calling is an action applying to one topic. Understand "call [text]" as calling. Understand the command "phone" as "call".

Carry out calling:
	say "There's no phone here!"

[Calling With]

Calling with is an action applying to one topic and one thing. Understand "call [text] with [something]" as calling with. Understand "call [text] on [something]" as calling with.

Check calling with:
	if the second noun is not the phone:
		say "You can't use [the second noun] as a phone." instead;
	else:
		try calling the topic understood instead.

[Diagnosing]

Diagnosing is an action applying to nothing. Understand "diagnose" as diagnosing.

Carry out diagnosing:
	if the player is hungover:
		say "You have a big blinding throbber.";
	else if the player is groggy:
		say "You feel weak.";
	else:
		say "You are in good health.";

[Getting Out Of]

Getting out of is an action applying to one thing. Understand "get out of [something]" as getting out of.

Carry out getting out of something:
	try exiting instead.

[Tying]

Tying is an action applying to one thing. Understand "tie [something]" as tying.

Carry out tying:
	say "You can't tie [the noun]."

[Tying Together]

Tying together is an action applying to one thing. Understand "tie together [something]" as tying together.

Carry out tying together:
	say "That sentence isn't one I recognise."

[Untying]

Untying is an action applying to one thing. Understand "untie [something]" as untying.

Carry out untying:
	say "[yuks]".

Part 4 - Testing

[Walkthrough Tests]

test house with "stand up / turn on light / get gown / wear gown / look in pocket / get all from gown / get screwdriver / get toothbrush / put screwdriver and toothbrush in thing".

test bulldozer with "south / get mail / read mail / south / lie down / wait / wait / wait / wait / wait / wait".

test pub with "south / west / examine shelf / buy sandwich / drink beer / drink beer / drink beer / east / give sandwich to dog / north / wait / wait / get device / examine device / press green button".

[Other Tests]

test start with "turn on light / stand up / wear gown / look in pocket / swallow pill".

test hangover with "take phone / turn on light / open curtains / stand up / take toothbrush / take screwdriver / take phone / get gown / wear gown / look in pocket / eat tablet / take toothbrush / take screwdriver / take phone".

test phone with "call ford with screwdriver / call ford with phone / call home / call police / take phone".

test exit-bedroom with "turn on light / stand up / south / test start / south / north / open curtains / south".

test sleeves with "tie sleeves / remove gown / tie together sleeves / wear gown / untie sleeves / wear gown".

[======================================]

Volume 2 - Concepts

[Hangover]

The hangover is a backdrop. The hangover is everywhere. The printed name is "splitting headache". Understand "splitting", "big", "blinding", "throbber", "headache" as the hangover. [backdrop so you can interact with it anywhere]

After deciding the scope of the player while in darkness: place the hangover in scope. [allow examining with lights off]

Before examining the hangover, try diagnosing instead.

Before doing anything other than examining to the hangover, say "[impossibles]" instead.

[======================================]

Volume 3 - Rooms

Book 1 - Earth

[TODO time]

[TODO vogon fleet]

[TODO home]

[TODO house]

[TODO rubble]

[--------------------------------------]

Part 1 - Bedroom

[TODO bedroom globals]

The Bedroom is a dark room. "The bedroom is a mess.[line break]It is a small bedroom with a faded carpet and old wallpaper. There is a washbasin, a chair[if the gown is undescribed] with a tatty dressing gown slung over it[end if], and a window with the curtains drawn. Near the exit leading south is a phone."

The bedroom door is an open scenery door. It is south of the Bedroom. The printed name is "door".

Instead of going down from the Bedroom, try going south. Instead of going outside from the Bedroom, try going south. [reroute through door]

Instead of opening or closing the bedroom door when the player is in the bed, say "[cant-reach-from-bed]".

Before going from the bedroom when the player is hungover, say "You miss the doorway by a good eighteen inches. The wall jostles you rather rudely." instead.

Report going from the bedroom:
	if the bulldozer is observed:
		say "You rush down the stairs in panic.";
	else:
		say "You make your way down to the front porch."

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

[Bedroom Furnishings]

The bedroom-furnishings is scenery in the bedroom. The printed name is "it". Understand "wall", "faded", "old", "carpet", "wallpaper", "paper", "chair" as the bedroom-furnishings.

Instead of doing anything to the bedroom-furnishings, say "[unimportant-thing]".

[Curtains]

Your curtains are scenery in the bedroom. Understand "your", "curtain", "shade", "shades" as your curtains.

Instead of opening or searching your curtains:
	if the player is in the bed:
		say "[cant-reach-from-bed]";
	else:
		now the bulldozer is observed;
		say "As you part [the curtains] you see that i[nice-day], and a large yellow [bulldozer] is advancing on your home."

[Light]

The light is a scenery device in the bedroom. Understand "lights", "lamp" as the light.

After deciding the scope of the player when the location is the bedroom:
	place the light in scope.

After switching on the light:
	if the light is lit:
		say "It is.";
	else:
		now the light is lit;	
		say "Good start to the day. Pity it's going to be the worst one of your life. The light is now on."

After switching off the light:
	now the light is not lit.

[Sink]

The sink is scenery in the bedroom. The printed name is "it". Understand "wash", "basin", "washbasin" as the sink.

Instead of doing anything to the sink, say "[unimportant-thing]".

[Stuff Under Bed]

The stuff-under-bed is scenery in the bedroom. The printed name is "it". Understand "soiled", "foreign", "book", "coin", "coins", "handkerchief", "handkerchiefs" as the stuff-under-bed.

Instead of doing anything to the stuff-under-bed, say "[unimportant-thing]".

[Water]

The water is scenery in the bedroom.

Instead of doing anything to the water, say "[unimportant-thing]".

Chapter 2 - Items

[Fluff]

Some pocket fluff is in your gown. Understand "lint" as the pocket fluff.

[Gown]

[TODO gown-hung description]
Your gown is in the bedroom. It is a wearable closed openable undescribed container. The description is "The dressing gown is faded and battered, and is clearly a garment which has seen better decades. It has a pocket which is [if gown is open]open[else]closed[end if], and a small loop at the back of the collar[if the sleeves are tied]. The sleeves are tied closed[end if]." Understand "my", "your", "dressing", "tatty", "faded", "battered", "pocket", "loop", "robe" as your gown. The carrying capacity is 14.

After taking your gown when the player is hungover, say "Luckily, this is large enough for you to get hold of. You notice something in the pocket."

Before searching the gown when the gown is closed, try opening the gown instead.

Before opening or closing the gown when the player is not wearing the gown, say "It's hard to open or close the pocket unless you're wearing the gown." instead.

Before wearing the gown when the sleeves are tied, say "You'll have to untie the sleeve first." instead.

Instead of tying the gown, try tying the sleeves.

Instead of untying the gown, try untying the sleeves.

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

[Phone]

The phone is in the bedroom. It is undescribed. The printed name is "telephone". Understand "telephone", "receiver" as the phone.

Instead of taking the phone:
	if the player is hungover:
		say "[lurches]";
	else if the phone is handled:
		try calling "police"; [doesn't matter who we call, the line is down]
	else:
		now the phone is handled;
		say "You pick up the receiver. [dialling-tone].[if the toothbrush is handled][two-trees][end if]";

Instead of answering the phone, say "It isn't ringing."

Instead of calling when the player is in the bedroom:
	if the player is in the bed:
		say "[cant-reach-from-bed]";
	else if the player is hungover:
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

[Toothbrush]

The toothbrush is a tool in the bedroom. Understand "my", "proper", "brush", "tool", "tools" as the toothbrush.

Instead of taking the toothbrush when the player is hungover, say "[lurches]".

After taking the toothbrush:
	say "As you pick up [the toothbrush] a tree outside the window collapses. There is no causal relationship between these two events.[if the phone is handled][two-trees][end if]";

[--------------------------------------]

Part 2 - Front Porch

The Front Porch is south of the bedroom door and down from the Bedroom and outside from the Bedroom. "This is the enclosed front porch of your home. Your front garden lies to the south, and you can re-enter your home to the north."

Instead of going up from the Front Porch, try going north. Instead of going inside from the Front Porch, try going north. [reroute through door]

Chapter 1 - Items

Some mail is in the front porch.

[--------------------------------------]

Part 3 - Front of House

The Front Garden is south of the Front Porch and outside from the Front Porch. "You can enter your home to the north. A path leads around it to the northeast and northwest, and a country lane is visible to the south." The printed name is "Front of House".

Chapter 1 - Items

The roses are in the front garden.

The bulldozer is in the front garden. The bulldozer can be observed or unobserved. It is unobserved.

[TODO bulldozer driver]

[TODO Mr Prosser, digital watch]

[--------------------------------------]

Part 4 - Back of House

The Back Garden is northwest of the Front Garden and northeast of the Front Garden. "The rear garden is a pleasant place. I[nice-day], and it's a lovely day for a walk. A path leads around the house to the southeast and southwest." The printed name is "Back of House".

[--------------------------------------]

Part 5 - Country Lane

The Country Lane is south of the Front Garden. "The road runs from your home, to the north, toward the village Pub, to the west."

[TODO dog]

[--------------------------------------]

Part 6 - Pub

The Pub is west of the Country Lane and inside from the Country Lane. "The Pub is pleasant and cheerful and full of pleasant and cheerful people who don't know they've got about twelve minutes to live and are therefore having a spot of lunch. Some music is playing on an old jukebox. The exit is east."

Chapter 1 - Items

[TODO pub object]

The bar is in the pub.

The pub shelf is in the pub.

The jukebox is in the pub.

The music is in the pub.

The pub furnishings are in the pub.

The beer is in the pub.

The peanuts are in the pub.

The sandwich is in the pub.

[TODO barman]

[======================================]

Volume 4 - Actors

A person can be hungover.
A person can be groggy.

The player is hungover.
The player is in the bed.

Part 1 - Ford

[TODO Ford, satchel, satchel fluff, towel]

Part 2 - Arthur

[TODO Arthur]
