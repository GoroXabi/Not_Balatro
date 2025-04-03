#ifndef PLAYER_HPP
#define PLAYER_HPP

#include <iostream>
#include "Balatro.hpp"

enum PokerHands{
	HIGH_CARD,
	PAIR,
	TWO_PAIR,
	THREE_OF_A_KIND,
	STRAIGHT,
	FLUSH,
	FULL_HOUSE,
	FOUR_OF_A_KIND,
	STRAIGHT_FLUSH,
	ROYAL_FLUSH,
	FIVE_OF_A_KIND,
	FLUSH_HOUSE,
	FLUSH_FIVE
};

class	Player
{
private:

	int											money;
	std::list<Card> 							deck;
	std::map<PokerHands, std::pair<int, int> >	handValues;
	

public:

/*--------------------CONSTRUCTORS-------------------*/

	Player();
	Player(const Player &model);
	Player &operator=(const Player &model);

/*--------------------DESTRUCTORS--------------------*/

	~Player();

/*-----------------PUBLIC_FUNCTIONS------------------*/

};

#endif
