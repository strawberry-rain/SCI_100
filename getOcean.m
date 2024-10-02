function [ imgH, imgW ] = getOcean( imageName )

	# remove all figures
	clf;

	# create a figure
	figure(1);

	# read image
	image          = imread( imageName );
	[ imgH, imgW ] =       size( image );

	# show the image
	imshow( imageName );

endfunction
