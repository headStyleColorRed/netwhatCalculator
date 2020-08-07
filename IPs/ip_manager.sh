

PS3="Ip manager: "

select opt in "quit" "Network Address" "Broadcast Address"  "Host Range" "Number of Hosts"; do

  case $opt in
    "Network Address")
      read -p "Enter Ip address: " n1
      read -p "Enter Subnet prefix: " n2
      sh IPs/ip_network_address.sh $n1 $n2
      ;;
    "Broadcast Address")
      read -p "Enter Ip address: " n1
      read -p "Enter Subnet prefix: " n2
      sh IPs/ip_broadcast.sh $n1 $n2
      ;;
    "Host Range")
      read -p "Enter Ip address: " n1
      read -p "Enter Subnet prefix: " n2
      sh IPs/ip_host_range.sh $n1 $n2
      ;;
    "Number of Hosts")
      read -p "Enter Ip address: " n1
      read -p "Enter Subnet prefix: " n2
      sh IPs/ip_number_of_hosts.sh $n1 $n2
      ;;
    quit)
      break
      ;;
    *) 
      echo "Invalid option $REPLY"
      ;;
  esac
done

