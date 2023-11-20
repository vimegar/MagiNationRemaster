#include	"tls_standard.h"
#include	"tls_standard_priv.h"

/********************************/
void	FloatToRGBA ( FloatColorPtr floatColor, RGBAColorPtr rgbaColor )
	{
	rgbaColor->Red		= ( u8 ) ( floatColor->Red		* 255.0 );
	rgbaColor->Green	= ( u8 ) ( floatColor->Green	* 255.0 );
	rgbaColor->Blue		= ( u8 ) ( floatColor->Blue		* 255.0 );
	rgbaColor->Alpha	= ( u8 ) ( floatColor->Alpha	* 255.0 );
	}

/********************************/
double	FindRGBAverageDiff	( RGBAColorPtr color1, RGBAColorPtr color2 )
	{
	FloatColor	floatColor1;
	FloatColor	floatColor2;
	double	avgDiff = 0;

	RGBAToFloat ( color1, &floatColor1 );
	RGBAToFloat ( color2, &floatColor2 );

	if ( floatColor1.Red > floatColor2.Red )	
			avgDiff += floatColor1.Red - floatColor2.Red;
	else	avgDiff += floatColor2.Red - floatColor1.Red;

	if ( floatColor1.Green > floatColor2.Green )
			avgDiff += floatColor1.Green - floatColor2.Green;
	else	avgDiff += floatColor2.Green - floatColor1.Green;

	if ( floatColor1.Blue > floatColor2.Blue )
			avgDiff += floatColor1.Blue - floatColor2.Blue;
	else	avgDiff += floatColor2.Blue - floatColor1.Blue;

	avgDiff = avgDiff / 3.0F;

	return avgDiff;
	}

/********************************/
void	HSLToRGB ( double h, double s, double l, double* r, double* g, double* b )
	{
	double v;
	
	h /= 360.0;

	v = (l <= 0.5) ? (l * (1.0 + s)) : (l + s - l * s );
	if (v <= 0.0) *r = *g = *b = 0.0;
	else
		{
		double m;
		double sv;
		s32 sextant;
		double fract, vsf, mid1, mid2;

		m = l + l - v;
		sv = (v-m)/v;
		h *= 6.0;
		sextant = (s32)h;
		fract = h - (double)sextant;
		vsf = v*sv*fract;
		mid1 = m+vsf;
		mid2 = v-vsf;
		switch ( sextant )
			{
			case 0: *r = v; *g = mid1; *b = m; break;
			case 1: *r = mid2; *g = v; *b = m; break;
			case 2: *r = m; *g = v; *b = mid1; break;
			case 3: *r = m; *g = mid2; *b = v; break;
			case 4: *r = mid1; *g = m; *b = v; break;
			case 5: *r = v; *g = m; *b = mid2; break;
			}
		}
	}

/********************************/
void	RGBAToFloat ( RGBAColorPtr rgbaColor, FloatColorPtr floatColor )
	{
	floatColor->Red		= rgbaColor->Red	/ 255.0;
	floatColor->Green	= rgbaColor->Green	/ 255.0;
	floatColor->Blue	= rgbaColor->Blue	/ 255.0;
	floatColor->Alpha	= rgbaColor->Alpha	/ 255.0;
	}

/********************************/
void	RGBToHSL ( double r, double g, double b, double* h, double* s, double* l )
	{
	double v;
	double m;
	double vm;
	double r2, g2, b2;

	if ( g < r )	v = r;
	else			v = g;
	if ( v < b )	v = b;

	if ( g > r )	m = r;
	else			m = g;
	if ( m > b )	m = b;

	if ((*l = (m+v) / 2.0) <= 0.0) return;
	if ((*s = vm = v-m) > 0.0 )
		{
		*s /= (*l <= 0.5)
		? (v+m)
		: (2.0 - v - m);
		}
	else return;

	r2 = (v-r) / vm;
	g2 = (v-g) / vm;
	b2 = (v-b) / vm;

	if (r == v)			*h = (g == m ? 5.0 + b2 : 1.0 - g2);
	else if (g == v)	*h = (b == m ? 1.0 + r2 : 3.0 - b2);
		else			*h = (r == m ? 3.0 + g2 : 5.0 - r2);

	*h /= 6.0;
	*h *= 360.0;
	}
