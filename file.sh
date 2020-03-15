#!/usr/bin/env bash
echo -e "Автор: Жунисбекова Динара\nНазвание: Конвертер изображений\nОписание: Данная программа конвертирует исходное изображение."

while [[ $choice != 3 ]]
do 
	echo -e "\n Выберите нужное действие:\n\t 1 - Изменить формат изображения\n\t 2 - Изменить разрешение изображения\n\t 3 - Выход"
	read choice

	if [[ $choice = 1 ]]
	then 
		echo -e "Введите путь файла:\n"
		read name
		echo -e "Выберите необходимый формат файла:\n\t 1 - .jpg\n\t 2 - .png\n\t 3 - .bmp\n\t 4 - .ico"
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
	echo "Вы ввели неправильное действие"
	esac

else
	if [[ $choice = 2 ]]
	then 
		echo -e "Введите путь файла:\n"
	       read name
       echo -e "Введите необходимое разрешение изображения:"
read size 
mogrify -resize $size $name
fi
fi
done
exit 0
