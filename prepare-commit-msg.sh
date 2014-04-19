#!/bin/bash

## Check to see if this is the initial commit
git log > /dev/null

if [ $? = 0 ]; then
	exit 0
fi

## Quotes taken primarily from:
#  http://ecosalon.com/40-quotes-on-new-beginnings-starts/
#  http://www.wow4u.com/beginnings/index.html

quotes=( 
	"Start wherever you are and start small.\n\n--Rita Baily"
	"The beginning is the most important part of the work.\n\n--Plato"
	"Do what you can, with what you have, where you are.\n\n--Theodore Roosevelt"
	"You will never win if you never begin.\n\n--Helen Rowland"
	"If all you can do is crawl, start crawling.\n\n--Rumi"
	"What is not started today is never finished tomorrow.\n\n--Johann Wolfgang von Goethe"
	"The secret to a rich life is to have more beginnings than endings.\n\n--Dave Weinbaum"
	"The way to get started is to quit talking and begin doing.\n\n--Walt Disney"
	"Almost everything comes from nothing.\n\n--Henry F. Amiel"
	"One step must start each journey."
	"All glory comes from daring to begin.\n\n--Eugene F. Ware"
	"The distance is nothing; it's only the first step that is difficult.\n\n--Marquise du Deffand"
	"With the possible exception of the equator, everything begins somewhere.\n\n--Peter Robert Fleming"
	"A journey of a thousand miles begins with a single step.\n\n--Lao-tzu"
)

random=$$$(date +%s)

quote=${quotes[$random % ${#quotes[@]} ]}

echo -e $quote"$(cat "$1")" > "$1"
