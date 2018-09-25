#!/usr/bin/bash

declare -A MORSE
MORSE[A]=.-
MORSE[B]=-...
MORSE[C]=-.-.
MORSE[D]=-..
MORSE[E]=.
MORSE[F]=..-.
MORSE[G]=--.
MORSE[H]=....
MORSE[I]=..
MORSE[J]=.---
MORSE[K]=-.-
MORSE[L]=.-..
MORSE[M]=--
MORSE[N]=-.
MORSE[O]=---
MORSE[P]=.--.
MORSE[Q]=--.-
MORSE[R]=.-.
MORSE[S]=...
MORSE[T]=-
MORSE[U]=..-
MORSE[V]=...-
MORSE[W]=.--
MORSE[X]=-..-
MORSE[Y]=-.--
MORSE[Z]=--..
MORSE[0]=-----
MORSE[1]=.----
MORSE[2]=..---
MORSE[3]=...--
MORSE[4]=....-
MORSE[5]=.....
MORSE[6]=-....
MORSE[7]=--...
MORSE[8]=---..
MORSE[9]=----.

while read -n1 c ; do
    M=${MORSE[$c]}
    echo -n $M | while read -n1 ditdah ; do
    	if [ $ditdah = '-' ] ; then
    	    play -n synth 0.3 sin 1000 gain 1 2> /dev/null
    	else
    	    play -n synth 0.1 sin 1000 gain 1 2> /dev/null
    	fi
    done
    sleep 0.3
done
