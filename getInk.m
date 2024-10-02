function inkPoints = getInk( squidSize )

# ink cloud size is going to be tied to the size of the squid
lineSegments = 40;
angleResolution = ( 2*pi / lineSegments );
theta = [ 0 : angleResolution : 2*pi ];

# trig stuff
x = cos( theta );
y = sin( theta );

# change ink cloud scaling?
# basically changing the radius of the ink cloud
x = ( x * ( squidSize / 4 ) );
y = ( y * ( squidSize / 4 ) );

# x displacement so that it appears behind squid
x = x - ( 4.5 * squidSize );

# add the z's
z = ones( 1, length( x ) );
inkPoints = [ x; y; z ];

endfunction
