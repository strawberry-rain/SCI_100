function inkHandle = drawInk( squidSize, Dx, Dy, theta )
# should be like drawSquid
# call drawline to get the ink
inkPoints = getInk( squidSize );

R         = getRotate( theta );
inkPoints = R * inkPoints;

T         = getTranslate( Dx, Dy );
inkPoints = T * inkPoints;

x = inkPoints( 1, : );
y = inkPoints( 2, : );

black       = [ 0 0 0 ];
cloudBorder =        66;

inkHandle = line( x, y );
set( inkHandle, 'Color', black );
set( inkHandle, 'LineWidth', cloudBorder );


endfunction
