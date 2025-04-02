#!/bin/bash

if [ -z "$1" ]; then
  echo "mete el nombre de una clase tolai"
  exit 1
fi

class_name="placeholder"
class_name=$1

class_name_HPP=$(echo "$class_name" | tr '[:lower:]' '[:upper:]')
class_name_HPP=$(printf "%s_HPP" $class_name_HPP)

  cat <<EOL > "src/$class_name.cpp"
#include "$class_name.hpp"

/*--------------------------------------------------------------*/
/*							CONSTRUCTORS						*/
/*--------------------------------------------------------------*/

$class_name::$class_name() {

}

$class_name::$class_name(const $class_name &model) {

}

$class_name &$class_name::operator=(const $class_name &model) {
	return (*this);
}

/*--------------------------------------------------------------*/
/*							DESTRUCTORS							*/
/*--------------------------------------------------------------*/

$class_name::~$class_name() {

}

/*--------------------------------------------------------------*/
/*						PUBLIC_FUNCTIONS						*/
/*--------------------------------------------------------------*/

EOL

  cat <<EOL > "includes/$class_name.hpp"
#ifndef $class_name_HPP
#define $class_name_HPP

#include <iostream>

class	$class_name
{
private:

public:

/*--------------------CONSTRUCTORS-------------------*/

	$class_name();
	$class_name(const $class_name &model);
	$class_name &operator=(const $class_name &model);

/*--------------------DESTRUCTORS--------------------*/

	~$class_name();

/*-----------------PUBLIC_FUNCTIONS------------------*/

};

#endif
EOL

echo "Se han creado cosas para la clase $class_name"
echo ""