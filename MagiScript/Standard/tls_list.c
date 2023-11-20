#include	"tls_standard.h"
#include	"tls_standard_priv.h"


/********************************/
u8	List_Init ( ListPtr list, Ptr node, LinkPtr link )
	{
	list->Head = 0;
	list->Tail = 0;

	list->Offset = ( Ptr )((( u32 )link) - (( u32 )node));

	return 1;
	}

/********************************/
void	List_InsertNode ( ListPtr list, Ptr node )
	{
	LinkPtr	link;
	LinkPtr	tailLink;

	if ( ! ( node && list ) ) return;

	link = ( LinkPtr )((( u32 )node) + (( u32 )list->Offset));

	link->Prev = 0;
	link->Next = 0;

	if ( !list->Head )
		{
		list->Head = node;
		list->Tail = node;
		return;
		}

	tailLink = ( LinkPtr )((( u32 )list->Tail) + (( u32 )list->Offset));

	tailLink->Next = node;
	link->Prev = list->Tail;
	list->Tail = node;

	}

/********************************/
void	List_RemoveNode ( ListPtr list, Ptr node )
	{
	LinkPtr	link;
	LinkPtr	listLink;

	link = ( LinkPtr )((( u32 )node) + (( u32 )list->Offset));

	if ( link->Prev )
		{
		listLink = ( LinkPtr )((( u32 )link->Prev) + (( u32 )list->Offset));
		listLink->Next = link->Next;
		}
	else
		list->Head = link->Next;

	if ( link->Next )
		{
		listLink = ( LinkPtr )((( u32 )link->Next) + (( u32 )list->Offset));
		listLink->Prev = link->Prev;
		}
	else
		list->Tail = link->Prev;

	link->Prev = 0;
	link->Next = 0;
	}
