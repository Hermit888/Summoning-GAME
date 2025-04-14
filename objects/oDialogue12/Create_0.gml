// Inherit the parent event
event_inherited();

background = c_black;
lineBreak = "\n\n";

next_room = Main_menu;
character1Name = "You";
character2Name = "Ash";

dialog.add(sYou, character1Name+lineBreak+"Hi! Ash, How are you? I'm so missing you!");
dialog.add(sCat, character2Name+lineBreak+"Meow, meow");
dialog.add(sYou, character1Name+lineBreak+"You'd never guess I just had a big adventure.");
dialog.add(sCat, character2Name+lineBreak+"Meow?");
dialog.add(sYou, character1Name+lineBreak+"Now, I just want to fall into bed and take a nap now. So goodnight!");
dialog.add(sCat, character2Name+lineBreak+"Meow, meow, meow");