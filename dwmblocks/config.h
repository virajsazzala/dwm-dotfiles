//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {

/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/ 
  {"",  "volume.sh", 1,  10},
  {"",  "battery",   5, 4},
  {"",  "internet",  5, 4},
  {"",  "time.sh",   1, 1},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
