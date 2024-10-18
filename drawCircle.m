function circleHandle = drawCircle ( radius, xCenter, yCenter, circleColor, circleLinewidth )

	lineSegments = 50;
	angleResolution = ( 2*pi / lineSegments );

	theta = [ 0 : angleResolution : 2*pi ];

	cosTheta = cos( theta );
	sinTheta = sin( theta );


	# getCircle
	x = radius * cosTheta;
	y = radius * sinTheta;
	z = ones( 1, length( x ) );

	# calling getTranslate
	T = getTranslate( xCenter, yCenter );

	circleMatrix = [ x; y; z ];
	circleMatrix = T * circleMatrix;

	# the drawing of the circle
	x = circleMatrix( 1, : );
	y = circleMatrix( 2, : );

	circleHandle = line( x, y )

	set( circleHandle, 'Color', circleColor );
	set( circleHandle, 'LineWidth', circleLinewidth );

endfunction
