#ifndef AREA_HPP
#define AREA_HPP

#include <iostream>

class Card;

class	Area
{
private:

	double			pos_x;
	double			pos_y;
	double			width;
	double			height;
	std::list<Card>	cards;
	size_t			idx;

public:

/*--------------------CONSTRUCTORS-------------------*/

	Area();

/*--------------------DESTRUCTORS--------------------*/

	virtual ~Area();

/*-----------------PUBLIC_FUNCTIONS------------------*/

};

#endif
