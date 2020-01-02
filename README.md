# Onset-CoordsToFile

Super Simple Package for those who want a quick solution to obtaining coords without the tedious copy/pasting.

### Installation
Just like everything else in Onset, clone/download and put `savecoords` in your packages folder.

### Usage
Use the command `/pos <name>`
 
You can find the coords file in you server files (where your OnsetServer exe is) named `(yourname)-SavedCoords.txt`

### Changing how coords save
You can change the format of how coords save in `sv_main line 13` For example, if you want to save coords into a table, you can use `file:write(name ..' | {'.. '["x"] = ' ..x.. ', ["y"] = ' ..y.. ', ["z"] = ' ..z.. '},\n')`

*Note, use \n at the end of the write to go to the next line.*
