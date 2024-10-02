
# this guy doesn't care whether or not you use the names put in
# those are just filler inputs that are simply to indicate which
# variable goes in which order

function lineHandle = drawLine (pt1, pt2, color, width)

	# extract the x components from pt1 and pt2
	x = [ pt1(1), pt2(1) ];

	# etc etc but with y components
	y = [ pt1(2), pt2(2) ];

	# draw the line between pt1 and pt2
	lineHandle = line( x, y );

	# set the color and width of the line
	set( lineHandle, 'Color'    , color );
	set( lineHandle, 'LineWidth', width );

endfunction
