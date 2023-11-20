#ifndef	TLS_LISTADV_H
#define	TLS_LISTADV_H

/********************************/
u8		List_Break				( ListPtr list, ListPtr list2, Ptr breakNode );
u32		List_CountNodes			( ListPtr list );
void	List_Empty				( ListPtr list, Ptr freeFunc );
Ptr		List_IndexNode			( ListPtr list, u32 index );
void	List_InsertNodeAfter	( ListPtr list, Ptr node, Ptr prevNode );
void	List_InsertNodeBefore	( ListPtr list, Ptr node, Ptr nextNode );
u8		List_Join				( ListPtr list, ListPtr list2 );
void	List_SwapNodes			( ListPtr list, Ptr node1, Ptr node2 );

#endif
