function playerPoints = getPlayer( playerSize )

	# base of skull / top of spine
	pt1  = [        playerSize;                 0; 1 ];
	# tank
	# bottom right of tank
	pt2  = [  0.7 * playerSize;                 0; 1 ];
	# top right of tank
	pt3  = [  0.7 * playerSize; -0.2 * playerSize; 1 ];
	# top left of tank
	pt4  = [ -0.7 * playerSize; -0.2 * playerSize; 1 ];
	# bottom left of tank
	pt5  = [ -0.7 * playerSize;                 0; 1 ];
	# center
	pt6  = [                 0;                 0; 1 ];
  # hip
	pt7  = [       -playerSize;                 0; 1 ];
	# leg 1
	pt8  = [ -1.4 * playerSize; -0.4 * playerSize; 1 ];
	# flipper 1
	pt9  = [ -1.6 * playerSize; -0.2 * playerSize; 1 ];
	# leg 2
	pt10 = [ -1.4 * playerSize;  0.4 * playerSize; 1 ];
	# flipper 2
	pt11 = [ -1.2 * playerSize;  0.6 * playerSize; 1 ];
	# arm
	pt12 = [  0.3 * playerSize;                 0; 1 ];
	# hand
	pt13 = [  0.3 * playerSize;  0.4 * playerSize; 1 ];

	playerPoints = [ pt1, pt2, pt3, pt4, pt5, pt6, pt7, pt8, pt9, pt10, pt11, pt12, pt13 ];

endfunction
