#include "Area.hpp"

/*--------------------------------------------------------------*/
/*							CONSTRUCTORS						*/
/*--------------------------------------------------------------*/

Area::Area() {

}

/*--------------------------------------------------------------*/
/*							DESTRUCTORS							*/
/*--------------------------------------------------------------*/

Area::~Area() {

}

/*--------------------------------------------------------------*/
/*						PUBLIC_FUNCTIONS						*/
/*--------------------------------------------------------------*/

void    Area::removeCard() {
    std::list<Card>::iterator it = cards.begin();
    for (size_t times = 0; times < current_idx; times++)
        it++;
    cards.erase(it);
}

void    Area::addCard(Card &new_card) {
    cards.push_back(new_card);
}

void    Area::selectCard() {
    
}
