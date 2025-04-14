// Inherit the parent event
event_inherited();

background = c_black;
lineBreak = "\n\n";

character1Name = "You"
character2Name = "Cerberus"


dialog.add(sCerberus, character2Name+lineBreak+"Hah... HAH...! I... have been... bested?");
dialog.add(sYou, character1Name+lineBreak+"Y-yeah... so... do I get to go now?");

dialog.add(sNarrative, "\n\nCerberus is suddenly perking up and wagging its tail energetically")

dialog.add(sCerberus, character2Name+lineBreak+"YOU WIN! YAY!");
dialog.add(sYou, character1Name+lineBreak+"...Wait. What?");

dialog.add(sNarrative, "\n\nCerberus is acting like an excited puppy, bouncing around you")
dialog.add(sCerberus, character2Name+lineBreak+"That was so fun! It's been forever since I had a good fight! You're really strong!!");
dialog.add(sYou, character1Name+lineBreak+"Uh... thanks?");
dialog.add(sYou, character2Name+lineBreak+"Here! Your prize! The Gate of Return!");
dialog.add(sCerberus, character2Name + lineBreak +"You're not so bad for a mortal. Come back anytime! I'll let you in for some playtime next time!");
dialog.add(sYou, character1Name+lineBreak+"...I'll keep that in mind.");
dialog.add(sCerberus, character2Name+lineBreak+"BYE-BYE, FRIEND! COME BACK SOON!");