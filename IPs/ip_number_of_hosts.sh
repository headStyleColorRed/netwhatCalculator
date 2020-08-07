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
FILE="parsedResult.txt"

# Create request
URL="https://www.calculator.net/ip-subnet-calculator.html?cclass=any&csubnet=$2&cip=$1&ctype=ipv4&printit=0&x=61&y=30"

# Make request and save to file
curl $URL | html2text -o $FILE;

# Parse and clean request result
result1=`cat $FILE | sed -n '/IP Address:/,$p' | sed -n '/Subnet Mask/q;p' | grep  "Total Number of Hosts" | awk '{print $5}'`
result2=`cat $FILE | sed -n '/IP Address:/,$p' | sed -n '/Subnet Mask/q;p' | grep  "Number of Usable Hosts" | awk '{print $5}'`

# Print result
echo "\n${Green} Total Number of Hosts:${White} $result1 \n"
echo "${Green} Number of Usable Hosts:${White} $result2 \n"

rm $FILE