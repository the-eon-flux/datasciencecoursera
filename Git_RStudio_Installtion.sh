
# After git installtion in your system :  we tell Git what your username and email is

git config --global user.name "Tejus Shinde" 
	# This is the name each commit will be tagged with

git config --global user.email shindetejus@gmail.com

# Check your config here

git config --list

### Linking Git/GitHub and RStudio
#

' In RStudio, go to Tools > Global Options > Git/SVN
		Confirm that git.exe resides in the directory
		click “Create RSA Key” and when this completes, click “Close.”
		Copy the public RSA Key
		Got to git-hub.com > Personal settings > SSH & GPG keys > “New SSH key”. Paste in the public key you have copied
		
Note : Use the Global Options menu to tell RStudio you are using Git as your version control system

