#!/bin/bash
# creates a bash or python script, gives correct permissions, and runs a 'hello' to test it's working.

# Usage
# $ script-starter.sh filename extension

# give bash extensions more descriptive names
filename=$1
extension=$2

# create script in bin folder
touch ~/bin/"$filename"."$extension"

# setup bash or python boilerplate and add an echo "hello..." to confirm it's working
if [ $extension == 'sh' ]
then
	echo '#!/bin/bash' >> ~/bin/"$filename".sh
	echo 'echo "hello from your new bash script"' >> ~/bin/"$filename".sh
elif [ $extension == 'py' ]
then
	echo '#!/usr/bin/env python3' >> ~/bin/"$filename".py
	echo 'print("hello from your new python script")' >> ~/bin/"$filename".py
fi

# sort out permissions
chmod 755 ~/bin/"$filename"."$extension"
# call the script to test it works
~/bin/"$filename"."$extension"
# give me a chance to read the "hello"
sleep 1
# open script with nvim
nvim ~/bin/"$filename"."$extension"

