#include	"tls_standard.h"
#include	"tls_standard_priv.h"


/********************************/
u8	StretchInt_ReadMax32 ( BinFilePtr binFile, u32* integer )
	{
	s8	buffer;
	u8	count;
	s32	number;

	printf ( "READING STRETCH INT\n" );

	count = 0;
	number = 0;
	do
		{
		BinFile_Read ( binFile, &buffer, sizeof ( u8 ) );

		printf ( "READ NUMBER: %d\n", buffer );

		number += ( ( buffer & STRETCHINT_BUFFMASK ) <<
					( count * STRETCHINT_BITSHIFT ) );
		count++;
		} while ( ( buffer < 0 ) && ( count < STRETCHINT_MAXBYTES ) );

	( *integer ) = number;

	return count;
	}

/********************************/
u8	StretchInt_WriteMax32 ( BinFilePtr binFile, u32 integer )
	{
	u8	bytes;
	s8	buffer;
	u8	count;

	printf ( "WRITING STRETCH INT\n" );

	bytes = 1;
	if ( integer > S8_MAX ) bytes = 2;
	if ( integer > S16_MAX ) bytes = 3;
	if ( integer > S24_MAX ) bytes = 4;
	if ( integer > STRETCHINT_MAX32 ) return 0;

	count = 0;
	while ( bytes )
		{
		buffer = ( s8 )( ( integer >> ( count * STRETCHINT_BITSHIFT ) )
					& STRETCHINT_BUFFMASK );
		count++;
		bytes--;

		printf ( "WRITE NOFLAG: %d\n", buffer );

		if ( bytes ) buffer = ( buffer | ( ~STRETCHINT_BUFFMASK ) );

		printf ( "WRITE NUMBER: %d\n", buffer );

		BinFile_Write ( binFile, &buffer, sizeof ( u8 ) );
		}

	return count;
	}