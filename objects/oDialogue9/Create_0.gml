/// @description 

event_inherited();

background = sUnderworld_bg;
lineBreak = "\n\n";

character1Name = "You";
charcter2Name = "Cerberus";

dialog.add(sNarrative, lineBreak+"There is a three-headed dog in front of you, roaring, with three heads staring at you.");
dialog.add(sCerberus, charcter2Name+lineBreak+"You stand before the Gate of Passage, mortal. None shall cross while I stand guard.");
dialog.add(sYou, character1Name+lineBreak+"Look, I just need to get through -");
dialog.add(sCerberus, charcter2Name+lineBreak+"Do not waste your breath. The living do not belong beyond this gate.");
dialog.add(sYou, character1Name+lineBreak+"So... there's no way to negotiate? Maybe a bribe?");
dialog.add(sCerberus, charcter2Name+lineBreak+"Foolish mortal. The only thing I take as payment... is battle!");
dialog.add(sCerberus, charcter2Name+lineBreak+"Fight well, mortal! Or perish trying!");