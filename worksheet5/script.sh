while IFS=, read -r line; do
     channel_name=$(echo "$line" | cut -d ',' -f 2)
     country=$(echo "$line" | cut -d ',' -f 8)
     category=$(echo "$line" | cut -d ',' -f 5)
     monthly_earnings=$(echo "$line" | cut -d ',' -f 16)
     subscribers=$(echo "$line" | cut -d ',' -f 3)

     if [ "$country" == 'United States' ]; then
         case "$category" in
             'Music')
                 echo "$channel_name,$country,$category,$monthly_earnings,$subscribers" >> 'worksheet5/United States/Music.txt'
                 ;;
             'Entertainment')
                 echo "$channel_name,$country,$category,$monthly_earnings,$subscribers" >> 'worksheet5/United States/Entertainment.txt'
                 ;;
             'Gaming')
                 echo "$channel_name,$country,$category,$monthly_earnings,$subscribers" >> 'worksheet5/United States/Gaming.txt'
                 ;;
             'Comedy')
                 echo "$channel_name,$country,$category,$monthly_earnings,$subscribers" >> 'worksheet5/United States/Comedy.txt'
                 ;;
         esac
     fi
 done < 'Global YouTube Statistics.csv'
