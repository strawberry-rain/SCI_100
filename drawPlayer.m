function playerHandle = drawPlayer( playerX, playerY, playerTheta, playerSize, playerWidth )

	playerColor = [ 0 0.2 1 ];
	tankColor   = [ 0   0 0 ];
	flip1_Color = [ 0   1 1 ];
	flip2_Color = [ 0   1 0 ];

	# grabby
	player = getPlayer( playerSize );

	# translate
	T = getTranslate( playerX, playerY );
	player = T * player;

	# rotate
	R = getRotate( playerTheta );
	player = R * player;

	# retrieve points
	# spine base
	pt1 = player( :, 1  );
	# tank
	pt2  = player( :, 2  );
	pt3  = player( :, 3  );
	pt4  = player( :, 4  );
	pt5  = player( :, 5  );
	# center
	pt6  = player( :, 6  );
	# hip
	pt7  = player( :, 7  );
	# leg 1
	pt8  = player( :, 8  );
	pt9  = player( :, 9  );
	# leg 2
	pt10 = player( :, 10 );
	pt11 = player( :, 11 );
	# arm
	pt12 = player( :, 12 );

	# draw time!!
	# spine
	playerH1 = drawLine( pt1, pt7, playerColor, playerWidth );
	# tank
	playerH2 = drawLine( pt2, pt3,   tankColor, playerWidth );
	playerH3 = drawLine( pt3, pt4,   tankColor, playerWidth );
	playerH4 = drawLine( pt4, pt5,   tankColor, playerWidth );
	# leg 1
	playerH5 = drawLine( pt7, pt8, playerColor, playerWidth );
	# flipper 1
	playerH6 = drawLine( pt8, pt9, flip1_Color, playerWidth );
	# leg 2
	playerH7 = drawLine( pt7, pt10, playerColor, playerWidth );
	# flipper 2
	playerH8 = drawLine( pt10, pt11, flip2_Color, playerWidth );



endfunction
