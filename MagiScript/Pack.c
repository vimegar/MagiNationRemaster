/********************************/
#include "includes.h"
#include "magiPackLex.h"
#include "magiPackParse.h"

/********************************/
u32		gFileSize;

/********************************/
u8	Pack ( char* fileName )
	{
	FILE*		file;
	yymparse_t	parser;
	yymlex_t	lexer;
	u32			strLen;

	file = fopen(fileName, "r+");
	if (!file) return 0;

	gFileSize = 0;

	if (yymcreateparse(&parser, &magiPackParse))
    	{
		if (yymcreatelex(&lexer, &magiPackLex))
			{
			parser.yymdata = &lexer;
			lexer.yymdata = parser.yymlvalptr;
			lexer.yymin = file;
			
			yymparse(&parser);
			yymdestroylex(&lexer);
			}
		yymdestroyparse(&parser);
		}

	sprintf(nameBuffer,";Size:%d\n",gFileSize);
	strLen = String_Measure(nameBuffer);

	fseek(file,0,SEEK_SET);
	fprintf(file,"%s",nameBuffer);

	fclose (file);

	return 1;
	}
