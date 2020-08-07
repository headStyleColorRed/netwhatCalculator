
PS3="Subnet operation: "

select opt in "quit" "Max Ip addresses of Subnet" "Subnet Mask" "Subnet CIDR"; do

  case $opt in
    "Max Ip addresses of Subnet")
      read -p "Enter subnet: " n1
      sh Subnet/subnet_max_ip.sh $n1
      ;;
    "Subnet Mask")
      read -p "Enter Cidr: " n1
      sh Subnet/subnet_mask.sh $n1
      ;;
    "Subnet CIDR")
      read -p "Enter subnet: " n1
      sh Subnet/subnet_cidr.sh $n1
      ;;
    quit)
      break
      ;;
    *) 
      echo "Invalid option $REPLY"
      ;;
  esac
done