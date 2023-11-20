#include "includes.h"

/********************************/
u8	ParamType_WriteActor ( ParamPtr param )
	{
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	if(!StringList_Add(&globalList, param->String, 0)) return 0;
	if(!StringList_Add(&globalList, "ACTOR_RAM", 0)) return 0;
	fprintf (scriptFile,"\t\tDB\t(((%s-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)\n", param->String);

	return 1;
	}

/********************************/
u8	ParamType_WriteAddress ( ParamPtr param )
	{
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	if(!StringList_Add(&globalList, param->String, 0)) return 0;
	fprintf (scriptFile,"%s\n", param->String);
	return 1;
	}

/********************************/
u8	ParamType_WriteAddress2 ( ParamPtr param )
	{
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	if(!StringList_Add(&globalList, param->String, 0)) return 0;
	fprintf (scriptFile,"\t\tDW\t(%s&$FFFF)\n", param->String);

	return 1;
	}

/********************************/
u8	ParamType_WriteAddress3 ( ParamPtr param )
	{
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	if(!StringList_Add(&globalList, param->String, 0)) return 0;
	fprintf (scriptFile,"\t\t\DB\t:%s\n", param->String);
	fprintf (scriptFile,"\t\tDW\t(%s&$FFFF)\n", param->String);

	return 1;
	}

/********************************/
u8	ParamType_WriteAddressBank ( ParamPtr param )
	{
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	if(!StringList_Add(&globalList, param->String, 0)) return 0;
	fprintf (scriptFile,"\t\tDB\t:%s\n", param->String);
	return 1;
	}

/********************************/
u8	ParamType_WriteASCII ( ParamPtr param, u32 length )
	{
	u32		count;

	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");

	count = 0;
	while (param->String[count] && (count < length))
		{
		fprintf (scriptFile,"\t\tDB\t$%02X\n", (param->String[count] & 0xFF));
		count++;
		}

	while(count < length)
		{
		fprintf (scriptFile,"\t\tDB\t?SPCE\n");
		count++;
		}

	return 1;
	}

/********************************/
u8	ParamType_WriteByte ( ParamPtr param )
	{
	if(param->Type == PARAM_NUMBER)
		{
		if(param->Number > 255) return WriteScript_Error("Constant out of range (0-255).");
		fprintf (scriptFile,"\t\tDB\t$%02X\n", (param->Number & 0xFF));
		return 1;
		}

	if(param->Type == PARAM_STRING)
		{
		fprintf (scriptFile,"\t\tDB\t%s&$FF\n", param->String);
		return 1;
		}

	return WriteScript_Error("Type mismatch.");
	}

/********************************/
u8	ParamType_WriteEquateByte ( ParamPtr param )
	{
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	fprintf (scriptFile,"\t\tDB\t%s\n", param->String);

	return 1;
	}

/********************************/
u8	ParamType_WriteEquateWord ( ParamPtr param )
	{
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	fprintf (scriptFile,"\t\tDW\t%s\n", param->String);

	return 1;
	}

