#!/bin/bash
read -p "Enter UserName: " myusername
read -p "Enter Password: " mypassword
read -p "Enter Database: " mydatabase
read -p "Enter Script Name: " myscript
mysql -u $myusername -p"$mypassword" -e "DROP DATABASE IF EXISTS $mydatabase; CREATE DATABASE $mydatabase;"
mysql -u root -p"$mypassword" -e "USE $mydatabase; source $myscript;"
