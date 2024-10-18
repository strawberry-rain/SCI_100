function puffHandle = drawPuff( puffSize, color, puffWidth, pDx, pDy, theta )
# PABLO THE PUFFERFISH
# should be like drawSquid
puffPoints = getPuff( puffSize );

tailWidth = 6;

puffpt1 = [ -puffSize; 0; 1 ];
puffpt2 = [ -3 * puffSize;  ( 0.5 * puffSize ); 1 ];
puffpt3 = [ -3 * puffSize; -( 0.5 * puffSize ); 1 ];

R          = getRotate( theta );
puffPoints = R * puffPoints;
puffpt1 = R * puffpt1;
puffpt2 = R * puffpt2;
puffpt3 = R * puffpt3;

T          = getTranslate( pDx, pDy );
puffPoints = T * puffPoints;
puffpt1 = T * puffpt1;
puffpt2 = T * puffpt2;
puffpt3 = T * puffpt3;

x = puffPoints( 1, : );
y = puffPoints( 2, : );
z = puffPoints( 3, : );

puffHandle = line( x, y );
set( puffHandle, 'Color', color );
set( puffHandle, 'LineWidth', puffWidth );

tailHandle1 = drawLine( puffpt1, puffpt2, color, tailWidth );
tailHandle2 = drawLine( puffpt2, puffpt3, color, 0.8 * tailWidth );
tailHandle3 = drawLine( puffpt3, puffpt1, color, tailWidth );

puffHandle = [ puffHandle, tailHandle1, tailHandle2, tailHandle3 ];

endfunction
