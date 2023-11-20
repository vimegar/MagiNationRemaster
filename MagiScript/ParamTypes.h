#ifndef PARAMTYPES_H
#define PARAMTYPES_H



/********************************/
u8		ParamTypr_WriteActor			( ParamPtr param );
u8		ParamType_WriteAddress			( ParamPtr param );
u8		ParamType_WriteAddress2			( ParamPtr param );
u8		ParamType_WriteAddress3			( ParamPtr param );
u8		ParamType_WriteAddressBank		( ParamPtr param );
u8		ParamTypr_WriteASCII			( ParamPtr param, u32 length );
u8		ParamType_WriteByte				( ParamPtr param );
u8		ParamType_WriteEquateByte		( ParamPtr param );
u8		ParamType_WriteEquateWord		( ParamPtr param );
u8		ParamType_WriteExpression		( ParamPtr param );
u8		ParamType_WriteLabel			( ParamPtr param );
u8		ParamType_WriteLabel2			( ParamPtr param );
u8		ParamType_WriteLabel3			( ParamPtr param );
u8		ParamType_WriteLabelBank		( ParamPtr param );
u8		ParamType_WritePalDelay			( ParamPtr frames, ParamPtr delay );
u8		ParamType_WritePalSpan			( ParamPtr base, ParamPtr total );
u8		ParamType_WriteRGBColor			( ParamPtr red, ParamPtr green, ParamPtr blue );
u8		ParamType_WriteTexter			( ParamPtr param );
u8		ParamType_WriteWord				( ParamPtr param );
u8		ParamType_WriteXRAMBit			( ParamPtr param );
u8		ParamType_WriteXRAMBitNot		( ParamPtr param );
u8		ParamType_WriteXRAMByte			( ParamPtr param );
u8		ParamType_WriteXRAMWord			( ParamPtr param );

#endif