 This is a gargantuan task ! Separate it into stages, we are making the final one | 2 Dec 1839

NOTE:
	While I might use different words, some things will produce the same workflow,
	though I might induce different intents and restrict focus anyways.

	An example would be "Read for Fun" and "Read IT" as both may just open the library app.

# STAGE 1 - PoC and Basics
-[x] get the university stuff working
-[x] cycle courses
-[x] select course
-[x] course becomes arg for 3 commands
-[x] exits. 

# STAGE 2 - Skeleton Rising
-[x] establish a git for this
-[x] create a subdirectory for this
-[] furnish the .gitignore
-[] ensure I use the gits, and upload to Github every day
-[x] fill out the Top 5+2 base options
-[x] incorporate university function as a sub-option
-[c] build an array unpacker
-[c] possibly model the arrays with 0 as the name of the parent option.
-[x] have it echo each one's name
-[] collate important commands in .playbook
-[x] asks to exit

# STAGE 3 - THE UI/UX STAGE
-[x] pretty up the sourcing
-[x] pretty up function calling
-[] pretty up the Template Pattern
-[x] add logging of selections selected
-[c] add colour and ASCII to UI
-[c] Add a progress bar during the opening

# STAGE 4 - The Meat and Potatoes
-[] incorporate Read & Note functionality
-[] open Calibre Library
-[] echo other scripts
-[x] incorporate Watch functuonality
-[x] open firefox with specific URLs in mind | ENSURE WE SHOWCASE THE URL
-[x] incorporate Playtime functionality
-[x] add steam games | just a static adding of local gameids for now
-[x] incorporate Code & Do functionality
-[x] cycle scripts  | 3 terminal tabs and firefox
-[x] cycle projects | VsCode, Spotify, and Firefox
-[] open Gimp
-[] open site/app
-[] incorporate Write functionality
-[] open Obsidian or Gedit, vim can go to code.

# STAGE 5 - ADVANCED EXTERNAL CODING
-[x] add steam game functionality (dynamic)
-[] add YouTube API functionality (the daily curl)
-[] attempt columns
-[] add buffet functionality

# STAGE 6
-[] finish it


# unassigned
-[x] timed gameplay
-[] timed watching (let browse be open, but watch time should be monitored)
-[x] every page should have lastpicked
-[x] exit or return works
-[] watch: grep a page of show names and specific URLs for them

# other

Five + 2 base options | 10 Feb 1920 added listen as the 6th
	1. Read
		i) University
			...) however many courses in there
		ii) Library (Browse)
		iii) Library (Specific)
			...) any - not all local, some firefox
		iiii) Reading for fun (Browse)
		iiiii) Notes 
			a) (echo "run makeNotes")
			b) (echo "check notes")
		iiiiii) Email
		iiiiiii) News Sites
		iiiiiiii) Anki
	2. Work
		i) General Programming (VScode +)
			a) new project
			...) cycle through existing
		ii) Scripting Automation (.scripts/, 3 tabs, vim and gedit)
			a) new project | calls .scripts/makeNewScript.sh
			...) cycle through existing
		iii) General Graphic Design (Gimp)
		iiii) Pixel Graphic Design (Site or compile that app )
		iiiii)
	3. Play
		i) Lutris (Browse)
		ii) Lutris
			...) specific games
		iii) Steam (Browse)
		iiii) Steam
			...) steam steam://rungameid/{YourGameID}
		iiiii) Minecraft
	4. Watch
		i) YouTube (Browse)
		ii) Youtube (Specific)
			...) daily videos from API.
		iii) PrimeVideo
			... specific content too
		iiii) Twitch ?
	5. Write
		i) Albanian practice | open vim and that website | also, think about other languages maybe ?
		ii) Story writing
		iii) Garbage time | GarbageStream.md
		iiii) Fantasy writing
		iiiii) Attribute writing
		iiiiii) Blog writing
		iiiiiii) Idea Dumping
		iiiiiiii) Todo Writing
	6. Listen
		i) Spotify
			... maybe async ?
		ii) Discord
		iii) Local Podcasts
	n. Buffet
		...) alllll the options | Specific ones still take a second click
	n+1. Shush (exit)



#		Array
maybe use arrays to store the commands
for unpacking too

#		CHECK UPDATES
 this runs a check for updates for all apps here.
calibre library
Lutris
Steam
Spotify
VSCode
Minecraft
vim


#		EASY (A/E)DDITION
 REMEMBER, THESE MUST BE EASILY EDITABLE
 OUR PRIMEVIDEO SUBSCRIPTION WILL EXPIRE SOON
 AND WE MAY USE DIFFERENT SOFTWARE
 JUST ASSUME WE CAN GENERALISE THE COMMANDS TO VARS
 THIS WAY
 WE CAN HAVE THE ORIGINAL CODE BE WORKING
 AND ALL WE'D HAVE TO DO IS USE ADAPTORS


#		BUFFET OPTION
 IN THAT, ALL PROGRAMS CAN BE OPENED
 SELECT ONE, IT WILL ASK AGAIN AFTER ECHOING SELECTION
 SELECT AGAIN TILL COMPLETION
 OPEN ALL OPTIONS


#		MAY ASK TO EXIT
 MAY ALSO ASK ADDITIONAL APPLICATIONS
 THIS BRINGS THE USER TO THE BUFFET OPTION


#		LOG SELECTIONS
 should log the selections
 which I _could_ use to automatically display code
 that should be an alias


#		EXTERNAL SCRIPTS
 have this call other scripts to do it. 
 save those scripts in a subfolder of .scripts/
 WE COULD STORE ALL NON-TEMPLATE CODE IN EXTERNAL .sh or even alias
 AND ENSURE IF ERROR IN SOURCE, STATE AS SO WITHOUT EXITING
 STORING USEFUL CODE ELSEWHERE WOULD ALSO ALLOW AUTOMATION OUTSIDE
 i.e., I CAN SCROLL THROUGH THE ALIASES WITHOUT FIDDING HERE IF I KNOW WHAT I MUST DO


 #		Alphabetised ?
 sort sub-commands alphabetically ?


#		BACK BUTTON
 go back.


#		Colour and Columns ?
 pretty...

#		DO-NOTHINGS
 not everything needs to be fully automated.
 rely on echos for most of it, and slowly (semi/fully)-automate tasks
 some may still be echos e.g., podcasts


#		PODCASTS
 should echo "use the bluetoothz"
 and 	 echo "I can't automate phone tasks - yet..."

