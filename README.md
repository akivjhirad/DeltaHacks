# DeltaHacks

compare.m:
a function that compares two images given their names and paths, by converting the images to an A x B x 3 vector for RGB values and comparing the RGB values of both pictures. Constant lighting is assumed, pictures are cropped to show the faces from forehead to chin.

filecheck.m 
queries the folder where images are stored at whatever time delay is specified, to check for new images. The new image is compared to the exisiting images using compare.m, and then a counter corresponding to that image is incremented if the image matches one exisitng in the database. This counter and image name/path is saved to a text file.
