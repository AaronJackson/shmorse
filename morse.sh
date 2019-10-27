#!/usr/bin/bash

declare -A MORSE
MORSE[a]=.-
MORSE[b]=-...
MORSE[c]=-.-.
MORSE[d]=-..
MORSE[e]=.
MORSE[f]=..-.
MORSE[g]=--.
MORSE[h]=....
MORSE[i]=..
MORSE[j]=.---
MORSE[k]=-.-
MORSE[l]=.-..
MORSE[m]=--
MORSE[n]=-.
MORSE[o]=---
MORSE[p]=.--.
MORSE[q]=--.-
MORSE[r]=.-.
MORSE[s]=...
MORSE[t]=-
MORSE[u]=..-
MORSE[v]=...-
MORSE[w]=.--
MORSE[x]=-..-
MORSE[y]=-.--
MORSE[z]=--..
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

while read -n1 c; do
    M="${MORSE[${c,,}]}"
    echo -n $M | while read -n1 ditdah; do
    	if [ $ditdah = '-' ]; then
    	    play -n synth 0.3 sin 1000 gain 1 2> /dev/null
    	elif [ $ditdah = '.' ]; then
    	    play -n synth 0.1 sin 1000 gain 1 2> /dev/null
#    	else
#    	    play -n synth 0.1 sin 250 gain 1 2> /dev/null
    	fi
    done
    sleep 0.3
done
