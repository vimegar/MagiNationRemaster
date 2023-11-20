#include	"tls_standard.h"
#include	"tls_standard_priv.h"


/********************************/
StringNodePtr	StringList_Add ( ListPtr list, char* string )
	{
	StringNodePtr	stringNode;
	u32				length;

	length = String_Measure ( string );
	if ( length == 1 )
		{
		Error_Print ( "ERROR: String List Add\n" );
		return 0;
		}

	stringNode = Mem_Alloc ( sizeof ( StringNode ) + length );
	if ( !stringNode )
		{
		Error_Print ( "ERROR: String List Add\n" );
		return 0;
		}

	stringNode->Size = length;
	stringNode->String = ( Ptr )( ( u32 )stringNode + sizeof ( StringNode ) );
	strcpy ( stringNode->String, string );

	List_InsertNode ( list, stringNode );

	return stringNode;
	}

/********************************/
u8	StringList_Delete ( ListPtr list, char* string )
	{
	StringNodePtr	stringNode;

	if ( !string ) return 0;

	stringNode = list->Head;
	while ( stringNode )
		{
		if ( String_Compare ( stringNode->String, string ) )
			{
			List_RemoveNode ( list, stringNode );
			Mem_Free ( stringNode );
			return 1;
			}

		stringNode = stringNode->Link.Next;
		}

	return 0;
	}

/********************************/
u8	StringList_Empty ( ListPtr list )
	{
	List_Empty ( list, Mem_FreeHandle );

	return 1;
	}

/********************************/
char*	StringList_Find ( ListPtr list, char* string )
	{
	StringNodePtr	stringNode;

	stringNode = list->Head;
	while ( stringNode )
		{
		if ( String_Compare ( stringNode->String, string ) )
			return stringNode->String;

		stringNode = stringNode->Link.Next;
		}

	return 0;
	}

/********************************/
u8	StringList_Init ( ListPtr list )
	{
	StringNodePtr	stringNode = 0;

	List_Init ( list, stringNode, &stringNode->Link );
	return 1;
	}

/********************************/
u8	StringList_Print ( ListPtr list )
	{
	StringNodePtr	stringNode;

	stringNode = list->Head;
	while ( stringNode )
		{
		Message_Print ( stringNode->String );
		Message_Print ( "\n" );
		stringNode = stringNode->Link.Next;
		}

	return 1;
	}
