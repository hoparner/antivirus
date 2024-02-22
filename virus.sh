#!/bin/bash


# Color Codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

sudo apt-get install -y clamav
echo ""
echo -e "${YELLOW}Введите путь к файлу или каталогу для сканирования:${NC}"
echo ""
echo -e "${YELLOW}Enter the path to the file or directory to scan:${NC}"
echo ""
echo -e "${YELLOW}Մուտքագրեք ուղին դեպի ֆայլ կամ գրացուցակ սկանավորման համար:${NC}"
read path

echo -e "${RED}Сканирование файлов на наличие вирусов в $path...${NC}"
clamscan -r "$path"

if [ $? -eq 0 ]; then
    echo -e "${GREEN}Нет вирусов${NC}"
else
    echo -e "${RED}Обнаружены вирусы!${NC}"
fi
