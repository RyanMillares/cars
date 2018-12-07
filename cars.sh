#! /bin/bash
# cars.sh
# Ryan Millares
echo "Welcome to cars script thing!"
echo "Press F to continue."
read ANS
while [ "$ANS" != "quit" ]
do
	echo "Choose one of the following."
	echo "[add]: Add a car."
	echo "[list]: List all cars."
	echo "[tracer]: Maybe I'll be tracer. "
	echo "[quit]: exit the program."
	read ANS
	case "$ANS" in
		"add") 
			echo "Year of car: "; read YEAR
			echo "Make of car: "; read MAKE
			echo "Model of car: "; read MODEL
			echo "$YEAR:$MAKE:$MODEL" >> My_old_cars
			echo "Car added."
			echo " ";;
		"list") 
			sort My_old_cars | tr ':' ' ' 
			echo "";;
		"tracer")
			echo "I'm already tracer."
			echo "";;
		"quit")
			echo "Quitting...";;
		*) 
			echo "Invalid answer, try again.";;
	esac
done 
echo "Thank you."
