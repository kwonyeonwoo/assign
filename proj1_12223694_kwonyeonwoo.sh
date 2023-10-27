#! /bin/bash


echo "--------------------------
User Name: kwonyeonwoo
Student Number: 12223694
[ MENU ]
1. Get the data of the movie identified by a specific 'movie id' from 'u.item'
2. Get the data of action genre movies from 'u.item'
3. Get the average 'rating' of the movie identified by specific 'movie id' from 'u.data'
4. Delete the 'IMDb URL' from 'u.item'
5. Get the data about users from 'u.user'
6. Modify the format of 'release date' in 'u.item'
7. Get the data of movies rated by a specific 'user id' from 'u.data'
8. Get the average 'rating' of movies rated by users with 'age' between 20 and 29 and 'occupation' as 'programmer'
9. Exit
--------------------------"
read -p "Enter your choice [ 1-9 ] " choice
while [ $choice -ne 9 ]
do
	echo ""
	case $choice in
	1)
		read -p "Please enter 'movie id' (1~1682): " mid
		echo ""
		cat u.item | awk -F \| -v id=$mid '$1==id {print $0}'
		;;
	2)
		echo "2" ;;
	3)
		echo "3" ;;
	4) 
		echo "4" ;;
	5)
		echo "5" ;;
	6)
		echo "6" ;;
	7)
		echo "7" ;;
	8)
		echo "8" ;;
	esac
echo ""
read -p "Enter your choice [ 1-9 ] " choice
done
echo "Bye !"
