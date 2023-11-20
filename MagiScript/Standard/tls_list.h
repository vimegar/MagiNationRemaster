#ifndef	TLS_LIST_H
#define	TLS_LIST_H

/********************************/
typedef struct List
	{
	Ptr		Head;		
	Ptr		Tail;	
	Ptr		Offset;

	} List, *ListPtr;


/********************************/
typedef struct Link
	{
	Ptr		Prev;
	Ptr		Next;	

	} Link, *LinkPtr;

/********************************/
u8		List_Init		( ListPtr list, Ptr node, LinkPtr link );
void	List_InsertNode	( ListPtr list, Ptr node );
void	List_RemoveNode	( ListPtr list, Ptr node );

#endif

