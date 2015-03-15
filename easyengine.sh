#! /bin/bash


function myecho()
{
	echo =========================================================	
}

sudo echo -e "[user]\n\tname = przemekcichon\n\temail = przemekcichon@gmail.com" > ~/.gitconfig 

myecho

wget -qO ee rt.cx/ee && sudo bash ee || exit 1

myecho

sudo ee stack install || exit 1

myecho

sudo ee site create sajdnota.dev --wpfc || exit 1

myecho
