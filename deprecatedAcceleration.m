# acceleration of x and y
	Vx = 0.4;
	Vy = 0  ;

	# fun thing i'm doing with persistents
	persistent moves = 0;

	if ( parity == 0 )
		# acceleration don't its job
		Dx = Dx + ( Dx * ( ( Vx / 2 ) * moves ) );
		Dy = Dy + ( Dy * ( ( Vy / 2 ) * moves ) );
	else
		# acceleration does its job
		++moves;
		Dx = Dx + ( Dx * ( ( Vx / 2 ) * moves ) );
		Dy = Dy + ( Dy * ( ( Vy / 2 ) * moves ) );
	endif
