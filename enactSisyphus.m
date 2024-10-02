# sisyphus clauses

function positions = enactSisyphus( Dx, Dy, Vx, Vy, backgroundW, backgroundH, initialDx, initialDy )
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

	positions = [ Dx, Dy ];

endfunction
