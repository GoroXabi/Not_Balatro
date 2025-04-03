#ifndef JOKER_HPP
#define JOKER_HPP

#include "Balatro.hpp"
#include <iostream>

class	Joker: public Card
{
private:

public:

/*--------------------CONSTRUCTORS-------------------*/

	Joker();
	Joker(const Joker &model);
	Joker &operator=(const Joker &model);

/*--------------------DESTRUCTORS--------------------*/

	virtual ~Joker();

/*-----------------PUBLIC_FUNCTIONS------------------*/

};

class BluePrint: public Joker {	void effect(); };

#endif
