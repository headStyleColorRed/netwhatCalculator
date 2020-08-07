PS3="Welcome, Enter the operation: "

select opt in "IP" "Subnet" "quit"; do

  case $opt in
    "IP")
      sh IPs/ip_manager.sh
      ;;
    "Subnet")
      sh Subnet/subnet_manager.sh
      ;;
    quit)
      break
      ;;
    *) 
      echo "Invalid option $REPLY"
      ;;
  esac
done