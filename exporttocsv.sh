mydb=esmart
for tn in `mysql --batch --skip-column-names --raw -e"show tables from $mydb"`
do
    mysql $mydb -B -e "select * from \`$tn\`;" | sed 's/\t/","/g;s/^/"/;s/$/"/;s/\n//g' > $tn.csv
done