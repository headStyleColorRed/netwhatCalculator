# Regular Colors
Black="\033[0;30m"        # Black
Red="\033[0;31m"          # Red
Green="\033[0;32m"        # Green
Yellow="\033[0;33m"       # Yellow
Blue="\033[0;34m"         # Blue
Purple="\033[0;35m"       # Purple
Cyan="\033[0;36m"         # Cyan
White="\033[0;37m"        # White

# File Path
FILE="Subnet/subnet_ranges.txt"

# Get data from file
CidrPrefix=`cat $FILE | grep $1 | awk '{print $2}'`
TotalIpAddresses=`cat $FILE | grep $1 | awk '{print $3}'`
UsableIpAddresses=`cat $FILE | grep $1 | awk '{print $4}'`

echo "\n${Green}CIDR Prefix:${White} $CidrPrefix \n"
echo "${Green}Total Ip Addresses:${White} $TotalIpAddresses \n"
echo "${Green}Usable Ip Addresses:${White} $UsableIpAddresses \n"