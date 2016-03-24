module sim;


struct Sim
{
	
	//stałe
	float S; /// Przekrój zbiornika
	float H; /// Wysokosc zbiornika
	float A; /// Zwężka wypływu
	float k; /// Sprężystość sprężyny
	float b; /// Tłumienie tłumika
	float R; /// Krawędź wagonika
	float M; /// Masa stała wagonika

	//zmienne
	float t; /// czas symulacji
	float h; /// aktualna wysokość wody w zbiorniku
	float m; /// masa biezaca wagonika
	float x; /// wychylenie wagonika
	float v; /// prędkość wagonika
	float a; /// przyspieszenie wagodnika

	void init()
	{
		t = 0;
		h = H;
		m = M;
		x = 0;
	}

	void update( double dt )
	{
		float dq(double t)
		{
			return -A*sqrt( 2/ )
		}
		t+=dt;
	}

	void print() const
	{
		writefln( "h: %s\n m: %s\nx: %s", h, m, x );
	}

	bool over()
	{
		return h > 0;
	}
};

enum T_POBUDZENIE = 5;

float u_sin( float t )
{
	import std.math;

	if( t < T_POBUDZENIE )
		return sin(t);
	else
		return 0;
}

