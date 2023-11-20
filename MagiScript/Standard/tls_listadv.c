#include	"tls_standard.h"
#include	"tls_standard_priv.h"


/********************************/
u8	List_Break ( ListPtr list, ListPtr list2, Ptr breakNode )
	{
	List temp;
	LinkPtr link;

	if ( list->Offset != list2->Offset ) return 0;
	if ( !list->Head ) return 0;

	temp = ( *list );

	temp.Head = breakNode;
	temp.Tail = list->Tail;

	link = ( Ptr )(( u32 )breakNode + ( u32 )list->Offset);

	list->Tail = link->Prev;
	if ( link->Prev ) (( LinkPtr )(( u32 )link->Prev + ( u32 )list->Offset))->Next = 0;
	else list->Head = 0;

	link->Prev = 0;

	if ( !List_Join ( list2, &temp ) ) return 0;

	return 1;
	}

/********************************/
u32	List_CountNodes ( ListPtr list )
	{
	Ptr cursor;
	u32	count = 0;

	cursor = list->Head;

	while ( cursor )
		{
		count++;
		cursor = ( ( LinkPtr )( ( u32 )cursor + ( u32 )list->Offset ) )->Next;
		}

	return count;
	}

/********************************/
void	List_Empty ( ListPtr list, Ptr freeFunc )
	{
	Ptr cursor;
	Ptr node;

	cursor = list->Head;

	while ( cursor )
		{
		node = cursor;
		cursor = ( ( LinkPtr )( ( u32 )cursor + ( u32 )list->Offset ) )->Next;

		List_RemoveNode ( list, node );
		( ( void ( * ) ( void** ) )freeFunc ) ( &node );
		}
	}

/********************************/
Ptr	List_IndexNode ( ListPtr list, u32 index )
	{
	u32		count	= 0;
	Ptr		cursor;

	cursor = list->Head;

	while ( cursor )
		{
		if ( count == index ) return cursor;
		count++;
		cursor = ( ( LinkPtr )( ( u32 )cursor + ( u32 )list->Offset ) )->Next;
		}

	return 0;
	}

/********************************/
void	List_InsertNodeAfter ( ListPtr list, Ptr node, Ptr prevNode )
	{
	prevNode = (( LinkPtr )(( u32 )prevNode + ( u32 )list->Offset))->Next;

	if ( prevNode ) List_InsertNodeBefore ( list, node, prevNode );
	else List_InsertNode ( list, node );
	}

/********************************/
void	List_InsertNodeBefore ( ListPtr list, Ptr node, Ptr nextNode )
	{
	List temp;

	temp = ( *list );
	temp.Head = 0;
	temp.Tail = 0;

	List_Break ( list, &temp, nextNode );
	List_InsertNode ( list, node );
	List_Join ( list, &temp );
	}

/********************************/
u8	List_Join ( ListPtr list, ListPtr list2 )
	{
	LinkPtr link;

	if ( list->Offset != list2->Offset ) return 0;

	if ( !list2->Head )
		{
		( *list2 ) = ( *list );
		return 1;
		}

	if ( !list->Head )
		{
		( *list ) = ( *list2 );
		return 1;
		}

	link = ( LinkPtr )(( u32 )list2->Head + ( u32 )list->Offset);
	link->Prev = list->Tail;

	link = ( LinkPtr )(( u32 )list->Tail + ( u32 )list->Offset);
	link->Next = list2->Head;

	list->Tail = list2->Tail;
	( *list2 ) = ( *list );

	return 1;
	}

/********************************/
void	List_SwapNodes ( ListPtr list, Ptr node1, Ptr node2 )
	{
	}
