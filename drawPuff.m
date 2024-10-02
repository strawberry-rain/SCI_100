function puffHandle = drawPuff( puffSize, puffWidth, pDx, pDy, theta )
# PABLO THE PUFFERFISH
# should be like drawSquid
puffPoints = getPuff( puffSize );

R         = getRotate( theta );
puffPoints = R * puffPoints;

T         = getTranslate( Dx, Dy );
puffPoints = T * puffPoints;

x = puffPoints( 1, : );
y = puffPoints( 2, : );

yellow = [ 1 1 0 ];

puffHandle = line( x, y );
set( puffHandle, 'Color', yellow );
set( puffHandle, 'LineWidth', puffWidth );


endfunction
