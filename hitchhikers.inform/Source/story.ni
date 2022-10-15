"The Hitchhiker's Guide to the Galaxy"

[======================================]

Volume 1 - Setup

The story headline is "Infocom interactive fiction - a science fiction story[line break]Copyright © 1984 by Infocom, Inc. All rights reserved.[line break]Inform 7 adaptation by Scott Vandehey". The story genre is "Science Fiction". The story creation year is 1984.

After printing the banner text when not requesting the story file version, say "[line break]You wake up. The room is spinning very gently round your head. Or at least it would be if you could see it which you can't."

Use American dialect and the serial comma.

Book 1 - Actions

Part 1 - Disable Some Standard Rules

[Don't get out of bed for the player]

The stand up before going rule does nothing.

[Don't automatically open doors for the player]

Instead of the player going through a closed door, say "The door is closed."

Part 2 - Understand Standard Actions in New Ways

[Examining]

Understand the command "inspect" or "study" or "observe" or "see" or "scour" as "examine".

Part 3 - Update Standard Actions

[Taking]

Check taking anything that is scenery:
	say "[random-yuks]" instead.

Part 4 - New Actions

[Answering, "answer phone"]

Answering is an action applying to one thing. Understand "answer [something]" as answering.

Carry out answering:
	say "It is hardly likely that [the noun] is interested."

[Calling, "call police"]

Calling is an action applying to one topic. Understand "call [text]" as calling.

Understand the command "phone" as "call".

Carry out calling:
	if the player is in the bed:
		say "[cant-reach-from-bed]";
	else if the player is not in the bedroom:
		say "There's no phone here!";
	else if the player is hungover:
		say "You reach for the receiver. [lurches]";
	else if the phone is handled:
		say "The cable is down, remember?";
	else if the topic understood includes "police" or the topic understood includes "cops":
		now the phone is handled;
		say "You explain your situation. The desk sergeant promises to send someone over soon, and says not to try anything crazy in the meantime, like lying down in front of [the bulldozer]. [dialling-tone]";
	else if the topic understood matches "home":
		say "Who do you think you are, E.T.?";
	else:
		say "You don't know the number."

[Calling With, "call police with phone"]

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

[Getting Out Of, "get out of bed"]

Getting out of is an action applying to one thing. Understand "get out of [something]" as getting out of.

Carry out getting out of something:
	try exiting instead.

Part 5 - Concepts

[Hangover]

The hangover is a backdrop. The hangover is everywhere. The printed name is "splitting headache". Understand "splitting", "big", "blinding", "throbber", "headache" as the hangover. [backdrop so you can interact with it anywhere]

After deciding the scope of the player while in darkness: place the hangover in scope. [so you can examine it with the lights off]

Before examining the hangover, try diagnosing instead.

Before doing anything other than examining to the hangover, say "[impossibles]" instead.

Part 6 - Global Responses

To say cant-reach-from-bed:
	say "You can't reach it from the bed."

To say dialling-tone:
	say "A moment later, the dialing tone is suddenly cut off. Glancing through the window you can't help but notice the large old oak tree of which you are particularly fond crashing down through the phone cable."

To say impossibles:
	say "[one of]You have lost your mind[or]You are clearly insane[or]You appear to have gone barking mad[or]I'm not convinced you're allowed to be playing with this computer[or]Run out on the street and say that. See what happens[or]No, no, a thousand times no. Go boil an egg[at random]."

To say lurches:
	say "[one of]It slips through your fumbling fingers and hits the carpet with a nerve-shattering bang[or]It dances by you like a thing possessed[or]You lunge for it, but the room spins nauseatingly away. The floor gives you a light tap on the forehead[or]You're certainly picking the tough tasks. The floor acts like a trampoline on an ice rink, or like something they've been working on for years at Disneyland[at random]."

To say random-yuks:
	say "[one of]What a concept[or]Nice try[or]You can't be serious[or]Not bloody likely[at random]."

To say two-trees:
	say "Shouldn't you be taking more interest in events in the world around you? While you've got it...?"

To say unimportant-thing:
	say "That's not important; leave it alone."

[======================================]

Volume 2 - Rooms

Book 1 - Earth

[TODO time]

[TODO vogon fleet]

[TODO home]

[TODO house]

[TODO rubble]

[TODO hangover]

[--------------------------------------]

Part 1 - Bedroom

[TODO bedroom globals]
[TODO add bedroom exit check]

The Bedroom is a dark room. "The bedroom is a mess.[line break]It is a small bedroom with a faded carpet and old wallpaper. There is a washbasin, a chair[if the gown is undescribed] with a tatty dressing gown slung over it[end if], and a window with the curtains drawn. Near the exit leading south is a phone."

The bedroom door is an open scenery door. It is south of the Bedroom. The printed name is "door".

Instead of going down from the Bedroom, try going south. Instead of going outside from the Bedroom, try going south. [reroute through door]

Instead of opening or closing the bedroom door when the player is in the bed, say "[cant-reach-from-bed]".

Chapter 1 - Scenery

[Bed]

The bed is an enterable scenery container in the bedroom.

After exiting from the bed when the player is hungover:
		say "Very difficult, but you manage it. The room is still spinning. It dips and sways a little."

Instead of looking under the bed, say "There's nothing there. Well, there are a few soiled handkerchiefs, a book you thought you'd lost, a couple of foreign coins, and something else which can't be fully described in a family game, but nothing you'd actually want."

Before taking something when the player is in the bed:
	if the noun is not in the bed:
		say "[cant-reach-from-bed]" instead.

[TODO Bedroom furnishings]

[Curtains]

Your curtains are scenery in the bedroom. Understand "your", "curtain", "shade", "shades" as your curtains.

Instead of opening or searching your curtains when the player is in the bed, say "[cant-reach-from-bed]".

[Light]

The light is a scenery device in the bedroom. Understand "lights", "lamp" as the light.

After deciding the scope of the player when the location is the bedroom:
	place the light in scope.

Instead of switching on the light:
	now the light is lit;	
	say "Good start to the day. Pity it's going to be the worst one of your life. The light is now on."

Instead of switching off the light:
	now the light is not lit.

[TODO Sink]

[Stuff under bed]

The stuff under bed is scenery in the bedroom. The printed name is "it". Understand "soiled", "foreign", "book", "coin", "coins", "handkerchief", "handkerchiefs" as the stuff under bed.

Instead of doing anything to the stuff under bed, say "[unimportant-thing]".

[Water]

The water is scenery in the bedroom.

Instead of doing anything to the water, say "[unimportant-thing]".

Chapter 2 - Items

[Fluff]

The pocket fluff is in the bedroom

[Gown]

The gown is in the bedroom. It is wearable. It is undescribed.

[TODO sleeves]

[Gift]

The gift is in the bedroom

[Phone]

The phone is in the bedroom. The printed name is "telephone". Understand "telephone", "receiver" as the phone.

Instead of taking the phone:
	if the player is hungover:
		say "[lurches]";
	else if the phone is handled:
		try calling "police"; [doesn't matter who we call, calling will trigger 'the line is down']
	else:
		now the phone is handled;
		say "You pick up the receiver. [dialling-tone][if the toothbrush is handled] [two-trees][end if]";

Instead of answering the phone, say "It isn't ringing."

[Screwdriver]

The screwdriver is in the bedroom.

Instead of taking the screwdriver when the player is hungover, say "[lurches]".

[Tablet]

The tablet is in the bedroom

[Toothbrush]

The toothbrush is in the bedroom.

Instead of taking the toothbrush when the player is hungover, say "[lurches]".

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

The bulldozer is in the front garden.

[TODO bulldozer driver]

[TODO Mr Prosser, digital watch]

[TODO dog]

[--------------------------------------]

Part 4 - Back of House

The Back Garden is northwest of the Front Garden and northeast of the Front Garden. "The rear garden is a pleasant place. It's a bright morning, the sun is shining, the birds are singing, the meadows are blooming, and it's a lovely day for a walk. A path leads around the house to the southeast and southwest." The printed name is "Back of House".

[--------------------------------------]

Part 5 - Country Lane

The Country Lane is south of the Front Garden. "The road runs from your home, to the north, toward the village Pub, to the west."

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

Volume 2 - Actors

A person can be hungover.
A person can be groggy.

The player is hungover.
The player is in the bed.

Part 1 - Ford

[TODO Ford, satchel, satchel fluff, towel]

Part 2 - Arthur

[TODO Arthur]
