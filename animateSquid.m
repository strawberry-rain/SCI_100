function animateSquid()

	# makes movement work with persistent vars
	clear getTranslate;

	# squid
	theta          =    0;
	squidDtheta    = pi/6;
	squidSize      =   46;
	width          =    2;

	# colors
	squidColor     = [ 0.05 0.61 0.62 ];
	puffColor      = [    1    1    0 ];

	# pufferfish
	puffTheta  =     0;
	puffDtheta =  pi/6;
	puffSize   =    30;
	puffWidth  =    20;


	###### Background ######

	%set up the game background to read keyboard events
	figureHandle = figure( 'KeyPressFcn', @(src, event) keypress_callback(event), ...
	'Name', 'Keyboard Reader', ...
	'NumberTitle', 'off', ...
	'MenuBar', 'none', ...
	'Position', [100, 100, 300, 200]); % Set the figure size

	%display background image
	imageName = "OceanImage.png" ;
	image = imread( imageName );
	[ backgroundW, backgroundH ]= size( image );
	imshow( imageName );

	%command paramters
	cmd = "null";


	###### Positions ######

	# squid + ink position things
	initialDx = ( 5 * squidSize );
	Dx        = initialDx;

	initialDy = 400;
	Dy        = initialDy;

	# pufferfish position things
	initialpDx = ( puffSize * 4 );
	pDx        = initialpDx;

	initialpDy = ( puffSize * 4 );
	pDy        = initialpDy;


	# velocity of x and y ( squid )
	Vx = 92;
	Vy = 92;

	# puffer velocity
	pVx = 70;
	pVy = 60;

	# game clock
	gameClock = 0;


	###### Animation Loop ######

	while( true )
		gameClock =       gameClock + 1;
		parity    = mod( gameClock, 2 );
		inky      = mod( gameClock, 4 );

		stripe    = [ rand( 1 ) rand( 1 ) rand( 1 ) ];

		# move the squid and wiggle puff
		if ( parity == 1 )
			# no change
			theta = theta;
			puffDtheta = puffDtheta;
			Dx = Dx;
			Dy = Dy;
		else
			# change!
			theta = theta + squidDtheta;
			puffDtheta = -1 * puffDtheta;
			Dx = Dx + ( Vx * cos( theta ) );
			Dy = Dy + ( Vy * sin( theta ) );
		endif

		# move the puffy boi
		puffTheta = puffTheta + puffDtheta;
		pDx = pDx + ( pVx * cos( puffTheta ) );
		pDy = pDy + ( pVy * sin( puffTheta ) );

		# reset positions
		positions = enactSisyphus( Dx, Dy, Vx, Vy, pDx, pDy, pVx, pVy, backgroundW, backgroundH, initialDx, initialDy, initialpDx, initialpDy );
		Dx = positions( 1 );
		Dy = positions( 2 );

		pDx = positions( 3 );
		pDy = positions( 4 );

		# draw them
		larry = drawSquid( squidSize, squidColor, stripe, width, gameClock, Dx, Dy, theta );

		pablo = drawPuff( puffSize, puffColor, puffWidth, pDx, pDy, puffTheta );

		if ( inky == 0 )
			inkHandle = drawInk( squidSize, Dx, Dy, theta );
		endif

		pause( 0.33 );

		# murder
		if ( inky == 0 )
			delete( inkHandle );
		endif

		delete( larry );
		delete( pablo );
	endwhile

###### Animation Loop End ######

	function keypress_callback(event)
		%set the command
		cmd = event.Key;
		% Check for 'q' to quit
		if strcmp(cmd, 'q')
		disp('Quitting...');
		close(figureHandle); % Close the figure
		endif
	endfunction
endfunction
