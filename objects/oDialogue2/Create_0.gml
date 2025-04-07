// Inherit the parent event
event_inherited();

next_room = Dialogue1;
background = c_black;
lineBreak = "\n\n";

character1Name = "You"
character2Name = "Roommate"

dialog.add(sYou, character1Name + lineBreak + "...There's no one here. But what's with that weird symbol on the floor?");
dialog.add(sRoomate, character2Name + lineBreak + "Maybe it's for someone's birthday? Or some kind of event we don't know about? Wait - it's not your birthday, is it?");
dialog.add(sYou, character1Name + lineBreak + "Seriously? You're my friend, and you don't even remember my birthday? It was last week.");
dialog.add(sRoomate, character2Name + lineBreak + "Oh - uh, of course I knew that! I was just testing you! Don't worry, your birthday present is...uh...still on its way!");
dialog.add(sYou, character1Name + lineBreak + "Wow. You were literally out clubbing that night, weren't you -");

dialog.add(sNarrative, lineBreak + "Before you can even finish your words, you vanish into thin air, right in front of your roommate's eyes.");

dialog.add(sRoomate, character2Name + lineBreak + "...Hey? Where'd you go...? What the hell is happening?!");