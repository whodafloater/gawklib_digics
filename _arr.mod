# change id: 000158 / last update: 2021-02-28 09:16:17

#_________________________________________________________________
## ARR v2.8 ( 2021.3.31 ) ########################################
#
#	PLEASE DO NOT REMOVE OR CHANGE ANY COMMENTS
#_________________________________________________________________
BEGIN{ ###########################################################

	reta_level = ( + 64 )					# reta_level

}#________________________________________________________________
func	_reta( A, a, l ,D ) { ######################################

	if ( _reta_s( A, a ) && _reta_l( A, l ) )
		
		if ( _reta_q < reta_level ) {
						
			l = "_reta" _reta_q
					
			return @l( A, _reta_a ) }

		"" in D
				
		_retamov( D, A, _reta_a, _reta_q )

		return _retair( D ) }
	#_____________________________

	func	_retamov( D, A, a, l ,c ) {

		l = l - ( ( c = int( l / reta_level ) ) * reta_level )
		
		while ( c-- )
			
			D[ length( D ) ] = \
				\
				A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]		# = _retamov
		
		if ( l ) {
			
			l = "_reta" l
		
			D[ length( D ) ] = @l( A, a ) } }
#_____________________________________________________
func	_retas( A, t, a, l ,D ) { ######################
	
	if ( t == "" )
		
		return _reta( A, a, l )
	
	if ( _reta_s( A, a ) && _reta_l( A, l ) ) {
			
		if ( _reta_q < reta_level ) {
					
			l = "_retas" _reta_q
				
			return @l( A, _reta_a, t ) }

		"" in D
			
		_retasmov( D, A, t, _reta_a, _reta_q )

		return _retair( D ) } }
	#_____________________________

	func	_retasmov( D, A, t, a, l ,c,t2 ) {

		l = l - ( ( c = int( l / reta_level ) ) * reta_level )
		
		t2 = t
		
		while ( c-- ) {
			
			if ( ! c && ! l )
				
				t2 = ""
			
			D[ length( D ) ] = \
				\
				A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t2		# = _retasmov

			}

		if ( l ) {
		
			l = "_retas" l
	
			D[ length( D ) ] = @l( A, a, t ) } }
#_____________________________________________________
func	_retab( A, B, a, l, b ,D ) { ###################

	switch ( _reta_s( B, b ) _reta_s( A, a ) _reta_l( A, l ) ) {
			
		case /0$|^00/:				# -, -, ... or length 0

			return ""

		case /^[A1]0/:				# -, B, ...
		
			return _reta( B, b, l )

		case /^0[A1]/:				# A, -, ...
		
			return _reta( A, a, l )
		#_________________
		
		case "AAA":					# A, B, -, -, -
		
			if ( _reta_a < _reta_b ) {
					
				_reta_b = _reta_a
					
				break }
			
		case "AA1":					# A, B, -, l, -
		
			if ( _reta_b < _reta_a ) {
					
				_reta_a = _reta_b
					
				_reta_q++ } }
	#_______________________
	
	if ( _reta_q < reta_level ) {
				
		l = "_retab" _reta_q
			
		return @l( A, B, _reta_a, _reta_b ) }

	"" in D
		
	_retabmov( D, A, B, _reta_a, _reta_b, _reta_q )

	return _retair( D ) }
	#_____________________________

	func	_retabmov( D, A, B, a, b, l ,c ) {

		l = l - ( ( c = int( l / reta_level ) ) * reta_level )
		
		while ( c-- )
			
			D[ length( D ) ] = \
				\
				A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++] 		# = _retabmov

		if ( l ) {
		
			l = "_retab" l
	
			D[ length( D ) ] = @l( A, B, a, b ) } }
	#___________________________________

	func	_reta_s( A, a ) {

		# setup _reta_a by parameter `a:
		#
		#	autodetection ( == "" ):	0 or 1: == ! ( 0 in A )
		#	otherwise:				`a is exact value
		
		_reta_b = _reta_a

		if ( typeof( A ) != "array" )

			return 0					# not an array
				
		if ( a == "" ) {
				
			_reta_a = ! ( 0 in A )
				
			return "A" }				# omitted (autodetected start)
			
		_reta_a = a
						
		return "1" }					# exact
	#_____________________________
	
	func	_reta_l( A, l ) {
		
		# setup _reta_q by parameter `l:
		#
		#	autodetection ( == "" ):	from _reta_a until the end
		#	negative ( < 0 ):			from _reta_a until the end minus `l
		#	otherwise:				int( `l ) is exact value
		#
		# return:
		#
		#	"A"	if autodetected
		#	"1"	if exact or negative length
		#	0	if no data to return

		if ( l == "" ) {

			_reta_q = length( A ) - _reta_a + ! ( 0 in A )

			return "A" }					# omitted (autodetected: until the last)

		if ( 0 > _reta_q = int( l ) )

			_reta_q = length( A ) - _reta_a + ! ( 0 in A ) + _reta_q		# negative length

		if ( _reta_q > 0 )

			return "1"						# exact or negative
				
		return 0 }							# no data
	#_______________________________________________
	func	_retair( A ,f,B ) { ######################

		"" in B
		
		do {	if ( length( A ) < reta_level ) {
				
				f = "_reta" length( A )
				
				return @f( A, 0 ) }
				
			_retamov( B, A, 0, length( A ) )
			
			delete A
			
			if ( length( B ) < reta_level ) {
			
				f = "_reta" length( B )
				
				return @f( B, 0 ) }
				
			_retamov( A, B, 0, length( B ) )

			delete B } while ( 1 ) }

