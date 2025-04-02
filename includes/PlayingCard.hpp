#ifndef PLAYINGCARD_HPP
#define PLAYINGCARD_HPP

#include <iostream>
#include "Balatro.hpp"

enum Suit {
	ALL,
	SPADE,
	HEART,
	CLUB,
	DIAMOND

};

class	PlayingCard: public Card
{
private:

	int value;
	Suit suit;

public:

/*--------------------CONSTRUCTORS-------------------*/

	PlayingCard();

/*--------------------DESTRUCTORS--------------------*/

	~PlayingCard();

/*-----------------PUBLIC_FUNCTIONS------------------*/

};

#endif
