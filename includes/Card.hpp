#ifndef CARD_HPP
#define CARD_HPP

#include "Balatro.hpp"
#include <iostream>

enum class Enhancements {
	NONE,
	BONUS,
	MULT,
	WILD,
	GLASS,
	STONE,
	GOLD,
	LUCKY
};

enum class Editions {
	NONE,
	FOIL,
	HOLOGRAPHIC,
	POLYCHROME,
	NEGATIVE
};

enum class Seal {
	NONE,
	BLUE,
	RED,
	PURPLE,
	GOLD
};

class	Card
{
protected:
	
	mlx_texture		*imagen;
	double			pos_x;
	double			pos_y;
	bool			selected;
	double			price;
	Enhancements	enhancements = Enhancements::NONE;
	Editions		editions = Editions::NONE;
	Seal			seal = Seal::NONE;

public:

/*--------------------CONSTRUCTORS-------------------*/

	Card();
	Card &operator=(const Card &model);

/*--------------------DESTRUCTORS--------------------*/

	virtual ~Card();

/*-----------------PUBLIC_FUNCTIONS------------------*/

	void	changeSelected();
};

#endif
