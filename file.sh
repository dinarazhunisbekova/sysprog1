#!/usr/bin/env bash
echo -e "Автор: Жунисбекова Динара\nНазвание: Конвертер изображений\nОписание: Данная программа конвертирует исходное изображение."

while [[ $choice != 3 ]]
do 
	echo -e "\n Выберите нужное действие:\n\t 1-Izmenite format izovrajeni\n\t 2 - izmenite razreshenie picture\n\t 3 - Exit"
	read choice

	if [[ $choice = 1 ]]
	then 
		echo -e "Vvedite put' faila:\n"
		read name
		echo -e "Choose the right format of pic:\n\t 1 - .jpg\n\t 2 - .png\n\t 3 - .bmp\n\t 4 - .ico"
		read doing 
		case $doing in
			1)
			mogrify -format jpg $name
			;;
		2) 
			mogrify -format png $name
			;;
		3)
			mogrify -format bmp $name
			;;
		4)
			mogrify -format ico $name
			;;
		*)
	echo "Fuck off"
	esac

else
	if [[ $choice = 2 ]]
	then 
		echo -e "vvedite put faila:\n"
	       read name
       echo -e "Vvedite razresshenie of pic:"
read size 
mogrify -resize $size $name
fi
fi
done
exit 0
