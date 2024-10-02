  # store squid points for retrieval

 function larry = getSquid( squidSize, clock )

	# alternates parity between values '0' and '1' for two states
	# modular division gives the remainder after dividing left by right

	parity = mod( clock, 2 );

	if ( parity == 1 )

		# define legSpacing
		legSpacing = squidSize;

		center = [ 0; 0; 1];

		# define body
		pt1 = [ 0            ; squidSize ; 1 ];
		pt2 = [ squidSize*2.8; 0         ; 1 ];
		pt3 = [ 0            ; -squidSize; 1 ];

		# define first leg
		pt4 = [ 0              ; squidSize*0.5; 1 ];
		pt5 = [ -squidSize*1.25; squidSize*0.8; 1 ];
		pt6 = [ -2.5*squidSize ; squidSize*0.5; 1 ];

		# define second leg
		pt7 = [ 0              ; (squidSize*0.5)-legSpacing; 1 ];
		pt8 = [ -squidSize*1.25; (squidSize*0.2)-legSpacing; 1 ];
		pt9 = [ -2.5*squidSize ; (squidSize*0.5)-legSpacing; 1 ];

		# stripe points
		# center is already there so i don't have it here
		pt10 = [ 0; (squidSize*0.7)  ; 1 ];
		pt11 = [ 0; (squidSize*0.35) ; 1 ];
		pt12 = [ 0; (squidSize*-0.35); 1 ];
		pt13 = [ 0; (squidSize*-0.7) ; 1 ];

	else

		# define legSpacing
		legSpacing = squidSize;

		center = [ 0; 0; 1];

		# define body
		pt1 = [ 0          ; squidSize*0.8 ; 1 ];
		pt2 = [ squidSize*3; 0             ; 1 ];
		pt3 = [ 0          ; -squidSize*0.8; 1 ];

		# define first leg
		pt4 = [ 0              ; squidSize*0.5; 1 ];
		pt5 = [ -squidSize*1.25; squidSize*0.2; 1 ];
		pt6 = [ -2.5*squidSize ; squidSize*0.5; 1 ];

		# define second leg
		pt7 = [ 0              ; (squidSize*0.5)-legSpacing; 1 ];
		pt8 = [ -squidSize*1.25; (squidSize*0.8)-legSpacing; 1 ];
		pt9 = [ -2.5*squidSize ; (squidSize*0.5)-legSpacing; 1 ];

		# stripe points
		# center is already there so i don't have it here
		pt10 = [ 0; (squidSize*0.6) ; 1 ];
		pt11 = [ 0; (squidSize*0.3) ; 1 ];
		pt12 = [ 0; (squidSize*-0.3); 1 ];
		pt13 = [ 0; (squidSize*-0.6); 1 ];

	endif

	larry = [ pt1, pt2, pt3, pt4, pt5, pt6, pt7, pt8, pt9, pt10, pt11, pt12, pt13, center ];


endfunction