/********************************/
u8	ParamType_WriteExpression ( ParamPtr param )
	{
	VarDecPtr	varDec;
	
	switch(param->Type)
		{
		case PARAM_EXPR_GAMESTATE:
			varDec = VarDecList_Find(param->String);
			if(!varDec)
				{
				fprintf (scriptFile,"\t\tDB\tEXPR_WORDCONST\n");
				fprintf (scriptFile,"\t\tDW\t%s\n", param->String);
				return 1;
				}

			switch(varDec->Type)
				{
				case VARDEC_BIT:
					fprintf (scriptFile,"\t\tDB\tEXPR_XRAMBIT\n");
					fprintf (scriptFile,"\t\tDW\t(%s+$%04X)&$FFFF\n", varDec->String, varDec->Base);
					fprintf (scriptFile,"\t\tDB\t$%02X\n", varDec->Mask);
					if(!StringList_Add(&globalList, varDec->String, 0)) return 0;
					return 1;
				case VARDEC_BYTE:
					fprintf (scriptFile,"\t\tDB\tEXPR_XRAMBYTE\n");
					fprintf (scriptFile,"\t\tDW\t(%s+$%04X)&$FFFF\n", varDec->String, varDec->Base);
					if(!StringList_Add(&globalList, varDec->String, 0)) return 0;
					return 1;
				case VARDEC_WORD:
					fprintf (scriptFile,"\t\tDB\tEXPR_XRAMWORD\n");
					fprintf (scriptFile,"\t\tDW\t(%s+$%04X)&$FFFF\n", varDec->String, varDec->Base);
					if(!StringList_Add(&globalList, varDec->String, 0)) return 0;
					return 1;
				}
			
			return WriteScript_Error("Internal error. VarDec mismatch.");
		case PARAM_EXPR_FACEHERO:
			fprintf (scriptFile,"\t\tDB\tEXPR_FACEHERO\n");
			return 1;
		case PARAM_EXPR_GAMECOUNT:
			fprintf (scriptFile,"\t\tDB\tEXPR_GAMECOUNT\n");
			return 1;
		case PARAM_EXPR_NUMCONST:
			if(param->Number > 255)
				{
				fprintf (scriptFile,"\t\tDB\tEXPR_WORDCONST\n");
				fprintf (scriptFile,"\t\tDW\t$%04X\n", (param->Number & 0xFFFF));
				}
			else
				fprintf (scriptFile,"\t\tDB\tEXPR_BYTECONST,$%02X\n", (param->Number & 0xFF));
		
			return 1;
		case PARAM_EXPR_OPERATOR:
			fprintf (scriptFile,"\t\tDB\t%s\n", param->String);
			if(param->Left) ParamType_WriteExpression(param->Left);
			if(param->Right) ParamType_WriteExpression(param->Right);
			return 1;
		case PARAM_EXPR_WBANK:
			fprintf (scriptFile,"\t\tDB\tEXPR_WBANK\n");
			fprintf (scriptFile,"\t\tDB\t%s\n", param->String);
			if(param->Left) ParamType_WriteExpression(param->Left);
			return 1;
		}
	
	return WriteScript_Error("Type mismatch.");
	}

/********************************/
u8	ParamType_WriteLabel ( ParamPtr param )
	{
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	if(!StringList_Add(&globalList, param->String, 0)) return 0;
	fprintf (scriptFile,"%s\n", param->String);
	return 1;
	}

/********************************/
u8	ParamType_WriteLabel2 ( ParamPtr param )
	{
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	if(!StringList_Add(&globalList, param->String, 0)) return 0;
	fprintf (scriptFile,"\t\tDW\t(%s&$FFFF)\n", param->String);
	return 1;
	}

/********************************/
u8	ParamType_WriteLabel3 ( ParamPtr param )
	{
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	if(!StringList_Add(&globalList, param->String, 0)) return 0;
	fprintf (scriptFile,"\t\tDB\t:%s\n", param->String);
	fprintf (scriptFile,"\t\tDW\t(%s&$FFFF)\n", param->String);
	return 1;
	}

/********************************/
u8	ParamType_WriteLabelBank ( ParamPtr param )
	{
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	if(!StringList_Add(&globalList, param->String, 0)) return 0;
	fprintf (scriptFile,"\t\tDB\t:%s\n", param->String);
	return 1;
	}

/********************************/
u8	ParamType_WritePalDelay ( ParamPtr frames, ParamPtr delay )
	{
	u8	num;
	if(frames->Type != PARAM_NUMBER) return WriteScript_Error("Type mismatch.");
	if(delay->Type != PARAM_NUMBER) return WriteScript_Error("Type mismatch.");
	num = ((delay->Number&0x03)<<6) + (frames->Number&0x3F);
	fprintf (scriptFile,"\t\tDB\t$%02X\n", num);
	return 1;
	}

/********************************/
u8	ParamType_WritePalSpan ( ParamPtr base, ParamPtr total )
	{
	u8	span;
	if(base->Type != PARAM_NUMBER) return WriteScript_Error("Type mismatch.");
	if(total->Type != PARAM_NUMBER) return WriteScript_Error("Type mismatch.");
	span = ((base->Number&0x0F)<<4) + ((total->Number-(base->Number&0x0F))&0x0F);
	fprintf (scriptFile,"\t\tDB\t$%02X\n", span);
	return 1;
	}

