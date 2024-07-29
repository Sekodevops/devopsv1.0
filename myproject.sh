#!/bin/bash
# Task 1
#Создаем папку MyDirectory
mkdir MyDirectory
# Создаем файл
touch MyFile.txt
# Вывод списка
ls

# Task 2
# Поиск файла *.txt и копирования в файл MyDirectory
find /tmp -name *.txt -exec cp {} /home/userx/MyDirectory \;
# Вывод список скопированных файлов
cd /home/userx/MyDirectory
ls

# Task 3
#Ключевое слово для поиска
keyword = "Security"
# Поиск файла
find - type -exec grep -H "$keyword" {} \;

# Task4
# Создаем архив
tar -czvf backup01.tar.gz /home/userx/MyDirectory01
tar -czvf backup02.tar.gz /home/userx/MyDirectory02
# Распаковка архива
tar -xzvf backup01.tar.gz tmp/restroredir01/
tar -xzvf backup02.tar.gz tmp/restroredir02/

# Task5
# Создаем файл с нескольками строками
echo "Это первая строка" > Testfile.txt
echo "Это вторая строка" >> Testfile.txt
# Вывод строку в обратном порядке
tac Testfile.txt

# Task 6
# Источник для бэкапа
sourcedir = ("/home/userx/MyDirectory01" "/home/userx/MyDirectory02")
# Источник где будет хранится бэкапа
backupdir = "/home/userx/backup"
# Дата
date = $(date +%Y-%m-%d)
#Создаем бэкап
for dir in "${sourcedir[@]}"; do
 tar -czvf "${backupdir}/${dir}_$date.tar.gz" "$dir"
done

#Далее добавляем в крон
0 0 * * 1 /home/userx/script/myproject.sh

# Task7
if [$# -eq 0]; then
echo "Указать файл"
exit 1
if
# Подсчет слов и результат
wc -w "$1"

#Заем запускаем скрипт
./myproject.sh Testfile.txt

#Task8
# Длина пароля
read -p "Введите длину пароля: " password_length
# Проверка ввода цифра ли
if [[ ! "$password_length" =~ ^[0-9]+$ ]]; then
echo "Длина пароля должна быть числом."
exit 1
fi
# Генерируем пароль и сохраняем его в файл
openssl rand -base64 $password_length | cut -c -"$password_length" > MyPass.txt
echo "Пароль сгенерирован и сохранен в файле MyPass.txt"

#Task9
None

#Task10
#for Ubuntu/Debian
sudo apt update && sudo apt upgrade -y
#for Redhat/Fedora
sudo dnf update

#Далее добавляем в крон
0 0 * * 1 /home/userx/script/myproject.sh