# Apex-runner
Turns off AHK scripts while Apex legends is running, and turns them back on when the game is turned off.

So Apex Legends recently blacklisted AHK and some other programs because of cheaters. This makes it a little annoying if you have AHK scripts running on your PC for wahteverver reason, cos then you have to manually turn them off before you play Apex and then turn them back on.

So here is my little .bat solution:
- kills all AHK stuff
- starts Apex
- checks every 15s if apex is running
- when its not running, turns on AHK stuff again

just set the paths to apex and the scripts you want to restert in the variables
tested only with steam version
