#ifndef WRITECOMMAND_H
#define WRITECOMMAND_H

/********************************/
#define		MAX_PARAMS		64

/********************************/
extern		ParamPtr	gParams [ MAX_PARAMS ];
extern		u8			gReset;
extern		u8			gTotalParams;

/********************************/
u8		WriteCommand_GetArgumentList	( ParamBlockPtr paramBlock, u8 paramCount );
u8		WriteCommand_GetParams			( ParamBlockPtr paramBlock, u8 paramCount );
u8		WriteCommand_Init				( void );
u8		WriteCommand_PrintCmds			( void );
u8		WriteCommand_Next				( void );
u8		WriteCommand_Reset				( void );

/********************************/
#include "ActorCommand.h"
#include "AudioCommand.h"
#include "FileFormatCommand.h"
#include "FlowCommand.h"
#include "FightFXCommand.h"
#include "FrameCommand.h"
#include "GlobalCommand.h"
#include "LoadCommand.h"
#include "PalFXCommand.h"
#include "ScrollCommand.h"
#include "SystemCommand.h"
#include "TextCommand.h"
#include "TriggerCommand.h"
#include "XRAMCommand.h"

#endif