/********************************/
u8	ParamType_WriteRGBColor ( ParamPtr red, ParamPtr green, ParamPtr blue )
	{
	u16	rgb15;
	if(red->Type != PARAM_NUMBER) return WriteScript_Error("Type mismatch.");
	if(green->Type != PARAM_NUMBER) return WriteScript_Error("Type mismatch.");
	if(blue->Type != PARAM_NUMBER) return WriteScript_Error("Type mismatch.");
	rgb15 = (u16)(red->Number&0x001F);
	rgb15 += (u16)((green->Number&0x001F)<<5);
	rgb15 += (u16)((blue->Number&0x001F)<<10);
	fprintf (scriptFile,"\t\tDW\t$%04X\n", rgb15);
	return 1;
	}

/********************************/
u8	ParamType_WriteTexter ( ParamPtr param )
	{
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	
	fprintf (scriptFile,"\t\tDB\t", param->String);
	TranslateText (scriptFile, param->String);
	
	return 1;
	}

/********************************/
u8	ParamType_WriteWord ( ParamPtr param)
	{
	if(param->Type == PARAM_NUMBER)
		{
		if(param->Number > 65535) return WriteScript_Error("Constant out of range (0-65535).");
		fprintf (scriptFile,"\t\tDW\t$%04X\n", (param->Number & 0xFFFF));
		return 1;
		}

	if(param->Type == PARAM_STRING)
		{
		fprintf (scriptFile,"\t\tDW\t%s&$FFFF\n", param->String);
		return 1;
		}

	return WriteScript_Error("Type mismatch.");
	}

/********************************/
u8	ParamType_WriteXRAMBit ( ParamPtr param )
	{
	VarDecPtr	varDec;
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	varDec = VarDecList_Find(param->String);
	if(!varDec) return WriteScript_Error("No such variable.\n");
	if(varDec->Type != VARDEC_BIT) return WriteScript_Error("Type mismatch.");

	if(!StringList_Add(&globalList, varDec->String, 0)) return 0;

	fprintf (scriptFile,"\t\tDW\t(%s+$%04X)\n", varDec->String, varDec->Base);
	fprintf (scriptFile,"\t\tDB\t$%02X\n", (varDec->Mask&0xFF));

	return 1;
	}

/********************************/
u8	ParamType_WriteXRAMBitNot ( ParamPtr param )
	{
	VarDecPtr	varDec;
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	varDec = VarDecList_Find(param->String);
	if(!varDec) return WriteScript_Error("No such variable.\n");
	if(varDec->Type != VARDEC_BIT) return WriteScript_Error("Type mismatch.");

	if(!StringList_Add(&globalList, varDec->String, 0)) return 0;

	fprintf (scriptFile,"\t\tDW\t(%s+$%04X)\n", varDec->String, varDec->Base);
	fprintf (scriptFile,"\t\tDB\t$%02X\n", ((~varDec->Mask)&0xFF));
	
	return 1;
	}

/********************************/
u8	ParamType_WriteXRAMByte ( ParamPtr param )
	{
	VarDecPtr	varDec;
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	
	varDec = VarDecList_Find(param->String);
	if(!varDec) return WriteScript_Error("No such variable.\n");
	if(varDec->Type != VARDEC_BYTE) return WriteScript_Error("Type mismatch.");
	
	if(!StringList_Add(&globalList, varDec->String, 0)) return 0;
	fprintf (scriptFile,"\t\tDW\t(%s+$%04X)\n", varDec->String, varDec->Base);

	return 1;
	}

/********************************/
u8	ParamType_WriteXRAMWord ( ParamPtr param )
	{
	VarDecPtr	varDec;
	if(param->Type != PARAM_STRING) return WriteScript_Error("Type mismatch.");
	varDec = VarDecList_Find(param->String);
	if(!varDec) return WriteScript_Error("No such variable.\n");
	if(varDec->Type != VARDEC_WORD) return WriteScript_Error("Type mismatch.");

	if(!StringList_Add(&globalList, varDec->String, 0)) return 0;
	fprintf (scriptFile,"\t\tDW\t(%s+$%04X)&$FFFF\n", varDec->String, varDec->Base);

	return 1;
	}