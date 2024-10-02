function puffPoints = getPuff( puffSize )

# ink cloud size is going to be tied to the size of the squid
lineSegments = 40;
angleResolution = ( 2*pi / lineSegments );
theta = [ 0 : angleResolution : 2*pi ];

# trig stuff
x = cos( theta );
y = sin( theta );

# basically changing the radius of the pufferfish from 1 to whatever
x = ( x * puffSize );
y = ( y * puffSize );

# add the z's
z = ones( 1, length( x ) );
puffPoints = [ x; y; z ];

endfunction
