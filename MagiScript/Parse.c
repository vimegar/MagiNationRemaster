/********************************/
#include "includes.h"
#include "magiLex.h"
#include "magiParse.h"

/********************************/
typedef struct ParseFile
	{
	Link	Link;
	u32		Line;
	char*	Name;
	FILE*	Save;
	} ParseFile, *ParseFilePtr;

/********************************/
List	parseFileList;

/********************************/
u8	Parse ( char* fileName )
	{
	u32			saveLine;
	char*		saveName;
	FILE*		file;
	yymparse_t	parser;
	yymlex_t	lexer;

	sprintf(nameBuffer,"Multiple includes of %s.",fileName); 
	if(StringList_Verify(&fileList,fileName)) return WriteScript_Error(nameBuffer);

	if(!StringList_Add(&fileList,fileName,0)) return 0;

	file = fopen(fileName, "r");
	if (!file)
		{
		WriteScript_Error("UNABLE TO OPEN FILE FOR PARSING.");
		return 0;
		}

	saveLine = gLine;
	saveName = gFileName;

	gLine = 1;
	gFileName = 0;
	gFileName = String_Clone(fileName);

	if (yymcreateparse(&parser, &magiParse))
    	{
		if (yymcreatelex(&lexer, &magiLex))
			{
			parser.yymdata = &lexer;
			lexer.yymdata = parser.yymlvalptr;
			lexer.yymin = file;
			
			yymparse(&parser);
			yymdestroylex(&lexer);
			}
		yymdestroyparse(&parser);
		}

	Mem_Free (gFileName);

	gLine = saveLine;
	gFileName = saveName;

	fclose (file);

	return 1;
	}

