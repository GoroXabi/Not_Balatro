#ifndef AREA_HPP
#define AREA_HPP

#include "Balatro.hpp"
#include <iostream>


class	Area
{
protected:

	double			pos_x;
	double			pos_y;
	double			width;
	double			height;
	std::list<Card>	cards;
	size_t			current_idx;

public:

/*--------------------CONSTRUCTORS-------------------*/

	Area();

/*--------------------DESTRUCTORS--------------------*/

	virtual ~Area();

/*-----------------PUBLIC_FUNCTIONS------------------*/

	void	removeCard();
	void	addCard(Card &new_card);
	void	selectCard();
};

#endif
