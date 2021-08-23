#!/bin/bash

# Dependencies for this script:
# - rename
# - imagemagick (mogrify command)
# - trash-cli

# imagemagick won't work on png files (?)
# so I first convert them to jpg

# echo running image-reduction-script...

# echo finding files above 400kb and reducing them to 400kb...
# find . -size +100k -exec mogrify -define jpeg:extent=100kb {} \+
# find . -type f -size +400k -exec sips -Z 1800 {} \+

echo making images-mobile-folder...
mkdir a-images-mobile
cp * a-images-mobile/
cd a-images-mobile

echo renaming files to -mob.jpg ending...
rename 's/.jpg/-mob.jpg/' *.jpg
rename 's/.png/-mob.png/' *.png
rename 's/.webp/-mob.webp/' *.webp

# echo finding files above 100kb and reducing them to 100kb...
# find . -type f -size +100k -exec sips -Z 700 {} \+

# echo moving all files back into images folder...
# mv * ..
# cd ..
# trash a-images-mobile

# echo image-reduction-script finished

# toobig=$(find filename -size +400k -print)
# if [ -z "${toobig}" ]
# then
# 	sips -Z 1800 {} \;
# fi
