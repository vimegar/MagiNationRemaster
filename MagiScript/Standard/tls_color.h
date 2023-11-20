#ifndef	COLOR_H
#define	COLOR_H

/********************************/
typedef struct	FloatColor
	{
	double	Red;
	double	Green;
	double	Blue;
	double	Alpha;

	} FloatColor, *FloatColorPtr;

/********************************/
typedef struct	RGBAColor
	{
	u8	Red;
	u8	Green;
	u8	Blue;
	u8	Alpha;

	} RGBAColor, *RGBAColorPtr;

/********************************/
double	FindRGBAverageDiff	( RGBAColorPtr color1, RGBAColorPtr color2 );
void	FloatToRGBA			( FloatColorPtr floatColor, RGBAColorPtr rgbaColor );
void	HSLToRGB			( double h, double s, double l, double* r, double* g, double* b );
void	RGBAToFloat			( RGBAColorPtr rgbaColor, FloatColorPtr floatColor );
void	RGBToHSL			( double r, double g, double b, double* h, double* s, double* l );

#endif
