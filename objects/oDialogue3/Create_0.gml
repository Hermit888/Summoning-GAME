// Inherit the parent event
event_inherited();

next_room = Underworld;

background = sUnderworld_bg;
lineBreak = "\n\n";

character1Name = "You"
character2Name = "Demon 1"
character3Name = "Demon 2"
character4Name = "Demon 3"

dialog.add(sNarrative, lineBreak + "......");
dialog.add(sNarrative, lineBreak + "............");
dialog.add(sNarrative, lineBreak + "..................");
dialog.add(sNarrative, lineBreak + "You open your eyes and find you are standing on a glowing magical circle. Three teenage demons are surrounding you. Each one has a different expression - one is in awe, one is skeptical, and one is fidgeting with nervous excitement.");

dialog.add(sDemon1, character2Name + lineBreak + "No way...No way! It actually worked!");
dialog.add(sDemon2, character3Name + lineBreak + "Hah. It's probably just some weird spirit in disguise. No way we actually summoned a real human.");
dialog.add(sDemon3, character4Name + lineBreak + "But look! It has skin, and...hair! And - wait, its eyes are staring at us! That's definitely human!");
dialog.add(sYou, character1Name + lineBreak + "Ugh...my head...What-where am I?");
dialog.add(sDemon1, character2Name + lineBreak + "You, my fragile friend, are in the Underworld. And this? This is a once-in-a-lifetime moment!");
dialog.add(sDemon2, character3Name + lineBreak + "Yeah, you should feel honored. We've never met a real human before. You're basically a walking legend.");
dialog.add(sYou, character1Name + lineBreak + "Lucky me...Now, mind telling me why I'm here?");
dialog.add(sDemon3, character4Name + lineBreak + "We might have performed a summoning ritual. Just, you know...for fun. It wasn't supposed to actually work!");
dialog.add(sYou, character1Name + lineBreak + "Oh, great. I'm the result of a paranormal science experiment. Fantastic.");
dialog.add(sDemon1, character2Name + lineBreak + "Look, don't take it personally. Actually, you should be excited! If you want to leave, all you need are two keys for each door and find the return gate. We happen to have the keys to this area.");
dialog.add(sDemon3, character4Name + lineBreak + "Let's play hide and seek! Find us and answer the questions to get rewards.");

dialog.add(sDemon2, character3Name + lineBreak + "But the first lesson is paying attention to the demon cops. They don't welcome any outsiders.");
dialog.add(sYou, character1Name + lineBreak + "What does that mean?");
dialog.add(sDemon3, character4Name + lineBreak + "Never mind. He was just giving you a friendly reminder. If you get caught by cops, there's no way to go back.");
dialog.add(sYou, character1Name + lineBreak + "......");