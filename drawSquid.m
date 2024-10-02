
# larry!!!

function larry = drawSquid( squidSize, squidColor, stripe, width, clock, Dx, Dy, theta )

  # get squidPoints??

	T = getTranslate( Dx, Dy );

	R = getRotate( theta );

	squidPoints = getSquid( squidSize, clock );

	# rotate
	squidPoints = ( R * squidPoints );

	# translate
	squidPoints = ( T * squidPoints );

	######

	# redefine points
	pt1    = squidPoints( :, 1  );
	pt2    = squidPoints( :, 2  );
	pt3    = squidPoints( :, 3  );
	pt4	   = squidPoints( :, 4  );
	pt5    = squidPoints( :, 5  );
	pt6    = squidPoints( :, 6  );
	pt7    = squidPoints( :, 7  );
	pt8    = squidPoints( :, 8  );
	pt9    = squidPoints( :, 9  );
	pt10   = squidPoints( :, 10 );
	pt11   = squidPoints( :, 11 );
	pt12   = squidPoints( :, 12 );
	pt13   = squidPoints( :, 13 );
	center = squidPoints( :, 14 );

  ######

	# stripe time!!!
	# this is first because i want the body to be on top
	handle8  = drawLine( pt2, pt10  , stripe, width*0.5 );
	handle9  = drawLine( pt2, center, stripe, width*0.5 );
	handle10 = drawLine( pt2, pt11  , stripe, width*0.5 );
	handle11 = drawLine( pt2, pt12  , stripe, width*0.5 );
	handle12 = drawLine( pt2, pt13  , stripe, width*0.5 );

	######

	# bestow form upon him
  handle1 = drawLine( pt1, pt2, squidColor, width );
  handle2 = drawLine( pt2, pt3, squidColor, width );
  handle3 = drawLine( pt3, pt1, squidColor, width );

	######

	# give first leg
	handle4 = drawLine( pt4, pt5, squidColor, width );
	handle5 = drawLine( pt5, pt6, squidColor, width );

	######

	# give second leg
	handle6 = drawLine( pt7, pt8, squidColor, width );
	handle7 = drawLine( pt8, pt9, squidColor, width );

	######

	# redefine, i think
	larry = [ handle1; handle2; handle3; handle4; handle5; handle6; handle7; handle8; handle9; handle10; handle11; handle12 ];

endfunction
