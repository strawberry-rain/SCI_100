# sisyphus clauses

function positions = enactSisyphus( Dx, Dy, Vx, Vy, pDx, pDy, pVx, pVy, backgroundW, backgroundH, initialDx, initialDy, initialpDx, initialpDy )

	# for larry
	if ( Dx >= ( backgroundW - ( 2 * Vx ) ) )
		Dx = initialDx;
	elseif ( Dx <= ( 0 + ( 2 * Vx ) ) )
		Dx = initialDx;
	else
		Dx = Dx
	endif

	if ( Dy >= ( backgroundH - ( 2 * Vy ) ) )
		Dy = initialDy;
	elseif ( Dy <= ( 0 + ( 2 * Vy ) ) )
		Dy = initialDy;
	else
		Dy = Dy
	endif


	# for pablo
	if ( pDy >= ( backgroundH - ( 2 * pVy ) ) )
		pDy = initialpDy;
	elseif ( pDy <= ( 0 + ( 2 * pVy ) ) )
		pDy = initialpDy;
	else
		pDy = pDy
	endif

	if ( pDx >= ( backgroundW - ( 2 * pVx ) ) )
		pDx = initialpDx;
	elseif ( pDx <= ( 0 + ( 2 * pVx ) ) )
		pDx = initialpDx;
	else
		pDx = pDx
	endif

	positions = [ Dx, Dy, pDx, pDy ];

endfunction
