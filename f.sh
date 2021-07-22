filename='number'
n=1
touch even
touch odd
while read line; do
  n=`expr $line + 0`
  if [ `expr $n % 2` == 0 ]
then
 
  echo $line >> even
else
  
  echo $line >> odd
fi
n=$((n+1))
done < $filename