#_________________________________________________________________
##################################################################

#^ARRGEN{#
func	_reta1( A, a ) { return A[a] }
func	_reta2( A, a ) { return A[a++]A[a] }
func	_reta3( A, a ) { return A[a++]A[a++]A[a] }
func	_reta4( A, a ) { return A[a++]A[a++]A[a++]A[a] }
func	_reta5( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta6( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta7( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta8( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta9( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta10( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta11( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta12( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta13( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta14( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta15( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta16( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta17( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta18( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta19( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta20( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta21( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta22( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta23( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta24( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta25( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta26( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta27( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta28( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta29( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta30( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta31( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta32( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta33( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta34( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta35( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta36( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta37( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta38( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta39( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta40( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta41( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta42( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta43( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta44( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta45( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta46( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta47( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta48( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta49( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta50( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta51( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta52( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta53( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta54( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta55( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta56( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta57( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta58( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta59( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta60( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta61( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta62( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }
func	_reta63( A, a ) { return A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a++]A[a] }

func	_retas1( A, a, t ) { return A[a] }
func	_retas2( A, a, t ) { return A[a++]t A[a] }
func	_retas3( A, a, t ) { return A[a++]t A[a++]t A[a] }
func	_retas4( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a] }
func	_retas5( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas6( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas7( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas8( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas9( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas10( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas11( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas12( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas13( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas14( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas15( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas16( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas17( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas18( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas19( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas20( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas21( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas22( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas23( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas24( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas25( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas26( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas27( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas28( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas29( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas30( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas31( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas32( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas33( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas34( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas35( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas36( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas37( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas38( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas39( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas40( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas41( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas42( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas43( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas44( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas45( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas46( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas47( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas48( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas49( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas50( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas51( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas52( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas53( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas54( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas55( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas56( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas57( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas58( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas59( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas60( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas61( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas62( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }
func	_retas63( A, a, t ) { return A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a++]t A[a] }

func	_retab1( A, B, a, b ) { return A[a]B[b] }
func	_retab2( A, B, a, b ) { return A[a++]B[b++]A[a]B[b] }
func	_retab3( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab4( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab5( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab6( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab7( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab8( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab9( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab10( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab11( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab12( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab13( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab14( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab15( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab16( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab17( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab18( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab19( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab20( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab21( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab22( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab23( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab24( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab25( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab26( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab27( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab28( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab29( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab30( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab31( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab32( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab33( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab34( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab35( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab36( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab37( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab38( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab39( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab40( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab41( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab42( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab43( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab44( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab45( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab46( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab47( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab48( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab49( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab50( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab51( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab52( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab53( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab54( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab55( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab56( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab57( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab58( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab59( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab60( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab61( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab62( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }
func	_retab63( A, B, a, b ) { return A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a++]B[b++]A[a]B[b] }

#}^ARRGEN#

#_________________________________________________________________
func	_defa( t, T ) { ############################################
	
	if ( t in T && ! isarray( T[ t ] ) )

		delete T[ t ]

	T[ t ][ _NAMA_ ]

	return _dela( T[ t ], t ) }
#_______________________________________________
func	_leta( d, D ) { ##########################

	switch ( d in D ) {

		case 1:

			if ( isarray( D[ d ] ) )

				return d

			delete D[ d ]

		default:

			delete D[ d ][ D[ d ][ "" ] ] }

	return d }
#___________________________________________________________
func	_dela( T, r ) { ######################################

	delete T

	return r }
#___________________________________________________________
func	_movaa( D, S ,i ) { ##################################

	for ( i in S )

		if ( isarray( S[ i ] ) )				

			_movaa( D[ _leta( i, D ) ], S[ i ] )

		else { if ( i in D && isarray( D[ i ] ) )

				delete D[ i ]

			D[ i ] = S[ i ] } }
#_________________________________________________________________
##################################################################


