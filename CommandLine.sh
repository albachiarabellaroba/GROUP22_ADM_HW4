echo "Location with the highest number of transaction: "
awk -F, '{arr[$5]++;}END{for(a in arr)print a", "arr[a];}' bank_transactions.csv >  out_put.csv
cat out_put.csv | sort -k2 -n -r | head -1

echo "Gender which spent the most: "
awk -F, '{arr[$4] += $9}END{ if(arr["M"] > arr["F"]){ print("M");} else{ print("F");}}' bank_transactions.csv

echo "Customer with the highest average of the amount transaction: "
awk -F, '{cnt[$2]++}END{arr[$2]+=$9}END{for(a in arr){ arr[a] = arr[a]/cnt[a];} max=0; for (a in arr){ if(max<arr[a]){ max= a;}} print(max)}' bank_transactions.csv

