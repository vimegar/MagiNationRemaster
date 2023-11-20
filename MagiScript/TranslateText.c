// Script Text Parser
// Author: Jonathan Winkler and stuff
// (c) 2000 Interactive Imagination.  All rights reserved. Or something.

#include "includes.h"

/**************************************
NOTES:

Arguments:  Takes a string of max 15 characters, and a file pointer for output
Returns:	Nothing

When entering strings, the following rules apply:
	-Instead of using spaces in the string, a slash (/) must be used.
	-Apostrophe is done by using the reverse apostrophe (`), not the normal one (')
	-?_HURRY is acomplished with an equal sign (=).
	-Lines reaching 15 characters will automatically be tagged with the ?_LINE command.
	-If you want to stop a line before 15, end with a NULL (\0) or a HURRY character (=).
	-If for some reason you want to stop a line but NOT end with a LINE or HURRY character,
	use a dollarsign ($).
	-Whenever the function reads a ?_LINE or a ?_HURRY command, it returns.
**************************************/
void TranslateText(FILE *fp, char line[16])
	{
	int i, c, temp;
	
	i = 0;
	c = 0;
	
	while(1)
		{
		if (line[i] == '=')		{	fprintf(fp, "?HURRY\n"); return;	}	// Hurry
		if (line[i] == '\0')	{	fprintf(fp, "?WAIT\n"); return;		}	// Wait
		
		if (line[i] == '%')
			{
			i++;
			switch(line[i])
				{
				case 'a': 	fprintf(fp, "?ANIMITE");	break;
				case 'b': 	fprintf(fp, "?BOOK");		break;
				case 'e': 	fprintf(fp, "?EGG");		break;
				case 'f': 	fprintf(fp, "?FLOWER");		break;
				case 'i': 	fprintf(fp, "?INFUSED");	break;
				case 'l': 	fprintf(fp, "?LEAF");		break;
				case 'm': 	fprintf(fp, "?MUSHROOM");	break;
				case 'r': 	fprintf(fp, "?RING");		break;
				case 's': 	fprintf(fp, "?SCROLL");		break;
				case 'A': 	fprintf(fp, "?ARROW");		break;
				case 'E': 	fprintf(fp, "?ENERGY");		break;
				case 'F': 	fprintf(fp, "?FROND");		break;
				case 'G':	fprintf(fp, "?GOBBLE");		break;
				case 'P': 	fprintf(fp, "?POTION");		break;
				case 'R': 	fprintf(fp, "?RELIC");		break;
				case 'S': 	fprintf(fp, "?SACK");		break;
				case 'X':	fprintf(fp, "?FORMAT");		break;
				default:	fprintf(fp, "?XU");			break;
				}
			}
		else
			{
		
			if (line[i] >= '0' && line[i] <= '9')
				{
				temp = (int)line[i] - '0';
				fprintf(fp, "(?0+$%02X)", temp);
				}

			if (line[i] >= 'A' && line[i] <= 'Z')
				{
				temp = (int)line[i] - 'A';
				fprintf(fp, "(?AU+$%02X)", temp);
				}

			if (line[i] >= 'a' && line[i] <= 'z')
				{
				temp = (int)line[i] - 'a';
				fprintf(fp, "(?AL+$%02X)", temp);
				}
		
			if (line[i] == ' ') 	{	fprintf(fp, "?SPCE");	}
			if (line[i] == ':') 	{	fprintf(fp, "?COLN");	}
			if (line[i] == '-') 	{	fprintf(fp, "?DASH");	}
			if (line[i] == '\'')	{	fprintf(fp, "?APST");	}
			if (line[i] == '.') 	{	fprintf(fp, "?PERD");	}
			if (line[i] == ',') 	{	fprintf(fp, "?COMM");	}
			if (line[i] == '?') 	{	fprintf(fp, "?QUST");	}
			if (line[i] == '!') 	{	fprintf(fp, "?EXCL");	}
		
			if (c >= 15)
				{
				fprintf(fp, ",?WAIT\n");
				return;
				}
			}
	
		c++;
		i++;
		if (line[i] == '$') 	{	fprintf(fp, "\n"); return;			}	// Continue
		fprintf(fp, ",");
		}
	}