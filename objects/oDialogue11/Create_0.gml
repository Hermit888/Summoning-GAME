// Inherit the parent event
event_inherited();

background = undefined;
lineBreak = "\n\n";

global.nextRoom = End4;
character1Name = "You";
character2Name = "Cerberus";

dialog.add(sCerberus, character2Name+lineBreak+"Hah! A valiant effort, but you have lost. And that means... you stay. Forever.");
dialog.add(sYou, character1Name+lineBreak+"Wait... what? That wasn't part of the deal!");
dialog.add(sCerberus, character2Name+lineBreak+"Oh? You thought you could just leave after losing? No, no, no, mortal. The rules are very clear. You lose? You join us.");
dialog.add(sYou, character1Name+lineBreak+"Haha... okay, funny joke. So... what, do I get another chance?");
dialog.add(sCerberus, character2Name+lineBreak+"Nope!");
dialog.add(sCerberus, character2Name+lineBreak+"It's time... for your transformation!");
dialog.add(sYou, character1Name+lineBreak+"Wait, WAIT, let's talk abo -");

dialog.add(sNarrative, "\n\nCerberus swung its claws violently - POOF! A cloud of ghostly blue mist surrounded you.")
dialog.add(sNarrative, "\n\nWhen you open your eyes again, look down at your hands... now they are translucent and floating?")
dialog.add(sCerberus, character2Name+lineBreak+"Welcome to the Underworld, ghost buddy! No more hunger! No more sleep! No more bathroom breaks! It's all pretty convenient, really.");
dialog.add(sYou, character1Name+lineBreak+"I CAN FLOAT - WAIT, NO - THIS ISN'T WHAT I WANTED!");
dialog.add(sCerberus, character2Name+lineBreak+"You'll get used to it! And hey, you can haunt people now! That's fun, right?");
dialog.add(sYou, character1Name+lineBreak+"I DIDN'T SIGN UP FOR THIS!!");
dialog.add(sCerberus, character2Name+lineBreak+"Nobody does.");
dialog.add(sCerberus, character2Name+lineBreak+"Now, go make yourself comfortable. You've got all eternity to settle in!");

dialog.add(sNarrative, "\n\n.............................................");
dialog.add(sNarrative, lineBreak+"You're now a full-fledged ghost, doomed to roam the Underworld forever... but in a surprisingly cozy and not-so-bad existence.");